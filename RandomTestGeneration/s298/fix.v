
	module faultSim();//CRTG_SimpleCKT_Fixed 
	
	parameter numOfFaults = 307; 
    parameter efCount = 1; 
    parameter utLimit = 50; 
    parameter desiredCoverage = 95; 
    reg [0:2]g;
	wire [5:0] o, onet;
	
    
    reg [8*50:1] wireName; 
    reg stuckAtVal; 
    reg [0:2] testVector; 
    reg [1:numOfFaults] detectedListCT, detectedListAT; 
	reg reset;
	reg clk = 1'b 0;
    integer faultFile, testFile, status; 
    integer uTests, detectedFaultsCT, faultIndex; 
    real coverage, detectedFaultsAT;  
	integer clkCount;
	integer i;
	integer totalCT, keepedCT;
   
	
	always #100 clk = ~clk;
	
	s298_net FUT   ( reset, clk, g[0], g[1], g[2],
                      onet[0], onet[1], onet[2], onet[3], onet[4], onet[5]
                      );
                      
	s298_net GUT       ( reset, clk, g[0], g[1], g[2],
                      o[0], o[1], o[2], o[3], o[4], o[5]
                      );
	
	
	
    initial 
	begin  
		totalCT = 0;
		keepedCT = 0;
		uTests=0; coverage = 0;  
		faultIndex = 1; detectedListAT = 0; detectedFaultsAT = 0; 
		testFile = $fopen("s298.tst", "w"); 
		#10;
		while(coverage < desiredCoverage && uTests < utLimit) 
		begin 
			$display ("here");
			detectedFaultsCT = 0; detectedListCT = 0; 
			testVector = $random($time);
			totalCT = totalCT + 1;
			clkCount = $random($time) % 50;
			if (clkCount < 0)
				clkCount = -clkCount;
			uTests = uTests + 1;  
			faultIndex = 1;  
			#10;
			faultFile = $fopen("s298.flt", "r"); 
			while(!$feof(faultFile)) 
			begin // Fault loop 
                status = $fscanf(faultFile, "%s s@%b\n", wireName, stuckAtVal); 
                if(detectedListAT[faultIndex]==0)
				begin //fault dropping  
					reset = 1;
					@(posedge clk);
					@(negedge clk);
					reset = 0;
                    $inject(wireName, stuckAtVal);
					#10;
                    g = testVector;  
					#30;
					repeat (clkCount) @(posedge clk);
					@(negedge clk);
					if(o != onet) 
					begin 
						detectedFaultsCT = detectedFaultsCT + 1;  
						detectedListCT[faultIndex] = 1'b1;  
					end //end of if       
                    $remove(wireName); 
                    #20;
				end //if !detected
				faultIndex = faultIndex + 1;
				//$display (faultIndex);
            end //end of while(!$feof(faultFile)) 
			$fclose (faultFile);
			$display (detectedFaultsCT);
            if(detectedFaultsCT >= efCount) 
			begin
				keepedCT = keepedCT + 1;
				uTests = 0;
				detectedFaultsAT = detectedFaultsAT + detectedFaultsCT; 
                for(i=1;i<=numOfFaults; i=i+1) 
				begin
					if (detectedListCT[i] == 1'b1)
					begin 
						detectedListAT[i] = 1'b1; 
                        
                    end 
				end	
                coverage = (100 * detectedFaultsAT) / numOfFaults; 
				$display(coverage);
                $fdisplay(testFile, "%b in %d clock cycles detects %d faults", testVector, clkCount, detectedFaultsCT); 
            end
        
		end //end of while of Coverage  
    $display("%d of total %d test vectors are keeped!", keepedCT, totalCT);  
    $display("Coverage : %d", coverage); 
	$stop;
	end //end of initial 
endmodule 