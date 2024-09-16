//--------------------------------------------------------------------
// Title: Scan Testing by Verilog Vitual Tester
//--------------------------------------------------------------------

`timescale 1ns/1ns

module SSC_VT ();
	
	parameter ff = 64;  //flip flops
	parameter in_size_PI = 17; //input width
	parameter in_size_PO = 27; //output width
	
	reg clk, rst, start;
	reg [0:15]readdata;
	reg NbarT;
	reg Si;
	reg [0:ff-1] PPI;
	
	
	wire Gdone,Fdone;
	wire FSO,GSO;
	wire [0:15] GwriteData,FwriteData;
	wire[0:7] Faddr, Gaddr;
	wire Fread_reg, Fwrite_reg, Gwrite_reg, Gread_reg;
	reg[0:ff-1]GPPO,FPPO;
	
	integer i=0;
	reg [in_size_PI+ff:0] testvec; 
 
	integer testFile, faultFile;
	integer status;
    real	numofDetected = 0, numofFaults = 0;
	reg detected ;
	reg [8*50:1] wireName; 
    reg stuckAtVal;
	reg index;

	SSC_net GUT (clk,rst,start, readdata, GwriteData, Gaddr, Gread_reg, Gwrite_reg, Gdone, Si, GSO, NbarT);  	
	SSC_net FUT (clk,rst,start, readdata, FwriteData, Faddr, Fread_reg, Fwrite_reg, Fdone, Si, FSO, NbarT);  	
 
    always #30 clk = ~clk; 

	initial begin
	
		 clk=1'b0; numofDetected = 0; numofFaults = 0;
		
		faultFile = $fopen ("SSC_net.flt", "w");
		$FaultCollapsing(SSC_VT.FUT,"SSC_net.flt");
		$fclose(faultFile);
		
		faultFile = $fopen ("SSC_net.flt", "r");
		
		
        while( !$feof(faultFile)) begin 
			detected = 1'b 0;
			status = $fscanf(faultFile, "%s s@%b\n", wireName, stuckAtVal);
			$InjectFault(wireName, stuckAtVal);
			
			testFile = $fopen ("SSc_Unfolded.pat", "r");
			rst = 1'b1;
			#50 rst = 1'b0;
			#50;
			while(!$feof(testFile) && (detected==0)) begin 
				#30
				
				status = $fscanf(testFile,"%b\n", testvec);	
				NbarT=0;
				{index,start, readdata, PPI} = testvec;
				 				
				
				NbarT = 1'b1;  
				#30
				 
				for( i=0; i< ff; i=i+1)begin
				
					Si = PPI[i];  
					@(posedge clk);
					GPPO[i]=GSO;
					FPPO[i]=FSO;
					#30;
				end

				NbarT = 1'b0;
				@(posedge clk);
			
				if({FwriteData,Faddr, Fread_reg, Fwrite_reg, Fdone, FPPO} != {GwriteData, Gaddr, Gread_reg, Gwrite_reg, Gdone, GPPO})  
				begin
					
					detected = 1;
					numofDetected = numofDetected + 1;
				end
			end //testfile
					numofFaults = numofFaults +1;
        $fclose(testFile);
        $RemoveFault(wireName);
        #30;
				
            end//faultfile
			
		
		 $display("number of detected faults: %f\n", numofDetected);
		 $display("number of faults: %f\n", numofFaults);
		 $display("Fault coverage: %f\n", numofDetected * 100 / numofFaults);
		$stop;
		
    end//initial 
endmodule 