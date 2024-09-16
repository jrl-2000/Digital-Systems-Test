module DFF (clk, rst, zero, din, qout);

	input clk, rst, zero;
	input din;
	output reg qout;
	
	always @(posedge clk, posedge rst) begin
		if (rst)
			qout <= 1'b0;
		else if (zero)
			qout <= 1'b0;
		else 
			qout <= din;
	end
	
endmodule