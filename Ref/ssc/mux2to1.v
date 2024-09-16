//------------------------------------------------------------------------------
// Course : ECE 5724 - Digital Systems Testing and Testable Design
// Title:   Homework 1: Logic design, Verilog modeling and testbenches
// Author:  Mozhgan Rezaie
// Date:    21-02-2024
//------------------------------------------------------------------------------

module mux2to1 #(parameter N = 16 )(in1, in2, sel1, sel2, outMUX);
input	[N-1:0] in1, in2;
input 	sel1, sel2; 
output	[N-1:0] outMUX;

assign outMUX = (sel1)? in1:
		(sel2)? in2:
		{(N){1'b0}};
endmodule
