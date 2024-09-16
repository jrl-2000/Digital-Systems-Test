module faultSim();//CRTG_SimpleCKT_Ajdustable 
    parameter numOfFaults = 1798; 
//    parameter initialExpFCount = 2; 
    parameter utLimit = 20; 
    parameter desiredCoverage = 90; 
	parameter steps = 10;
    
	reg [1:157]g;
	wire [63:0] o, onet;
    
    reg [8*50:1] wireName; 
    reg stuckAtVal; 
    reg [1:157] testVector; 
    reg [1:numOfFaults] detectedListCT, detectedListAT; 
    integer faultFile, testFile, status; 
    integer uTests, detectedFaultsCT, expFCountCT, faultIndex; 
    integer tmp, newDiscovered, coverage, detectedFaultsAT; 
	integer keepedCT, totalCT;
	integer cov_edg;
    
	c2670 GUT 		(g[1], g[10], g[100], g[101], g[102], g[103], g[104], g[105], g[106], g[107],
                      g[108], g[109], g[11], g[110], g[111], g[112], g[113], g[114], g[115], g[116],
                      g[117], g[118], g[119], g[12], g[120], g[121], g[122], g[123], g[124], g[125],
                      g[126], g[127], g[128], g[129], g[13], g[130], g[131], g[132], g[133], g[134],
                      g[135], g[136], g[137], g[138], g[139], g[14], g[140], g[141], g[142], g[143],
                      g[144], g[145], g[146], g[147], g[148], g[149], g[15], g[150], g[151], g[152],
                      g[153], g[154], g[155], g[156], g[157], g[16], g[17], g[18], g[19], g[2],
                      g[20], g[21], g[22], g[23], g[24], g[25],                      
                      o[0], o[1], o[2], o[3], o[4], o[5], o[6], o[7], o[8], o[9],
                      o[10], o[11], o[12], o[13], o[14], o[15], o[16], o[17], o[18], o[19],
                      o[20], o[21], o[22], o[23], o[24], o[25], o[26], o[27], o[28], o[29],
                      o[30], o[31], o[32], o[33], o[34], o[35], o[36], o[37], o[38], o[39],
                      o[40], o[41], o[42], o[43], o[44], o[45], o[46], o[47], o[48], o[49],
                      o[50], o[51], o[52], o[53], o[54], o[55], o[56], o[57], o[58], o[59],
                      o[60], o[61], o[62], o[63],                      
                      g[26], g[27], g[28], g[29],
                      g[3], g[30], g[31], g[32], g[33], g[34], g[35], g[36], g[37], g[38],
                      g[39], g[4], g[40], g[41], g[42], g[43], g[44], g[45], g[46], g[47],
                      g[48], g[49], g[5], g[50], g[51], g[52], g[53], g[54], g[55], g[56],
                      g[57], g[58], g[59], g[6], g[60], g[61], g[62], g[63], g[64], g[65],
                      g[66], g[67], g[68], g[69], g[7], g[70], g[71], g[72], g[73], g[74],
                      g[75], g[76], g[77], g[78], g[79], g[8], g[80], g[81], g[82], g[83],
                      g[84], g[85], g[86], g[87], g[88], g[89], g[9], g[90], g[91], g[92],
                      g[93], g[94], g[95], g[96], g[97], g[98], g[99]
                      );
	
	c2670_net FUT	(g[1], g[10], g[100], g[101], g[102], g[103], g[104], g[105], g[106], g[107],
                      g[108], g[109], g[11], g[110], g[111], g[112], g[113], g[114], g[115], g[116],
                      g[117], g[118], g[119], g[12], g[120], g[121], g[122], g[123], g[124], g[125],
                      g[126], g[127], g[128], g[129], g[13], g[130], g[131], g[132], g[133], g[134],
                      g[135], g[136], g[137], g[138], g[139], g[14], g[140], g[141], g[142], g[143],
                      g[144], g[145], g[146], g[147], g[148], g[149], g[15], g[150], g[151], g[152],
                      g[153], g[154], g[155], g[156], g[157], g[16], g[17], g[18], g[19], g[2],
                      g[20], g[21], g[22], g[23], g[24], g[25],                      
                      onet[0], onet[1], onet[2], onet[3], onet[4], onet[5], onet[6], onet[7], onet[8], onet[9],
                      onet[10], onet[11], onet[12], onet[13], onet[14], onet[15], onet[16], onet[17], onet[18], onet[19],
                      onet[20], onet[21], onet[22], onet[23], onet[24], onet[25], onet[26], onet[27], onet[28], onet[29],
                      onet[30], onet[31], onet[32], onet[33], onet[34], onet[35], onet[36], onet[37], onet[38], onet[39],
                      onet[40], onet[41], onet[42], onet[43], onet[44], onet[45], onet[46], onet[47], onet[48], onet[49],
                      onet[50], onet[51], onet[52], onet[53], onet[54], onet[55], onet[56], onet[57], onet[58], onet[59],
                      onet[60], onet[61], onet[62], onet[63],                      
                      g[26], g[27], g[28], g[29],
                      g[3], g[30], g[31], g[32], g[33], g[34], g[35], g[36], g[37], g[38],
                      g[39], g[4], g[40], g[41], g[42], g[43], g[44], g[45], g[46], g[47],
                      g[48], g[49], g[5], g[50], g[51], g[52], g[53], g[54], g[55], g[56],
                      g[57], g[58], g[59], g[6], g[60], g[61], g[62], g[63], g[64], g[65],
                      g[66], g[67], g[68], g[69], g[7], g[70], g[71], g[72], g[73], g[74],
                      g[75], g[76], g[77], g[78], g[79], g[8], g[80], g[81], g[82], g[83],
                      g[84], g[85], g[86], g[87], g[88], g[89], g[9], g[90], g[91], g[92],
                      g[93], g[94], g[95], g[96], g[97], g[98], g[99]
                      );

    initial 
	begin 
		cov_edg = steps;
		keepedCT = 0;
		totalCT = 0;
        uTests = 0; coverage = 0; 
		detectedFaultsAT =0; 
        faultIndex = 1; detectedListAT = 0; 
        expFCountCT = numOfFaults / 20; 
        testFile = $fopen("c2670-pre.tst", "w"); 
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
			faultFile = $fopen ("c2670.flt", "r"); 
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
			/*
            if(newDiscovered < expFCountCT) 
				tmp = expFCountCT / 2; 
			else 
				tmp = (newDiscovered + expFCountCT) / 2; 
			
			expFCountCT = tmp;  
			*/
            if((newDiscovered >= expFCountCT) && (newDiscovered > 0)) 
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
				if (coverage >= cov_edg)
				begin
					cov_edg = cov_edg + steps;
					expFCountCT = expFCountCT / 2;
				end
				$fdisplay(testFile, "%b", testVector); 
           end
        
        #10; 
    end //end of while of Coverage 
	//	$display("Number of Random Vectors Generated: %d", uTests); 
		$display("%d of total %d test vectors are keeped!", keepedCT, totalCT);  
        $display("Coverage : %d", coverage); 
    end //end of initial 
endmodule 