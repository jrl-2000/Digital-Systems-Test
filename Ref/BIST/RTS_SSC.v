//-----------------------------------------------------------------------
// Title: BIST design and implementation
// Date: 28-April-2023
//-----------------------------------------------------------------------
`timescale 1 ns / 1ns

module RTS_SSC();

	parameter PRPG_Size = 16;      //readdata: 16 bits
	parameter SRSG_Size = 64;
	parameter MISR_Size = 27;      //writedata:16 + read_reg + write_reg + addr:8 + done
	parameter SISA_Size = 64;
	
	parameter Shift_Cnt   = 64;  
	parameter numOfRounds = 200;
	parameter numOfConfig = 1;
	
	reg [1000:1] str;
	
	integer sigFile, cfgFile, faultFile, resultFile;
	integer status;
	integer i;

	reg  masterRst, clk = 0;
	wire NbarT, internalRst;
	wire PRPG_En, SRSG_En, SISA_En, MISR_En;
	wire done;
	wire Si;
	wire So;
	reg  start;
	
	wire [MISR_Size-1:0] PO;
	
	reg  [PRPG_Size - 1:0] PRPG_Poly;
	reg  [PRPG_Size - 1:0] PRPG_Seed;
	wire [PRPG_Size - 1:0] PRPG_Out;
	
	reg  [MISR_Size - 1:0] MISR_Poly = 1;
	reg  [MISR_Size - 1:0] MISR_Seed = 0;
	wire [MISR_Size - 1:0] MISR_Out;
	reg  [MISR_Size - 1:0] Golden_MISR_Out = 0;

	reg  [SRSG_Size - 1:0] SRSG_Poly = 4;
	reg  [SRSG_Size - 1:0] SRSG_Seed = 1;
	
	reg  [SISA_Size - 1:0] SISA_Poly = 1;
	reg  [SISA_Size - 1:0] SISA_Seed = 0;
	wire [SISA_Size - 1:0] SISA_Out;
	reg  [SISA_Size - 1:0] Golden_SISA_Out = 0;
	
	reg stuckAtVal;
	reg [ 8 * 80 : 1 ] wireName;
	integer numOfFaults = 0;
	integer numOfDetected = 0;
	real coverage;

	SSC_net FUT (clk, internalRst, start, PRPG_Out[15:0], PO[15:0], PO[23:16], PO[24], PO[25], PO[26], Si, So, NbarT);

	LFSR #(PRPG_Size) PRPG( clk, internalRst, PRPG_En, PRPG_Poly, PRPG_Seed, PRPG_Out );
		
	MISR #(MISR_Size) MISR_1( clk, internalRst, MISR_En, MISR_Poly, MISR_Seed, PO, MISR_Out );
	
	SRSG #(SRSG_Size) SRSG_1( clk, internalRst, SRSG_En, SRSG_Poly, SRSG_Seed, Si );

	SISA #(SISA_Size) SISA_1( clk, internalRst, SISA_En, SISA_Poly, SISA_Seed, So, SISA_Out );
	
	RTS_Controller  #(Shift_Cnt, numOfRounds) RTS_Controller_1( clk, masterRst, NbarT, internalRst, PRPG_En, SRSG_En, SISA_En, MISR_En, done );

	always #5 clk = !clk;

	initial begin		
		sigFile =$fopen ("Signature.txt", "w");
		resultFile =$fopen ("result.txt", "w");

		//Start "Generating a random configuration file"
		cfgFile =$fopen ("Configuration.txt", "w");
		$fwrite( cfgFile, "PRPG_Poly\tSRSG_Poly\tMISR_Poly\tSISA_Poly\n"  );
		
		for( i = 1; i <= numOfConfig; i = i + 1 ) begin
		
			
		    PRPG_Poly = $random;
			SRSG_Poly = {$random,$random};
			
			MISR_Poly = $random; 
			SISA_Poly = {$random,$random};
			
			$fwrite( cfgFile, "%b %b %b %b\n", PRPG_Poly, SRSG_Poly, MISR_Poly, SISA_Poly );
		end
		$fclose( cfgFile );
		//end "Generating a random configuration file"
	
		PRPG_Seed = 12;
		SRSG_Seed = 5;
		MISR_Seed = 13;
		SISA_Seed = 24;

		// Start "Generating Dictionary of Signatures for Various Configurations"
		cfgFile =$fopen ("Configuration.txt", "r");
		status = $fscanf(cfgFile, "%s\t%s\t%s\t%s\n", str, str, str, str);	
		
		i = 0;
		$display("Generating Dictionary of Signatures for Various Configurations ...");
		while (!$feof(cfgFile)) begin
			
			i = i + 1;
			//Apply Configurations
			status = $fscanf(cfgFile, "%b %b %b %b\n", PRPG_Poly, SRSG_Poly, MISR_Poly, SISA_Poly);
			
			#5 masterRst = 1'b1;
			#20 masterRst = 1'b0;
			
			start = 1'b1;
	        #13;
            start = 1'b0;
			
			//Wait for signature		
			@( posedge done );
			$fwrite(sigFile, "%b %b\n", MISR_Out, SISA_Out);
			$display("Signature for configuration %d was generated ", i);
		end

		$fclose(sigFile);

		#1;
		// end "Generating Dictionary of Signatures for Various Configurations"
		
		$display("Signature for configuration generated ");

		// "Fault Simulation"
		
		$FaultCollapsing (RTS_SSC.FUT, "SSC.flt");	

		sigFile =$fopen ("Signature.txt", "r");
		cfgFile =$fopen ("Configuration.txt", "r");
		status = $fscanf(cfgFile, "%s\t%s\t%s\t%s\n", str, str, str, str);	
		
		i = 0;
		start = 1'b0;
		
		$fwrite(resultFile, "PRPG_Poly\tSRSG_Poly\tMISR_Poly\tSISA_Poly\t#Rounds\t#ClockTicks\tCoverage\n");

		$getSystemTime("Starting Fault Simulation..");

		while (!$feof(cfgFile)) begin

			i = i + 1;
			$display("###############Configuration %d...###############", i);
			//Extract golden signature
			status = $fscanf(sigFile, "%b %b\n", Golden_MISR_Out, Golden_SISA_Out);

			//Apply Configurations
			status = $fscanf(cfgFile, "%b %b %b %b \n", PRPG_Poly, SRSG_Poly, MISR_Poly, SISA_Poly);
		     #10;
			faultFile =$fopen ("SSC.flt", "r");					
			numOfFaults = 0;
			numOfDetected = 0;
			
			start = 1'b1;
	        #13;
            start = 1'b0;
			
			while(!$feof(faultFile)) begin	

				status = $fscanf(faultFile,"%s s@%b\n",wireName, stuckAtVal);			

				numOfFaults = numOfFaults + 1; 
				$InjectFault (wireName, stuckAtVal);


				masterRst = 1'b1;
				#1 masterRst = 1'b0;

				//Wait for signature		
				@(posedge done);

				//Compare
				if({ MISR_Out, SISA_Out } != { Golden_MISR_Out, Golden_SISA_Out })
					numOfDetected = numOfDetected + 1;
					
				$RemoveFault(wireName);


			end // "while( !$feof(faultFile))"

			coverage = numOfDetected * 100.0  /  numOfFaults;
			$display("number of faults = %d",numOfFaults);
			$display("number of detected faults = %d", numOfDetected);
			$display("Coverage = %f %%\n", coverage);
			$getSystemTime("end..");
			
			$fwrite(resultFile, "%b %b %b %b %d %d   %f\n",
					 PRPG_Poly, SRSG_Poly, MISR_Poly, SISA_Poly, numOfRounds,
					 numOfRounds * Shift_Cnt, coverage);
						

		end //"while ( !$feof(cfgFile) ) "

		$stop;
				
	end

endmodule