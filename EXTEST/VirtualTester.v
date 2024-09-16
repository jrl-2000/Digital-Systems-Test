`timescale 1ns / 1ns

module VirtualTester ();

	parameter instructionWidth = 3;
	parameter inWidth = 8;
	parameter outWidth = 4;
	parameter interconnectWidth = 16;
	
	parameter [2:0]bypass_instruction  = 3'b111;
	parameter [2:0]intest_instruction  = 3'b011;
	parameter [2:0]sample_instruction  = 3'b010; 
	parameter [2:0]preload_instruction = 3'b001;
	parameter [2:0]extest_instruction  = 3'b000;
	
	reg [inWidth-1:0] In_Pin;
	reg TCLK = 1'b1;
	reg TMS, TDI;
	wire TDO;
	wire [outWidth-1:0] Out_Pin;
	
	reg [2*instructionWidth-1:0] Instruction;
	reg [interconnectWidth-1:0] TestData;
	reg [interconnectWidth-1:0] Output;
	integer i, index, testFile, status, reportFile;
	
	BS_BoardLevel CUT (In_Pin, TMS, TCLK, TDI, TDO, Out_Pin);
	
	always #15 TCLK = ~TCLK;
	
	initial begin
		reportFile = $fopen ("reportFile.txt", "w");
		testFile = $fopen ("testFile.txt", "r");
	
		repeat (5) begin
			TMS = 1'b1;	@(negedge TCLK); 	// 5 consecutive clocks for resetting
		end 
		
		TMS = 1'b0;	@(negedge TCLK); 		// run_test_idle
		TMS = 1'b1;	@(negedge TCLK); 		// select_DR
		TMS = 1'b1;	@(negedge TCLK); 		// select_IR
	 	TMS = 1'b0;	@(negedge TCLK); 		// capture_IR
		TMS = 1'b0;	@(negedge TCLK); 		// shift_IR
		
		Instruction = {preload_instruction, bypass_instruction};
		
		for (i = 0; i < 2*instructionWidth-1; i = i+1) begin	
			TDI	= Instruction[i];
			TMS	= 1'b0;	@(negedge TCLK);	// shift_IR
		end
		TDI	= Instruction[2*instructionWidth -1];
		
		TMS	= 1'b1;	@(negedge TCLK);		// exit_IR
		TMS = 1'b1;	@(negedge TCLK); 		// update_IR
		TMS = 1'b1;	@(negedge TCLK);		// select_DR
		
		status = $fscanf(testFile,"%b\n", TestData);
		
		TMS = 1'b0;	@(negedge TCLK); 		// capture_DR
		TMS = 1'b0;	@(negedge TCLK); 		// shift_DR

		index = 0;
		repeat(interconnectWidth) begin 		
			TDI	=  TestData[index];
			TMS	= 1'b0;	@(negedge TCLK);	// shift_DR
			index = index + 1; 
		end
		
		index = 0;
		repeat(inWidth-1) begin 
			TDI	=  1'b0;
			TMS	= 1'b0;	@(negedge TCLK);	// shift_DR
			index = index + 1; 
		end 
		TDI	=  1'b0;
		
		TMS	= 1'b1;	@(negedge TCLK);		// exit_DR
		TMS = 1'b1;	@(negedge TCLK); 		// update_DR
		TMS = 1'b1;	@(negedge TCLK); 		// select_DR
		TMS = 1'b1;	@(negedge TCLK); 		// select_IR
		TMS = 1'b0;	@(negedge TCLK); 		// capture_IR
		TMS = 1'b0;	@(negedge TCLK); 		// shift_IR
		
		Instruction = {extest_instruction, extest_instruction};
		
		for (i = 0; i < 2*instructionWidth-1; i = i+1) begin	
			TDI	= Instruction[i];
			TMS	= 1'b0;	@(negedge TCLK);	// shift_IR
		end
		TDI	= Instruction[2*instructionWidth -1];

		TMS	= 1'b1;	@(negedge TCLK);		// exit_IR
		TMS = 1'b1;	@(negedge TCLK); 		// update_IR
		TMS = 1'b1;	@(negedge TCLK);		// select_DR
		
		while(!$feof(testFile)) begin
			status = $fscanf(testFile,"%b\n", TestData);
			
			TMS = 1'b0;	@(negedge TCLK); 	// capture_DR
			TMS = 1'b0;	@(negedge TCLK); 	// shift_DR
			
			index = 0;						
			repeat(outWidth) begin 
				TDI = 0;
				TMS	= 1'b0;	@(negedge TCLK);// shift_DR
				index = index + 1; 
			end 	
			
			index = 0;
			repeat(interconnectWidth) begin 		
				TDI	=  TestData[index];
				TMS	= 1'b0;	@(negedge TCLK);// shift_DR
				Output[index] = TDO;
				index = index + 1; 
			end 
			$fdisplay (reportFile, "Captured_Response = %b at %t  ", Output,  $time);
			
			index = 0;
			repeat(inWidth-1) begin 
				TDI	=  1'b0;
				TMS	= 1'b0;	@(negedge TCLK);// shift_DR
				index = index + 1; 
			end 
			TDI	=  1'b0;
			
			TMS	= 1'b1;	@(negedge TCLK);	// exit_DR
			TMS = 1'b1;	@(negedge TCLK); 	// update_DR
			TMS = 1'b1;	@(negedge TCLK); 	// select_DR
		
		end
		$fclose (testFile);
		$fclose (reportFile);
	
		TMS = 1'b1;	@(negedge TCLK); 		// select_IR
		TMS = 1'b1;	@(negedge TCLK); 		// test_logic_reset
		$stop;
end
endmodule