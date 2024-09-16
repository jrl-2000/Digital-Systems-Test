//------------------------------------------------------------------------------
// Course : ECE 5724 - Digital Systems Testing and Testable Design
// Title:   Homework 1: Logic design, Verilog modeling and testbenches
// Author:  Mozhgan Rezaie
// Date:    21-02-2024
//------------------------------------------------------------------------------

module comparator #(parameter N = 16 )(in1, in2, lt);

input	[N-1:0] in1, in2;
output	lt;

assign lt = in1<in2;

endmodule
