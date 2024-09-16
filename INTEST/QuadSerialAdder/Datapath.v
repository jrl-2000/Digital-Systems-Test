module Datapath (clk, rst, 
				enbA, enbB, enbR, loadA, loadB, loadR, zeroA, zeroB, zeroR, zeroD,
				dA, dB,
				result, 
				carryOut);

	input clk, rst;
	input enbA, enbB, enbR, loadA, loadB, loadR, zeroA, zeroB, zeroR, zeroD;
	input [63:0] dA, dB;
	output [63:0] result;
	output carryOut;
	
	wire cin, cout;
	wire [3:0] dR;
	wire [63:0] qA, qB;
	
	shiftReg shiftRegA (clk, rst, enbA, loadA, zeroA, 4'b0000, dA, qA);
	shiftReg shiftRegB (clk, rst, enbB, loadB, zeroB, 4'b0000, dB, qB);
	shiftReg shiftRegR (clk, rst, enbR, loadR, zeroR, dR, 64'b0, result);
	Adder AdderAB (qA[3:0], qB[3:0], cin, dR, cout);
	DFF DFF_1bit (clk, rst, zeroD, cout, cin);
	assign carryOut = cin;
	
endmodule