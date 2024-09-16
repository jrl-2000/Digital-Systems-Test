`timescale 1ns / 1ps

`define Reset			3'b000
`define GenData			3'b001
`define ShiftData		3'b010
`define NormalMode		3'b011
`define GenSignature	3'b100
`define Exit			3'b101

module STUMPS_Controller	#(parameter ShiftSize = 1, numOfRounds = 50 )
							(clk, rstIn, NbarT, rstOut,PRPG1_En, PRPG2_En, MISR1_En, MISR2_En, done );
			
	input clk, rstIn;
	output reg NbarT, rstOut, PRPG1_En;
	output reg PRPG2_En, MISR2_En, MISR1_En;
	output reg done;
	
	reg [2:0] present_state, next_state;
	reg [5:0]shtCount; //Pay attension. vector size should be log2 of ShiftSize
	reg shtCount_Rst, shtCount_En;
	reg [15:0]testVectorCount;//Pay attension. vector size should be log2 of numOfRounds
	reg testCount_Rst, testCount_En;
	
	
	always @( posedge clk or posedge rstIn ) 
		if( rstIn )
 			present_state <= `Reset;
 		else 
 			present_state <= next_state;

	always @( present_state or shtCount ) begin : Combinatorial
     
		NbarT = 1'b0; rstOut = 1'b0; PRPG1_En = 1'b0; 
		PRPG2_En = 1'b0; MISR2_En = 1'b0; 
		shtCount_Rst = 1'b0; shtCount_En = 1'b0;
		testCount_Rst = 1'b0; testCount_En = 1'b0;				
		MISR1_En = 1'b0; done = 1'b0;
     
		case ( present_state )
			`Reset : begin 
				next_state = `GenData;
				rstOut = 1'b1;
				NbarT = 1'b1;				
				testCount_Rst = 1'b1;
			end
			
			`GenData : begin
				next_state = `ShiftData;
				PRPG1_En = 1'b1;
				shtCount_Rst = 1'b1;
			
			end
			
			`ShiftData : begin
				next_state = ( shtCount < ShiftSize - 1 ) ? `ShiftData : `NormalMode;
				shtCount_En = 1'b1;
				PRPG2_En = 1'b1;
				MISR2_En = 1'b1;
				NbarT = 1'b1;
			end
			
			`NormalMode : begin
				next_state = `GenSignature;
				NbarT = 1'b0;
			end
			
			`GenSignature : begin
				next_state = ( testVectorCount < numOfRounds - 1 ) ? `GenData : `Exit; 
				testCount_En = 1'b1;
				MISR1_En = 1'b1;
			end
			
			`Exit : begin
				next_state = `Exit;
				done = 1'b1;
			end
			
			default : next_state = `Reset;
		endcase     
	end   
			
	//Counting number of bits shifted into scan chain
	always @ ( posedge clk ) begin
	
		if( shtCount_Rst ) 
			shtCount = 0;
			
		else if( shtCount_En )
			shtCount =  shtCount + 1;
	end

	//Counting number of applied test vectors
	always @ ( posedge clk ) begin
	
		if( testCount_Rst ) 
			testVectorCount = 0;
			
		else if( testCount_En )
			testVectorCount =  testVectorCount + 1;
	end
	
endmodule