module InstructionRegister_Cell (Din, Sin, TCLK, ShiftIR, UpdateIR, ClockIR, RstBar, Sout, Dout);
	
	input Din, Sin, TCLK, ShiftIR, UpdateIR;
	input ClockIR, RstBar;
	output Sout;
	output reg Dout;
	wire D_DF1;
	reg Q_DF1;
	
	assign D_DF1 = ShiftIR ? Sin: Din;
	always @(posedge TCLK, negedge RstBar)
		if(!RstBar) Q_DF1 <= 0; else if (!ClockIR) Q_DF1 <= D_DF1;
	always @(negedge TCLK, negedge RstBar)
		if(!RstBar) Dout <= 0; else if (UpdateIR) Dout <= Q_DF1;
	assign Sout = Q_DF1;
	
endmodule



module InstructionRegister_Block #(parameter Length = 3) (Din, Sin, TCLK, ShiftIR, UpdateIR, ClockIR, RstBar, Sout, Dout);

	input [Length -1 : 0] Din;
	input Sin, TCLK, ShiftIR, UpdateIR, ClockIR, RstBar;
	output Sout;
	output [Length -1 : 0] Dout;
	wire [Length -1 : 1] temp; 
      
	genvar i;
	generate for (i = Length-1; i >= 0 ; i = i - 1) begin
		if (i == Length-1)
			InstructionRegister_Cell Cel_N ( .Din(Din[i]), .Sin(Sin), .TCLK(TCLK), .ShiftIR(ShiftIR), .UpdateIR(UpdateIR), 
											 .ClockIR(ClockIR), .RstBar(RstBar), .Sout(temp[i]), .Dout(Dout[i]));
		else if (i < Length-1 & i > 0)
			InstructionRegister_Cell Cel_2ToN ( .Din(Din[i]), .Sin(temp[i+1]), .TCLK(TCLK), .ShiftIR(ShiftIR), .UpdateIR(UpdateIR),
												.ClockIR(ClockIR), .RstBar(RstBar), .Sout(temp[i]), .Dout(Dout[i]));
		else if (i == 0)
			InstructionRegister_Cell Cel_1 ( .Din(Din[i]), .Sin(temp[i+1]), .TCLK(TCLK), .ShiftIR(ShiftIR), .UpdateIR(UpdateIR), 
											 .ClockIR(ClockIR), .RstBar(RstBar), .Sout(Sout), .Dout(Dout[i]));
	end endgenerate

endmodule