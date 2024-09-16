module Testbench;

    reg  clk = 1'b0, rst = 1'b0, start = 1'b0;
	reg  [63:0] dA = 64'b0, dB = 64'b0;
    wire [63:0] result;
	wire done, carryOut;

    quadSerialAdder CUT (clk, rst, start, dA, dB, done, result, carryOut);
    
	// clocking
    always #7 clk = ~clk;
	
	// Reseting
	initial begin
		#3 rst = 1'b1;
		#19 rst = 1'b0;
	end
	
	// Starting
	initial begin
		repeat (2) begin
			#42 start = 1'b1;
			#28 start = 1'b0;
			#250;
		end
	end
	
	// Providing input data
	initial begin
		#50
		dA = 64'h0000000000000017;
		dB = 64'h000000000000000F;
		#240
		dA = 64'h0000435567000009;
		dB = 64'h0012345790000005;
		#500
		$stop;
	end
	
endmodule