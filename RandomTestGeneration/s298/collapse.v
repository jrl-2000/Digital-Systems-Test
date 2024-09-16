module faultSim (); 
	
	parameter inputWidth = 15;
	parameter outputWidth = 14;
	parameter testCount = 148;
	
	reg [1:inputWidth] g;
	wire [outputWidth - 1:0] o, onet;
	
	reg clk = 1'b 0;
	reg reset;
	reg[inputWidth:1] testVector;
	reg[outputWidth - 1:0] misr_in;
	wire[outputWidth - 1:0] misr_out;
	integer faultFile;
	
	integer dummy;
	
	
	s298_net FUT   ( clk, g[0], g[1], g[2],
                      onet[0], onet[1], onet[2], onet[3], onet[4], onet[5]
                      );
 
	initial
	begin
		faultFile = $fopen ("s298.flt", "w");
		$FaultCollapsing(faultSim.FUT,"s298.flt");
		$fclose(faultFile);
		$stop;
	end
endmodule
