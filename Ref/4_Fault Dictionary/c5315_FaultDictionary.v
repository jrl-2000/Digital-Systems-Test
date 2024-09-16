//------------------------------------------------------------------------------
// Title:   Fault Dictionary
// Author:  Mozhgan Rezaie
// Date:    21-March-2024
//------------------------------------------------------------------------------
`timescale 1 ns / 1 ns

module c5315_Testbench ();

parameter testcount = 117;
reg detected;
integer i;
reg [testcount-1:0] syndrome;
wire [122:0] G_out,F_out;
integer TestFile, FaultFile, status, dictionary_file;
reg[177:0] TestVector;    
reg [8*60:1] FaultyWire;   
reg stuckAtVal;

reg   N1,N4,N11,N14,N17,N20,N23,N24,N25,N26,
      N27,N31,N34,N37,N40,N43,N46,N49,N52,N53,
      N54,N61,N64,N67,N70,N73,N76,N79,N80,N81,
      N82,N83,N86,N87,N88,N91,N94,N97,N100,N103,
      N106,N109,N112,N113,N114,N115,N116,N117,N118,N119,
      N120,N121,N122,N123,N126,N127,N128,N129,N130,N131,
      N132,N135,N136,N137,N140,N141,N145,N146,N149,N152,
      N155,N158,N161,N164,N167,N170,N173,N176,N179,N182,
      N185,N188,N191,N194,N197,N200,N203,N206,N209,N210,
      N217,N218,N225,N226,N233,N234,N241,N242,N245,N248,
      N251,N254,N257,N264,N265,N272,N273,N280,N281,N288,
      N289,N292,N293,N299,N302,N307,N308,N315,N316,N323,
      N324,N331,N332,N335,N338,N341,N348,N351,N358,N361,
      N366,N369,N372,N373,N374,N386,N389,N400,N411,N422,
      N435,N446,N457,N468,N479,N490,N503,N514,N523,N534,
      N545,N549,N552,N556,N559,N562,N566,N571,N574,N577,
      N580,N583,N588,N591,N592,N595,N596,N597,N598,N599,
      N603,N607,N610,N613,N616,N619,N625,N631;


wire   N709,N816,N1066,N1137,N1138,N1139,N1140,N1141,N1142,N1143,
       N1144,N1145,N1147,N1152,N1153,N1154,N1155,N1972,N2054,N2060,
       N2061,N2139,N2142,N2309,N2387,N2527,N2584,N2590,N2623,N3357,
       N3358,N3359,N3360,N3604,N3613,N4272,N4275,N4278,N4279,N4737,
       N4738,N4739,N4740,N5240,N5388,N6641,N6643,N6646,N6648,N6716,
       N6877,N6924,N6925,N6926,N6927,N7015,N7363,N7365,N7432,N7449,
       N7465,N7466,N7467,N7469,N7470,N7471,N7472,N7473,N7474,N7476,
       N7503,N7504,N7506,N7511,N7515,N7516,N7517,N7518,N7519,N7520,
       N7521,N7522,N7600,N7601,N7602,N7603,N7604,N7605,N7606,N7607,
       N7626,N7698,N7699,N7700,N7701,N7702,N7703,N7704,N7705,N7706,
       N7707,N7735,N7736,N7737,N7738,N7739,N7740,N7741,N7742,N7754,
       N7755,N7756,N7757,N7758,N7759,N7760,N7761,N8075,N8076,N8123,
       N8124,N8127,N8128,
	   N709F,N816F,N1066F,N1137F,N1138F,N1139F,N1140F,N1141F,N1142F,N1143F,
       N1144F,N1145F,N1147F,N1152F,N1153F,N1154F,N1155F,N1972F,N2054F,N2060F,
       N2061F,N2139F,N2142F,N2309F,N2387F,N2527F,N2584F,N2590F,N2623F,N3357F,
       N3358F,N3359F,N3360F,N3604F,N3613F,N4272F,N4275F,N4278F,N4279F,N4737F,
       N4738F,N4739F,N4740F,N5240F,N5388F,N6641F,N6643F,N6646F,N6648F,N6716F,
       N6877F,N6924F,N6925F,N6926F,N6927F,N7015F,N7363F,N7365F,N7432F,N7449F,
       N7465F,N7466F,N7467F,N7469F,N7470F,N7471F,N7472F,N7473F,N7474F,N7476F,
       N7503F,N7504F,N7506F,N7511F,N7515F,N7516F,N7517F,N7518F,N7519F,N7520F,
       N7521F,N7522F,N7600F,N7601F,N7602F,N7603F,N7604F,N7605F,N7606F,N7607F,
       N7626F,N7698F,N7699F,N7700F,N7701F,N7702F,N7703F,N7704F,N7705F,N7706F,
       N7707F,N7735F,N7736F,N7737F,N7738F,N7739F,N7740F,N7741F,N7742F,N7754F,
       N7755F,N7756F,N7757F,N7758F,N7759F,N7760F,N7761F,N8075F,N8076F,N8123F,
       N8124F,N8127F,N8128F;

assign G_out = {N709,N816,N1066,N1137,N1138,N1139,N1140,N1141,N1142,N1143,
       N1144,N1145,N1147,N1152,N1153,N1154,N1155,N1972,N2054,N2060,
       N2061,N2139,N2142,N2309,N2387,N2527,N2584,N2590,N2623,N3357,
       N3358,N3359,N3360,N3604,N3613,N4272,N4275,N4278,N4279,N4737,
       N4738,N4739,N4740,N5240,N5388,N6641,N6643,N6646,N6648,N6716,
       N6877,N6924,N6925,N6926,N6927,N7015,N7363,N7365,N7432,N7449,
       N7465,N7466,N7467,N7469,N7470,N7471,N7472,N7473,N7474,N7476,
       N7503,N7504,N7506,N7511,N7515,N7516,N7517,N7518,N7519,N7520,
       N7521,N7522,N7600,N7601,N7602,N7603,N7604,N7605,N7606,N7607,
       N7626,N7698,N7699,N7700,N7701,N7702,N7703,N7704,N7705,N7706,
       N7707,N7735,N7736,N7737,N7738,N7739,N7740,N7741,N7742,N7754,
       N7755,N7756,N7757,N7758,N7759,N7760,N7761,N8075,N8076,N8123,
       N8124,N8127,N8128};
	   
assign F_out = {N709F,N816F,N1066F,N1137F,N1138F,N1139F,N1140F,N1141F,N1142F,N1143F,
       N1144F,N1145F,N1147F,N1152F,N1153F,N1154F,N1155F,N1972F,N2054F,N2060F,
       N2061F,N2139F,N2142F,N2309F,N2387F,N2527F,N2584F,N2590F,N2623F,N3357F,
       N3358F,N3359F,N3360F,N3604F,N3613F,N4272F,N4275F,N4278F,N4279F,N4737F,
       N4738F,N4739F,N4740F,N5240F,N5388F,N6641F,N6643F,N6646F,N6648F,N6716F,
       N6877F,N6924F,N6925F,N6926F,N6927F,N7015F,N7363F,N7365F,N7432F,N7449F,
       N7465F,N7466F,N7467F,N7469F,N7470F,N7471F,N7472F,N7473F,N7474F,N7476F,
       N7503F,N7504F,N7506F,N7511F,N7515F,N7516F,N7517F,N7518F,N7519F,N7520F,
       N7521F,N7522F,N7600F,N7601F,N7602F,N7603F,N7604F,N7605F,N7606F,N7607F,
       N7626F,N7698F,N7699F,N7700F,N7701F,N7702F,N7703F,N7704F,N7705F,N7706F,
       N7707F,N7735F,N7736F,N7737F,N7738F,N7739F,N7740F,N7741F,N7742F,N7754F,
       N7755F,N7756F,N7757F,N7758F,N7759F,N7760F,N7761F,N8075F,N8076F,N8123F,
       N8124F,N8127F,N8128F};


c5315_net GUT (N1,N4,N11,N14,N17,N20,N23,N24,N25,N26,N27,N31,N34,N37,N40,N43,N46,N49,N52,
		N53,N54,N61,N64,N67,N70,N73,N76,N79,N80,N81,N82,N83,N86,N87,N88,N91,N94,N97,N100,
		N103,N106,N109,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,N126,
		N127,N128,N129,N130,N131,N132,N135,N136,N137,N140,N141,N145,N146,N149,N152,N155,
		N158,N161,N164,N167,N170,N173,N176,N179,N182,N185,N188,N191,N194,N197,N200,N203,
		N206,N209,N210,N217,N218,N225,N226,N233,N234,N241,N242,N245,N248,N251,N254,N257,
		N264,N265,N272,N273,N280,N281,N288,N289,N292,N293,N299,N302,N307,N308,N315,N316,
		N323,N324,N331,N332,N335,N338,N341,N348,N351,N358,N361,N366,N369,N372,N373,N374,
		N386,N389,N400,N411,N422,N435,N446,N457,N468,N479,N490,N503,N514,N523,N534,N545,
		N549,N552,N556,N559,N562,N566,N571,N574,N577,N580,N583,N588,N591,N592,N595,N596,
		N597,N598,N599,N603,N607,N610,N613,N616,N619,N625,N631,N709,N816,N1066,N1137,
		N1138,N1139,N1140,N1141,N1142,N1143,N1144,N1145,N1147,N1152,N1153,N1154,N1155,
		N1972,N2054,N2060,N2061,N2139,N2142,N2309,N2387,N2527,N2584,N2590,N2623,N3357,
		N3358,N3359,N3360,N3604,N3613,N4272,N4275,N4278,N4279,N4737,N4738,N4739,N4740,
		N5240,N5388,N6641,N6643,N6646,N6648,N6716,N6877,N6924,N6925,N6926,N6927,N7015,
		N7363,N7365,N7432,N7449,N7465,N7466,N7467,N7469,N7470,N7471,N7472,N7473,N7474,
		N7476,N7503,N7504,N7506,N7511,N7515,N7516,N7517,N7518,N7519,N7520,N7521,N7522,
        N7600,N7601,N7602,N7603,N7604,N7605,N7606,N7607,N7626,N7698,N7699,N7700,N7701,
		N7702,N7703,N7704,N7705,N7706,N7707,N7735,N7736,N7737,N7738,N7739,N7740,N7741,
		N7742,N7754,N7755,N7756,N7757,N7758,N7759,N7760,N7761,N8075,N8076,N8123,N8124,
		N8127,N8128);
			  
			  
c5315_net FUT (N1,N4,N11,N14,N17,N20,N23,N24,N25,N26,N27,N31,N34,N37,N40,N43,N46,N49,N52,N53,
        N54,N61,N64,N67,N70,N73,N76,N79,N80,N81,N82,N83,N86,N87,N88,N91,N94,N97,N100,N103,N106,
		N109,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,N126,N127,N128,N129,N130,
		N131,N132,N135,N136,N137,N140,N141,N145,N146,N149,N152,N155,N158,N161,N164,N167,N170,N173,
		N176,N179,N182,N185,N188,N191,N194,N197,N200,N203,N206,N209,N210,N217,N218,N225,N226,N233,
		N234,N241,N242,N245,N248,N251,N254,N257,N264,N265,N272,N273,N280,N281,N288,N289,N292,N293,
		N299,N302,N307,N308,N315,N316,N323,N324,N331,N332,N335,N338,N341,N348,N351,N358,N361,N366,
		N369,N372,N373,N374,N386,N389,N400,N411,N422,N435,N446,N457,N468,N479,N490,N503,N514,N523,
		N534,N545,N549,N552,N556,N559,N562,N566,N571,N574,N577,N580,N583,N588,N591,N592,N595,N596,
		N597,N598,N599,N603,N607,N610,N613,N616,N619,N625,N631,N709F,N816F,N1066F,N1137F,N1138F,
		N1139F,N1140F,N1141F,N1142F,N1143F,N1144F,N1145F,N1147F,N1152F,N1153F,N1154F,N1155F,N1972F,
		N2054F,N2060F,N2061F,N2139F,N2142F,N2309F,N2387F,N2527F,N2584F,N2590F,N2623F,N3357F,N3358F,
		N3359F,N3360F,N3604F,N3613F,N4272F,N4275F,N4278F,N4279F,N4737F,N4738F,N4739F,N4740F,N5240F,
		N5388F,N6641F,N6643F,N6646F,N6648F,N6716F,N6877F,N6924F,N6925F,N6926F,N6927F,N7015F,N7363F,
		N7365F,N7432F,N7449F,N7465F,N7466F,N7467F,N7469F,N7470F,N7471F,N7472F,N7473F,N7474F,N7476F,
		N7503F,N7504F,N7506F,N7511F,N7515F,N7516F,N7517F,N7518F,N7519F,N7520F,N7521F,N7522F,N7600F,
		N7601F,N7602F,N7603F,N7604F,N7605F,N7606F,N7607F,N7626F,N7698F,N7699F,N7700F,N7701F,N7702F,
		N7703F,N7704F,N7705F,N7706F,N7707F,N7735F,N7736F,N7737F,N7738F,N7739F,N7740F,N7741F,N7742F,
		N7754F,N7755F,N7756F,N7757F,N7758F,N7759F,N7760F,N7761F,N8075F,N8076F,N8123F,N8124F,N8127F,N8128F);

initial begin

	FaultFile = $fopen("c5315dct.flt", "w");        
	$FaultCollapsing(c5315_Testbench.FUT, "c5315dct.flt");       
	$fclose(FaultFile);
	FaultFile = $fopen("c5315dct.flt", "r");
	dictionary_file = $fopen("c5315.dct", "w");
   

    while (!$feof(FaultFile)) begin
		i = 0;
        status = $fscanf(FaultFile,"%s s@%b\n", FaultyWire, stuckAtVal);
        $InjectFault(FaultyWire, stuckAtVal);
		TestFile = $fopen("c5315.pat", "r");
		detected = 1'b0;

        while (!$feof(TestFile)) begin
            #30;
            status = $fscanf(TestFile, "%b\n", TestVector);
			{N1,N4,N11,N14,N17,N20,N23,N24,N25,N26,
			N27,N31,N34,N37,N40,N43,N46,N49,N52,N53,
			N54,N61,N64,N67,N70,N73,N76,N79,N80,N81,
			N82,N83,N86,N87,N88,N91,N94,N97,N100,N103,
			N106,N109,N112,N113,N114,N115,N116,N117,N118,N119,
			N120,N121,N122,N123,N126,N127,N128,N129,N130,N131,
			N132,N135,N136,N137,N140,N141,N145,N146,N149,N152,
			N155,N158,N161,N164,N167,N170,N173,N176,N179,N182,
			N185,N188,N191,N194,N197,N200,N203,N206,N209,N210,
			N217,N218,N225,N226,N233,N234,N241,N242,N245,N248,
			N251,N254,N257,N264,N265,N272,N273,N280,N281,N288,
			N289,N292,N293,N299,N302,N307,N308,N315,N316,N323,
			N324,N331,N332,N335,N338,N341,N348,N351,N358,N361,
			N366,N369,N372,N373,N374,N386,N389,N400,N411,N422,
			N435,N446,N457,N468,N479,N490,N503,N514,N523,N534,
			N545,N549,N552,N556,N559,N562,N566,N571,N574,N577,
			N580,N583,N588,N591,N592,N595,N596,N597,N598,N599,
			N603,N607,N610,N613,N616,N619,N625,N631} = TestVector;
            #60;
            if (G_out != F_out) begin
                    detected = 1'b1;
					syndrome[i] = 1;
			end
			else syndrome[i] = 0;
			i = i + 1;
		end
		$fclose(TestFile);
		$fdisplay(dictionary_file,"%s,%b\n", FaultyWire, syndrome);
		$RemoveFault(FaultyWire);
        #30;
    end
	$fclose(FaultFile);
	$fclose(dictionary_file);
    $finish;
end
endmodule
