module faultyDSP (cirCLK, cirRST, cirSTART, Input, Output);
	
	input cirCLK, cirRST, cirSTART;
	input [127:0] Input;
	output [65:0] Output;
	
	wire [63:0] dA, dB, result;
	wire done, carryOut;
	
	quadSerialAdder DSP (cirCLK, cirRST, cirSTART, dA, dB, done, result, carryOut);
	
	assign dA = Input[63:0];
	assign dB = Input[127:64];
	assign Output = {result[63:1], 1'b1, carryOut, done};

endmodule

