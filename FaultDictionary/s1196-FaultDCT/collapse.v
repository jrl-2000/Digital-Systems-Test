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
	s1196_net FUT   (g[0], clk, g[1], g[2], g[3], g[4], g[5], g[6], g[7], g[8], g[9],
                      onet[0],
                      g[10], 
                      onet[1], onet[2], onet[3], onet[4], onet[5], onet[6], onet[7], onet[8], onet[9],
                      onet[10], onet[11], onet[12], onet[13],
                      g[11], g[12], g[13], g[14]
                      );
                      
  s1196 GUT       (g[0], clk, g[1], g[2], g[3], g[4], g[5], g[6], g[7], g[8], g[9],
                      o[0],
                      g[10], 
                      o[1], o[2], o[3], o[4], o[5], o[6], o[7], o[8], o[9],
                      o[10], o[11], o[12], o[13],
                      g[11], g[12], g[13], g[14]
                      );
	initial
	begin
		faultFile = $fopen ("s1196.flt", "w");
		$FaultCollapsing(faultSim.FUT,"s1196.flt");
		$fclose(faultFile);
		$stop;
	end
endmodule
