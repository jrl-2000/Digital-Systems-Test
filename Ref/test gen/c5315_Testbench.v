//------------------------------------------------------------------------------
// Title:   Modified Adjustable Expected Coverage per Test
// Author:  Mozhgan Rezaie
// Date:    02-April-2024
//------------------------------------------------------------------------------

`timescale 1 ns / 1 ns

module c5315_Testbench ();

parameter numOfFaults = 5104;    
parameter utLimit1 = 500; 
parameter utLimit2 = 100; 
parameter desiredCoverage = 90;  //Based on ATALANTA, Max coverage = 98.897% 

reg[177:0] TestVector; 
wire [122:0] G_out,F_out;
integer test_file, fault_file, status;
real fault_count, detected_fault;
reg [8*60:1] wire_name;
reg stuck_val;
reg [1:numOfFaults] detectedListCT, detectedListAT;
integer keepedCT, totalCT;
integer uTests1, uTests2, detectedFaultsCT, expFCountCT, faultIndex, newDiscovered, coverage, detectedFaultsAT, divisor;

reg N1,N4,N11,N14,N17,N20,N23,N24,N25,N26,N27,N31,N34,N37,N40,N43,N46,N49,N52,N53,N54,N61,N64,N67,N70,N73,N76,N79,N80,N81,
	N82,N83,N86,N87,N88,N91,N94,N97,N100,N103,N106,N109,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,N126,
	N127,N128,N129,N130,N131,N132,N135,N136,N137,N140,N141,N145,N146,N149,N152,N155,N158,N161,N164,N167,N170,N173,N176,N179,
	N182,N185,N188,N191,N194,N197,N200,N203,N206,N209,N210,N217,N218,N225,N226,N233,N234,N241,N242,N245,N248,N251,N254,N257,
	N264,N265,N272,N273,N280,N281,N288,N289,N292,N293,N299,N302,N307,N308,N315,N316,N323,N324,N331,N332,N335,N338,N341,N348,
	N351,N358,N361,N366,N369,N372,N373,N374,N386,N389,N400,N411,N422,N435,N446,N457,N468,N479,N490,N503,N514,N523,N534,N545,
	N549,N552,N556,N559,N562,N566,N571,N574,N577,N580,N583,N588,N591,N592,N595,N596,N597,N598,N599,N603,N607,N610,N613,N616,
	N619,N625,N631;


c5315_net GUT( N1,N4,N11,N14,N17,N20,N23,N24,N25,N26,N27,N31,N34,N37,N40,N43,N46,N49,N52,N53,N54,N61,N64,N67,N70,N73,N76,N79,N80,N81,N82,N83,N86,N87,N88,N91,N94,N97,N100,N103,N106,N109,N112,N113,N114,N115,N116,N117,N118,N119,
                N120,N121,N122,N123,N126,N127,N128,N129,N130,N131,N132,N135,N136,N137,N140,N141,N145,N146,N149,N152,N155,N158,N161,N164,N167,N170,N173,N176,N179,N182,N185,N188,N191,N194,N197,N200,N203,N206,N209,N210,N217,N218,
                N225,N226,N233,N234,N241,N242,N245,N248,N251,N254,N257,N264,N265,N272,N273,N280,N281,N288,N289,N292,N293,N299,N302,N307,N308,N315,N316,N323,N324,N331,N332,N335,N338,N341,N348,N351,N358,N361,N366,N369,N372,N373,
                N374,N386,N389,N400,N411,N422,N435,N446,N457,N468,N479,N490,N503,N514,N523,N534,N545,N549,N552,N556,N559,N562,N566,N571,N574,N577,N580,N583,N588,N591,N592,N595,N596,N597,N598,N599,N603,N607,N610,N613,N616,N619,
                N625,N631,
                G_out[0], G_out[1], G_out[2], G_out[3], G_out[4], G_out[5], G_out[6], G_out[7], G_out[8], G_out[9], G_out[10], G_out[11],
                G_out[12], G_out[13], G_out[14], G_out[15], G_out[16], G_out[17], G_out[18], G_out[19], G_out[20], G_out[21], G_out[22], G_out[23],
                G_out[24], G_out[25], G_out[26], G_out[27], G_out[28], G_out[29], G_out[30], G_out[31], G_out[32], G_out[33], G_out[34], G_out[35],
                G_out[36], G_out[37], G_out[38], G_out[39], G_out[40], G_out[41], G_out[42], G_out[43], G_out[44], G_out[45], G_out[46], G_out[47],
                G_out[48], G_out[49], G_out[50], G_out[51], G_out[52], G_out[53], G_out[54], G_out[55], G_out[56], G_out[57], G_out[58], G_out[59],
                G_out[60], G_out[61], G_out[62], G_out[63], G_out[64], G_out[65], G_out[66], G_out[67], G_out[68], G_out[69], G_out[70], G_out[71],
                G_out[72], G_out[73], G_out[74], G_out[75], G_out[76], G_out[77], G_out[78], G_out[79], G_out[80], G_out[81], G_out[82], G_out[83],
                G_out[84], G_out[85], G_out[86], G_out[87], G_out[88], G_out[89], G_out[90], G_out[91], G_out[92], G_out[93], G_out[94], G_out[95],
                G_out[96], G_out[97], G_out[98], G_out[99], G_out[100], G_out[101], G_out[102], G_out[103], G_out[104], G_out[105], G_out[106], G_out[107],
                G_out[108], G_out[109], G_out[110], G_out[111], G_out[112], G_out[113], G_out[114], G_out[115], G_out[116], G_out[117], G_out[118], G_out[119],
                G_out[120], G_out[121], G_out[122]);

c5315_net FUT( N1,N4,N11,N14,N17,N20,N23,N24,N25,N26,N27,N31,N34,N37,N40,N43,N46,N49,N52,N53,N54,N61,N64,N67,N70,N73,N76,N79,N80,N81,N82,N83,N86,N87,N88,N91,N94,N97,N100,N103,N106,N109,N112,N113,N114,N115,N116,N117,N118,N119,
                N120,N121,N122,N123,N126,N127,N128,N129,N130,N131,N132,N135,N136,N137,N140,N141,N145,N146,N149,N152,N155,N158,N161,N164,N167,N170,N173,N176,N179,N182,N185,N188,N191,N194,N197,N200,N203,N206,N209,N210,N217,N218,
                N225,N226,N233,N234,N241,N242,N245,N248,N251,N254,N257,N264,N265,N272,N273,N280,N281,N288,N289,N292,N293,N299,N302,N307,N308,N315,N316,N323,N324,N331,N332,N335,N338,N341,N348,N351,N358,N361,N366,N369,N372,N373,
                N374,N386,N389,N400,N411,N422,N435,N446,N457,N468,N479,N490,N503,N514,N523,N534,N545,N549,N552,N556,N559,N562,N566,N571,N574,N577,N580,N583,N588,N591,N592,N595,N596,N597,N598,N599,N603,N607,N610,N613,N616,N619,
                N625,N631,
                F_out[0], F_out[1], F_out[2], F_out[3], F_out[4], F_out[5], F_out[6], F_out[7], F_out[8], F_out[9], F_out[10], F_out[11], F_out[12], F_out[13],
                F_out[14], F_out[15], F_out[16], F_out[17], F_out[18], F_out[19], F_out[20], F_out[21], F_out[22], F_out[23], F_out[24], F_out[25], F_out[26], F_out[27],
                F_out[28], F_out[29], F_out[30], F_out[31], F_out[32], F_out[33], F_out[34], F_out[35], F_out[36], F_out[37], F_out[38], F_out[39], F_out[40], F_out[41],
                F_out[42], F_out[43], F_out[44], F_out[45], F_out[46], F_out[47], F_out[48], F_out[49], F_out[50], F_out[51], F_out[52], F_out[53], F_out[54], F_out[55],
                F_out[56], F_out[57], F_out[58], F_out[59], F_out[60], F_out[61], F_out[62], F_out[63], F_out[64], F_out[65], F_out[66], F_out[67], F_out[68], F_out[69],
                F_out[70], F_out[71], F_out[72], F_out[73], F_out[74], F_out[75], F_out[76], F_out[77], F_out[78], F_out[79], F_out[80], F_out[81], F_out[82], F_out[83],
                F_out[84], F_out[85], F_out[86], F_out[87], F_out[88], F_out[89], F_out[90], F_out[91], F_out[92], F_out[93], F_out[94], F_out[95], F_out[96], F_out[97],
                F_out[98], F_out[99], F_out[100], F_out[101], F_out[102], F_out[103], F_out[104], F_out[105], F_out[106], F_out[107], F_out[108], F_out[109], F_out[110], 
				F_out[111], F_out[112], F_out[113], F_out[114], F_out[115], F_out[116], F_out[117], F_out[118], F_out[119], F_out[120], F_out[121], F_out[122]);

initial begin
	uTests1 = 0; 
	uTests2 = 0; 
	coverage = 0; 
	faultIndex = 1; 
	detectedListAT = 0; 
	detectedFaultsAT =0;
	keepedCT = 0; 
	totalCT = 0;
	divisor = 10;
	expFCountCT = numOfFaults / divisor;
	
    fault_file = $fopen("c5315_vlog.flt", "w");
    $FaultCollapsing(c5315_Testbench.FUT, "c5315_vlog.flt");
    $fclose(fault_file);	
	
	test_file = $fopen("c5315_vlog.tst", "w"); 
    #10; 

    while((coverage < desiredCoverage) && (uTests1 < utLimit1)) begin 
		detectedFaultsCT = 0; detectedListCT = 0; 
		TestVector = { $random($time),  $random($time),  $random($time),  $random($time),  $random($time),  $random($time)};
		totalCT = totalCT + 1;
		uTests1 = uTests1 + 1; 
		faultIndex = 1;  
		newDiscovered = 0; 
		#10;
		
		fault_file = $fopen ("c5315_vlog.flt", "r"); 
		while(!$feof(fault_file))begin
			status = $fscanf(fault_file,"%s s@%b\n", wire_name, stuck_val);
			$InjectFault(wire_name, stuck_val);
            {N1,N4,N11,N14,N17,N20,N23,N24,N25,N26,N27,N31,N34,N37,N40,N43,N46,N49,N52,N53,N54,N61,N64,N67,N70,N73,N76,N79,N80,N81,
			N82,N83,N86,N87,N88,N91,N94,N97,N100,N103,N106,N109,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,N126,
			N127,N128,N129,N130,N131,N132,N135,N136,N137,N140,N141,N145,N146,N149,N152,N155,N158,N161,N164,N167,N170,N173,N176,N179,
			N182,N185,N188,N191,N194,N197,N200,N203,N206,N209,N210,N217,N218,N225,N226,N233,N234,N241,N242,N245,N248,N251,N254,N257,
			N264,N265,N272,N273,N280,N281,N288,N289,N292,N293,N299,N302,N307,N308,N315,N316,N323,N324,N331,N332,N335,N338,N341,N348,
			N351,N358,N361,N366,N369,N372,N373,N374,N386,N389,N400,N411,N422,N435,N446,N457,N468,N479,N490,N503,N514,N523,N534,N545,
			N549,N552,N556,N559,N562,N566,N571,N574,N577,N580,N583,N588,N591,N592,N595,N596,N597,N598,N599,N603,N607,N610,N613,N616,
			N619,N625,N631} = TestVector; 
			#60;  
            if(G_out != F_out) begin 
				detectedFaultsCT = detectedFaultsCT + 1;  
				detectedListCT[faultIndex] = 1'b1;  
				if(detectedListAT[faultIndex] == 0)  
					newDiscovered = newDiscovered + 1;  
            end
                $RemoveFault(wire_name); 
				#20;  
				faultIndex = faultIndex + 1;  
        end //end of while(!$feof(faultFile)) 
		$fclose(fault_file);
			
	//****************Adjustment****************//
        if(newDiscovered < expFCountCT) begin
			uTests2 = uTests2 + 1;
			if (uTests2 > utLimit2) begin
				uTests2 = 0;
				divisor = divisor + 2;
				expFCountCT = (numOfFaults - detectedFaultsAT) / divisor;
			end
		end 
		else begin
			keepedCT = keepedCT + 1;
			uTests1 = 0;  
			detectedFaultsAT = detectedFaultsAT + newDiscovered; 
			for(faultIndex=1; faultIndex<=numOfFaults; faultIndex=faultIndex+1) 
				if(detectedListCT[faultIndex]==1) 
					detectedListAT[faultIndex] = 1'b1; 
			
			if ((newDiscovered - expFCountCT) >= 250) begin				
				divisor = divisor - 1;
				expFCountCT = (numOfFaults - detectedFaultsAT) / divisor;
			end
  
			coverage = 100 * detectedFaultsAT / numOfFaults; 
		$fdisplay(test_file,"%b", TestVector);  
        end
        #10; 
    end //end of while of Coverage 
	$display("Number of Random Vectors Generated: %d", totalCT); 
	$display("Number of Random Vectors Keeped: %d", keepedCT, );  
    $display("Coverage : %d", coverage); 
	$stop;
end //end of initial 
endmodule 
    

