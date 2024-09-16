//------------------------------------------------------------------------------
// Course : ECE 5724 - Digital Systems Testing and Testable Design
// Title:   Homework 1: Logic design, Verilog modeling and testbenches
// Author:  Mozhgan Rezaie
// Date:    21-02-2024
//------------------------------------------------------------------------------

`define Idle      3'b000
`define Start     3'b001
`define Init      3'b010
`define findmin   3'b011
`define update0   3'b100
`define update1   3'b101
`define update2   3'b110
`define Done      3'b111

module controller (clk, rst, start, done, incCnt1_out, cnt2_out,cnt1_out, Sel1_AMux, Sel2_AMux, 
				Sel3_AMux, Sel4_AMux, Sel1_DMux,Sel2_DMux, read_reg, write_reg, load_min, load_temp, Sel1_AMux1, Sel2_AMux1);
				
	input  clk, rst, start;
    output reg done;
	output reg Sel1_AMux, Sel2_AMux, 
	Sel3_AMux, Sel4_AMux, Sel1_DMux,Sel2_DMux, read_reg, write_reg, load_min, load_temp, Sel1_AMux1, Sel2_AMux1;
	output reg [7:0] incCnt1_out, cnt2_out,cnt1_out;
	
	reg pl_cnt2 , en_cnt1 , en_cnt2 , co1, co2, pl_cnt1;
	reg [2:0] pstate,nstate;

	assign incCnt1_out = cnt1_out + 1;

	//sequential part
	always @(posedge clk, posedge rst)begin
		if (rst) 
			pstate <= `Idle;
		else 
			pstate <= nstate;
	end
			
	//combinational part
	always @(pstate, co1, co2, start) begin
	
		pl_cnt2 = 0; pl_cnt1= 0; en_cnt1 = 0; en_cnt2 = 0;
		load_temp = 1'b0; load_min = 1'b0;
		done = 1'b0;
		write_reg= 1'b0; read_reg= 1'b0;
		Sel1_AMux= 1'b0; Sel2_AMux= 1'b0; 
		Sel3_AMux= 1'b0; Sel4_AMux= 1'b0; Sel1_DMux= 1'b0;Sel2_DMux= 1'b0;
		Sel1_AMux1= 1'b0;Sel2_AMux1= 1'b0;
		
		case (pstate)
			`Idle : begin
				nstate = start ? `Start :`Idle;
				
			end	

			`Start : begin 
				nstate = start ? `Start :`Init;
				
			end
	
			`Init : begin
				nstate = `findmin;
				en_cnt2=1;
				pl_cnt2=1;
				load_min=1;
				read_reg=1;
				Sel1_AMux=1;
				Sel1_AMux1= 1;
			end

			`findmin : begin
				nstate = co2 ? `update0 : `findmin;
				en_cnt2=1;
				Sel2_AMux=1;
				read_reg=1;
				Sel2_AMux1= 1;
			end
			
			`update0 : begin
				nstate = `update1;
				Sel1_AMux=1;
				load_temp=1;
				read_reg=1;
			end
			
			`update1 : begin
				nstate = `update2;
				Sel1_AMux=1;
				Sel1_DMux=1;
				write_reg=1;
				en_cnt1=1;

			end
			
			`update2 : begin
				nstate = co1 ? `Done : `Init;
				
				Sel4_AMux=1;
				Sel2_DMux=1;
				write_reg=1;
			end
			
			`Done : begin
				nstate = `Idle;
				done = 1'b1;
			end

			default: nstate = `Idle;
			
		endcase
	end   //always
	
//Counter1
	  always @(posedge clk, posedge rst) begin
		if(rst)
				cnt1_out <=  {(8){1'b0}};
	  
		else if(pl_cnt1)
				cnt1_out <=  {(8){1'b0}};
	  
		else if(en_cnt1)
				cnt1_out <=  cnt1_out + 1;
	  
		else
				cnt1_out <=  cnt1_out;
  end
  assign co1 = &{cnt1_out};
  
//Counter2
  always @(posedge clk, posedge rst) begin
		if(rst)
				cnt2_out <=  {(8){1'b0}};
	  
		else if(pl_cnt2)
				cnt2_out <=  incCnt1_out;
	  
		else if(en_cnt2)
				cnt2_out <=  cnt2_out + 1;
	  
		else
				cnt2_out <=  cnt2_out;
  end
  assign co2 = &{cnt2_out};
		
endmodule

