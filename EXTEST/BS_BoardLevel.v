module BS_BoardLevel (In_Pin, TMS, TCLK, TDI, TDO, Out_Pin);
	
	input [7:0] In_Pin;
	input TMS, TCLK, TDI;
	output TDO;
	output [3:0] Out_Pin;
	
	wire [7:0] In_CPU;
	wire [15:0] Out_CPU;
	wire [15:0] In_DSP;
	wire [3:0] Out_DSP;
	wire Ser_Chip1To2;
	wire [15:0] Par_Chip1To2;


	BS_CPU Chip1 (.In_Pin(In_Pin), .TMS(TMS), .TCLK(TCLK), .TDI(TDI), .TDO(Ser_Chip1To2), .Out_Pin(Par_Chip1To2));

	BS_DSP Chip2 (.In_Pin({Par_Chip1To2[15:1], 1'b1}), .TMS(TMS), .TCLK(TCLK), .TDI(Ser_Chip1To2), .TDO(TDO), .Out_Pin(Out_Pin));

endmodule

