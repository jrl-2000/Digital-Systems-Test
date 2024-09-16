module shiftReg (clk, rst, en, load, zero, filler, din, qout);

	input clk, rst, en, load, zero;
	input [3:0] filler;
	input [63:0] din;
	output reg [63:0] qout;
	
	always @(posedge clk, posedge rst) begin
		if (rst)
			qout <= 64'b0;
		else if (zero)
			qout <= 64'b0;
		else if (load)
			qout <= din;
		else if (en)
			qout <= {filler, qout[63:4]};
	end
	
endmodule