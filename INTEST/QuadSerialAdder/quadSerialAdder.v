module quadSerialAdder (clk, rst, start, dA, dB,
						done, result, carryOut);

	input clk, rst, start;
	input [63:0] dA, dB;
	output [63:0] result;
	output done, carryOut;
	
	wire enbA, enbB, enbR, loadA, loadB, loadR, zeroA, zeroB, zeroR, zeroD;
	
	Datapath DP (clk, rst, enbA, enbB, enbR, loadA, loadB, loadR, 
				 zeroA, zeroB, zeroR, zeroD, dA, dB, result, carryOut);
	Controller CU (clk, rst, start, enbA, enbB, enbR, 
				   loadA, loadB, loadR, zeroA, zeroB, zeroR, zeroD, done);
	
endmodule