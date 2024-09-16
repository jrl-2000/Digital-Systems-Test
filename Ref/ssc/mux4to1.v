module mux4to1 #(parameter N = 8)(in1, in2, in3, in4, sel1, sel2, sel3, sel4, outMUX);
input	[N-1:0] in1, in2, in3, in4;
input 	sel1, sel2, sel3, sel4; 
output	[N-1:0] outMUX;

assign outMUX = (sel1)? in1:
		(sel2)? in2:
		(sel3)? in3:
		(sel4)? in4:
		{(N){1'b0}};
endmodule

