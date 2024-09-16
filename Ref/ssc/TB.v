//------------------------------------------------------------------------------
// Course : ECE 5724 - Digital Systems Testing and Testable Design
// Title:   Homework 1: Logic design, Verilog modeling and testbenches
// Author:  Mozhgan Rezaie
// Date:    21-02-2024
//------------------------------------------------------------------------------

module TB();
	reg  clk = 0, rst = 0, start = 0;
	wire  done;
	
	SSC top_tb (clk, rst, start, done);

	// clocking
    always #5 clk = ~clk;
	
	// Reseting
	initial begin
		#5 rst = 1'b1;
		#20 rst = 1'b0;
		@(negedge clk); 
	end

	// Applying start
	initial begin
		#6 start = 1'b1;
		#20 start = 1'b0;	
	end
	
	// test restults
	always @(done) begin 
		if (done == 1)  
			$stop;
	end
	
endmodule 

