module Adder(a, b, cin, sum, cout);

	input [3:0] a, b;
	input cin;
	output [3:0] sum;
	output cout;
	
	assign {cout, sum} = {1'b0, a} + {1'b0, b} + cin;
	
endmodule