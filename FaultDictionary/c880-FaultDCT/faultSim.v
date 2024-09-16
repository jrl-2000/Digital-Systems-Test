module faultSim();
	parameter inputWidth = 60;
	parameter outputWidth = 26;
	parameter testCount = 66;
	
	reg [1:inputWidth] g;
	wire [outputWidth - 1:0] o, onet;
	
	reg detected = 0;
	integer i;
	integer testFile, faultFile, dictionaryFile, status;
	real numOfFaults = 980;
	real numOfDetecteds = 0;
	real coverage = 0;
	reg[inputWidth - 1:0] testVector;
	reg[60*8:1] wireName;
	reg[testCount - 1:0] syndrome;
	reg stuckAtVal;
	
	c880 GUT 		(g[1], g[10], g[11], g[12], g[13], g[14], g[15], g[16], g[17], g[18],
                    g[19], g[2], g[20], g[21], g[22], g[23], g[24], g[25], g[26], g[27], g[28],
                    g[29], g[3], g[30], g[31], g[32], g[33], g[34], g[35], g[36], g[37], 
                    g[38], g[39], g[4], g[40], g[41], g[42], g[43], g[44], g[45], g[46], 
                    g[47], g[48], g[49], g[5], g[50], g[51], g[52], g[53], g[54], g[55], 
                    g[56], g[57], g[58], g[59], g[6], g[60], g[7], g[8],
                    o[0], o[1], o[2], o[3], o[4], o[5], o[6], o[7], o[8], o[9], o[10], 
                    o[11], o[12], o[13], o[14], o[15],
                    o[16], o[17], o[18], o[19],
                    o[20], o[21], o[22], o[23], o[24], o[25],
                    g[9]
                    );
	c880_net FUT	(g[1], g[10], g[11], g[12], g[13], g[14], g[15], g[16], g[17], g[18],
                    g[19], g[2], g[20], g[21], g[22], g[23], g[24], g[25], g[26], g[27], g[28],
                    g[29], g[3], g[30], g[31], g[32], g[33], g[34], g[35], g[36], g[37], 
                    g[38], g[39], g[4], g[40], g[41], g[42], g[43], g[44], g[45], g[46], 
                    g[47], g[48], g[49], g[5], g[50], g[51], g[52], g[53], g[54], g[55], 
                    g[56], g[57], g[58], g[59], g[6], g[60], g[7], g[8],
                    onet[0], onet[1], onet[2], onet[3], onet[4], onet[5], onet[6], onet[7], onet[8], onet[9], onet[10], 
                    onet[11], onet[12], onet[13], onet[14], onet[15],
                    onet[16], onet[17], onet[18], onet[19],
                    onet[20], onet[21], onet[22], onet[23], onet[24], onet[25],
                    g[9]
                    );
	
	initial
	begin
		faultFile = $fopen ("c880.flt", "w");
		$FaultCollapsing(faultSim.FUT,"c880.flt");
		$fclose(faultFile);
		#10
		dictionaryFile = $fopen("c880.dct", "w");
		faultFile = $fopen ("c880.flt", "r");
		while ( !$feof(faultFile))
		begin
			i = 0;
			status = $fscanf (faultFile, "%s s@%b\n", wireName, stuckAtVal);
			$inject ( wireName, stuckAtVal);
			testFile = $fopen ("c880.pat", "r");
			detected = 1'b 0;
			while ( !$feof(testFile))
			begin
				#30
				status = $fscanf (testFile, "%b\n", testVector);
				g = testVector;
				#60;
				if (o != onet)
				begin
					detected = 1'b 1;
					syndrome[i] = 1'b 1;
				end
				else
					syndrome[i] = 1'b 0;
				i = i + 1;
			end

      if (syndrome != 0)
			  numOfDetecteds = numOfDetecteds + 1;
      
			$fclose (testFile);
			$remove(wireName);
			$fwrite (dictionaryFile, "%s, %b \n", wireName, syndrome);
			#30;
		end
		coverage = numOfDetecteds / numOfFaults;
		$fwrite (dictionaryFile, "Coverage: %f\n", coverage);
		$fclose(dictionaryFile);		
		$stop;
	end
endmodule