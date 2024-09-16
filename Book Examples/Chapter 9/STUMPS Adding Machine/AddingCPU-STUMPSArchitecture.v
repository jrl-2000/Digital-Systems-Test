`timescale 1 ns / 1ns

module AddingCPU_STUMPSArchitecture ();

	parameter PRPG1_Size = 16;
	parameter PRPG2_Size = 12;
	parameter MISR1_Size = 16;
	parameter MISR2_Size = 12;
	parameter Shift_Cnt   = 1;    //Scan_Size = 24
	parameter numOfRounds = 100;
	parameter numOfConfig = 1;
		
	reg [ 1000 : 1 ] str;
	
	integer sigFile, cfgFile, faultFile, resultFile;
	integer status;
	integer i;

	reg  masterRst, clk = 0;
	wire NbarT, internalRst;
	wire PRPG1_En, PRPG2_En, MISR2_En, MISR_En;
	wire done;
	wire ir_Si, ac_Si, pc_Si;
	wire ir_So, ac_So, cntrl_So;
	wire [15:0] PO;
	
	reg  [PRPG1_Size - 1:0] PRPG1_Poly = 1;
	reg  [PRPG1_Size - 1:0] PRPG1_Seed = 0;
	wire [PRPG1_Size - 1:0] PRPG1_Out;
	
	reg  [PRPG2_Size - 1:0] PRPG2_Poly = 1;
	reg  [PRPG2_Size - 1:0] PRPG2_Seed = 0;
	wire [PRPG2_Size - 1:0] PRPG2_Out;

	reg  [MISR1_Size - 1:0] MISR1_Poly = 1;
	reg  [MISR1_Size - 1:0] MISR1_Seed = 0;
	wire [MISR1_Size - 1:0] MISR1_Out;
	reg  [MISR1_Size - 1:0] Golden_MISR1_Out = 0;

	reg  [MISR2_Size - 1:0] MISR2_Poly = 1;
	reg  [MISR2_Size - 1:0] MISR2_Seed = 0;
	wire [MISR2_Size - 1:0] MISR2_Out;
	reg  [MISR2_Size - 1:0] Golden_MISR2_Out = 0;
	
	reg stuckAtVal;
	reg [ 8 * 80 : 1 ] wireName;
	integer numOfFaults = 0, numOfDetected = 0;
	real coverage;
	


    AddingCPU_MultiScanInserted  AddingCPU(internalRst, clk, 1'b0, PRPG1_Out[7:0], PO, NbarT, ir_Si, ac_Si, pc_Si, ir_So, ac_So, cntrl_So);
  
	LFSR #(PRPG1_Size) PRPG_1( clk, internalRst, PRPG1_En, PRPG1_Poly, PRPG1_Seed, PRPG1_Out );
	
	LFSR #(PRPG2_Size) PRPG_2( clk, internalRst, PRPG2_En, PRPG2_Poly, PRPG2_Seed, PRPG2_Out );
	
	MISR #(MISR1_Size) MISR_1( clk, internalRst, MISR1_En, MISR1_Poly, MISR1_Seed,
							PO, MISR1_Out );

	MISR #(MISR2_Size) MISR_2( clk, internalRst, MISR2_En, MISR2_Poly, MISR2_Seed,
							{ 3'b0, cntrl_So, 3'b0 , ac_So, 3'b0, ir_So }, MISR2_Out );

	assign {pc_Si, ac_Si, ir_Si} = { PRPG2_Out[8], PRPG2_Out[4], PRPG2_Out[0] };

	STUMPS_Controller  #(Shift_Cnt, numOfRounds) STUMPS_Controller_1( clk, masterRst, NbarT, internalRst, PRPG1_En,
													 PRPG2_En, MISR1_En, MISR2_En, done );



	always #5 clk = !clk;

	initial begin		
		sigFile =$fopen ("Signature.txt", "w");
		resultFile =$fopen ("result.txt", "w");


		//start "Generating a random configuration file"
/*		cfgFile =$fopen ("Configuration.txt", "w");
		$fwrite( cfgFile, "PRPG1_Poly\tPRPG1_Poly\tMISR1_Poly\tMISR2_Poly\n"  );
		for( i = 1; i <= numOfConfig; i = i + 1 ) begin

			PRPG1_Poly = $random;
			PRPG2_Poly = $random;
			MISR1_Poly = $random;
			MISR2_Poly = $random;
			$fwrite( cfgFile, "%b %b %b %b\n",
					 PRPG1_Poly, PRPG2_Poly, MISR1_Poly, MISR2_Poly );
		end
		$fclose( cfgFile );
		*///end "Generating a random configuration file"
	
		
		PRPG1_Seed = 12;
		PRPG2_Seed = 12;
		MISR1_Seed = 13;
		MISR2_Seed = 13;

		// start "Generating Dictionary of Signatures for Various Configurations"
		cfgFile =$fopen ("Configuration.txt", "r");
		status = $fscanf( cfgFile, "%s\t%s\t%s\t%s\n", str, str, str, str );		
		i = 0;
		while ( !$feof(cfgFile) ) begin
			
			i = i + 1;
			//Apply Configurations

			status = $fscanf( cfgFile, "%b %b %b %b\n", PRPG1_Poly, PRPG2_Poly, MISR1_Poly, MISR2_Poly );
			masterRst = 1'b1;
			#1 masterRst = 1'b0;


			//Wait for signature		
			@( posedge done );
			$fwrite( sigFile, "%b %b\n", MISR1_Out, MISR2_Out );
			$display( "Signature for configuration %d was generated ", i );
		end

		$fclose( sigFile );

		#1;
		// end "Generating Dictionary of Signatures for Various Configurations"


		//starting "Fault Simulation"
		
		sigFile =$fopen ("Signature.txt", "r");
		cfgFile =$fopen ("Configuration.txt", "r");

		status = $fscanf( cfgFile, "%s\t%s\t%s\t%s\n", str, str, str, str );		

		i = 0;
		$fwrite( resultFile, "PRPG1_Poly\tPRPG2_Poly\tMISR1_Poly\tMISR2_Poly\t#Rounds\t#Counts\tCoverage\n"  );

		$getSystemTime("Starting Fault Simulation..");

		while ( !$feof(cfgFile) ) begin

			i = i + 1;
			$display( "###############Configuration %d...###############", i  );
			//extract golden signature
			status = $fscanf( sigFile, "%b %b\n", Golden_MISR1_Out, Golden_MISR2_Out );

			//Apply Configurations
			status = $fscanf( cfgFile, "%b %b %b %b\n", PRPG1_Poly, PRPG2_Poly, MISR1_Poly, MISR2_Poly );
			
			#1;

			faultFile =$fopen ("AddingCPU.flt", "r");					
			numOfFaults = 0;
			numOfDetected = 0;
			while( !$feof(faultFile)) begin	

				status = $fscanf(faultFile,"%s s@%b\n",wireName, stuckAtVal );			

				numOfFaults = numOfFaults + 1; 
				$display( "Injecting Fault%d", numOfFaults );
				$InjectFault (  wireName, stuckAtVal );


				masterRst = 1'b1;
				#1 masterRst = 1'b0;


				//Wait for signature		
				@( posedge done );

				//compare
				if( { MISR1_Out, MISR2_Out } != { Golden_MISR1_Out, Golden_MISR2_Out } )
					numOfDetected = numOfDetected + 1;
				
				$RemoveFault( wireName );


			end // "while( !$feof(faultFile))"

			coverage = numOfDetected * 100.0  /  numOfFaults;
			$display("number of faults = %d",numOfFaults  );
			$display("number of detected faults = %d", numOfDetected );
			$display("Coverage = %f %%\n", coverage  );
			$getSystemTime("end..");
								
			$fwrite( resultFile, "%b %b %b %b %d %d   %f\n",
					 PRPG1_Poly, PRPG2_Poly, MISR1_Poly, MISR2_Poly, numOfRounds,
					 numOfRounds * Shift_Cnt, coverage  );

		end //"while ( !$feof(cfgFile) ) "

		$stop;
				
	end
	
	
endmodule