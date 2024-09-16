module faultSim();//CRTG_SimpleCKT_Ajdustable 
    parameter numOfFaults = 2230; 
    parameter initialExpFCount = 10; 
    parameter utLimit = 20; 
    parameter desiredCoverage = 90; 
    
	reg [1:50]g;
	wire [21:0] o, onet;
    
    reg [8*50:1] wireName; 
    reg stuckAtVal; 
    reg [1:50] testVector; 
    reg [1:numOfFaults] detectedListCT, detectedListAT; 
    integer faultFile, testFile, status; 
    integer uTests, detectedFaultsCT, expFCountCT, faultIndex; 
    integer tmp, newDiscovered, coverage, detectedFaultsAT; 
	integer keepedCT, totalCT;
    
	c3540 GUT 		( g[1], g[10], g[11], g[12], g[13], g[14], g[15], g[16], g[17],
                      g[18], g[19], g[2], g[20], g[21], g[22], g[23], g[24], g[25], g[26],
                      g[27], g[28], g[29], g[3], g[30], g[31], g[32], g[33], g[34], g[35], 
                      o[0], o[1], o[2], o[3], o[4], o[5], o[6], o[7], o[8], o[9],
                      o[10], o[11], o[12], o[13], o[14], o[15], o[16], o[17], o[18], o[19],
                      o[20], o[21],
                      g[36],
                      g[37], g[38], g[39], g[4], g[40], g[41], g[42], g[43], g[44], g[45],
                      g[46], g[47], g[48], g[49], g[5], g[50], g[6], g[7], g[8], g[9]);
					  
	c3540_net FUT	( g[1], g[10], g[11], g[12], g[13], g[14], g[15], g[16], g[17],
                      g[18], g[19], g[2], g[20], g[21], g[22], g[23], g[24], g[25], g[26],
                      g[27], g[28], g[29], g[3], g[30], g[31], g[32], g[33], g[34], g[35], 
                      onet[0], onet[1], onet[2], onet[3], onet[4], onet[5], onet[6], onet[7], onet[8], onet[9],
                      onet[10], onet[11], onet[12], onet[13], onet[14], onet[15], onet[16], onet[17], onet[18], onet[19],
                      onet[20], onet[21],
                      g[36],
                      g[37], g[38], g[39], g[4], g[40], g[41], g[42], g[43], g[44], g[45],
                      g[46], g[47], g[48], g[49], g[5], g[50], g[6], g[7], g[8], g[9]);

    initial 
	begin 
		keepedCT = 0;
		totalCT = 0;
        uTests = 0; coverage = 0; 
		detectedFaultsAT =0; 
        faultIndex = 1; detectedListAT = 0; 
        expFCountCT = initialExpFCount; 
        testFile = $fopen("c3540-adj.tst", "w"); 
        #10; 

        while(coverage < desiredCoverage && uTests < utLimit) 
		begin 
			detectedFaultsCT = 0; detectedListCT = 0;
			testVector = $random($time); 
			totalCT = totalCT + 1;
			uTests = uTests + 1; 
			faultIndex = 1; 
			#10; 
			newDiscovered = 0; 
			faultFile = $fopen ("c3540.flt", "r"); 
			while(!$feof(faultFile))
			begin // Fault Injection loop 
				status=$fscanf(faultFile,"%s s@%b\n",wireName,stuckAtVal);  
                $inject(wireName, stuckAtVal); 
                g = testVector;  
				#60;  
                if(o != onet) 
				begin 
					detectedFaultsCT = detectedFaultsCT + 1;  
					detectedListCT[faultIndex] = 1'b1;  
					if(detectedListAT[faultIndex] == 0)  
						newDiscovered = newDiscovered + 1;  
                end //end of if 
                $remove(wireName); 
				#20;  
				faultIndex = faultIndex + 1;  
            end //end of while(!$feof(faultFile)) 
			$fclose(faultFile);
          
            if(newDiscovered < expFCountCT) 
				tmp = expFCountCT / 2; 
			else 
				tmp = (newDiscovered + expFCountCT) / 2; 
			
			expFCountCT = tmp;  

            if(newDiscovered >= expFCountCT && (newDiscovered > 0)) 
			begin 
				keepedCT = keepedCT + 1;
				uTests = 0;
				//detectedFaultsAT = 0; 
				detectedFaultsAT = detectedFaultsAT + newDiscovered; 
				for(faultIndex=1; faultIndex<=numOfFaults; faultIndex=faultIndex+1) 
					if(detectedListCT[faultIndex]==1)
					begin 
						$display ("here");
						detectedListAT[faultIndex] = 1'b1; 
						
					end 
               
				coverage = 100 * detectedFaultsAT / numOfFaults; 
				$fdisplay(testFile, "%b", testVector); 
           end
        
        #10; 
    end //end of while of Coverage 
	//	$display("Number of Random Vectors Generated: %d", uTests); 
		$display("%d of total %d test vectors are keeped!", keepedCT, totalCT);  
        $display("Coverage : %d", coverage); 
    end //end of initial 
endmodule 