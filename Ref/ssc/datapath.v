//------------------------------------------------------------------------------
// Course : ECE 5724 - Digital Systems Testing and Testable Design
// Title:   Homework 1: Logic design, Verilog modeling and testbenches
// Author:  Mozhgan Rezaie
// Date:    21-02-2024
//------------------------------------------------------------------------------

module datapath(clk, rst, incCnt1_out, cnt2_out,cnt1_out, Sel1_AMux, Sel2_AMux,
                Sel3_AMux, Sel4_AMux, Sel1_DMux,Sel2_DMux, read_reg,
				write_reg, load_min, load_temp, Sel1_AMux1, Sel2_AMux1);

	input clk, rst;
	input load_min, load_temp, Sel1_DMux, Sel2_DMux, write_reg, read_reg, Sel1_AMux1, Sel2_AMux1;
	input [7:0] incCnt1_out, cnt2_out,cnt1_out;
	input Sel1_AMux, Sel2_AMux, Sel3_AMux, Sel4_AMux;
	
	wire lt, load;
	wire [7:0]addr, min_addr,min_addrin; 
	wire [15:0]readdata, writedata, min_out, temp_out;
	
	comparator comp (readdata, min_out, lt);
	
	register #(16) min (readdata, clk, rst, load, min_out);
	
	register #(16) temp (readdata, clk, rst, load_temp, temp_out);
	
	register #(8)  miaddr (min_addrin, clk, rst, load, min_addr);
	
	mux2to1 #(8) m1(cnt1_out, cnt2_out, Sel1_AMux1, Sel2_AMux1, min_addrin);
	
	mux2to1 m2(min_out, temp_out, Sel1_DMux, Sel2_DMux, writedata);
	
	mux4to1 m4(cnt1_out, cnt2_out, incCnt1_out, min_addr, Sel1_AMux, Sel2_AMux, Sel3_AMux, Sel4_AMux, addr);
	
	memory mem(clk, rst, read_reg, write_reg, addr, writedata, readdata);

	assign load = load_min |lt ;

endmodule
 


