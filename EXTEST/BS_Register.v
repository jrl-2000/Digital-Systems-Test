module BSRegister_Cell(Din, Sin, TCLK, ShiftBR, UpdateBR, ClockBR, RstBar, ModeControl, Sout, Dout);
	
	input Din, Sin, TCLK, ShiftBR, UpdateBR, ClockBR, RstBar, ModeControl;
	output Sout, Dout;
	wire D_DF1;
	reg Q_DF1, Q_DF2;
	
	assign D_DF1 = ShiftBR ? Sin: Din;
	always @(posedge TCLK, negedge RstBar)
		if (!RstBar) Q_DF1 <= 0; else if (!ClockBR) Q_DF1 <= D_DF1;
	always @(negedge TCLK, negedge RstBar)
		if(!RstBar) Q_DF2 <= 0; else if (UpdateBR) Q_DF2 <= Q_DF1;
	assign Dout = ModeControl ? Q_DF2: Din;
	assign Sout = Q_DF1;
	
endmodule




module BSRegister_Block #(parameter Length = 8) (Din, Sin, TCLK, ShiftBR, UpdateBR, ClockBR, RstBar, ModeControl, Sout, Dout);

	input [Length -1 : 0] Din;
	input Sin, TCLK, ShiftBR, UpdateBR, ClockBR, RstBar, ModeControl;
	output Sout;
	output [Length -1 : 0] Dout;
	wire [Length -1 : 1] temp; 
      
	genvar i;
	generate for (i = Length-1; i >= 0 ; i = i - 1) begin
		if (i == Length-1) 
			BSRegister_Cell Cel_N ( .Din(Din[i]), .Sin(Sin), .TCLK(TCLK), .ShiftBR(ShiftBR), .UpdateBR(UpdateBR), .ClockBR(ClockBR),
									.RstBar(RstBar), .ModeControl(ModeControl), .Sout(temp[i]), .Dout(Dout[i]));
		else if (i < Length-1 & i > 0)
			BSRegister_Cell Cel_2ToN ( .Din(Din[i]), .Sin(temp[i+1]), .TCLK(TCLK), .ShiftBR(ShiftBR), .UpdateBR(UpdateBR), .ClockBR(ClockBR),
									   .RstBar(RstBar),.ModeControl(ModeControl), .Sout(temp[i]), .Dout(Dout[i]));
		else if (i == 0)
			BSRegister_Cell Cel_1 ( .Din(Din[i]), .Sin(temp[i+1]), .TCLK(TCLK), .ShiftBR(ShiftBR), .UpdateBR(UpdateBR), .ClockBR(ClockBR),
									.RstBar(RstBar), .ModeControl(ModeControl), .Sout(Sout), .Dout(Dout[i]));
	end endgenerate

endmodule