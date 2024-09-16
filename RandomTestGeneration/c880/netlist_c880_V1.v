
//Verilog file of module c880


`timescale 1 ns / 1ns

module c880_net(G1,
G10,
G11,
G12,
G13,
G14,
G15,
G16,
G17,
G18,
G19,
G2,
G20,
G21,
G22,
G23,
G24,
G25,
G26,
G27,
G28,
G29,
G3,
G30,
G31,
G32,
G33,
G34,
G35,
G36,
G37,
G38,
G39,
G4,
G40,
G41,
G42,
G43,
G44,
G45,
G46,
G47,
G48,
G49,
G5,
G50,
G51,
G52,
G53,
G54,
G55,
G56,
G57,
G58,
G59,
G6,
G60,
G7,
G8,
G855,
G856,
G857,
G858,
G859,
G860,
G861,
G862,
G863,
G864,
G865,
G866,
G867,
G868,
G869,
G870,
G871,
G872,
G873,
G874,
G875,
G876,
G877,
G878,
G879,
G880,
G9);
input G1;
input G2;
input G3;
input G4;
input G5;
input G6;
input G7;
input G8;
input G9;
input G10;
input G11;
input G12;
input G13;
input G14;
input G15;
input G16;
input G17;
input G18;
input G19;
input G20;
input G21;
input G22;
input G23;
input G24;
input G25;
input G26;
input G27;
input G28;
input G29;
input G30;
input G31;
input G32;
input G33;
input G34;
input G35;
input G36;
input G37;
input G38;
input G39;
input G40;
input G41;
input G42;
input G43;
input G44;
input G45;
input G46;
input G47;
input G48;
input G49;
input G50;
input G51;
input G52;
input G53;
input G54;
input G55;
input G56;
input G57;
input G58;
input G59;
input G60;

output G855;
output G856;
output G857;
output G858;
output G859;
output G860;
output G861;
output G862;
output G863;
output G864;
output G865;
output G866;
output G867;
output G868;
output G869;
output G870;
output G871;
output G872;
output G873;
output G874;
output G875;
output G876;
output G877;
output G878;
output G879;
output G880;

wire
c880_wire_1,
c880_wire_2,
c880_wire_3,
c880_wire_4,
c880_wire_5,
c880_wire_6,
c880_wire_7,
c880_wire_8,
c880_wire_9,
c880_wire_10,
c880_wire_11,
c880_wire_12,
c880_wire_13,
c880_wire_14,
c880_wire_15,
c880_wire_16,
c880_wire_17,
c880_wire_18,
c880_wire_19,
c880_wire_20,
c880_wire_21,
c880_wire_22,
c880_wire_23,
c880_wire_24,
c880_wire_25,
c880_wire_26,
c880_wire_27,
c880_wire_28,
c880_wire_29,
c880_wire_30,
c880_wire_31,
c880_wire_32,
c880_wire_33,
c880_wire_34,
c880_wire_35,
c880_wire_36,
c880_wire_37,
c880_wire_38,
c880_wire_39,
c880_wire_40,
c880_wire_41,
c880_wire_42,
c880_wire_43,
c880_wire_44,
c880_wire_45,
c880_wire_46,
c880_wire_47,
c880_wire_48,
c880_wire_49,
c880_wire_50,
c880_wire_51,
c880_wire_52,
c880_wire_53,
c880_wire_54,
c880_wire_55,
c880_wire_56,
c880_wire_57,
c880_wire_58,
c880_wire_59,
c880_wire_60,
c880_wire_61,
c880_wire_62,
c880_wire_63,
c880_wire_64,
c880_wire_65,
c880_wire_66,
c880_wire_67,
c880_wire_68,
c880_wire_69,
c880_wire_70,
c880_wire_71,
c880_wire_72,
c880_wire_73,
c880_wire_74,
c880_wire_75,
c880_wire_76,
c880_wire_77,
c880_wire_78,
c880_wire_79,
c880_wire_80,
c880_wire_81,
c880_wire_82,
c880_wire_83,
c880_wire_84,
c880_wire_85,
c880_wire_86,
c880_wire_87,
c880_wire_88,
c880_wire_89,
c880_wire_90,
c880_wire_91,
c880_wire_92,
c880_wire_93,
c880_wire_94,
c880_wire_95,
c880_wire_96,
c880_wire_97,
c880_wire_98,
c880_wire_99,
c880_wire_100,
c880_wire_101,
c880_wire_102,
c880_wire_103,
c880_wire_104,
c880_wire_105,
c880_wire_106,
c880_wire_107,
c880_wire_108,
c880_wire_109,
c880_wire_110,
c880_wire_111,
c880_wire_112,
c880_wire_113,
c880_wire_114,
c880_wire_115,
c880_wire_116,
c880_wire_117,
c880_wire_118,
c880_wire_119,
c880_wire_120,
c880_wire_121,
c880_wire_122,
c880_wire_123,
c880_wire_124,
c880_wire_125,
c880_wire_126,
c880_wire_127,
c880_wire_128,
c880_wire_129,
c880_wire_130,
c880_wire_131,
c880_wire_132,
c880_wire_133,
c880_wire_134,
c880_wire_135,
c880_wire_136,
c880_wire_137,
c880_wire_138,
c880_wire_139,
c880_wire_140,
c880_wire_141,
c880_wire_142,
c880_wire_143,
c880_wire_144,
c880_wire_145,
c880_wire_146,
c880_wire_147,
c880_wire_148,
c880_wire_149,
c880_wire_150,
c880_wire_151,
c880_wire_152,
c880_wire_153,
c880_wire_154,
c880_wire_155,
c880_wire_156,
c880_wire_157,
c880_wire_158,
c880_wire_159,
c880_wire_160,
c880_wire_161,
c880_wire_162,
c880_wire_163,
c880_wire_164,
c880_wire_165,
c880_wire_166,
c880_wire_167,
c880_wire_168,
c880_wire_169,
c880_wire_170,
c880_wire_171,
c880_wire_172,
c880_wire_173,
c880_wire_174,
c880_wire_175,
c880_wire_176,
c880_wire_177,
c880_wire_178,
c880_wire_179,
c880_wire_180,
c880_wire_181,
c880_wire_182,
c880_wire_183,
c880_wire_184,
c880_wire_185,
c880_wire_186,
c880_wire_187,
c880_wire_188,
c880_wire_189,
c880_wire_190,
c880_wire_191,
c880_wire_192,
c880_wire_193,
c880_wire_194,
c880_wire_195,
c880_wire_196,
c880_wire_197,
c880_wire_198,
c880_wire_199,
c880_wire_200,
c880_wire_201,
c880_wire_202,
c880_wire_203,
c880_wire_204,
c880_wire_205,
c880_wire_206,
c880_wire_207,
c880_wire_208,
c880_wire_209,
c880_wire_210,
c880_wire_211,
c880_wire_212,
c880_wire_213,
c880_wire_214,
c880_wire_215,
c880_wire_216,
c880_wire_217,
c880_wire_218,
c880_wire_219,
c880_wire_220,
c880_wire_221,
c880_wire_222,
c880_wire_223,
c880_wire_224,
c880_wire_225,
c880_wire_226,
c880_wire_227,
c880_wire_228,
c880_wire_229,
c880_wire_230,
c880_wire_231,
c880_wire_232,
c880_wire_233,
c880_wire_234,
c880_wire_235,
c880_wire_236,
c880_wire_237,
c880_wire_238,
c880_wire_239,
c880_wire_240,
c880_wire_241,
c880_wire_242,
c880_wire_243,
c880_wire_244,
c880_wire_245,
c880_wire_246,
c880_wire_247,
c880_wire_248,
c880_wire_249,
c880_wire_250,
c880_wire_251,
c880_wire_252,
c880_wire_253,
c880_wire_254,
c880_wire_255,
c880_wire_256,
c880_wire_257,
c880_wire_258,
c880_wire_259,
c880_wire_260,
c880_wire_261,
c880_wire_262,
c880_wire_263,
c880_wire_264,
c880_wire_265,
c880_wire_266,
c880_wire_267,
c880_wire_268,
c880_wire_269,
c880_wire_270,
c880_wire_271,
c880_wire_272,
c880_wire_273,
c880_wire_274,
c880_wire_275,
c880_wire_276,
c880_wire_277,
c880_wire_278,
c880_wire_279,
c880_wire_280,
c880_wire_281,
c880_wire_282,
c880_wire_283,
c880_wire_284,
c880_wire_285,
c880_wire_286,
c880_wire_287,
c880_wire_288,
c880_wire_289,
c880_wire_290,
c880_wire_291,
c880_wire_292,
c880_wire_293,
c880_wire_294,
c880_wire_295,
c880_wire_296,
c880_wire_297,
c880_wire_298,
c880_wire_299,
c880_wire_300,
c880_wire_301,
c880_wire_302,
c880_wire_303,
c880_wire_304,
c880_wire_305,
c880_wire_306,
c880_wire_307,
c880_wire_308,
c880_wire_309,
c880_wire_310,
c880_wire_311,
c880_wire_312,
c880_wire_313,
c880_wire_314,
c880_wire_315,
c880_wire_316,
c880_wire_317,
c880_wire_318,
c880_wire_319,
c880_wire_320,
c880_wire_321,
c880_wire_322,
c880_wire_323,
c880_wire_324,
c880_wire_325,
c880_wire_326,
c880_wire_327,
c880_wire_328,
c880_wire_329,
c880_wire_330,
c880_wire_331,
c880_wire_332,
c880_wire_333,
c880_wire_334,
c880_wire_335,
c880_wire_336,
c880_wire_337,
c880_wire_338,
c880_wire_339,
c880_wire_340,
c880_wire_341,
c880_wire_342,
c880_wire_343,
c880_wire_344,
c880_wire_345,
c880_wire_346,
c880_wire_347,
c880_wire_348,
c880_wire_349,
c880_wire_350,
c880_wire_351,
c880_wire_352,
c880_wire_353,
c880_wire_354,
c880_wire_355,
c880_wire_356,
c880_wire_357,
c880_wire_358,
c880_wire_359,
c880_wire_360,
c880_wire_361,
c880_wire_362,
c880_wire_363,
c880_wire_364,
c880_wire_365,
c880_wire_366,
c880_wire_367,
c880_wire_368,
c880_wire_369,
c880_wire_370,
c880_wire_371,
c880_wire_372,
c880_wire_373,
c880_wire_374,
c880_wire_375,
c880_wire_376,
c880_wire_377,
c880_wire_378,
c880_wire_379,
c880_wire_380,
c880_wire_381,
c880_wire_382,
c880_wire_383,
c880_wire_384,
c880_wire_385,
c880_wire_386,
c880_wire_387,
c880_wire_388,
c880_wire_389,
c880_wire_390,
c880_wire_391,
c880_wire_392,
c880_wire_393,
c880_wire_394,
c880_wire_395,
c880_wire_396,
c880_wire_397,
c880_wire_398,
c880_wire_399,
c880_wire_400,
c880_wire_401,
c880_wire_402,
c880_wire_403,
c880_wire_404,
c880_wire_405,
c880_wire_406,
c880_wire_407,
c880_wire_408,
c880_wire_409,
c880_wire_410,
c880_wire_411,
c880_wire_412,
c880_wire_413,
c880_wire_414,
c880_wire_415,
c880_wire_416,
c880_wire_417,
c880_wire_418,
c880_wire_419,
c880_wire_420,
c880_wire_421,
c880_wire_422,
c880_wire_423,
c880_wire_424,
c880_wire_425,
c880_wire_426,
c880_wire_427,
c880_wire_428,
c880_wire_429,
c880_wire_430,
c880_wire_431,
c880_wire_432,
c880_wire_433,
c880_wire_434,
c880_wire_435,
c880_wire_436,
c880_wire_437,
c880_wire_438,
c880_wire_439,
c880_wire_440,
c880_wire_441,
c880_wire_442,
c880_wire_443,
c880_wire_444,
c880_wire_445,
c880_wire_446,
c880_wire_447,
c880_wire_448,
c880_wire_449,
c880_wire_450,
c880_wire_451,
c880_wire_452,
c880_wire_453,
c880_wire_454,
c880_wire_455,
c880_wire_456,
c880_wire_457,
c880_wire_458,
c880_wire_459,
c880_wire_460,
c880_wire_461,
c880_wire_462,
c880_wire_463,
c880_wire_464,
c880_wire_465,
c880_wire_466,
c880_wire_467,
c880_wire_468,
c880_wire_469,
c880_wire_470,
c880_wire_471,
c880_wire_472,
c880_wire_473,
c880_wire_474,
c880_wire_475,
c880_wire_476,
c880_wire_477,
c880_wire_478,
c880_wire_479,
c880_wire_480,
c880_wire_481,
c880_wire_482,
c880_wire_483,
c880_wire_484,
c880_wire_485,
c880_wire_486,
c880_wire_487,
c880_wire_488,
c880_wire_489,
c880_wire_490,
c880_wire_491,
c880_wire_492,
c880_wire_493,
c880_wire_494,
c880_wire_495,
c880_wire_496,
c880_wire_497,
c880_wire_498,
c880_wire_499,
c880_wire_500,
c880_wire_501,
c880_wire_502,
c880_wire_1_0,
c880_wire_1_1,
c880_wire_1_2,
c880_wire_1_3,
c880_wire_1_4,
c880_wire_1_5,
c880_wire_1_6,
c880_wire_2_0,
c880_wire_2_1,
c880_wire_2_2,
c880_wire_2_3,
c880_wire_2_4,
c880_wire_2_5,
c880_wire_3_0,
c880_wire_3_1,
c880_wire_3_2,
c880_wire_3_3,
c880_wire_3_4,
c880_wire_3_5,
c880_wire_3_6,
c880_wire_3_7,
c880_wire_3_8,
c880_wire_3_9,
c880_wire_19_0,
c880_wire_19_1,
c880_wire_19_2,
c880_wire_19_3,
c880_wire_19_4,
c880_wire_19_5,
c880_wire_19_6,
c880_wire_19_7,
c880_wire_19_8,
c880_wire_19_9,
c880_wire_19_10,
c880_wire_19_11,
c880_wire_19_12,
c880_wire_19_13,
c880_wire_19_14,
c880_wire_20_0,
c880_wire_20_1,
c880_wire_20_2,
c880_wire_20_3,
c880_wire_20_4,
c880_wire_29_0,
c880_wire_29_1,
c880_wire_29_2,
c880_wire_29_3,
c880_wire_29_4,
c880_wire_29_5,
c880_wire_29_6,
c880_wire_29_7,
c880_wire_29_8,
c880_wire_29_9,
c880_wire_33_0,
c880_wire_33_1,
c880_wire_33_2,
c880_wire_33_3,
c880_wire_33_4,
c880_wire_33_5,
c880_wire_33_6,
c880_wire_33_7,
c880_wire_34_0,
c880_wire_34_1,
c880_wire_34_2,
c880_wire_34_3,
c880_wire_34_4,
c880_wire_34_5,
c880_wire_34_6,
c880_wire_34_7,
c880_wire_7_0,
c880_wire_7_1,
c880_wire_7_2,
c880_wire_7_3,
c880_wire_7_4,
c880_wire_7_5,
c880_wire_7_6,
c880_wire_7_7,
c880_wire_8_0,
c880_wire_8_1,
c880_wire_8_2,
c880_wire_8_3,
c880_wire_8_4,
c880_wire_8_5,
c880_wire_8_6,
c880_wire_8_7,
c880_wire_59_0,
c880_wire_59_1,
c880_wire_59_2,
c880_wire_59_3,
c880_wire_9_0,
c880_wire_9_1,
c880_wire_9_2,
c880_wire_9_3,
c880_wire_9_4,
c880_wire_9_5,
c880_wire_9_6,
c880_wire_9_7,
c880_wire_4_0,
c880_wire_4_1,
c880_wire_4_2,
c880_wire_4_3,
c880_wire_74_0,
c880_wire_74_1,
c880_wire_74_2,
c880_wire_74_3,
c880_wire_81_0,
c880_wire_81_1,
c880_wire_81_2,
c880_wire_81_3,
c880_wire_87_0,
c880_wire_87_1,
c880_wire_87_2,
c880_wire_85_0,
c880_wire_85_1,
c880_wire_88_0,
c880_wire_88_1,
c880_wire_88_2,
c880_wire_67_0,
c880_wire_67_1,
c880_wire_67_2,
c880_wire_107_0,
c880_wire_107_1,
c880_wire_107_2,
c880_wire_108_0,
c880_wire_108_1,
c880_wire_108_2,
c880_wire_108_3,
c880_wire_109_0,
c880_wire_109_1,
c880_wire_109_2,
c880_wire_116_0,
c880_wire_116_1,
c880_wire_5_0,
c880_wire_5_1,
c880_wire_5_2,
c880_wire_5_3,
c880_wire_124_0,
c880_wire_124_1,
c880_wire_124_2,
c880_wire_125_0,
c880_wire_125_1,
c880_wire_125_2,
c880_wire_125_3,
c880_wire_126_0,
c880_wire_126_1,
c880_wire_137_0,
c880_wire_137_1,
c880_wire_137_2,
c880_wire_137_3,
c880_wire_142_0,
c880_wire_142_1,
c880_wire_123_0,
c880_wire_123_1,
c880_wire_123_2,
c880_wire_123_3,
c880_wire_12_0,
c880_wire_12_1,
c880_wire_14_0,
c880_wire_14_1,
c880_wire_16_0,
c880_wire_16_1,
c880_wire_18_0,
c880_wire_18_1,
c880_wire_52_0,
c880_wire_52_1,
c880_wire_52_2,
c880_wire_52_3,
c880_wire_52_4,
c880_wire_52_5,
c880_wire_52_6,
c880_wire_52_7,
c880_wire_52_8,
c880_wire_52_9,
c880_wire_52_10,
c880_wire_21_0,
c880_wire_21_1,
c880_wire_163_0,
c880_wire_163_1,
c880_wire_43_0,
c880_wire_43_1,
c880_wire_43_2,
c880_wire_43_3,
c880_wire_43_4,
c880_wire_168_0,
c880_wire_168_1,
c880_wire_171_0,
c880_wire_171_1,
c880_wire_171_2,
c880_wire_171_3,
c880_wire_176_0,
c880_wire_176_1,
c880_wire_176_2,
c880_wire_176_3,
c880_wire_176_4,
c880_wire_45_0,
c880_wire_45_1,
c880_wire_45_2,
c880_wire_45_3,
c880_wire_45_4,
c880_wire_179_0,
c880_wire_179_1,
c880_wire_179_2,
c880_wire_179_3,
c880_wire_182_0,
c880_wire_182_1,
c880_wire_182_2,
c880_wire_182_3,
c880_wire_182_4,
c880_wire_41_0,
c880_wire_41_1,
c880_wire_41_2,
c880_wire_41_3,
c880_wire_187_0,
c880_wire_187_1,
c880_wire_187_2,
c880_wire_187_3,
c880_wire_187_4,
c880_wire_187_5,
c880_wire_47_0,
c880_wire_47_1,
c880_wire_47_2,
c880_wire_47_3,
c880_wire_190_0,
c880_wire_190_1,
c880_wire_190_2,
c880_wire_190_3,
c880_wire_195_0,
c880_wire_195_1,
c880_wire_195_2,
c880_wire_195_3,
c880_wire_195_4,
c880_wire_195_5,
c880_wire_195_6,
c880_wire_49_0,
c880_wire_49_1,
c880_wire_49_2,
c880_wire_49_3,
c880_wire_197_0,
c880_wire_197_1,
c880_wire_197_2,
c880_wire_197_3,
c880_wire_197_4,
c880_wire_197_5,
c880_wire_197_6,
c880_wire_197_7,
c880_wire_199_0,
c880_wire_199_1,
c880_wire_199_2,
c880_wire_199_3,
c880_wire_199_4,
c880_wire_35_0,
c880_wire_35_1,
c880_wire_35_2,
c880_wire_35_3,
c880_wire_202_0,
c880_wire_202_1,
c880_wire_202_2,
c880_wire_202_3,
c880_wire_202_4,
c880_wire_37_0,
c880_wire_37_1,
c880_wire_37_2,
c880_wire_37_3,
c880_wire_206_0,
c880_wire_206_1,
c880_wire_206_2,
c880_wire_206_3,
c880_wire_211_0,
c880_wire_211_1,
c880_wire_211_2,
c880_wire_211_3,
c880_wire_211_4,
c880_wire_211_5,
c880_wire_39_0,
c880_wire_39_1,
c880_wire_39_2,
c880_wire_39_3,
c880_wire_217_0,
c880_wire_217_1,
c880_wire_217_2,
c880_wire_217_3,
c880_wire_217_4,
c880_wire_217_5,
c880_wire_217_6,
c880_wire_173_0,
c880_wire_173_1,
c880_wire_173_2,
c880_wire_173_3,
c880_wire_61_0,
c880_wire_61_1,
c880_wire_61_2,
c880_wire_78_0,
c880_wire_78_1,
c880_wire_78_2,
c880_wire_78_3,
c880_wire_78_4,
c880_wire_78_5,
c880_wire_78_6,
c880_wire_78_7,
c880_wire_229_0,
c880_wire_229_1,
c880_wire_229_2,
c880_wire_229_3,
c880_wire_229_4,
c880_wire_229_5,
c880_wire_229_6,
c880_wire_229_7,
c880_wire_191_0,
c880_wire_191_1,
c880_wire_191_2,
c880_wire_191_3,
c880_wire_253_0,
c880_wire_253_1,
c880_wire_253_2,
c880_wire_253_3,
c880_wire_253_4,
c880_wire_253_5,
c880_wire_253_6,
c880_wire_253_7,
c880_wire_270_0,
c880_wire_270_1,
c880_wire_270_2,
c880_wire_270_3,
c880_wire_270_4,
c880_wire_270_5,
c880_wire_270_6,
c880_wire_270_7,
c880_wire_207_0,
c880_wire_207_1,
c880_wire_207_2,
c880_wire_207_3,
c880_wire_275_0,
c880_wire_275_1,
c880_wire_275_2,
c880_wire_275_3,
c880_wire_276_0,
c880_wire_276_1,
c880_wire_276_2,
c880_wire_286_0,
c880_wire_286_1,
c880_wire_286_2,
c880_wire_286_3,
c880_wire_286_4,
c880_wire_286_5,
c880_wire_286_6,
c880_wire_286_7,
c880_wire_287_0,
c880_wire_287_1,
c880_wire_287_2,
c880_wire_287_3,
c880_wire_288_0,
c880_wire_288_1,
c880_wire_288_2,
c880_wire_290_0,
c880_wire_290_1,
c880_wire_290_2,
c880_wire_290_3,
c880_wire_290_4,
c880_wire_291_0,
c880_wire_291_1,
c880_wire_291_2,
c880_wire_306_0,
c880_wire_306_1,
c880_wire_306_2,
c880_wire_307_0,
c880_wire_307_1,
c880_wire_307_2,
c880_wire_307_3,
c880_wire_307_4,
c880_wire_307_5,
c880_wire_308_0,
c880_wire_308_1,
c880_wire_308_2,
c880_wire_309_0,
c880_wire_309_1,
c880_wire_309_2,
c880_wire_309_3,
c880_wire_310_0,
c880_wire_310_1,
c880_wire_310_2,
c880_wire_311_0,
c880_wire_311_1,
c880_wire_311_2,
c880_wire_311_3,
c880_wire_312_0,
c880_wire_312_1,
c880_wire_312_2,
c880_wire_319_0,
c880_wire_319_1,
c880_wire_319_2,
c880_wire_319_3,
c880_wire_319_4,
c880_wire_320_0,
c880_wire_320_1,
c880_wire_320_2,
c880_wire_321_0,
c880_wire_321_1,
c880_wire_321_2,
c880_wire_321_3,
c880_wire_321_4,
c880_wire_321_5,
c880_wire_322_0,
c880_wire_322_1,
c880_wire_322_2,
c880_wire_328_0,
c880_wire_328_1,
c880_wire_328_2,
c880_wire_328_3,
c880_wire_328_4,
c880_wire_10_0,
c880_wire_10_1,
c880_wire_10_2,
c880_wire_10_3,
c880_wire_10_4,
c880_wire_10_5,
c880_wire_10_6,
c880_wire_10_7,
c880_wire_10_8,
c880_wire_204_0,
c880_wire_204_1,
c880_wire_204_2,
c880_wire_204_3,
c880_wire_204_4,
c880_wire_204_5,
c880_wire_26_0,
c880_wire_26_1,
c880_wire_26_2,
c880_wire_26_3,
c880_wire_354_0,
c880_wire_354_1,
c880_wire_354_2,
c880_wire_436_0,
c880_wire_436_1,
c880_wire_439_0,
c880_wire_439_1,
c880_wire_347_0,
c880_wire_347_1,
c880_wire_347_2,
c880_wire_347_3,
c880_wire_347_4,
c880_wire_324_0,
c880_wire_324_1,
c880_wire_324_2,
c880_wire_24_0,
c880_wire_24_1,
c880_wire_24_2,
c880_wire_24_3,
c880_wire_24_4,
c880_wire_24_5,
c880_wire_24_6,
c880_wire_24_7,
c880_wire_24_8,
c880_wire_24_9,
c880_wire_24_10,
c880_wire_24_11,
c880_wire_24_12,
c880_wire_452_0,
c880_wire_452_1,
c880_wire_455_0,
c880_wire_455_1,
c880_wire_62_0,
c880_wire_62_1,
c880_wire_62_2,
G1_net_0,
G2_net_0,
G3_net_0,
G4_net_0,
G5_net_0,
G6_net_0,
G7_net_0,
G8_net_0,
G9_net_0,
G10_net_0,
G11_net_0,
G12_net_0,
G13_net_0,
G14_net_0,
G15_net_0,
G16_net_0,
G17_net_0,
G18_net_0,
G19_net_0,
G20_net_0,
G21_net_0,
G22_net_0,
G23_net_0,
G24_net_0,
G25_net_0,
G26_net_0,
G27_net_0,
G28_net_0,
G29_net_0,
G30_net_0,
G31_net_0,
G32_net_0,
G33_net_0,
G34_net_0,
G35_net_0,
G36_net_0,
G37_net_0,
G38_net_0,
G39_net_0,
G40_net_0,
G41_net_0,
G42_net_0,
G43_net_0,
G44_net_0,
G45_net_0,
G46_net_0,
G47_net_0,
G48_net_0,
G49_net_0,
G50_net_0,
G51_net_0,
G52_net_0,
G53_net_0,
G54_net_0,
G55_net_0,
G56_net_0,
G57_net_0,
G58_net_0,
G59_net_0,
G60_net_0,
G855_net_0,
G856_net_0,
G857_net_0,
G858_net_0,
G859_net_0,
G860_net_0,
G861_net_0,
G862_net_0,
G863_net_0,
G864_net_0,
G865_net_0,
G866_net_0,
G867_net_0,
G868_net_0,
G869_net_0,
G870_net_0,
G871_net_0,
G872_net_0,
G873_net_0,
G874_net_0,
G875_net_0,
G876_net_0,
G877_net_0,
G878_net_0,
G879_net_0,
G880_net_0;

pin #(60) pin_0 ({G1, G2, G3, G4, G5, G6, G7, G8, G9, G10, G11, G12, G13, G14, G15, G16, G17, G18, G19, G20, G21, G22, G23, G24, G25, G26, G27, G28, G29, G30, G31, G32, G33, G34, G35, G36, G37, G38, G39, G40, G41, G42, G43, G44, G45, G46, G47, G48, G49, G50, G51, G52, G53, G54, G55, G56, G57, G58, G59, G60}, {G1_net_0, G2_net_0, G3_net_0, G4_net_0, G5_net_0, G6_net_0, G7_net_0, G8_net_0, G9_net_0, G10_net_0, G11_net_0, G12_net_0, G13_net_0, G14_net_0, G15_net_0, G16_net_0, G17_net_0, G18_net_0, G19_net_0, G20_net_0, G21_net_0, G22_net_0, G23_net_0, G24_net_0, G25_net_0, G26_net_0, G27_net_0, G28_net_0, G29_net_0, G30_net_0, G31_net_0, G32_net_0, G33_net_0, G34_net_0, G35_net_0, G36_net_0, G37_net_0, G38_net_0, G39_net_0, G40_net_0, G41_net_0, G42_net_0, G43_net_0, G44_net_0, G45_net_0, G46_net_0, G47_net_0, G48_net_0, G49_net_0, G50_net_0, G51_net_0, G52_net_0, G53_net_0, G54_net_0, G55_net_0, G56_net_0, G57_net_0, G58_net_0, G59_net_0, G60_net_0});

pout #(26) pout_0 ({G855_net_0, G856_net_0, G857_net_0, G858_net_0, G859_net_0, G860_net_0, G861_net_0, G862_net_0, G863_net_0, G864_net_0, G865_net_0, G866_net_0, G867_net_0, G868_net_0, G869_net_0, G870_net_0, G871_net_0, G872_net_0, G873_net_0, G874_net_0, G875_net_0, G876_net_0, G877_net_0, G878_net_0, G879_net_0, G880_net_0}, {G855, G856, G857, G858, G859, G860, G861, G862, G863, G864, G865, G866, G867, G868, G869, G870, G871, G872, G873, G874, G875, G876, G877, G878, G879, G880});

fanout_n #(7, 0, 0) FANOUT_1 (c880_wire_1, {c880_wire_1_0, c880_wire_1_1, c880_wire_1_2, c880_wire_1_3, c880_wire_1_4, c880_wire_1_5, c880_wire_1_6});
fanout_n #(6, 0, 0) FANOUT_2 (c880_wire_2, {c880_wire_2_0, c880_wire_2_1, c880_wire_2_2, c880_wire_2_3, c880_wire_2_4, c880_wire_2_5});
fanout_n #(10, 0, 0) FANOUT_3 (c880_wire_3, {c880_wire_3_0, c880_wire_3_1, c880_wire_3_2, c880_wire_3_3, c880_wire_3_4, c880_wire_3_5, c880_wire_3_6, c880_wire_3_7, c880_wire_3_8, c880_wire_3_9});
fanout_n #(15, 0, 0) FANOUT_4 (c880_wire_19, {c880_wire_19_0, c880_wire_19_1, c880_wire_19_2, c880_wire_19_3, c880_wire_19_4, c880_wire_19_5, c880_wire_19_6, c880_wire_19_7, c880_wire_19_8, c880_wire_19_9, c880_wire_19_10, c880_wire_19_11, c880_wire_19_12, c880_wire_19_13, c880_wire_19_14});
fanout_n #(5, 0, 0) FANOUT_5 (c880_wire_20, {c880_wire_20_0, c880_wire_20_1, c880_wire_20_2, c880_wire_20_3, c880_wire_20_4});
fanout_n #(10, 0, 0) FANOUT_6 (c880_wire_29, {c880_wire_29_0, c880_wire_29_1, c880_wire_29_2, c880_wire_29_3, c880_wire_29_4, c880_wire_29_5, c880_wire_29_6, c880_wire_29_7, c880_wire_29_8, c880_wire_29_9});
fanout_n #(8, 0, 0) FANOUT_7 (c880_wire_33, {c880_wire_33_0, c880_wire_33_1, c880_wire_33_2, c880_wire_33_3, c880_wire_33_4, c880_wire_33_5, c880_wire_33_6, c880_wire_33_7});
fanout_n #(8, 0, 0) FANOUT_8 (c880_wire_34, {c880_wire_34_0, c880_wire_34_1, c880_wire_34_2, c880_wire_34_3, c880_wire_34_4, c880_wire_34_5, c880_wire_34_6, c880_wire_34_7});
fanout_n #(8, 0, 0) FANOUT_9 (c880_wire_7, {c880_wire_7_0, c880_wire_7_1, c880_wire_7_2, c880_wire_7_3, c880_wire_7_4, c880_wire_7_5, c880_wire_7_6, c880_wire_7_7});
fanout_n #(8, 0, 0) FANOUT_10 (c880_wire_8, {c880_wire_8_0, c880_wire_8_1, c880_wire_8_2, c880_wire_8_3, c880_wire_8_4, c880_wire_8_5, c880_wire_8_6, c880_wire_8_7});
fanout_n #(4, 0, 0) FANOUT_11 (c880_wire_59, {c880_wire_59_0, c880_wire_59_1, c880_wire_59_2, c880_wire_59_3});
fanout_n #(8, 0, 0) FANOUT_12 (c880_wire_9, {c880_wire_9_0, c880_wire_9_1, c880_wire_9_2, c880_wire_9_3, c880_wire_9_4, c880_wire_9_5, c880_wire_9_6, c880_wire_9_7});
fanout_n #(4, 0, 0) FANOUT_13 (c880_wire_4, {c880_wire_4_0, c880_wire_4_1, c880_wire_4_2, c880_wire_4_3});
fanout_n #(4, 0, 0) FANOUT_14 (c880_wire_74, {c880_wire_74_0, c880_wire_74_1, c880_wire_74_2, c880_wire_74_3});
fanout_n #(4, 0, 0) FANOUT_15 (c880_wire_81, {c880_wire_81_0, c880_wire_81_1, c880_wire_81_2, c880_wire_81_3});
fanout_n #(3, 0, 0) FANOUT_16 (c880_wire_87, {c880_wire_87_0, c880_wire_87_1, c880_wire_87_2});
fanout_n #(2, 0, 0) FANOUT_17 (c880_wire_85, {c880_wire_85_0, c880_wire_85_1});
fanout_n #(3, 0, 0) FANOUT_18 (c880_wire_88, {c880_wire_88_0, c880_wire_88_1, c880_wire_88_2});
fanout_n #(3, 0, 0) FANOUT_19 (c880_wire_67, {c880_wire_67_0, c880_wire_67_1, c880_wire_67_2});
fanout_n #(3, 0, 0) FANOUT_20 (c880_wire_107, {c880_wire_107_0, c880_wire_107_1, c880_wire_107_2});
fanout_n #(4, 0, 0) FANOUT_21 (c880_wire_108, {c880_wire_108_0, c880_wire_108_1, c880_wire_108_2, c880_wire_108_3});
fanout_n #(3, 0, 0) FANOUT_22 (c880_wire_109, {c880_wire_109_0, c880_wire_109_1, c880_wire_109_2});
fanout_n #(2, 0, 0) FANOUT_23 (c880_wire_116, {c880_wire_116_0, c880_wire_116_1});
fanout_n #(4, 0, 0) FANOUT_24 (c880_wire_5, {c880_wire_5_0, c880_wire_5_1, c880_wire_5_2, c880_wire_5_3});
fanout_n #(3, 0, 0) FANOUT_25 (c880_wire_124, {c880_wire_124_0, c880_wire_124_1, c880_wire_124_2});
fanout_n #(4, 0, 0) FANOUT_26 (c880_wire_125, {c880_wire_125_0, c880_wire_125_1, c880_wire_125_2, c880_wire_125_3});
fanout_n #(2, 0, 0) FANOUT_27 (c880_wire_126, {c880_wire_126_0, c880_wire_126_1});
fanout_n #(4, 0, 0) FANOUT_28 (c880_wire_137, {c880_wire_137_0, c880_wire_137_1, c880_wire_137_2, c880_wire_137_3});
fanout_n #(2, 0, 0) FANOUT_29 (c880_wire_142, {c880_wire_142_0, c880_wire_142_1});
fanout_n #(4, 0, 0) FANOUT_30 (c880_wire_123, {c880_wire_123_0, c880_wire_123_1, c880_wire_123_2, c880_wire_123_3});
fanout_n #(2, 0, 0) FANOUT_31 (c880_wire_12, {c880_wire_12_0, c880_wire_12_1});
fanout_n #(2, 0, 0) FANOUT_32 (c880_wire_14, {c880_wire_14_0, c880_wire_14_1});
fanout_n #(2, 0, 0) FANOUT_33 (c880_wire_16, {c880_wire_16_0, c880_wire_16_1});
fanout_n #(2, 0, 0) FANOUT_34 (c880_wire_18, {c880_wire_18_0, c880_wire_18_1});
fanout_n #(11, 0, 0) FANOUT_35 (c880_wire_52, {c880_wire_52_0, c880_wire_52_1, c880_wire_52_2, c880_wire_52_3, c880_wire_52_4, c880_wire_52_5, c880_wire_52_6, c880_wire_52_7, c880_wire_52_8, c880_wire_52_9, c880_wire_52_10});
fanout_n #(2, 0, 0) FANOUT_36 (c880_wire_21, {c880_wire_21_0, c880_wire_21_1});
fanout_n #(2, 0, 0) FANOUT_37 (c880_wire_163, {c880_wire_163_0, c880_wire_163_1});
fanout_n #(5, 0, 0) FANOUT_38 (c880_wire_43, {c880_wire_43_0, c880_wire_43_1, c880_wire_43_2, c880_wire_43_3, c880_wire_43_4});
fanout_n #(2, 0, 0) FANOUT_39 (c880_wire_168, {c880_wire_168_0, c880_wire_168_1});
fanout_n #(4, 0, 0) FANOUT_40 (c880_wire_171, {c880_wire_171_0, c880_wire_171_1, c880_wire_171_2, c880_wire_171_3});
fanout_n #(5, 0, 0) FANOUT_41 (c880_wire_176, {c880_wire_176_0, c880_wire_176_1, c880_wire_176_2, c880_wire_176_3, c880_wire_176_4});
fanout_n #(5, 0, 0) FANOUT_42 (c880_wire_45, {c880_wire_45_0, c880_wire_45_1, c880_wire_45_2, c880_wire_45_3, c880_wire_45_4});
fanout_n #(4, 0, 0) FANOUT_43 (c880_wire_179, {c880_wire_179_0, c880_wire_179_1, c880_wire_179_2, c880_wire_179_3});
fanout_n #(5, 0, 0) FANOUT_44 (c880_wire_182, {c880_wire_182_0, c880_wire_182_1, c880_wire_182_2, c880_wire_182_3, c880_wire_182_4});
fanout_n #(4, 0, 0) FANOUT_45 (c880_wire_41, {c880_wire_41_0, c880_wire_41_1, c880_wire_41_2, c880_wire_41_3});
fanout_n #(6, 0, 0) FANOUT_46 (c880_wire_187, {c880_wire_187_0, c880_wire_187_1, c880_wire_187_2, c880_wire_187_3, c880_wire_187_4, c880_wire_187_5});
fanout_n #(4, 0, 0) FANOUT_47 (c880_wire_47, {c880_wire_47_0, c880_wire_47_1, c880_wire_47_2, c880_wire_47_3});
fanout_n #(4, 0, 0) FANOUT_48 (c880_wire_190, {c880_wire_190_0, c880_wire_190_1, c880_wire_190_2, c880_wire_190_3});
fanout_n #(7, 0, 0) FANOUT_49 (c880_wire_195, {c880_wire_195_0, c880_wire_195_1, c880_wire_195_2, c880_wire_195_3, c880_wire_195_4, c880_wire_195_5, c880_wire_195_6});
fanout_n #(4, 0, 0) FANOUT_50 (c880_wire_49, {c880_wire_49_0, c880_wire_49_1, c880_wire_49_2, c880_wire_49_3});
fanout_n #(8, 0, 0) FANOUT_51 (c880_wire_197, {c880_wire_197_0, c880_wire_197_1, c880_wire_197_2, c880_wire_197_3, c880_wire_197_4, c880_wire_197_5, c880_wire_197_6, c880_wire_197_7});
fanout_n #(5, 0, 0) FANOUT_52 (c880_wire_199, {c880_wire_199_0, c880_wire_199_1, c880_wire_199_2, c880_wire_199_3, c880_wire_199_4});
fanout_n #(4, 0, 0) FANOUT_53 (c880_wire_35, {c880_wire_35_0, c880_wire_35_1, c880_wire_35_2, c880_wire_35_3});
fanout_n #(5, 0, 0) FANOUT_54 (c880_wire_202, {c880_wire_202_0, c880_wire_202_1, c880_wire_202_2, c880_wire_202_3, c880_wire_202_4});
fanout_n #(4, 0, 0) FANOUT_55 (c880_wire_37, {c880_wire_37_0, c880_wire_37_1, c880_wire_37_2, c880_wire_37_3});
fanout_n #(4, 0, 0) FANOUT_56 (c880_wire_206, {c880_wire_206_0, c880_wire_206_1, c880_wire_206_2, c880_wire_206_3});
fanout_n #(6, 0, 0) FANOUT_57 (c880_wire_211, {c880_wire_211_0, c880_wire_211_1, c880_wire_211_2, c880_wire_211_3, c880_wire_211_4, c880_wire_211_5});
fanout_n #(4, 0, 0) FANOUT_58 (c880_wire_39, {c880_wire_39_0, c880_wire_39_1, c880_wire_39_2, c880_wire_39_3});
fanout_n #(7, 0, 0) FANOUT_59 (c880_wire_217, {c880_wire_217_0, c880_wire_217_1, c880_wire_217_2, c880_wire_217_3, c880_wire_217_4, c880_wire_217_5, c880_wire_217_6});
fanout_n #(4, 0, 0) FANOUT_60 (c880_wire_173, {c880_wire_173_0, c880_wire_173_1, c880_wire_173_2, c880_wire_173_3});
fanout_n #(3, 0, 0) FANOUT_61 (c880_wire_61, {c880_wire_61_0, c880_wire_61_1, c880_wire_61_2});
fanout_n #(8, 0, 0) FANOUT_62 (c880_wire_78, {c880_wire_78_0, c880_wire_78_1, c880_wire_78_2, c880_wire_78_3, c880_wire_78_4, c880_wire_78_5, c880_wire_78_6, c880_wire_78_7});
fanout_n #(8, 0, 0) FANOUT_63 (c880_wire_229, {c880_wire_229_0, c880_wire_229_1, c880_wire_229_2, c880_wire_229_3, c880_wire_229_4, c880_wire_229_5, c880_wire_229_6, c880_wire_229_7});
fanout_n #(4, 0, 0) FANOUT_64 (c880_wire_191, {c880_wire_191_0, c880_wire_191_1, c880_wire_191_2, c880_wire_191_3});
fanout_n #(8, 0, 0) FANOUT_65 (c880_wire_253, {c880_wire_253_0, c880_wire_253_1, c880_wire_253_2, c880_wire_253_3, c880_wire_253_4, c880_wire_253_5, c880_wire_253_6, c880_wire_253_7});
fanout_n #(8, 0, 0) FANOUT_66 (c880_wire_270, {c880_wire_270_0, c880_wire_270_1, c880_wire_270_2, c880_wire_270_3, c880_wire_270_4, c880_wire_270_5, c880_wire_270_6, c880_wire_270_7});
fanout_n #(4, 0, 0) FANOUT_67 (c880_wire_207, {c880_wire_207_0, c880_wire_207_1, c880_wire_207_2, c880_wire_207_3});
fanout_n #(4, 0, 0) FANOUT_68 (c880_wire_275, {c880_wire_275_0, c880_wire_275_1, c880_wire_275_2, c880_wire_275_3});
fanout_n #(3, 0, 0) FANOUT_69 (c880_wire_276, {c880_wire_276_0, c880_wire_276_1, c880_wire_276_2});
fanout_n #(8, 0, 0) FANOUT_70 (c880_wire_286, {c880_wire_286_0, c880_wire_286_1, c880_wire_286_2, c880_wire_286_3, c880_wire_286_4, c880_wire_286_5, c880_wire_286_6, c880_wire_286_7});
fanout_n #(4, 0, 0) FANOUT_71 (c880_wire_287, {c880_wire_287_0, c880_wire_287_1, c880_wire_287_2, c880_wire_287_3});
fanout_n #(3, 0, 0) FANOUT_72 (c880_wire_288, {c880_wire_288_0, c880_wire_288_1, c880_wire_288_2});
fanout_n #(5, 0, 0) FANOUT_73 (c880_wire_290, {c880_wire_290_0, c880_wire_290_1, c880_wire_290_2, c880_wire_290_3, c880_wire_290_4});
fanout_n #(3, 0, 0) FANOUT_74 (c880_wire_291, {c880_wire_291_0, c880_wire_291_1, c880_wire_291_2});
fanout_n #(3, 0, 0) FANOUT_75 (c880_wire_306, {c880_wire_306_0, c880_wire_306_1, c880_wire_306_2});
fanout_n #(6, 0, 0) FANOUT_76 (c880_wire_307, {c880_wire_307_0, c880_wire_307_1, c880_wire_307_2, c880_wire_307_3, c880_wire_307_4, c880_wire_307_5});
fanout_n #(3, 0, 0) FANOUT_77 (c880_wire_308, {c880_wire_308_0, c880_wire_308_1, c880_wire_308_2});
fanout_n #(4, 0, 0) FANOUT_78 (c880_wire_309, {c880_wire_309_0, c880_wire_309_1, c880_wire_309_2, c880_wire_309_3});
fanout_n #(3, 0, 0) FANOUT_79 (c880_wire_310, {c880_wire_310_0, c880_wire_310_1, c880_wire_310_2});
fanout_n #(4, 0, 0) FANOUT_80 (c880_wire_311, {c880_wire_311_0, c880_wire_311_1, c880_wire_311_2, c880_wire_311_3});
fanout_n #(3, 0, 0) FANOUT_81 (c880_wire_312, {c880_wire_312_0, c880_wire_312_1, c880_wire_312_2});
fanout_n #(5, 0, 0) FANOUT_82 (c880_wire_319, {c880_wire_319_0, c880_wire_319_1, c880_wire_319_2, c880_wire_319_3, c880_wire_319_4});
fanout_n #(3, 0, 0) FANOUT_83 (c880_wire_320, {c880_wire_320_0, c880_wire_320_1, c880_wire_320_2});
fanout_n #(6, 0, 0) FANOUT_84 (c880_wire_321, {c880_wire_321_0, c880_wire_321_1, c880_wire_321_2, c880_wire_321_3, c880_wire_321_4, c880_wire_321_5});
fanout_n #(3, 0, 0) FANOUT_85 (c880_wire_322, {c880_wire_322_0, c880_wire_322_1, c880_wire_322_2});
fanout_n #(5, 0, 0) FANOUT_86 (c880_wire_328, {c880_wire_328_0, c880_wire_328_1, c880_wire_328_2, c880_wire_328_3, c880_wire_328_4});
fanout_n #(9, 0, 0) FANOUT_87 (c880_wire_10, {c880_wire_10_0, c880_wire_10_1, c880_wire_10_2, c880_wire_10_3, c880_wire_10_4, c880_wire_10_5, c880_wire_10_6, c880_wire_10_7, c880_wire_10_8});
fanout_n #(6, 0, 0) FANOUT_88 (c880_wire_204, {c880_wire_204_0, c880_wire_204_1, c880_wire_204_2, c880_wire_204_3, c880_wire_204_4, c880_wire_204_5});
fanout_n #(4, 0, 0) FANOUT_89 (c880_wire_26, {c880_wire_26_0, c880_wire_26_1, c880_wire_26_2, c880_wire_26_3});
fanout_n #(3, 0, 0) FANOUT_90 (c880_wire_354, {c880_wire_354_0, c880_wire_354_1, c880_wire_354_2});
fanout_n #(2, 0, 0) FANOUT_91 (c880_wire_436, {c880_wire_436_0, c880_wire_436_1});
fanout_n #(2, 0, 0) FANOUT_92 (c880_wire_439, {c880_wire_439_0, c880_wire_439_1});
fanout_n #(5, 0, 0) FANOUT_93 (c880_wire_347, {c880_wire_347_0, c880_wire_347_1, c880_wire_347_2, c880_wire_347_3, c880_wire_347_4});
fanout_n #(3, 0, 0) FANOUT_94 (c880_wire_324, {c880_wire_324_0, c880_wire_324_1, c880_wire_324_2});
fanout_n #(13, 0, 0) FANOUT_95 (c880_wire_24, {c880_wire_24_0, c880_wire_24_1, c880_wire_24_2, c880_wire_24_3, c880_wire_24_4, c880_wire_24_5, c880_wire_24_6, c880_wire_24_7, c880_wire_24_8, c880_wire_24_9, c880_wire_24_10, c880_wire_24_11, c880_wire_24_12});
fanout_n #(2, 0, 0) FANOUT_96 (c880_wire_452, {c880_wire_452_0, c880_wire_452_1});
fanout_n #(2, 0, 0) FANOUT_97 (c880_wire_455, {c880_wire_455_0, c880_wire_455_1});
fanout_n #(3, 0, 0) FANOUT_98 (c880_wire_62, {c880_wire_62_0, c880_wire_62_1, c880_wire_62_2});


bufg #(0, 0) BUF_1 (c880_wire_1, G1_net_0);
bufg #(0, 0) BUF_2 (c880_wire_2, G10_net_0);
and_n #(4, 0, 0) AND_1 (c880_wire_3, {c880_wire_2_0, c880_wire_1_0, c880_wire_4_0, c880_wire_5_0});
and_n #(5, 0, 0) AND_2 (c880_wire_6, {c880_wire_2_1, c880_wire_7_0, c880_wire_8_0, c880_wire_9_0, c880_wire_10_0});
and_n #(2, 0, 0) AND_3 (c880_wire_11, {c880_wire_2_2, c880_wire_12_0});
and_n #(2, 0, 0) AND_4 (c880_wire_13, {c880_wire_2_3, c880_wire_14_0});
and_n #(2, 0, 0) AND_5 (c880_wire_15, {c880_wire_2_4, c880_wire_16_0});
and_n #(2, 0, 0) AND_6 (c880_wire_17, {c880_wire_2_5, c880_wire_18_0});
bufg #(0, 0) BUF_3 (c880_wire_19, G11_net_0);
and_n #(2, 0, 0) AND_7 (c880_wire_20, {c880_wire_19_0, c880_wire_21_0});
and_n #(3, 0, 0) AND_8 (c880_wire_22, {c880_wire_19_1, c880_wire_7_1, c880_wire_8_1});
and_n #(3, 0, 0) AND_9 (c880_wire_23, {c880_wire_19_2, c880_wire_7_2, c880_wire_24_0});
and_n #(3, 0, 0) AND_10 (c880_wire_25, {c880_wire_19_3, c880_wire_8_2, c880_wire_26_0});
and_n #(3, 0, 0) AND_11 (c880_wire_27, {c880_wire_19_4, c880_wire_26_1, c880_wire_24_1});
and_n #(3, 0, 0) AND_12 (c880_wire_28, {c880_wire_19_5, c880_wire_29_0, c880_wire_30});
and_n #(2, 0, 0) AND_13 (c880_wire_31, {c880_wire_19_6, c880_wire_9_1});
and_n #(7, 0, 0) AND_14 (c880_wire_32, {c880_wire_19_7, c880_wire_29_1, c880_wire_33_0, c880_wire_34_0, c880_wire_3_0, c880_wire_35_0, c880_wire_24_2});
and_n #(7, 0, 0) AND_15 (c880_wire_36, {c880_wire_19_8, c880_wire_29_2, c880_wire_33_1, c880_wire_34_1, c880_wire_3_1, c880_wire_37_0, c880_wire_24_3});
and_n #(7, 0, 0) AND_16 (c880_wire_38, {c880_wire_19_9, c880_wire_29_3, c880_wire_33_2, c880_wire_34_2, c880_wire_3_2, c880_wire_39_0, c880_wire_24_4});
and_n #(7, 0, 0) AND_17 (c880_wire_40, {c880_wire_19_10, c880_wire_29_4, c880_wire_33_3, c880_wire_34_3, c880_wire_3_3, c880_wire_41_0, c880_wire_24_5});
and_n #(7, 0, 0) AND_18 (c880_wire_42, {c880_wire_19_11, c880_wire_29_5, c880_wire_33_4, c880_wire_34_4, c880_wire_3_4, c880_wire_43_0, c880_wire_24_6});
and_n #(7, 0, 0) AND_19 (c880_wire_44, {c880_wire_19_12, c880_wire_29_6, c880_wire_33_5, c880_wire_34_5, c880_wire_3_5, c880_wire_45_0, c880_wire_24_7});
and_n #(7, 0, 0) AND_20 (c880_wire_46, {c880_wire_19_13, c880_wire_29_7, c880_wire_33_6, c880_wire_34_6, c880_wire_3_6, c880_wire_47_0, c880_wire_24_8});
and_n #(7, 0, 0) AND_21 (c880_wire_48, {c880_wire_19_14, c880_wire_29_8, c880_wire_33_7, c880_wire_34_7, c880_wire_3_7, c880_wire_49_0, c880_wire_24_9});
bufg #(0, 0) BUF_4 (c880_wire_29, G12_net_0);
bufg #(0, 0) BUF_5 (c880_wire_33, G13_net_0);
bufg #(0, 0) BUF_6 (c880_wire_34, G14_net_0);
bufg #(0, 0) BUF_7 (c880_wire_30, G15_net_0);
bufg #(0, 0) BUF_8 (c880_wire_7, G16_net_0);
and_n #(3, 0, 0) AND_22 (c880_wire_50, {c880_wire_7_3, c880_wire_10_1, c880_wire_24_10});
and_n #(4, 0, 0) AND_23 (c880_wire_51, {c880_wire_7_4, c880_wire_8_3, c880_wire_52_0, c880_wire_10_2});
and_n #(4, 0, 0) AND_24 (c880_wire_53, {c880_wire_7_5, c880_wire_8_4, c880_wire_52_1, c880_wire_10_3});
and_n #(4, 0, 0) AND_25 (c880_wire_54, {c880_wire_7_6, c880_wire_8_5, c880_wire_52_2, c880_wire_10_4});
and_n #(4, 0, 0) AND_26 (c880_wire_55, {c880_wire_7_7, c880_wire_8_6, c880_wire_52_3, c880_wire_10_5});
bufg #(0, 0) BUF_9 (c880_wire_8, G17_net_0);
and_n #(3, 0, 0) AND_27 (c880_wire_56, {c880_wire_8_7, c880_wire_10_6, c880_wire_26_2});
bufg #(0, 0) BUF_10 (c880_wire_57, G18_net_0);
bufg #(0, 0) BUF_11 (c880_wire_58, G19_net_0);
and_n #(2, 0, 0) AND_28 (c880_wire_59, {c880_wire_1_1, c880_wire_60});
and_n #(3, 0, 0) AND_29 (c880_wire_9, {c880_wire_1_2, c880_wire_61_0, c880_wire_62_0});
and_n #(4, 0, 0) AND_30 (c880_wire_63, {c880_wire_1_3, c880_wire_4_1, c880_wire_5_1, c880_wire_52_4});
and_n #(4, 0, 0) AND_31 (c880_wire_64, {c880_wire_1_4, c880_wire_4_2, c880_wire_52_5, c880_wire_62_1});
and_n #(4, 0, 0) AND_32 (c880_wire_65, {c880_wire_1_5, c880_wire_5_2, c880_wire_52_6, c880_wire_61_1});
and_n #(5, 0, 0) AND_33 (c880_wire_66, {c880_wire_1_6, c880_wire_67_0, c880_wire_5_3, c880_wire_52_7, c880_wire_61_2});
bufg #(0, 0) BUF_12 (c880_wire_4, G2_net_0);
bufg #(0, 0) BUF_13 (c880_wire_68, G20_net_0);
bufg #(0, 0) BUF_14 (c880_wire_69, G21_net_0);
bufg #(0, 0) BUF_15 (c880_wire_70, G22_net_0);
notg #(0, 0) NOT_1 (c880_wire_71, c880_wire_70);
bufg #(0, 0) BUF_16 (c880_wire_72, G23_net_0);
notg #(0, 0) NOT_2 (c880_wire_73, c880_wire_72);
bufg #(0, 0) BUF_17 (c880_wire_74, G24_net_0);
and_n #(2, 0, 0) AND_34 (c880_wire_75, {c880_wire_74_0, c880_wire_76});
and_n #(2, 0, 0) AND_35 (c880_wire_77, {c880_wire_74_1, c880_wire_78_0});
and_n #(2, 0, 0) AND_36 (c880_wire_79, {c880_wire_74_2, c880_wire_80});
bufg #(0, 0) BUF_18 (c880_wire_81, G25_net_0);
and_n #(2, 0, 0) AND_37 (c880_wire_82, {c880_wire_81_0, c880_wire_83});
and_n #(2, 0, 0) AND_38 (c880_wire_84, {c880_wire_81_1, c880_wire_78_1});
xor_n #(2, 0, 0) XOR_1 (c880_wire_80, {c880_wire_81_2, c880_wire_85_0});
xor_n #(2, 0, 0) XOR_2 (c880_wire_86, {c880_wire_81_3, c880_wire_85_1});
bufg #(0, 0) BUF_19 (c880_wire_87, G26_net_0);
xor_n #(2, 0, 0) XOR_3 (c880_wire_85, {c880_wire_87_0, c880_wire_88_0});
and_n #(2, 0, 0) AND_39 (c880_wire_89, {c880_wire_87_1, c880_wire_90});
and_n #(2, 0, 0) AND_40 (c880_wire_91, {c880_wire_87_2, c880_wire_78_2});
bufg #(0, 0) BUF_20 (c880_wire_88, G27_net_0);
notg #(0, 0) NOT_3 (c880_wire_92, c880_wire_67_1);
and_n #(3, 0, 0) AND_41 (c880_wire_67, {c880_wire_10_7, c880_wire_26_3, c880_wire_24_11});
notg #(0, 0) NOT_4 (c880_wire_93, c880_wire_67_2);
notg #(0, 0) NOT_5 (c880_wire_94, c880_wire_9_2);
and_n #(2, 0, 0) AND_42 (c880_wire_95, {c880_wire_9_3, c880_wire_52_8});
and_n #(2, 0, 0) AND_43 (c880_wire_96, {c880_wire_9_4, c880_wire_97});
and_n #(2, 0, 0) AND_44 (c880_wire_98, {c880_wire_9_5, c880_wire_99});
and_n #(2, 0, 0) AND_45 (c880_wire_100, {c880_wire_9_6, c880_wire_101});
and_n #(2, 0, 0) AND_46 (c880_wire_102, {c880_wire_9_7, c880_wire_103});
and_n #(2, 0, 0) AND_47 (c880_wire_104, {c880_wire_88_1, c880_wire_105});
and_n #(2, 0, 0) AND_48 (c880_wire_106, {c880_wire_88_2, c880_wire_78_3});
bufg #(0, 0) BUF_21 (c880_wire_107, G28_net_0);
xor_n #(2, 0, 0) XOR_4 (c880_wire_108, {c880_wire_107_0, c880_wire_109_0});
and_n #(2, 0, 0) AND_49 (c880_wire_110, {c880_wire_107_1, c880_wire_111});
and_n #(2, 0, 0) AND_50 (c880_wire_112, {c880_wire_107_2, c880_wire_78_4});
bufg #(0, 0) BUF_22 (c880_wire_109, G29_net_0);
notg #(0, 0) NOT_6 (c880_wire_113, c880_wire_50);
notg #(0, 0) NOT_7 (c880_wire_114, c880_wire_56);
notg #(0, 0) NOT_8 (c880_wire_115, c880_wire_23);
nor_n #(2, 0, 0) NOR_1 (c880_wire_116, {c880_wire_69, c880_wire_68});
or_n #(2, 0, 0) OR_1 (c880_wire_117, {c880_wire_116_0, c880_wire_71});
or_n #(2, 0, 0) OR_2 (c880_wire_118, {c880_wire_116_1, c880_wire_73});
and_n #(2, 0, 0) AND_51 (c880_wire_119, {c880_wire_109_1, c880_wire_120});
and_n #(2, 0, 0) AND_52 (c880_wire_121, {c880_wire_109_2, c880_wire_78_5});
and_n #(2, 0, 0) AND_53 (c880_wire_122, {c880_wire_4_3, c880_wire_123_0});
bufg #(0, 0) BUF_23 (c880_wire_5, G3_net_0);
bufg #(0, 0) BUF_24 (c880_wire_124, G30_net_0);
xor_n #(2, 0, 0) XOR_5 (c880_wire_125, {c880_wire_124_0, c880_wire_126_0});
and_n #(2, 0, 0) AND_54 (c880_wire_127, {c880_wire_124_1, c880_wire_128});
and_n #(2, 0, 0) AND_55 (c880_wire_129, {c880_wire_124_2, c880_wire_78_6});
bufg #(0, 0) BUF_25 (c880_wire_126, G31_net_0);
notg #(0, 0) NOT_9 (c880_wire_130, c880_wire_20_0);
notg #(0, 0) NOT_10 (c880_wire_131, c880_wire_20_1);
notg #(0, 0) NOT_11 (c880_wire_132, c880_wire_20_2);
notg #(0, 0) NOT_12 (c880_wire_133, c880_wire_20_3);
notg #(0, 0) NOT_13 (c880_wire_134, c880_wire_20_4);
and_n #(2, 0, 0) AND_56 (c880_wire_135, {c880_wire_126_1, c880_wire_136});
bufg #(0, 0) BUF_26 (c880_wire_137, G32_net_0);
and_n #(2, 0, 0) AND_57 (c880_wire_138, {c880_wire_137_0, c880_wire_139});
and_n #(2, 0, 0) AND_58 (c880_wire_140, {c880_wire_137_1, c880_wire_141});
bufg #(0, 0) BUF_27 (c880_wire_142, G33_net_0);
and_n #(2, 0, 0) AND_59 (c880_wire_143, {c880_wire_142_0, c880_wire_144});
bufg #(0, 0) BUF_28 (c880_wire_123, G34_net_0);
notg #(0, 0) NOT_14 (c880_wire_145, c880_wire_63);
nand_n #(3, 0, 0) NAND_1 (c880_wire_146, {c880_wire_29_9, c880_wire_10_8, c880_wire_3_8});
and_n #(2, 0, 0) AND_60 (c880_wire_147, {c880_wire_123_1, c880_wire_148});
and_n #(2, 0, 0) AND_61 (c880_wire_149, {c880_wire_123_2, c880_wire_62_2});
and_n #(2, 0, 0) AND_62 (c880_wire_150, {c880_wire_123_3, c880_wire_52_9});
bufg #(0, 0) BUF_29 (c880_wire_12, G35_net_0);
nand_n #(2, 0, 0) NAND_2 (c880_wire_151, {c880_wire_28, c880_wire_3_9});
and_n #(2, 0, 0) AND_63 (c880_wire_152, {c880_wire_12_1, c880_wire_153});
bufg #(0, 0) BUF_30 (c880_wire_14, G36_net_0);
and_n #(2, 0, 0) AND_64 (c880_wire_154, {c880_wire_14_1, c880_wire_155});
bufg #(0, 0) BUF_31 (c880_wire_16, G37_net_0);
and_n #(2, 0, 0) AND_65 (c880_wire_156, {c880_wire_16_1, c880_wire_157});
bufg #(0, 0) BUF_32 (c880_wire_148, G38_net_0);
bufg #(0, 0) BUF_33 (c880_wire_18, G39_net_0);
and_n #(2, 0, 0) AND_66 (c880_wire_158, {c880_wire_18_1, c880_wire_159});
bufg #(0, 0) BUF_34 (c880_wire_52, G4_net_0);
bufg #(0, 0) BUF_35 (c880_wire_21, G40_net_0);
and_n #(2, 0, 0) AND_67 (c880_wire_160, {c880_wire_108_0, c880_wire_125_0});
and_n #(2, 0, 0) AND_68 (c880_wire_161, {c880_wire_108_1, c880_wire_125_1});
and_n #(2, 0, 0) AND_69 (c880_wire_162, {c880_wire_64, c880_wire_115});
xor_n #(2, 0, 0) XOR_6 (c880_wire_163, {c880_wire_41_1, c880_wire_47_1});
and_n #(2, 0, 0) AND_70 (c880_wire_164, {c880_wire_163_0, c880_wire_165});
and_n #(2, 0, 0) AND_71 (c880_wire_166, {c880_wire_21_1, c880_wire_167});
bufg #(0, 0) BUF_36 (c880_wire_43, G41_net_0);
xor_n #(2, 0, 0) XOR_7 (c880_wire_168, {c880_wire_49_1, c880_wire_35_1});
and_n #(2, 0, 0) AND_72 (c880_wire_169, {c880_wire_168_0, c880_wire_170});
xor_n #(2, 0, 0) XOR_8 (c880_wire_171, {c880_wire_37_1, c880_wire_39_1});
and_n #(2, 0, 0) AND_73 (c880_wire_172, {c880_wire_171_0, c880_wire_173_0});
and_n #(2, 0, 0) AND_74 (c880_wire_174, {c880_wire_171_1, c880_wire_173_1});
notg #(0, 0) NOT_15 (c880_wire_175, c880_wire_43_1);
and_n #(2, 0, 0) AND_75 (c880_wire_176, {c880_wire_43_2, c880_wire_177});
xor_n #(2, 0, 0) XOR_9 (c880_wire_165, {c880_wire_43_3, c880_wire_45_1});
xor_n #(2, 0, 0) XOR_10 (c880_wire_178, {c880_wire_43_4, c880_wire_45_2});
bufg #(0, 0) BUF_37 (c880_wire_45, G42_net_0);
and_n #(2, 0, 0) AND_76 (c880_wire_179, {c880_wire_6, c880_wire_180});
notg #(0, 0) NOT_16 (c880_wire_181, c880_wire_45_3);
and_n #(2, 0, 0) AND_77 (c880_wire_182, {c880_wire_45_4, c880_wire_183});
bufg #(0, 0) BUF_38 (c880_wire_41, G43_net_0);
and_n #(2, 0, 0) AND_78 (c880_wire_184, {c880_wire_31, c880_wire_166});
xor_n #(2, 0, 0) XOR_11 (c880_wire_167, {c880_wire_52_10, c880_wire_24_12});
notg #(0, 0) NOT_17 (c880_wire_60, c880_wire_185);
and_n #(2, 0, 0) AND_79 (c880_wire_185, {c880_wire_95, c880_wire_130});
notg #(0, 0) NOT_18 (c880_wire_186, c880_wire_41_2);
and_n #(2, 0, 0) AND_80 (c880_wire_187, {c880_wire_41_3, c880_wire_188});
bufg #(0, 0) BUF_39 (c880_wire_47, G44_net_0);
and_n #(2, 0, 0) AND_81 (c880_wire_189, {c880_wire_190_0, c880_wire_191_0});
and_n #(2, 0, 0) AND_82 (c880_wire_192, {c880_wire_190_1, c880_wire_191_1});
or_n #(2, 0, 0) OR_3 (c880_wire_190, {c880_wire_79, c880_wire_193});
nor_n #(2, 0, 0) NOR_2 (c880_wire_193, {c880_wire_74_3, c880_wire_86});
notg #(0, 0) NOT_19 (c880_wire_194, c880_wire_47_2);
and_n #(2, 0, 0) AND_83 (c880_wire_195, {c880_wire_47_3, c880_wire_196});
bufg #(0, 0) BUF_40 (c880_wire_49, G45_net_0);
nor_n #(2, 0, 0) NOR_3 (c880_wire_197, {c880_wire_184, c880_wire_162});
notg #(0, 0) NOT_20 (c880_wire_76, c880_wire_197_0);
notg #(0, 0) NOT_21 (c880_wire_105, c880_wire_197_1);
notg #(0, 0) NOT_22 (c880_wire_83, c880_wire_197_2);
notg #(0, 0) NOT_23 (c880_wire_90, c880_wire_197_3);
notg #(0, 0) NOT_24 (c880_wire_120, c880_wire_197_4);
notg #(0, 0) NOT_25 (c880_wire_111, c880_wire_197_5);
notg #(0, 0) NOT_26 (c880_wire_136, c880_wire_197_6);
notg #(0, 0) NOT_27 (c880_wire_128, c880_wire_197_7);
notg #(0, 0) NOT_28 (c880_wire_198, c880_wire_49_2);
and_n #(2, 0, 0) AND_84 (c880_wire_199, {c880_wire_49_3, c880_wire_200});
bufg #(0, 0) BUF_41 (c880_wire_35, G46_net_0);
notg #(0, 0) NOT_29 (c880_wire_155, c880_wire_59_0);
notg #(0, 0) NOT_30 (c880_wire_153, c880_wire_59_1);
notg #(0, 0) NOT_31 (c880_wire_159, c880_wire_59_2);
notg #(0, 0) NOT_32 (c880_wire_157, c880_wire_59_3);
notg #(0, 0) NOT_33 (c880_wire_201, c880_wire_35_2);
and_n #(2, 0, 0) AND_85 (c880_wire_202, {c880_wire_35_3, c880_wire_203});
bufg #(0, 0) BUF_42 (c880_wire_37, G47_net_0);
notg #(0, 0) NOT_34 (c880_wire_180, c880_wire_204_0);
and_n #(2, 0, 0) AND_86 (c880_wire_205, {c880_wire_206_0, c880_wire_207_0});
and_n #(2, 0, 0) AND_87 (c880_wire_208, {c880_wire_206_1, c880_wire_207_1});
or_n #(2, 0, 0) OR_4 (c880_wire_206, {c880_wire_164, c880_wire_209});
nor_n #(2, 0, 0) NOR_4 (c880_wire_209, {c880_wire_163_1, c880_wire_178});
notg #(0, 0) NOT_35 (c880_wire_210, c880_wire_37_2);
and_n #(2, 0, 0) AND_88 (c880_wire_211, {c880_wire_37_3, c880_wire_212});
bufg #(0, 0) BUF_43 (c880_wire_39, G48_net_0);
and_n #(2, 0, 0) AND_89 (c880_wire_213, {c880_wire_11, c880_wire_131});
and_n #(2, 0, 0) AND_90 (c880_wire_214, {c880_wire_51, c880_wire_215});
notg #(0, 0) NOT_36 (c880_wire_215, c880_wire_204_1);
or_n #(2, 0, 0) OR_5 (c880_wire_97, {c880_wire_213, c880_wire_214});
notg #(0, 0) NOT_37 (c880_wire_216, c880_wire_39_2);
and_n #(2, 0, 0) AND_91 (c880_wire_217, {c880_wire_39_3, c880_wire_218});
bufg #(0, 0) BUF_44 (c880_wire_173, G49_net_0);
and_n #(2, 0, 0) AND_92 (c880_wire_219, {c880_wire_13, c880_wire_132});
and_n #(2, 0, 0) AND_93 (c880_wire_220, {c880_wire_53, c880_wire_221});
notg #(0, 0) NOT_38 (c880_wire_221, c880_wire_204_2);
or_n #(2, 0, 0) OR_6 (c880_wire_99, {c880_wire_219, c880_wire_220});
and_n #(2, 0, 0) AND_94 (c880_wire_222, {c880_wire_15, c880_wire_133});
and_n #(2, 0, 0) AND_95 (c880_wire_223, {c880_wire_54, c880_wire_224});
notg #(0, 0) NOT_39 (c880_wire_224, c880_wire_204_3);
or_n #(2, 0, 0) OR_7 (c880_wire_101, {c880_wire_222, c880_wire_223});
and_n #(2, 0, 0) AND_96 (c880_wire_225, {c880_wire_17, c880_wire_134});
and_n #(2, 0, 0) AND_97 (c880_wire_226, {c880_wire_55, c880_wire_227});
notg #(0, 0) NOT_40 (c880_wire_227, c880_wire_204_4);
or_n #(2, 0, 0) OR_8 (c880_wire_103, {c880_wire_225, c880_wire_226});
bufg #(0, 0) BUF_45 (c880_wire_61, G5_net_0);
bufg #(0, 0) BUF_46 (c880_wire_78, G50_net_0);
and_n #(2, 0, 0) AND_98 (c880_wire_228, {c880_wire_78_7, c880_wire_204_5});
bufg #(0, 0) BUF_47 (c880_wire_229, G51_net_0);
notg #(0, 0) NOT_41 (c880_wire_230, c880_wire_32);
notg #(0, 0) NOT_42 (c880_wire_231, c880_wire_36);
notg #(0, 0) NOT_43 (c880_wire_232, c880_wire_38);
or_n #(2, 0, 0) OR_9 (c880_wire_144, {c880_wire_160, c880_wire_233});
nor_n #(2, 0, 0) NOR_5 (c880_wire_233, {c880_wire_108_2, c880_wire_125_2});
or_n #(2, 0, 0) OR_10 (c880_wire_234, {c880_wire_161, c880_wire_235});
or_n #(2, 0, 0) OR_11 (c880_wire_191, {c880_wire_143, c880_wire_236});
nor_n #(2, 0, 0) NOR_6 (c880_wire_236, {c880_wire_234, c880_wire_142_1});
nor_n #(2, 0, 0) NOR_7 (c880_wire_235, {c880_wire_108_3, c880_wire_125_3});
and_n #(2, 0, 0) AND_99 (c880_wire_237, {c880_wire_229_0, c880_wire_238});
and_n #(2, 0, 0) AND_100 (c880_wire_239, {c880_wire_229_1, c880_wire_240});
and_n #(2, 0, 0) AND_101 (c880_wire_241, {c880_wire_229_2, c880_wire_242});
and_n #(2, 0, 0) AND_102 (c880_wire_243, {c880_wire_229_3, c880_wire_244});
and_n #(2, 0, 0) AND_103 (c880_wire_245, {c880_wire_229_4, c880_wire_246});
and_n #(2, 0, 0) AND_104 (c880_wire_247, {c880_wire_229_5, c880_wire_248});
and_n #(2, 0, 0) AND_105 (c880_wire_249, {c880_wire_229_6, c880_wire_250});
and_n #(2, 0, 0) AND_106 (c880_wire_251, {c880_wire_229_7, c880_wire_252});
bufg #(0, 0) BUF_48 (c880_wire_253, G52_net_0);
or_n #(2, 0, 0) OR_12 (c880_wire_254, {c880_wire_122, c880_wire_75});
or_n #(2, 0, 0) OR_13 (c880_wire_255, {c880_wire_149, c880_wire_82});
or_n #(2, 0, 0) OR_14 (c880_wire_256, {c880_wire_150, c880_wire_89});
or_n #(2, 0, 0) OR_15 (c880_wire_257, {c880_wire_147, c880_wire_104});
or_n #(2, 0, 0) OR_16 (c880_wire_258, {c880_wire_110, c880_wire_152});
or_n #(2, 0, 0) OR_17 (c880_wire_259, {c880_wire_119, c880_wire_154});
or_n #(2, 0, 0) OR_18 (c880_wire_260, {c880_wire_127, c880_wire_156});
or_n #(2, 0, 0) OR_19 (c880_wire_261, {c880_wire_135, c880_wire_158});
notg #(0, 0) NOT_44 (c880_wire_262, c880_wire_253_0);
notg #(0, 0) NOT_45 (c880_wire_263, c880_wire_253_1);
notg #(0, 0) NOT_46 (c880_wire_264, c880_wire_253_2);
notg #(0, 0) NOT_47 (c880_wire_265, c880_wire_253_3);
notg #(0, 0) NOT_48 (c880_wire_266, c880_wire_253_4);
notg #(0, 0) NOT_49 (c880_wire_267, c880_wire_253_5);
notg #(0, 0) NOT_50 (c880_wire_268, c880_wire_253_6);
notg #(0, 0) NOT_51 (c880_wire_269, c880_wire_253_7);
bufg #(0, 0) BUF_49 (c880_wire_270, G53_net_0);
or_n #(2, 0, 0) OR_20 (c880_wire_170, {c880_wire_172, c880_wire_271});
nor_n #(2, 0, 0) NOR_8 (c880_wire_271, {c880_wire_171_2, c880_wire_173_2});
or_n #(2, 0, 0) OR_21 (c880_wire_272, {c880_wire_174, c880_wire_273});
or_n #(2, 0, 0) OR_22 (c880_wire_207, {c880_wire_169, c880_wire_274});
nor_n #(2, 0, 0) NOR_9 (c880_wire_274, {c880_wire_272, c880_wire_168_1});
nor_n #(2, 0, 0) NOR_10 (c880_wire_273, {c880_wire_171_3, c880_wire_173_3});
and_n #(2, 0, 0) AND_107 (c880_wire_275, {c880_wire_276_0, c880_wire_175});
nor_n #(2, 0, 0) NOR_11 (c880_wire_276, {c880_wire_254, c880_wire_96});
notg #(0, 0) NOT_52 (c880_wire_177, c880_wire_276_1);
notg #(0, 0) NOT_53 (c880_wire_277, c880_wire_276_2);
notg #(0, 0) NOT_54 (c880_wire_278, c880_wire_270_0);
notg #(0, 0) NOT_55 (c880_wire_279, c880_wire_270_1);
notg #(0, 0) NOT_56 (c880_wire_280, c880_wire_270_2);
notg #(0, 0) NOT_57 (c880_wire_281, c880_wire_270_3);
notg #(0, 0) NOT_58 (c880_wire_282, c880_wire_270_4);
notg #(0, 0) NOT_59 (c880_wire_283, c880_wire_270_5);
notg #(0, 0) NOT_60 (c880_wire_284, c880_wire_270_6);
notg #(0, 0) NOT_61 (c880_wire_285, c880_wire_270_7);
bufg #(0, 0) BUF_50 (c880_wire_286, G54_net_0);
and_n #(2, 0, 0) AND_108 (c880_wire_287, {c880_wire_288_0, c880_wire_181});
nor_n #(2, 0, 0) NOR_12 (c880_wire_288, {c880_wire_255, c880_wire_98});
notg #(0, 0) NOT_62 (c880_wire_183, c880_wire_288_1);
notg #(0, 0) NOT_63 (c880_wire_289, c880_wire_288_2);
and_n #(2, 0, 0) AND_109 (c880_wire_290, {c880_wire_291_0, c880_wire_186});
nor_n #(2, 0, 0) NOR_13 (c880_wire_291, {c880_wire_256, c880_wire_100});
notg #(0, 0) NOT_64 (c880_wire_188, c880_wire_291_1);
notg #(0, 0) NOT_65 (c880_wire_292, c880_wire_291_2);
and_n #(2, 0, 0) AND_110 (c880_wire_293, {c880_wire_286_0, c880_wire_294});
and_n #(2, 0, 0) AND_111 (c880_wire_295, {c880_wire_286_1, c880_wire_296});
and_n #(2, 0, 0) AND_112 (c880_wire_297, {c880_wire_286_2, c880_wire_298});
and_n #(2, 0, 0) AND_113 (c880_wire_299, {c880_wire_286_3, c880_wire_292});
and_n #(2, 0, 0) AND_114 (c880_wire_300, {c880_wire_286_4, c880_wire_277});
and_n #(2, 0, 0) AND_115 (c880_wire_301, {c880_wire_286_5, c880_wire_289});
and_n #(2, 0, 0) AND_116 (c880_wire_302, {c880_wire_286_6, c880_wire_303});
and_n #(2, 0, 0) AND_117 (c880_wire_304, {c880_wire_286_7, c880_wire_305});
bufg #(0, 0) BUF_51 (c880_wire_306, G55_net_0);
and_n #(2, 0, 0) AND_118 (c880_wire_307, {c880_wire_308_0, c880_wire_194});
nor_n #(2, 0, 0) NOR_14 (c880_wire_308, {c880_wire_257, c880_wire_102});
notg #(0, 0) NOT_66 (c880_wire_196, c880_wire_308_1);
notg #(0, 0) NOT_67 (c880_wire_303, c880_wire_308_2);
and_n #(2, 0, 0) AND_119 (c880_wire_309, {c880_wire_310_0, c880_wire_198});
nor_n #(2, 0, 0) NOR_15 (c880_wire_310, {c880_wire_179_0, c880_wire_258});
notg #(0, 0) NOT_68 (c880_wire_200, c880_wire_310_1);
notg #(0, 0) NOT_69 (c880_wire_305, c880_wire_310_2);
and_n #(2, 0, 0) AND_120 (c880_wire_311, {c880_wire_312_0, c880_wire_201});
nor_n #(2, 0, 0) NOR_16 (c880_wire_312, {c880_wire_179_1, c880_wire_259});
notg #(0, 0) NOT_70 (c880_wire_203, c880_wire_312_1);
notg #(0, 0) NOT_71 (c880_wire_296, c880_wire_312_2);
and_n #(2, 0, 0) AND_121 (c880_wire_313, {c880_wire_306_0, c880_wire_314});
and_n #(2, 0, 0) AND_122 (c880_wire_315, {c880_wire_306_1, c880_wire_316});
and_n #(2, 0, 0) AND_123 (c880_wire_317, {c880_wire_306_2, c880_wire_318});
bufg #(0, 0) BUF_52 (c880_wire_316, G56_net_0);
and_n #(2, 0, 0) AND_124 (c880_wire_319, {c880_wire_320_0, c880_wire_210});
nor_n #(2, 0, 0) NOR_17 (c880_wire_320, {c880_wire_179_2, c880_wire_260});
notg #(0, 0) NOT_72 (c880_wire_212, c880_wire_320_1);
notg #(0, 0) NOT_73 (c880_wire_298, c880_wire_320_2);
and_n #(2, 0, 0) AND_125 (c880_wire_321, {c880_wire_322_0, c880_wire_216});
nor_n #(2, 0, 0) NOR_18 (c880_wire_322, {c880_wire_179_3, c880_wire_261});
notg #(0, 0) NOT_74 (c880_wire_218, c880_wire_322_1);
notg #(0, 0) NOT_75 (c880_wire_294, c880_wire_322_2);
bufg #(0, 0) BUF_53 (c880_wire_318, G57_net_0);
or_n #(2, 0, 0) OR_23 (c880_wire_323, {c880_wire_275_0, c880_wire_324_0});
or_n #(2, 0, 0) OR_24 (c880_wire_325, {c880_wire_275_1, c880_wire_176_0});
notg #(0, 0) NOT_76 (c880_wire_326, c880_wire_275_2);
or_n #(2, 0, 0) OR_25 (c880_wire_327, {c880_wire_275_3, c880_wire_268});
bufg #(0, 0) BUF_54 (c880_wire_328, G58_net_0);
or_n #(2, 0, 0) OR_26 (c880_wire_329, {c880_wire_287_0, c880_wire_330});
or_n #(2, 0, 0) OR_27 (c880_wire_331, {c880_wire_287_1, c880_wire_182_0});
notg #(0, 0) NOT_77 (c880_wire_332, c880_wire_287_2);
or_n #(2, 0, 0) OR_28 (c880_wire_333, {c880_wire_287_3, c880_wire_269});
notg #(0, 0) NOT_78 (c880_wire_334, c880_wire_328_0);
notg #(0, 0) NOT_79 (c880_wire_335, c880_wire_328_1);
notg #(0, 0) NOT_80 (c880_wire_336, c880_wire_328_2);
and_n #(2, 0, 0) AND_126 (c880_wire_337, {c880_wire_328_3, c880_wire_338});
bufg #(0, 0) BUF_55 (c880_wire_314, G59_net_0);
or_n #(2, 0, 0) OR_29 (c880_wire_339, {c880_wire_290_0, c880_wire_340});
or_n #(2, 0, 0) OR_30 (c880_wire_341, {c880_wire_290_1, c880_wire_342});
or_n #(2, 0, 0) OR_31 (c880_wire_343, {c880_wire_290_2, c880_wire_187_0});
notg #(0, 0) NOT_81 (c880_wire_344, c880_wire_290_3);
or_n #(2, 0, 0) OR_32 (c880_wire_345, {c880_wire_290_4, c880_wire_267});
bufg #(0, 0) BUF_56 (c880_wire_10, G6_net_0);
bufg #(0, 0) BUF_57 (c880_wire_204, G60_net_0);
or_n #(2, 0, 0) OR_33 (c880_wire_346, {c880_wire_307_0, c880_wire_347_0});
or_n #(2, 0, 0) OR_34 (c880_wire_348, {c880_wire_307_1, c880_wire_347_1});
or_n #(2, 0, 0) OR_35 (c880_wire_349, {c880_wire_307_2, c880_wire_347_2});
or_n #(2, 0, 0) OR_36 (c880_wire_350, {c880_wire_307_3, c880_wire_195_0});
notg #(0, 0) NOT_82 (c880_wire_351, c880_wire_307_4);
or_n #(2, 0, 0) OR_37 (c880_wire_352, {c880_wire_307_5, c880_wire_266});
or_n #(2, 0, 0) OR_38 (c880_wire_353, {c880_wire_309_0, c880_wire_354_0});
or_n #(2, 0, 0) OR_39 (c880_wire_355, {c880_wire_309_1, c880_wire_199_0});
notg #(0, 0) NOT_83 (c880_wire_356, c880_wire_309_2);
or_n #(2, 0, 0) OR_40 (c880_wire_357, {c880_wire_309_3, c880_wire_263});
or_n #(2, 0, 0) OR_41 (c880_wire_358, {c880_wire_311_0, c880_wire_359});
or_n #(2, 0, 0) OR_42 (c880_wire_360, {c880_wire_311_1, c880_wire_202_0});
notg #(0, 0) NOT_84 (c880_wire_361, c880_wire_311_2);
or_n #(2, 0, 0) OR_43 (c880_wire_362, {c880_wire_311_3, c880_wire_264});
or_n #(2, 0, 0) OR_44 (c880_wire_363, {c880_wire_319_0, c880_wire_364});
or_n #(2, 0, 0) OR_45 (c880_wire_365, {c880_wire_319_1, c880_wire_366});
or_n #(2, 0, 0) OR_46 (c880_wire_367, {c880_wire_319_2, c880_wire_211_0});
notg #(0, 0) NOT_85 (c880_wire_368, c880_wire_319_3);
or_n #(2, 0, 0) OR_47 (c880_wire_369, {c880_wire_319_4, c880_wire_265});
or_n #(2, 0, 0) OR_48 (c880_wire_370, {c880_wire_321_0, c880_wire_334});
or_n #(2, 0, 0) OR_49 (c880_wire_371, {c880_wire_321_1, c880_wire_335});
or_n #(2, 0, 0) OR_50 (c880_wire_372, {c880_wire_321_2, c880_wire_336});
or_n #(2, 0, 0) OR_51 (c880_wire_338, {c880_wire_321_3, c880_wire_217_0});
or_n #(2, 0, 0) OR_52 (c880_wire_373, {c880_wire_321_4, c880_wire_262});
or_n #(2, 0, 0) OR_53 (c880_wire_141, {c880_wire_189, c880_wire_374});
nor_n #(2, 0, 0) NOR_19 (c880_wire_374, {c880_wire_190_2, c880_wire_191_2});
or_n #(2, 0, 0) OR_54 (c880_wire_375, {c880_wire_192, c880_wire_376});
or_n #(2, 0, 0) OR_55 (c880_wire_377, {c880_wire_140, c880_wire_378});
nor_n #(2, 0, 0) NOR_20 (c880_wire_378, {c880_wire_375, c880_wire_137_2});
nor_n #(2, 0, 0) NOR_21 (c880_wire_376, {c880_wire_190_3, c880_wire_191_3});
or_n #(2, 0, 0) OR_56 (c880_wire_139, {c880_wire_205, c880_wire_379});
nor_n #(2, 0, 0) NOR_22 (c880_wire_379, {c880_wire_206_2, c880_wire_207_2});
or_n #(2, 0, 0) OR_57 (c880_wire_380, {c880_wire_208, c880_wire_381});
or_n #(2, 0, 0) OR_58 (c880_wire_382, {c880_wire_138, c880_wire_383});
nor_n #(2, 0, 0) NOR_23 (c880_wire_383, {c880_wire_380, c880_wire_137_3});
nor_n #(2, 0, 0) NOR_24 (c880_wire_381, {c880_wire_206_3, c880_wire_207_3});
notg #(0, 0) NOT_86 (c880_wire_384, c880_wire_176_1);
notg #(0, 0) NOT_87 (c880_wire_385, c880_wire_176_2);
notg #(0, 0) NOT_88 (c880_wire_386, c880_wire_176_3);
and_n #(2, 0, 0) AND_127 (c880_wire_387, {c880_wire_176_4, c880_wire_284});
notg #(0, 0) NOT_89 (c880_wire_388, c880_wire_389);
or_n #(2, 0, 0) OR_59 (c880_wire_389, {c880_wire_42, c880_wire_300});
notg #(0, 0) NOT_90 (c880_wire_390, c880_wire_182_1);
notg #(0, 0) NOT_91 (c880_wire_391, c880_wire_182_2);
notg #(0, 0) NOT_92 (c880_wire_392, c880_wire_182_3);
and_n #(2, 0, 0) AND_128 (c880_wire_393, {c880_wire_182_4, c880_wire_285});
notg #(0, 0) NOT_93 (c880_wire_394, c880_wire_395);
or_n #(2, 0, 0) OR_60 (c880_wire_395, {c880_wire_44, c880_wire_301});
notg #(0, 0) NOT_94 (c880_wire_396, c880_wire_187_1);
notg #(0, 0) NOT_95 (c880_wire_397, c880_wire_187_2);
notg #(0, 0) NOT_96 (c880_wire_398, c880_wire_187_3);
notg #(0, 0) NOT_97 (c880_wire_399, c880_wire_187_4);
and_n #(2, 0, 0) AND_129 (c880_wire_400, {c880_wire_187_5, c880_wire_283});
notg #(0, 0) NOT_98 (c880_wire_401, c880_wire_402);
or_n #(2, 0, 0) OR_61 (c880_wire_402, {c880_wire_40, c880_wire_299});
notg #(0, 0) NOT_99 (c880_wire_403, c880_wire_195_1);
notg #(0, 0) NOT_100 (c880_wire_404, c880_wire_195_2);
notg #(0, 0) NOT_101 (c880_wire_405, c880_wire_195_3);
notg #(0, 0) NOT_102 (c880_wire_406, c880_wire_195_4);
notg #(0, 0) NOT_103 (c880_wire_407, c880_wire_195_5);
and_n #(2, 0, 0) AND_130 (c880_wire_408, {c880_wire_195_6, c880_wire_282});
notg #(0, 0) NOT_104 (c880_wire_409, c880_wire_410);
or_n #(2, 0, 0) OR_62 (c880_wire_410, {c880_wire_46, c880_wire_302});
notg #(0, 0) NOT_105 (c880_wire_411, c880_wire_199_1);
notg #(0, 0) NOT_106 (c880_wire_412, c880_wire_199_2);
notg #(0, 0) NOT_107 (c880_wire_413, c880_wire_199_3);
and_n #(2, 0, 0) AND_131 (c880_wire_414, {c880_wire_199_4, c880_wire_279});
notg #(0, 0) NOT_108 (c880_wire_415, c880_wire_416);
or_n #(2, 0, 0) OR_63 (c880_wire_416, {c880_wire_48, c880_wire_304});
notg #(0, 0) NOT_109 (c880_wire_417, c880_wire_202_1);
notg #(0, 0) NOT_110 (c880_wire_418, c880_wire_202_2);
notg #(0, 0) NOT_111 (c880_wire_419, c880_wire_202_3);
and_n #(2, 0, 0) AND_132 (c880_wire_420, {c880_wire_202_4, c880_wire_280});
or_n #(2, 0, 0) OR_64 (c880_wire_421, {c880_wire_315, c880_wire_295});
notg #(0, 0) NOT_112 (c880_wire_422, c880_wire_211_1);
notg #(0, 0) NOT_113 (c880_wire_423, c880_wire_211_2);
notg #(0, 0) NOT_114 (c880_wire_424, c880_wire_211_3);
notg #(0, 0) NOT_115 (c880_wire_425, c880_wire_211_4);
and_n #(2, 0, 0) AND_133 (c880_wire_426, {c880_wire_211_5, c880_wire_281});
bufg #(0, 0) BUF_58 (c880_wire_26, G7_net_0);
or_n #(2, 0, 0) OR_65 (c880_wire_427, {c880_wire_317, c880_wire_297});
notg #(0, 0) NOT_116 (c880_wire_428, c880_wire_217_1);
notg #(0, 0) NOT_117 (c880_wire_429, c880_wire_217_2);
notg #(0, 0) NOT_118 (c880_wire_430, c880_wire_217_3);
notg #(0, 0) NOT_119 (c880_wire_431, c880_wire_217_4);
and_n #(2, 0, 0) AND_134 (c880_wire_432, {c880_wire_217_5, c880_wire_278});
or_n #(2, 0, 0) OR_66 (c880_wire_433, {c880_wire_313, c880_wire_293});
and_n #(2, 0, 0) AND_135 (c880_wire_354, {c880_wire_417, c880_wire_358});
notg #(0, 0) NOT_120 (c880_wire_434, c880_wire_354_1);
and_n #(3, 0, 0) AND_136 (c880_wire_435, {c880_wire_354_2, c880_wire_412, c880_wire_356});
and_n #(2, 0, 0) AND_137 (c880_wire_366, {c880_wire_430, c880_wire_372});
and_n #(2, 0, 0) AND_138 (c880_wire_359, {c880_wire_423, c880_wire_365});
and_n #(2, 0, 0) AND_139 (c880_wire_436, {c880_wire_422, c880_wire_363});
notg #(0, 0) NOT_121 (c880_wire_437, c880_wire_436_0);
and_n #(3, 0, 0) AND_140 (c880_wire_438, {c880_wire_436_1, c880_wire_418, c880_wire_361});
and_n #(2, 0, 0) AND_141 (c880_wire_364, {c880_wire_429, c880_wire_371});
and_n #(2, 0, 0) AND_142 (c880_wire_439, {c880_wire_428, c880_wire_370});
notg #(0, 0) NOT_122 (c880_wire_440, c880_wire_439_0);
and_n #(3, 0, 0) AND_143 (c880_wire_441, {c880_wire_439_1, c880_wire_424, c880_wire_368});
and_n #(2, 0, 0) AND_144 (c880_wire_347, {c880_wire_353, c880_wire_411});
notg #(0, 0) NOT_123 (c880_wire_442, c880_wire_347_3);
and_n #(3, 0, 0) AND_145 (c880_wire_443, {c880_wire_347_4, c880_wire_406, c880_wire_351});
or_n #(2, 0, 0) OR_67 (c880_wire_444, {c880_wire_129, c880_wire_237});
nor_n #(3, 0, 0) NOR_25 (c880_wire_445, {c880_wire_321_5, c880_wire_328_4, c880_wire_217_6});
or_n #(2, 0, 0) OR_68 (c880_wire_238, {c880_wire_337, c880_wire_445});
or_n #(2, 0, 0) OR_69 (c880_wire_446, {c880_wire_432, c880_wire_447});
and_n #(3, 0, 0) AND_146 (c880_wire_448, {c880_wire_446, c880_wire_232, c880_wire_449});
and_n #(2, 0, 0) AND_147 (c880_wire_447, {c880_wire_431, c880_wire_373});
nor_n #(2, 0, 0) NOR_26 (c880_wire_449, {c880_wire_433, c880_wire_444});
and_n #(2, 0, 0) AND_148 (c880_wire_324, {c880_wire_390, c880_wire_329});
notg #(0, 0) NOT_124 (c880_wire_450, c880_wire_324_1);
and_n #(3, 0, 0) AND_149 (c880_wire_451, {c880_wire_324_2, c880_wire_385, c880_wire_326});
and_n #(2, 0, 0) AND_150 (c880_wire_342, {c880_wire_349, c880_wire_405});
and_n #(2, 0, 0) AND_151 (c880_wire_330, {c880_wire_397, c880_wire_341});
bufg #(0, 0) BUF_59 (c880_wire_24, G8_net_0);
and_n #(2, 0, 0) AND_152 (c880_wire_452, {c880_wire_396, c880_wire_339});
notg #(0, 0) NOT_125 (c880_wire_453, c880_wire_452_0);
and_n #(3, 0, 0) AND_153 (c880_wire_454, {c880_wire_452_1, c880_wire_391, c880_wire_332});
and_n #(2, 0, 0) AND_154 (c880_wire_340, {c880_wire_348, c880_wire_404});
and_n #(2, 0, 0) AND_155 (c880_wire_455, {c880_wire_346, c880_wire_403});
notg #(0, 0) NOT_126 (c880_wire_456, c880_wire_455_0);
and_n #(3, 0, 0) AND_156 (c880_wire_457, {c880_wire_455_1, c880_wire_398, c880_wire_344});
or_n #(2, 0, 0) OR_70 (c880_wire_458, {c880_wire_106, c880_wire_239});
notg #(0, 0) NOT_127 (c880_wire_459, c880_wire_458);
and_n #(2, 0, 0) AND_157 (c880_wire_460, {c880_wire_355, c880_wire_434});
or_n #(2, 0, 0) OR_71 (c880_wire_240, {c880_wire_460, c880_wire_435});
or_n #(2, 0, 0) OR_72 (c880_wire_461, {c880_wire_112, c880_wire_241});
and_n #(2, 0, 0) AND_158 (c880_wire_462, {c880_wire_360, c880_wire_437});
or_n #(2, 0, 0) OR_73 (c880_wire_242, {c880_wire_462, c880_wire_438});
or_n #(2, 0, 0) OR_74 (c880_wire_463, {c880_wire_121, c880_wire_243});
and_n #(2, 0, 0) AND_159 (c880_wire_464, {c880_wire_367, c880_wire_440});
or_n #(2, 0, 0) OR_75 (c880_wire_244, {c880_wire_464, c880_wire_441});
and_n #(2, 0, 0) AND_160 (c880_wire_465, {c880_wire_413, c880_wire_357});
and_n #(3, 0, 0) AND_161 (c880_wire_466, {c880_wire_459, c880_wire_415, c880_wire_467});
or_n #(2, 0, 0) OR_76 (c880_wire_467, {c880_wire_414, c880_wire_465});
or_n #(2, 0, 0) OR_77 (c880_wire_468, {c880_wire_420, c880_wire_469});
and_n #(3, 0, 0) AND_162 (c880_wire_470, {c880_wire_468, c880_wire_230, c880_wire_471});
and_n #(2, 0, 0) AND_163 (c880_wire_469, {c880_wire_419, c880_wire_362});
nor_n #(2, 0, 0) NOR_27 (c880_wire_471, {c880_wire_421, c880_wire_461});
or_n #(2, 0, 0) OR_78 (c880_wire_472, {c880_wire_426, c880_wire_473});
and_n #(3, 0, 0) AND_164 (c880_wire_474, {c880_wire_472, c880_wire_231, c880_wire_475});
and_n #(2, 0, 0) AND_165 (c880_wire_473, {c880_wire_425, c880_wire_369});
nor_n #(2, 0, 0) NOR_28 (c880_wire_475, {c880_wire_427, c880_wire_463});
or_n #(2, 0, 0) OR_79 (c880_wire_476, {c880_wire_91, c880_wire_245});
notg #(0, 0) NOT_128 (c880_wire_477, c880_wire_476);
and_n #(2, 0, 0) AND_166 (c880_wire_478, {c880_wire_350, c880_wire_442});
or_n #(2, 0, 0) OR_80 (c880_wire_246, {c880_wire_478, c880_wire_443});
and_n #(2, 0, 0) AND_167 (c880_wire_479, {c880_wire_323, c880_wire_384});
and_n #(2, 0, 0) AND_168 (c880_wire_480, {c880_wire_407, c880_wire_352});
and_n #(3, 0, 0) AND_169 (c880_wire_481, {c880_wire_477, c880_wire_409, c880_wire_482});
or_n #(2, 0, 0) OR_81 (c880_wire_482, {c880_wire_408, c880_wire_480});
or_n #(2, 0, 0) OR_82 (c880_wire_483, {c880_wire_228, c880_wire_249});
notg #(0, 0) NOT_129 (c880_wire_484, c880_wire_483);
and_n #(2, 0, 0) AND_170 (c880_wire_485, {c880_wire_325, c880_wire_450});
or_n #(2, 0, 0) OR_83 (c880_wire_250, {c880_wire_485, c880_wire_451});
or_n #(2, 0, 0) OR_84 (c880_wire_486, {c880_wire_77, c880_wire_251});
notg #(0, 0) NOT_130 (c880_wire_487, c880_wire_486);
and_n #(2, 0, 0) AND_171 (c880_wire_488, {c880_wire_331, c880_wire_453});
or_n #(2, 0, 0) OR_85 (c880_wire_252, {c880_wire_488, c880_wire_454});
or_n #(2, 0, 0) OR_86 (c880_wire_489, {c880_wire_84, c880_wire_247});
notg #(0, 0) NOT_131 (c880_wire_490, c880_wire_489);
and_n #(2, 0, 0) AND_172 (c880_wire_491, {c880_wire_343, c880_wire_456});
or_n #(2, 0, 0) OR_87 (c880_wire_248, {c880_wire_491, c880_wire_457});
and_n #(2, 0, 0) AND_173 (c880_wire_492, {c880_wire_386, c880_wire_327});
and_n #(3, 0, 0) AND_174 (c880_wire_493, {c880_wire_484, c880_wire_388, c880_wire_494});
or_n #(2, 0, 0) OR_88 (c880_wire_494, {c880_wire_387, c880_wire_492});
and_n #(2, 0, 0) AND_175 (c880_wire_495, {c880_wire_392, c880_wire_333});
and_n #(3, 0, 0) AND_176 (c880_wire_496, {c880_wire_487, c880_wire_394, c880_wire_497});
or_n #(2, 0, 0) OR_89 (c880_wire_497, {c880_wire_393, c880_wire_495});
and_n #(2, 0, 0) AND_177 (c880_wire_498, {c880_wire_399, c880_wire_345});
and_n #(3, 0, 0) AND_178 (c880_wire_499, {c880_wire_490, c880_wire_401, c880_wire_500});
or_n #(2, 0, 0) OR_90 (c880_wire_500, {c880_wire_400, c880_wire_498});
bufg #(0, 0) BUF_60 (G855_net_0, c880_wire_113);
bufg #(0, 0) BUF_61 (G856_net_0, c880_wire_114);
bufg #(0, 0) BUF_62 (G857_net_0, c880_wire_92);
bufg #(0, 0) BUF_63 (G858_net_0, c880_wire_501);
nand_n #(2, 0, 0) NAND_3 (c880_wire_501, {c880_wire_58, c880_wire_57});
bufg #(0, 0) BUF_64 (G859_net_0, c880_wire_145);
bufg #(0, 0) BUF_65 (G860_net_0, c880_wire_502);
and_n #(2, 0, 0) AND_179 (c880_wire_502, {c880_wire_65, c880_wire_93});
bufg #(0, 0) BUF_66 (G861_net_0, c880_wire_22);
bufg #(0, 0) BUF_67 (G862_net_0, c880_wire_25);
bufg #(0, 0) BUF_68 (G863_net_0, c880_wire_27);
bufg #(0, 0) BUF_69 (G864_net_0, c880_wire_118);
bufg #(0, 0) BUF_70 (G865_net_0, c880_wire_66);
bufg #(0, 0) BUF_71 (G866_net_0, c880_wire_94);
bufg #(0, 0) BUF_72 (G867_net_0, c880_wire_146);
bufg #(0, 0) BUF_73 (G868_net_0, c880_wire_151);
bufg #(0, 0) BUF_74 (G869_net_0, c880_wire_117);
bufg #(0, 0) BUF_75 (G870_net_0, c880_wire_377);
bufg #(0, 0) BUF_76 (G871_net_0, c880_wire_382);
bufg #(0, 0) BUF_77 (G872_net_0, c880_wire_448);
bufg #(0, 0) BUF_78 (G873_net_0, c880_wire_466);
bufg #(0, 0) BUF_79 (G874_net_0, c880_wire_470);
bufg #(0, 0) BUF_80 (G875_net_0, c880_wire_474);
bufg #(0, 0) BUF_81 (G876_net_0, c880_wire_479);
bufg #(0, 0) BUF_82 (G877_net_0, c880_wire_481);
bufg #(0, 0) BUF_83 (G878_net_0, c880_wire_493);
bufg #(0, 0) BUF_84 (G879_net_0, c880_wire_496);
bufg #(0, 0) BUF_85 (G880_net_0, c880_wire_499);
bufg #(0, 0) BUF_86 (c880_wire_62, G9_net_0);

endmodule
