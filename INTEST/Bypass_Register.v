module ByPassRegister_Cell (Din, Sin, TCLK, ShiftBY, ClockBY, RstBar, TDO);
	
	input Din, Sin, TCLK;
	input ShiftBY, ClockBY, RstBar;
	output reg TDO;
	wire D_DF;
	
	assign D_DF = ShiftBY ? Sin: Din;
	always @(posedge TCLK, negedge RstBar)
		if(!RstBar) TDO <= 0; else if (!ClockBY) TDO <= D_DF;
		
endmodule
