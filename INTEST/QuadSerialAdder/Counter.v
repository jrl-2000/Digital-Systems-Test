module Counter (clk, rst, zero, load, en, din, qout, co);
	
	input clk, rst, zero, load, en;
	input [3:0] din;
	output reg [3:0] qout;
	output co;

	always @(posedge clk, posedge rst ) begin
		if(rst)
			qout <= 4'b0000;
		else if (zero)
			qout <= 4'b0000;
		else if (load)
			qout <= din;
		else if (en)
			qout <= qout + 1;
	end
	
	assign co = (qout == 4'b1111) ? 1'b1 : 1'b0;
	
endmodule
