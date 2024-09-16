module Decoder (Instruction, ShiftDR, UpdateDR, ClockDR,			
              	ShiftBY, ClockBY, ShiftBR, UpdateBR, ClockBR, ModeControl, Select_DR);

input  [2:0] Instruction;
input  ShiftDR, UpdateDR, ClockDR;
output reg ShiftBY, ClockBY;
output reg ShiftBR, UpdateBR, ClockBR, ModeControl;
output reg [1:0] Select_DR;

parameter [2:0]bypass_instruction  = 3'b111;
parameter [2:0]intest_instruction  = 3'b011;
parameter [2:0]sample_instruction  = 3'b010;
parameter [2:0]preload_instruction = 3'b001;
parameter [2:0]extest_instruction  = 3'b000;
	
parameter [1:0]sel_BS    = 2'b11;
parameter [1:0]sel_BY    = 2'b10;
parameter [1:0]sel_UD    = 2'b01;
parameter [1:0]sel_NONE  = 2'b00;	
	
always @(Instruction, ShiftDR, UpdateDR, ClockDR) begin
		
	ShiftBY	= 1'b0; 
	ClockBY = 1'b0;
	ShiftBR	= 1'b0;
	UpdateBR = 1'b0;
	ClockBR	= 1'b0;
	ModeControl	= 1'b0;
	Select_DR = sel_NONE;

	if (Instruction == bypass_instruction) begin
		ShiftBY = ShiftDR;
		ClockBY = ClockDR; 
		Select_DR = sel_BY;
	end					
	
	else begin
		ShiftBR = ShiftDR;
		UpdateBR = UpdateDR;
		ClockBR = ClockDR;
		ModeControl = 1'b1;
		Select_DR = sel_BS;
	end
end

endmodule