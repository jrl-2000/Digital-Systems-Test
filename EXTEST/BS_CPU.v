module BS_CPU (In_Pin, TMS, TCLK, TDI, TDO, Out_Pin);
	
	input [7:0] In_Pin;
	input TMS, TCLK, TDI;
	output TDO;
	output [15:0] Out_Pin;
	
	wire [7:0] In_CPU;
	wire [15:0] Out_CPU;
	wire ShiftIR, UpdateIR, ClockIR;
	wire ShiftDR, UpdateDR, ClockDR;
	wire ShiftBR, UpdateBR, ClockBR;
	wire ShiftBY, ClockBY;
	wire RstBar, ModeControl;
	wire Sout_IR, Sout_BS, Sout_BY;
	wire [2:0] Dout_IR;
	wire SelMux2, TriEn, Out_Mux4, Out_Mux2, Out_SynchFF, TCLKBar;
	wire [1:0] Sel_Mux4;
	
	Fictitious_CPU BS_CPU_Chip (In_CPU, Out_CPU);
	BSRegister_Block #(24) BS_Reg_CPU (.Din({In_Pin, Out_CPU}), .Sin(TDI), .TCLK(TCLK), .ShiftBR(ShiftBR), .UpdateBR(UpdateBR), .ClockBR(ClockBR), 
									   .RstBar(RstBar), .ModeControl(ModeControl), .Sout(Sout_BS), .Dout({In_CPU, Out_Pin}));	
	InstructionRegister_Block #(3) IR_Reg (.Din(3'b001), .Sin(TDI), .TCLK(TCLK), .ShiftIR(ShiftIR), .UpdateIR(UpdateIR), .ClockIR(ClockIR), 
										   .RstBar(RstBar), .Sout(Sout_IR), .Dout(Dout_IR));
	Decoder DCD (.Instruction(Dout_IR), .ShiftDR(ShiftDR), .UpdateDR(UpdateDR), .ClockDR(ClockDR), 
				 .ShiftBY(ShiftBY), .ClockBY(ClockBY),
				 .ShiftBR(ShiftBR), .UpdateBR(UpdateBR), .ClockBR(ClockBR), .ModeControl(ModeControl), .Select_DR(Sel_Mux4));	
	ByPassRegister_Cell BY_Reg (.Din(1'b0), .Sin(TDI), .TCLK(TCLK), .ShiftBY(ShiftBY), .ClockBY(ClockBY), .RstBar(RstBar), .TDO(Sout_BY));
	TAPController TAP (.TMS(TMS), .TCLK(TCLK), .RstBar(RstBar), .sel(SelMux2), .Enable(TriEn), .ShiftIR(ShiftIR), .ClockIR(ClockIR),
					   .UpdateIR(UpdateIR), .ShiftDR(ShiftDR), .ClockDR(ClockDR), .UpdateDR(UpdateDR));	
	MUX4_1 Mux4 (.in1(1'bX), .in2(1'bX), .in3(Sout_BY), .in4(Sout_BS), .sel(Sel_Mux4), .out(Out_Mux4));	
	MUX2_1 Mux2 (.in1(Out_Mux4), .in2(Sout_IR), .sel(SelMux2), .out(Out_Mux2));	
	D_FF SynchFF(.D(Out_Mux2), .CLK(~TCLK), .RstBar(RstBar), .Q(Out_SynchFF));	
	tristate Tri(.in(Out_SynchFF), .enable(TriEn), .out(TDO));

endmodule

