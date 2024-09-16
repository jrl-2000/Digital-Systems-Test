`timescale 1ns / 1ns

module VirtualTester ();

	parameter instructionWidth = 3;
	parameter inWidth = 128;
	parameter outWidth = 66;
	parameter responseNumOfClk = 21;	// 4-clk (IDLE state) + 1-clk (INITIAL state) + 16-clk (ADD state)
	parameter cirCLK_period = 30;
	parameter TCLK_period = 30;
	
	parameter [2:0]bypass_instruction  = 3'b111;
	parameter [2:0]intest_instruction  = 3'b011;
	parameter [2:0]sample_instruction  = 3'b010; 
	parameter [2:0]preload_instruction = 3'b001;
	parameter [2:0]extest_instruction  = 3'b000;
	
	reg [inWidth-1:0] In_Pin;
	reg TCLK = 1'b1;
	reg TMS, TDI;
	reg cirCLK = 1'b1;
	reg cirRST = 1'b1;
	reg cirSTART = 1'b0;
	reg NbarT = 1'b1;
	wire TDO;
	wire [outWidth-1:0] Out_Pin;
	
	
	reg [instructionWidth-1:0] Instruction;
	reg [inWidth-1:0] TestData;
	reg [outWidth-1:0] Output;
	integer i, index, testFile, status, reportFile;
	
	BS_DSP CUT (TCLK, TMS, TDI, cirCLK, cirRST, cirSTART, In_Pin, Out_Pin, TDO);
	
	always #(cirCLK_period/2) cirCLK = ~cirCLK;
	
	always @(NbarT) begin
		if (NbarT == 1'b0) begin
			cirRST = 1'b1;
			cirSTART = 1'b0;
			#40
			cirRST = 1'b0;
			#20				
			cirSTART = 1'b1;
			#(2*cirCLK_period)
			cirSTART = 1'b0;
		end
	end
	
	always #(TCLK_period/2) TCLK = ~TCLK;
	
	initial begin
		reportFile = $fopen ("reportFile.txt", "w");
		testFile = $fopen ("testFile.txt", "r");
	
		repeat (5) begin
			TMS = 1'b1;	@(negedge TCLK); 		// 5 consecutive clocks for resetting
		end 	
			
		TMS = 1'b0;	@(negedge TCLK); 			// run_test_idle
		TMS = 1'b1;	@(negedge TCLK); 			// select_DR
		TMS = 1'b1;	@(negedge TCLK); 			// select_IR
	 	TMS = 1'b0;	@(negedge TCLK); 			// capture_IR
		TMS = 1'b0;	@(negedge TCLK); 			// shift_IR
		
		Instruction = intest_instruction;
		
		for (i = 0; i < instructionWidth-1; i = i+1) begin	
			TDI	= Instruction[i];
			TMS	= 1'b0;	@(negedge TCLK);		// shift_IR
		end
		TDI	= Instruction[instructionWidth -1];
		
		TMS	= 1'b1;	@(negedge TCLK);			// exit_IR
		TMS = 1'b1;	@(negedge TCLK); 			// update_IR
		TMS = 1'b1;	@(negedge TCLK);			// select_DR

		status = $fscanf(testFile,"%b\n", TestData);
		
		TMS = 1'b0;	@(negedge TCLK); 			// capture_DR
		TMS = 1'b0;	@(negedge TCLK); 			// shift_DR
	
		index = 0;	
		repeat(inWidth-1) begin 			
			TDI	=  TestData[index];	
			TMS	= 1'b0;	@(negedge TCLK);		// shift_DR
			index = index + 1; 	
		end			
		TDI	=  TestData[inWidth-1];	
			
		TMS	= 1'b1;	@(negedge TCLK);			// exit_DR
		TMS = 1'b1;	@(negedge TCLK); 			// update_DR
					
		while(!$feof(testFile)) begin	
			TMS = 1'b0;	@(negedge TCLK); 		// run_test_idle
			NbarT = 1'b0;
			repeat(responseNumOfClk) 			// CUT latency
				@(negedge TCLK); 
			NbarT = 1'b1;
			TMS = 1'b1;	@(negedge TCLK); 		// select_DR
			TMS = 1'b0;	@(negedge TCLK); 		// capture_DR
			TMS = 1'b0;	@(negedge TCLK); 		// shift_DR	
			
			status = $fscanf(testFile,"%b\n", TestData);
			
			index = 0;
			repeat(outWidth) begin 		
				TDI	=  TestData[index];
				TMS	= 1'b0;	@(negedge TCLK);	// shift_DR
				Output[index] = TDO;
				index = index + 1; 
			end 
			$fdisplay (reportFile, "Captured_Response = %b at %t  ", Output,  $time);
			
			repeat(inWidth-outWidth-1) begin 
				TDI	=  TestData[index];
				TMS	= 1'b0;	@(negedge TCLK);	// shift_DR
				index = index + 1; 	
			end 	
			TDI	=  TestData[inWidth-1];	
				
			TMS	= 1'b1;	@(negedge TCLK);		// exit_DR
			TMS = 1'b1;	@(negedge TCLK); 		// update_DR
		end	
		$fclose (testFile);	
		$fclose (reportFile);	
		
		TMS = 1'b1;	@(negedge TCLK); 			// select_DR
		TMS = 1'b1;	@(negedge TCLK); 			// select_IR
		TMS = 1'b1;	@(negedge TCLK); 			// test_logic_reset
		$stop;
	end

endmodule