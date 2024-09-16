`timescale 1ns/1ns
module faultSim (); 
	parameter numOfFault = 1317;
	parameter inputWidth = 14;
	parameter outputWidth = 14;
	parameter testCount = 225;
	
	reg [0:inputWidth-1] g;
	wire [outputWidth - 1:0] o, onet;
	
	reg clk = 1'b 0;
	reg reset;
	reg[0:inputWidth-1] testVector;
	reg[outputWidth - 1:0] misr_in;
	wire[outputWidth - 1:0] misr_out;
	reg[outputWidth - 1:0] sigG, sigF;
	
	reg[60*8:1] wireName;
	reg[testCount - 1:0] syndrome;
	reg stuckAtVal;
	
	integer faultFile, dictionaryFile, testFile, status;
	integer dummy;
	integer f, i;
	integer detected;
	real detectedFault = 0, faultCount = 0;
	reg [1:numOfFault] DetectedFaults;
	
	s1196_net 	FUT (reset, 1'b 1, clk, g[0], g[1], g[10], g[11], g[12], g[13], g[2], g[3], g[4],
                    onet[0],
                    g[5], 
                    onet[1], onet[2], onet[3], onet[4], onet[5], onet[6], onet[7], onet[8], onet[9],
                    onet[10], onet[11], onet[12], onet[13],
                    g[6], g[7], g[8], g[9]
                    );
                      
	s1196 GUT       (reset, 1'b 1, clk, g[0], g[1], g[10], g[11], g[12], g[13], g[2], g[3], g[4],
                    o[0],
                    g[5], 
                    o[1], o[2], o[3], o[4], o[5], o[6], o[7], o[8], o[9],
                    o[10], o[11], o[12], o[13],
                    g[6], g[7], g[8], g[9]
                    );
	
    misr #(outputWidth,277,0) Signature_Generator (clk,reset,misr_in,misr_out); 

	initial begin 
		
		faultFile = $fopen ("s1196.flt", "r"); 
		dictionaryFile = $fopen("s1196.dct", "w");
		testFile = $fopen("Testpatterns.pat", "r");
		@(negedge clk); reset=1; @(negedge clk); reset=0; 
		while(! $feof(testFile)) begin 
			status = $fscanf(testFile, "%d:%b\n", dummy, testVector); 
			g = testVector;
			#10
			misr_in = o;  
			@(posedge clk); @(negedge clk); 
		end 
		sigG = misr_out;  
		$fwrite (dictionaryFile, "Golden Signature: %b\n", sigG);  
		$fclose (testFile); 
		f = 0;

		
		while(! $feof(faultFile)) 
		begin 
			@(negedge clk); reset=1; @(negedge clk); reset=0; 
			i = 0;  
			status = $fscanf(faultFile,"%s s@%b\n",wireName,stuckAtVal);  
			$inject (wireName, stuckAtVal);  
			testFile = $fopen("Testpatterns.pat", "r");
			detected = 1'b 0;
			while(!$feof(testFile)) 
			begin 
//			  $display ("here");
				status = $fscanf(testFile, "%d:%b\n", dummy, testVector); 
				g = testVector;  
				#10
				misr_in = onet;  
				
				if (o != onet) 
				begin 
					syndrome[i] = 1;  
					detected = 1;  
					DetectedFaults[f] = 1;  
				end 
				else 
					syndrome[i] = 0;  
				$display (i);	
				@(posedge clk); @(negedge clk);  
				//$display ("after");
				i = i + 1; 
			end // while of test  
			$display ("here");
			$fclose(testFile);
			sigF = misr_out;  
			$remove(wireName); 
			$fwrite(dictionaryFile, "%s s@ %b, %b \n", wireName, stuckAtVal, sigF);  
			faultCount = faultCount + 1;  
//			if (sigG != sigF)  
      if (detected == 1)
				detectedFault = detectedFault + 1;  
			f = f + 1;  
		end // while of fault 
        // Generate reports  
        $display("F Coverage: %f/%f = %f", detectedFault, faultCount, detectedFault/faultCount);
		$stop; 
    end // initial 
    always #100 clk = ~clk; 
endmodule 