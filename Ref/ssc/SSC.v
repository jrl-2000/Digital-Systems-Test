//------------------------------------------------------------------------------
// Course : ECE 5724 - Digital Systems Testing and Testable Design
// Title:   Homework 1: Logic design, Verilog modeling and testbenches
// Author:  Mozhgan Rezaie
// Date:    21-02-2024
//------------------------------------------------------------------------------

module SSC(clk, rst, start, done);

	input clk, rst;
	input start;
	output done;

	wire Sel1_AMux, Sel2_AMux, Sel3_AMux, Sel4_AMux, Sel1_DMux,Sel2_DMux, 
	     read_reg, write_reg, load_min, load_temp, Sel1_AMux1, Sel2_AMux1;
	wire [7:0]incCnt1_out, cnt2_out,cnt1_out;
	
	controller CU(clk, rst, start, done, incCnt1_out, cnt2_out,cnt1_out, Sel1_AMux, Sel2_AMux, 
				Sel3_AMux, Sel4_AMux, Sel1_DMux,Sel2_DMux, read_reg, write_reg, load_min, load_temp,Sel1_AMux1, Sel2_AMux1);

	datapath   DP(clk, rst, incCnt1_out, cnt2_out,cnt1_out, Sel1_AMux, Sel2_AMux, Sel3_AMux,
	            Sel4_AMux, Sel1_DMux,Sel2_DMux, read_reg, write_reg, load_min, load_temp,Sel1_AMux1, Sel2_AMux1);
	
endmodule

