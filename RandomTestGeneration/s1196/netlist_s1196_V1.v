
//Verilog file of module s1196


`timescale 1 ns / 1ns

module s1196_net(reset, VDD,
CK,
G0,
G1,
G10,
G11,
G12,
G13,
G2,
G3,
G4,
G45,
G5,
G530,
G532,
G535,
G537,
G539,
G542,
G546,
G547,
G548,
G549,
G550,
G551,
G552,
G6,
G7,
G8,
G9);
input reset;
input VDD;
input CK;
input G0;
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

output G546;
output G539;
output G550;
output G551;
output G552;
output G547;
output G548;
output G549;
output G530;
output G45;
output G542;
output G532;
output G535;
output G537;

wire
s1196_wire_1,
s1196_wire_2,
s1196_wire_3,
s1196_wire_4,
s1196_wire_5,
s1196_wire_6,
s1196_wire_7,
s1196_wire_8,
s1196_wire_9,
s1196_wire_10,
s1196_wire_11,
s1196_wire_12,
s1196_wire_13,
s1196_wire_14,
s1196_wire_15,
s1196_wire_16,
s1196_wire_17,
s1196_wire_18,
s1196_wire_19,
s1196_wire_20,
s1196_wire_21,
s1196_wire_22,
s1196_wire_23,
s1196_wire_24,
s1196_wire_25,
s1196_wire_26,
s1196_wire_27,
s1196_wire_28,
s1196_wire_29,
s1196_wire_30,
s1196_wire_31,
s1196_wire_32,
s1196_wire_33,
s1196_wire_34,
s1196_wire_35,
s1196_wire_36,
s1196_wire_37,
s1196_wire_38,
s1196_wire_39,
s1196_wire_40,
s1196_wire_41,
s1196_wire_42,
s1196_wire_43,
s1196_wire_44,
s1196_wire_45,
s1196_wire_46,
s1196_wire_47,
s1196_wire_48,
s1196_wire_49,
s1196_wire_50,
s1196_wire_51,
s1196_wire_52,
s1196_wire_53,
s1196_wire_54,
s1196_wire_55,
s1196_wire_56,
s1196_wire_57,
s1196_wire_58,
s1196_wire_59,
s1196_wire_60,
s1196_wire_61,
s1196_wire_62,
s1196_wire_63,
s1196_wire_64,
s1196_wire_65,
s1196_wire_66,
s1196_wire_67,
s1196_wire_68,
s1196_wire_69,
s1196_wire_70,
s1196_wire_71,
s1196_wire_72,
s1196_wire_73,
s1196_wire_74,
s1196_wire_75,
s1196_wire_76,
s1196_wire_77,
s1196_wire_78,
s1196_wire_79,
s1196_wire_80,
s1196_wire_81,
s1196_wire_82,
s1196_wire_83,
s1196_wire_84,
s1196_wire_85,
s1196_wire_86,
s1196_wire_87,
s1196_wire_88,
s1196_wire_89,
s1196_wire_90,
s1196_wire_91,
s1196_wire_92,
s1196_wire_93,
s1196_wire_94,
s1196_wire_95,
s1196_wire_96,
s1196_wire_97,
s1196_wire_98,
s1196_wire_99,
s1196_wire_100,
s1196_wire_101,
s1196_wire_102,
s1196_wire_103,
s1196_wire_104,
s1196_wire_105,
s1196_wire_106,
s1196_wire_107,
s1196_wire_108,
s1196_wire_109,
s1196_wire_110,
s1196_wire_111,
s1196_wire_112,
s1196_wire_113,
s1196_wire_114,
s1196_wire_115,
s1196_wire_116,
s1196_wire_117,
s1196_wire_118,
s1196_wire_119,
s1196_wire_120,
s1196_wire_121,
s1196_wire_122,
s1196_wire_123,
s1196_wire_124,
s1196_wire_125,
s1196_wire_126,
s1196_wire_127,
s1196_wire_128,
s1196_wire_129,
s1196_wire_130,
s1196_wire_131,
s1196_wire_132,
s1196_wire_133,
s1196_wire_134,
s1196_wire_135,
s1196_wire_136,
s1196_wire_137,
s1196_wire_138,
s1196_wire_139,
s1196_wire_140,
s1196_wire_141,
s1196_wire_142,
s1196_wire_143,
s1196_wire_144,
s1196_wire_145,
s1196_wire_146,
s1196_wire_147,
s1196_wire_148,
s1196_wire_149,
s1196_wire_150,
s1196_wire_151,
s1196_wire_152,
s1196_wire_153,
s1196_wire_154,
s1196_wire_155,
s1196_wire_156,
s1196_wire_157,
s1196_wire_158,
s1196_wire_159,
s1196_wire_160,
s1196_wire_161,
s1196_wire_162,
s1196_wire_163,
s1196_wire_164,
s1196_wire_165,
s1196_wire_166,
s1196_wire_167,
s1196_wire_168,
s1196_wire_169,
s1196_wire_170,
s1196_wire_171,
s1196_wire_172,
s1196_wire_173,
s1196_wire_174,
s1196_wire_175,
s1196_wire_176,
s1196_wire_177,
s1196_wire_178,
s1196_wire_179,
s1196_wire_180,
s1196_wire_181,
s1196_wire_182,
s1196_wire_183,
s1196_wire_184,
s1196_wire_185,
s1196_wire_186,
s1196_wire_187,
s1196_wire_188,
s1196_wire_189,
s1196_wire_190,
s1196_wire_191,
s1196_wire_192,
s1196_wire_193,
s1196_wire_194,
s1196_wire_195,
s1196_wire_196,
s1196_wire_197,
s1196_wire_198,
s1196_wire_199,
s1196_wire_200,
s1196_wire_201,
s1196_wire_202,
s1196_wire_203,
s1196_wire_204,
s1196_wire_205,
s1196_wire_206,
s1196_wire_207,
s1196_wire_208,
s1196_wire_209,
s1196_wire_210,
s1196_wire_211,
s1196_wire_212,
s1196_wire_213,
s1196_wire_214,
s1196_wire_215,
s1196_wire_216,
s1196_wire_217,
s1196_wire_218,
s1196_wire_219,
s1196_wire_220,
s1196_wire_221,
s1196_wire_222,
s1196_wire_223,
s1196_wire_224,
s1196_wire_225,
s1196_wire_226,
s1196_wire_227,
s1196_wire_228,
s1196_wire_229,
s1196_wire_230,
s1196_wire_231,
s1196_wire_232,
s1196_wire_233,
s1196_wire_234,
s1196_wire_235,
s1196_wire_236,
s1196_wire_237,
s1196_wire_238,
s1196_wire_239,
s1196_wire_240,
s1196_wire_241,
s1196_wire_242,
s1196_wire_243,
s1196_wire_244,
s1196_wire_245,
s1196_wire_246,
s1196_wire_247,
s1196_wire_248,
s1196_wire_249,
s1196_wire_250,
s1196_wire_251,
s1196_wire_252,
s1196_wire_253,
s1196_wire_254,
s1196_wire_255,
s1196_wire_256,
s1196_wire_257,
s1196_wire_258,
s1196_wire_259,
s1196_wire_260,
s1196_wire_261,
s1196_wire_262,
s1196_wire_263,
s1196_wire_264,
s1196_wire_265,
s1196_wire_266,
s1196_wire_267,
s1196_wire_268,
s1196_wire_269,
s1196_wire_270,
s1196_wire_271,
s1196_wire_272,
s1196_wire_273,
s1196_wire_274,
s1196_wire_275,
s1196_wire_276,
s1196_wire_277,
s1196_wire_278,
s1196_wire_279,
s1196_wire_280,
s1196_wire_281,
s1196_wire_282,
s1196_wire_283,
s1196_wire_284,
s1196_wire_285,
s1196_wire_286,
s1196_wire_287,
s1196_wire_288,
s1196_wire_289,
s1196_wire_290,
s1196_wire_291,
s1196_wire_292,
s1196_wire_293,
s1196_wire_294,
s1196_wire_295,
s1196_wire_296,
s1196_wire_297,
s1196_wire_298,
s1196_wire_299,
s1196_wire_300,
s1196_wire_301,
s1196_wire_302,
s1196_wire_303,
s1196_wire_304,
s1196_wire_305,
s1196_wire_306,
s1196_wire_307,
s1196_wire_308,
s1196_wire_309,
s1196_wire_310,
s1196_wire_311,
s1196_wire_312,
s1196_wire_313,
s1196_wire_314,
s1196_wire_315,
s1196_wire_316,
s1196_wire_317,
s1196_wire_318,
s1196_wire_319,
s1196_wire_320,
s1196_wire_321,
s1196_wire_322,
s1196_wire_323,
s1196_wire_324,
s1196_wire_325,
s1196_wire_326,
s1196_wire_327,
s1196_wire_328,
s1196_wire_329,
s1196_wire_330,
s1196_wire_331,
s1196_wire_332,
s1196_wire_333,
s1196_wire_334,
s1196_wire_335,
s1196_wire_336,
s1196_wire_337,
s1196_wire_338,
s1196_wire_339,
s1196_wire_340,
s1196_wire_341,
s1196_wire_342,
s1196_wire_343,
s1196_wire_344,
s1196_wire_345,
s1196_wire_346,
s1196_wire_347,
s1196_wire_348,
s1196_wire_349,
s1196_wire_350,
s1196_wire_351,
s1196_wire_352,
s1196_wire_353,
s1196_wire_354,
s1196_wire_355,
s1196_wire_356,
s1196_wire_357,
s1196_wire_358,
s1196_wire_359,
s1196_wire_360,
s1196_wire_361,
s1196_wire_362,
s1196_wire_363,
s1196_wire_364,
s1196_wire_365,
s1196_wire_366,
s1196_wire_367,
s1196_wire_368,
s1196_wire_369,
s1196_wire_370,
s1196_wire_371,
s1196_wire_372,
s1196_wire_373,
s1196_wire_374,
s1196_wire_375,
s1196_wire_376,
s1196_wire_377,
s1196_wire_378,
s1196_wire_379,
s1196_wire_380,
s1196_wire_381,
s1196_wire_382,
s1196_wire_383,
s1196_wire_384,
s1196_wire_385,
s1196_wire_386,
s1196_wire_387,
s1196_wire_388,
s1196_wire_389,
s1196_wire_390,
s1196_wire_391,
s1196_wire_392,
s1196_wire_393,
s1196_wire_394,
s1196_wire_395,
s1196_wire_396,
s1196_wire_397,
s1196_wire_398,
s1196_wire_399,
s1196_wire_400,
s1196_wire_401,
s1196_wire_402,
s1196_wire_403,
s1196_wire_404,
s1196_wire_405,
s1196_wire_406,
s1196_wire_407,
s1196_wire_408,
s1196_wire_409,
s1196_wire_410,
s1196_wire_411,
s1196_wire_412,
s1196_wire_413,
s1196_wire_414,
s1196_wire_415,
s1196_wire_416,
s1196_wire_417,
s1196_wire_418,
s1196_wire_419,
s1196_wire_420,
s1196_wire_421,
s1196_wire_422,
s1196_wire_423,
s1196_wire_424,
s1196_wire_425,
s1196_wire_426,
s1196_wire_427,
s1196_wire_428,
s1196_wire_429,
s1196_wire_430,
s1196_wire_431,
s1196_wire_432,
s1196_wire_433,
s1196_wire_434,
s1196_wire_435,
s1196_wire_436,
s1196_wire_437,
s1196_wire_438,
s1196_wire_439,
s1196_wire_440,
s1196_wire_441,
s1196_wire_442,
s1196_wire_443,
s1196_wire_444,
s1196_wire_445,
s1196_wire_446,
s1196_wire_447,
s1196_wire_448,
s1196_wire_449,
s1196_wire_450,
s1196_wire_451,
s1196_wire_452,
s1196_wire_453,
s1196_wire_454,
s1196_wire_455,
s1196_wire_456,
s1196_wire_457,
s1196_wire_458,
s1196_wire_459,
s1196_wire_460,
s1196_wire_461,
s1196_wire_462,
s1196_wire_463,
s1196_wire_464,
s1196_wire_465,
s1196_wire_466,
s1196_wire_467,
s1196_wire_468,
s1196_wire_469,
s1196_wire_470,
s1196_wire_471,
s1196_wire_472,
s1196_wire_473,
s1196_wire_474,
s1196_wire_475,
s1196_wire_476,
s1196_wire_477,
s1196_wire_478,
s1196_wire_479,
s1196_wire_480,
s1196_wire_481,
s1196_wire_482,
s1196_wire_483,
s1196_wire_484,
s1196_wire_485,
s1196_wire_486,
s1196_wire_487,
s1196_wire_488,
s1196_wire_489,
s1196_wire_490,
s1196_wire_491,
s1196_wire_492,
s1196_wire_493,
s1196_wire_494,
s1196_wire_495,
s1196_wire_496,
s1196_wire_497,
s1196_wire_498,
s1196_wire_499,
s1196_wire_500,
s1196_wire_501,
s1196_wire_502,
s1196_wire_503,
s1196_wire_504,
s1196_wire_505,
s1196_wire_506,
s1196_wire_507,
s1196_wire_508,
s1196_wire_509,
s1196_wire_510,
s1196_wire_511,
s1196_wire_512,
s1196_wire_513,
s1196_wire_514,
s1196_wire_515,
s1196_wire_516,
s1196_wire_517,
s1196_wire_518,
s1196_wire_519,
s1196_wire_520,
s1196_wire_521,
s1196_wire_522,
s1196_wire_523,
s1196_wire_524,
s1196_wire_525,
s1196_wire_526,
s1196_wire_527,
s1196_wire_528,
s1196_wire_529,
s1196_wire_530,
s1196_wire_531,
s1196_wire_532,
s1196_wire_533,
s1196_wire_534,
s1196_wire_535,
s1196_wire_536,
s1196_wire_537,
s1196_wire_538,
s1196_wire_539,
s1196_wire_540,
s1196_wire_541,
s1196_wire_542,
s1196_wire_543,
s1196_wire_544,
s1196_wire_545,
s1196_wire_546,
s1196_wire_547,
s1196_wire_548,
s1196_wire_549,
s1196_wire_550,
s1196_wire_551,
s1196_wire_552,
s1196_wire_553,
s1196_wire_554,
s1196_wire_555,
s1196_wire_556,
s1196_wire_557,
s1196_wire_558,
s1196_wire_559,
s1196_wire_560,
s1196_wire_561,
s1196_wire_562,
s1196_wire_563,
s1196_wire_564,
s1196_wire_565,
s1196_wire_566,
s1196_wire_567,
s1196_wire_568,
s1196_wire_569,
s1196_wire_570,
s1196_wire_571,
s1196_wire_572,
s1196_wire_573,
s1196_wire_574,
s1196_wire_575,
s1196_wire_576,
s1196_wire_577,
s1196_wire_578,
s1196_wire_579,
s1196_wire_580,
s1196_wire_581,
s1196_wire_582,
s1196_wire_583,
s1196_wire_584,
s1196_wire_585,
s1196_wire_586,
s1196_wire_587,
s1196_wire_588,
s1196_wire_589,
s1196_wire_590,
s1196_wire_591,
s1196_wire_592,
s1196_wire_593,
s1196_wire_594,
s1196_wire_595,
s1196_wire_596,
s1196_wire_597,
s1196_wire_598,
s1196_wire_599,
s1196_wire_600,
s1196_wire_601,
s1196_wire_602,
s1196_wire_603,
s1196_wire_604,
s1196_wire_605,
s1196_wire_606,
s1196_wire_607,
s1196_wire_608,
s1196_wire_609,
s1196_wire_610,
s1196_wire_611,
s1196_wire_612,
s1196_wire_613,
s1196_wire_614,
s1196_wire_615,
s1196_wire_616,
s1196_wire_617,
s1196_wire_618,
s1196_wire_619,
s1196_wire_620,
s1196_wire_621,
s1196_wire_622,
s1196_wire_623,
s1196_wire_624,
s1196_wire_625,
s1196_wire_626,
s1196_wire_627,
s1196_wire_628,
s1196_wire_629,
s1196_wire_630,
s1196_wire_631,
s1196_wire_632,
s1196_wire_633,
s1196_wire_634,
s1196_wire_635,
s1196_wire_636,
s1196_wire_637,
s1196_wire_638,
s1196_wire_639,
s1196_wire_640,
s1196_wire_641,
s1196_wire_642,
s1196_wire_643,
s1196_wire_644,
s1196_wire_645,
s1196_wire_646,
s1196_wire_647,
s1196_wire_648,
s1196_wire_649,
s1196_wire_650,
s1196_wire_651,
s1196_wire_652,
s1196_wire_653,
s1196_wire_654,
s1196_wire_655,
s1196_wire_656,
s1196_wire_657,
s1196_wire_658,
s1196_wire_659,
s1196_wire_660,
s1196_wire_661,
s1196_wire_662,
s1196_wire_663,
s1196_wire_664,
s1196_wire_665,
s1196_wire_666,
s1196_wire_667,
s1196_wire_668,
s1196_wire_669,
s1196_wire_670,
s1196_wire_671,
s1196_wire_672,
s1196_wire_673,
s1196_wire_674,
s1196_wire_675,
s1196_wire_676,
s1196_wire_677,
s1196_wire_678,
s1196_wire_679,
s1196_wire_680,
s1196_wire_681,
s1196_wire_682,
s1196_wire_683,
s1196_wire_684,
s1196_wire_685,
s1196_wire_686,
s1196_wire_687,
s1196_wire_688,
s1196_wire_689,
s1196_wire_690,
s1196_wire_691,
s1196_wire_692,
s1196_wire_693,
s1196_wire_694,
s1196_wire_695,
s1196_wire_696,
s1196_wire_697,
s1196_wire_698,
s1196_wire_699,
s1196_wire_700,
s1196_wire_701,
s1196_wire_702,
s1196_wire_703,
s1196_wire_704,
s1196_wire_705,
s1196_wire_706,
s1196_wire_707,
s1196_wire_708,
s1196_wire_709,
s1196_wire_710,
s1196_wire_3_0,
s1196_wire_3_1,
s1196_wire_3_2,
s1196_wire_3_3,
s1196_wire_19_0,
s1196_wire_19_1,
s1196_wire_21_0,
s1196_wire_21_1,
s1196_wire_23_0,
s1196_wire_23_1,
s1196_wire_27_0,
s1196_wire_27_1,
s1196_wire_27_2,
s1196_wire_27_3,
s1196_wire_27_4,
s1196_wire_27_5,
s1196_wire_29_0,
s1196_wire_29_1,
s1196_wire_31_0,
s1196_wire_31_1,
s1196_wire_31_2,
s1196_wire_31_3,
s1196_wire_31_4,
s1196_wire_33_0,
s1196_wire_33_1,
s1196_wire_33_2,
s1196_wire_33_3,
s1196_wire_35_0,
s1196_wire_35_1,
s1196_wire_35_2,
s1196_wire_35_3,
s1196_wire_38_0,
s1196_wire_38_1,
s1196_wire_38_2,
s1196_wire_38_3,
s1196_wire_38_4,
s1196_wire_38_5,
s1196_wire_38_6,
s1196_wire_38_7,
s1196_wire_38_8,
s1196_wire_38_9,
s1196_wire_38_10,
s1196_wire_38_11,
s1196_wire_38_12,
s1196_wire_38_13,
s1196_wire_38_14,
s1196_wire_38_15,
s1196_wire_41_0,
s1196_wire_41_1,
s1196_wire_41_2,
s1196_wire_41_3,
s1196_wire_41_4,
s1196_wire_41_5,
s1196_wire_41_6,
s1196_wire_41_7,
s1196_wire_41_8,
s1196_wire_41_9,
s1196_wire_41_10,
s1196_wire_41_11,
s1196_wire_41_12,
s1196_wire_41_13,
s1196_wire_41_14,
s1196_wire_41_15,
s1196_wire_41_16,
s1196_wire_41_17,
s1196_wire_41_18,
s1196_wire_41_19,
s1196_wire_41_20,
s1196_wire_41_21,
s1196_wire_58_0,
s1196_wire_58_1,
s1196_wire_58_2,
s1196_wire_58_3,
s1196_wire_58_4,
s1196_wire_58_5,
s1196_wire_58_6,
s1196_wire_58_7,
s1196_wire_58_8,
s1196_wire_58_9,
s1196_wire_58_10,
s1196_wire_58_11,
s1196_wire_58_12,
s1196_wire_58_13,
s1196_wire_58_14,
s1196_wire_58_15,
s1196_wire_58_16,
s1196_wire_58_17,
s1196_wire_58_18,
s1196_wire_58_19,
s1196_wire_58_20,
s1196_wire_58_21,
s1196_wire_58_22,
s1196_wire_58_23,
s1196_wire_58_24,
s1196_wire_58_25,
s1196_wire_58_26,
s1196_wire_58_27,
s1196_wire_58_28,
s1196_wire_58_29,
s1196_wire_58_30,
s1196_wire_58_31,
s1196_wire_58_32,
s1196_wire_58_33,
s1196_wire_58_34,
s1196_wire_58_35,
s1196_wire_58_36,
s1196_wire_58_37,
s1196_wire_58_38,
s1196_wire_58_39,
s1196_wire_58_40,
s1196_wire_64_0,
s1196_wire_64_1,
s1196_wire_74_0,
s1196_wire_74_1,
s1196_wire_74_2,
s1196_wire_74_3,
s1196_wire_78_0,
s1196_wire_78_1,
s1196_wire_90_0,
s1196_wire_90_1,
s1196_wire_79_0,
s1196_wire_79_1,
s1196_wire_79_2,
s1196_wire_79_3,
s1196_wire_79_4,
s1196_wire_79_5,
s1196_wire_79_6,
s1196_wire_79_7,
s1196_wire_79_8,
s1196_wire_79_9,
s1196_wire_79_10,
s1196_wire_79_11,
s1196_wire_79_12,
s1196_wire_79_13,
s1196_wire_79_14,
s1196_wire_79_15,
s1196_wire_79_16,
s1196_wire_79_17,
s1196_wire_79_18,
s1196_wire_79_19,
s1196_wire_79_20,
s1196_wire_79_21,
s1196_wire_79_22,
s1196_wire_79_23,
s1196_wire_79_24,
s1196_wire_79_25,
s1196_wire_79_26,
s1196_wire_54_0,
s1196_wire_54_1,
s1196_wire_54_2,
s1196_wire_54_3,
s1196_wire_54_4,
s1196_wire_54_5,
s1196_wire_54_6,
s1196_wire_54_7,
s1196_wire_54_8,
s1196_wire_54_9,
s1196_wire_54_10,
s1196_wire_54_11,
s1196_wire_54_12,
s1196_wire_54_13,
s1196_wire_54_14,
s1196_wire_71_0,
s1196_wire_71_1,
s1196_wire_71_2,
s1196_wire_71_3,
s1196_wire_71_4,
s1196_wire_71_5,
s1196_wire_71_6,
s1196_wire_159_0,
s1196_wire_159_1,
s1196_wire_168_0,
s1196_wire_168_1,
s1196_wire_178_0,
s1196_wire_178_1,
s1196_wire_178_2,
s1196_wire_178_3,
s1196_wire_178_4,
s1196_wire_178_5,
s1196_wire_178_6,
s1196_wire_178_7,
s1196_wire_178_8,
s1196_wire_178_9,
s1196_wire_178_10,
s1196_wire_178_11,
s1196_wire_178_12,
s1196_wire_178_13,
s1196_wire_178_14,
s1196_wire_179_0,
s1196_wire_179_1,
s1196_wire_179_2,
s1196_wire_179_3,
s1196_wire_179_4,
s1196_wire_179_5,
s1196_wire_179_6,
s1196_wire_179_7,
s1196_wire_191_0,
s1196_wire_191_1,
s1196_wire_191_2,
s1196_wire_138_0,
s1196_wire_138_1,
s1196_wire_138_2,
s1196_wire_138_3,
s1196_wire_195_0,
s1196_wire_195_1,
s1196_wire_195_2,
s1196_wire_195_3,
s1196_wire_209_0,
s1196_wire_209_1,
s1196_wire_209_2,
s1196_wire_52_0,
s1196_wire_52_1,
s1196_wire_52_2,
s1196_wire_52_3,
s1196_wire_52_4,
s1196_wire_52_5,
s1196_wire_52_6,
s1196_wire_52_7,
s1196_wire_52_8,
s1196_wire_52_9,
s1196_wire_52_10,
s1196_wire_52_11,
s1196_wire_230_0,
s1196_wire_230_1,
s1196_wire_185_0,
s1196_wire_185_1,
s1196_wire_237_0,
s1196_wire_237_1,
s1196_wire_244_0,
s1196_wire_244_1,
s1196_wire_244_2,
s1196_wire_244_3,
s1196_wire_244_4,
s1196_wire_244_5,
s1196_wire_243_0,
s1196_wire_243_1,
s1196_wire_212_0,
s1196_wire_212_1,
s1196_wire_217_0,
s1196_wire_217_1,
s1196_wire_234_0,
s1196_wire_234_1,
s1196_wire_238_0,
s1196_wire_238_1,
s1196_wire_269_0,
s1196_wire_269_1,
s1196_wire_269_2,
s1196_wire_269_3,
s1196_wire_270_0,
s1196_wire_270_1,
s1196_wire_277_0,
s1196_wire_277_1,
s1196_wire_285_0,
s1196_wire_285_1,
s1196_wire_293_0,
s1196_wire_293_1,
s1196_wire_293_2,
s1196_wire_293_3,
s1196_wire_158_0,
s1196_wire_158_1,
s1196_wire_158_2,
s1196_wire_158_3,
s1196_wire_158_4,
s1196_wire_158_5,
s1196_wire_158_6,
s1196_wire_158_7,
s1196_wire_158_8,
s1196_wire_158_9,
s1196_wire_158_10,
s1196_wire_158_11,
s1196_wire_158_12,
s1196_wire_158_13,
s1196_wire_158_14,
s1196_wire_158_15,
s1196_wire_158_16,
s1196_wire_158_17,
s1196_wire_158_18,
s1196_wire_158_19,
s1196_wire_158_20,
s1196_wire_158_21,
s1196_wire_158_22,
s1196_wire_158_23,
s1196_wire_158_24,
s1196_wire_158_25,
s1196_wire_158_26,
s1196_wire_158_27,
s1196_wire_158_28,
s1196_wire_158_29,
s1196_wire_158_30,
s1196_wire_158_31,
s1196_wire_158_32,
s1196_wire_313_0,
s1196_wire_313_1,
s1196_wire_313_2,
s1196_wire_314_0,
s1196_wire_314_1,
s1196_wire_80_0,
s1196_wire_80_1,
s1196_wire_80_2,
s1196_wire_80_3,
s1196_wire_328_0,
s1196_wire_328_1,
s1196_wire_328_2,
s1196_wire_334_0,
s1196_wire_334_1,
s1196_wire_334_2,
s1196_wire_70_0,
s1196_wire_70_1,
s1196_wire_72_0,
s1196_wire_72_1,
s1196_wire_72_2,
s1196_wire_279_0,
s1196_wire_279_1,
s1196_wire_251_0,
s1196_wire_251_1,
s1196_wire_251_2,
s1196_wire_251_3,
s1196_wire_246_0,
s1196_wire_246_1,
s1196_wire_246_2,
s1196_wire_246_3,
s1196_wire_246_4,
s1196_wire_246_5,
s1196_wire_206_0,
s1196_wire_206_1,
s1196_wire_206_2,
s1196_wire_206_3,
s1196_wire_206_4,
s1196_wire_63_0,
s1196_wire_63_1,
s1196_wire_63_2,
s1196_wire_63_3,
s1196_wire_63_4,
s1196_wire_63_5,
s1196_wire_63_6,
s1196_wire_63_7,
s1196_wire_63_8,
s1196_wire_63_9,
s1196_wire_63_10,
s1196_wire_63_11,
s1196_wire_63_12,
s1196_wire_63_13,
s1196_wire_63_14,
s1196_wire_63_15,
s1196_wire_63_16,
s1196_wire_63_17,
s1196_wire_63_18,
s1196_wire_63_19,
s1196_wire_63_20,
s1196_wire_63_21,
s1196_wire_63_22,
s1196_wire_63_23,
s1196_wire_63_24,
s1196_wire_63_25,
s1196_wire_63_26,
s1196_wire_63_27,
s1196_wire_63_28,
s1196_wire_63_29,
s1196_wire_63_30,
s1196_wire_63_31,
s1196_wire_63_32,
s1196_wire_63_33,
s1196_wire_63_34,
s1196_wire_63_35,
s1196_wire_63_36,
s1196_wire_63_37,
s1196_wire_63_38,
s1196_wire_63_39,
s1196_wire_63_40,
s1196_wire_379_0,
s1196_wire_379_1,
s1196_wire_426_0,
s1196_wire_426_1,
s1196_wire_120_0,
s1196_wire_120_1,
s1196_wire_120_2,
s1196_wire_120_3,
s1196_wire_120_4,
s1196_wire_120_5,
s1196_wire_59_0,
s1196_wire_59_1,
s1196_wire_59_2,
s1196_wire_59_3,
s1196_wire_59_4,
s1196_wire_59_5,
s1196_wire_59_6,
s1196_wire_59_7,
s1196_wire_59_8,
s1196_wire_59_9,
s1196_wire_59_10,
s1196_wire_59_11,
s1196_wire_59_12,
s1196_wire_59_13,
s1196_wire_59_14,
s1196_wire_59_15,
s1196_wire_59_16,
s1196_wire_59_17,
s1196_wire_59_18,
s1196_wire_59_19,
s1196_wire_59_20,
s1196_wire_59_21,
s1196_wire_59_22,
s1196_wire_59_23,
s1196_wire_59_24,
s1196_wire_59_25,
s1196_wire_59_26,
s1196_wire_59_27,
s1196_wire_59_28,
s1196_wire_59_29,
s1196_wire_59_30,
s1196_wire_59_31,
s1196_wire_59_32,
s1196_wire_59_33,
s1196_wire_59_34,
s1196_wire_59_35,
s1196_wire_59_36,
s1196_wire_260_0,
s1196_wire_260_1,
s1196_wire_260_2,
s1196_wire_260_3,
s1196_wire_339_0,
s1196_wire_339_1,
s1196_wire_339_2,
s1196_wire_339_3,
s1196_wire_339_4,
s1196_wire_339_5,
s1196_wire_339_6,
s1196_wire_339_7,
s1196_wire_339_8,
s1196_wire_190_0,
s1196_wire_190_1,
s1196_wire_190_2,
s1196_wire_190_3,
s1196_wire_190_4,
s1196_wire_190_5,
s1196_wire_190_6,
s1196_wire_190_7,
s1196_wire_190_8,
s1196_wire_190_9,
s1196_wire_151_0,
s1196_wire_151_1,
s1196_wire_151_2,
s1196_wire_151_3,
s1196_wire_151_4,
s1196_wire_151_5,
s1196_wire_151_6,
s1196_wire_151_7,
s1196_wire_151_8,
s1196_wire_151_9,
s1196_wire_151_10,
s1196_wire_151_11,
s1196_wire_161_0,
s1196_wire_161_1,
s1196_wire_161_2,
s1196_wire_161_3,
s1196_wire_161_4,
s1196_wire_161_5,
s1196_wire_161_6,
s1196_wire_161_7,
s1196_wire_161_8,
s1196_wire_161_9,
s1196_wire_161_10,
s1196_wire_161_11,
s1196_wire_161_12,
s1196_wire_161_13,
s1196_wire_161_14,
s1196_wire_161_15,
s1196_wire_161_16,
s1196_wire_161_17,
s1196_wire_161_18,
s1196_wire_161_19,
s1196_wire_161_20,
s1196_wire_161_21,
s1196_wire_161_22,
s1196_wire_161_23,
s1196_wire_161_24,
s1196_wire_161_25,
s1196_wire_161_26,
s1196_wire_161_27,
s1196_wire_161_28,
s1196_wire_161_29,
s1196_wire_161_30,
s1196_wire_161_31,
s1196_wire_161_32,
s1196_wire_380_0,
s1196_wire_380_1,
s1196_wire_380_2,
s1196_wire_255_0,
s1196_wire_255_1,
s1196_wire_254_0,
s1196_wire_254_1,
s1196_wire_254_2,
s1196_wire_254_3,
s1196_wire_254_4,
s1196_wire_254_5,
s1196_wire_193_0,
s1196_wire_193_1,
s1196_wire_193_2,
s1196_wire_216_0,
s1196_wire_216_1,
s1196_wire_216_2,
s1196_wire_216_3,
s1196_wire_60_0,
s1196_wire_60_1,
s1196_wire_60_2,
s1196_wire_60_3,
s1196_wire_60_4,
s1196_wire_60_5,
s1196_wire_60_6,
s1196_wire_60_7,
s1196_wire_60_8,
s1196_wire_60_9,
s1196_wire_60_10,
s1196_wire_60_11,
s1196_wire_60_12,
s1196_wire_60_13,
s1196_wire_60_14,
s1196_wire_60_15,
s1196_wire_60_16,
s1196_wire_60_17,
s1196_wire_60_18,
s1196_wire_60_19,
s1196_wire_60_20,
s1196_wire_60_21,
s1196_wire_60_22,
s1196_wire_60_23,
s1196_wire_60_24,
s1196_wire_60_25,
s1196_wire_60_26,
s1196_wire_60_27,
s1196_wire_60_28,
s1196_wire_60_29,
s1196_wire_60_30,
s1196_wire_60_31,
s1196_wire_60_32,
s1196_wire_60_33,
s1196_wire_60_34,
s1196_wire_60_35,
s1196_wire_60_36,
s1196_wire_60_37,
s1196_wire_60_38,
s1196_wire_60_39,
s1196_wire_60_40,
s1196_wire_60_41,
s1196_wire_60_42,
s1196_wire_60_43,
s1196_wire_60_44,
s1196_wire_495_0,
s1196_wire_495_1,
s1196_wire_495_2,
s1196_wire_68_0,
s1196_wire_68_1,
s1196_wire_68_2,
s1196_wire_68_3,
s1196_wire_68_4,
s1196_wire_68_5,
s1196_wire_68_6,
s1196_wire_68_7,
s1196_wire_68_8,
s1196_wire_68_9,
s1196_wire_68_10,
s1196_wire_68_11,
s1196_wire_68_12,
s1196_wire_68_13,
s1196_wire_68_14,
s1196_wire_68_15,
s1196_wire_68_16,
s1196_wire_68_17,
s1196_wire_68_18,
s1196_wire_68_19,
s1196_wire_68_20,
s1196_wire_68_21,
s1196_wire_68_22,
s1196_wire_68_23,
s1196_wire_68_24,
s1196_wire_68_25,
s1196_wire_68_26,
s1196_wire_68_27,
s1196_wire_68_28,
s1196_wire_68_29,
s1196_wire_68_30,
s1196_wire_68_31,
s1196_wire_68_32,
s1196_wire_68_33,
s1196_wire_68_34,
s1196_wire_68_35,
s1196_wire_68_36,
s1196_wire_68_37,
s1196_wire_91_0,
s1196_wire_91_1,
s1196_wire_91_2,
s1196_wire_91_3,
s1196_wire_91_4,
s1196_wire_91_5,
s1196_wire_91_6,
s1196_wire_91_7,
s1196_wire_91_8,
s1196_wire_91_9,
s1196_wire_91_10,
s1196_wire_91_11,
s1196_wire_91_12,
s1196_wire_91_13,
s1196_wire_91_14,
s1196_wire_91_15,
s1196_wire_91_16,
s1196_wire_91_17,
s1196_wire_91_18,
s1196_wire_91_19,
s1196_wire_91_20,
s1196_wire_91_21,
s1196_wire_91_22,
s1196_wire_91_23,
s1196_wire_91_24,
s1196_wire_91_25,
s1196_wire_91_26,
s1196_wire_91_27,
s1196_wire_91_28,
s1196_wire_91_29,
s1196_wire_91_30,
s1196_wire_91_31,
s1196_wire_91_32,
s1196_wire_91_33,
s1196_wire_91_34,
s1196_wire_91_35,
s1196_wire_91_36,
s1196_wire_91_37,
s1196_wire_91_38,
s1196_wire_91_39,
s1196_wire_91_40,
s1196_wire_61_0,
s1196_wire_61_1,
s1196_wire_61_2,
s1196_wire_61_3,
s1196_wire_61_4,
s1196_wire_61_5,
s1196_wire_61_6,
s1196_wire_61_7,
s1196_wire_61_8,
s1196_wire_61_9,
s1196_wire_61_10,
s1196_wire_61_11,
s1196_wire_61_12,
s1196_wire_61_13,
s1196_wire_61_14,
s1196_wire_61_15,
s1196_wire_61_16,
s1196_wire_61_17,
s1196_wire_61_18,
s1196_wire_61_19,
s1196_wire_61_20,
s1196_wire_61_21,
s1196_wire_61_22,
s1196_wire_61_23,
s1196_wire_61_24,
s1196_wire_61_25,
s1196_wire_61_26,
s1196_wire_61_27,
s1196_wire_61_28,
s1196_wire_61_29,
s1196_wire_61_30,
s1196_wire_61_31,
s1196_wire_61_32,
s1196_wire_61_33,
s1196_wire_61_34,
s1196_wire_61_35,
s1196_wire_61_36,
s1196_wire_61_37,
s1196_wire_61_38,
s1196_wire_61_39,
s1196_wire_61_40,
VDD_net_0,
CK_net_0,
G0_net_0,
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
G546_net_0,
G539_net_0,
G550_net_0,
G551_net_0,
G552_net_0,
G547_net_0,
G548_net_0,
G549_net_0,
G530_net_0,
G45_net_0,
G542_net_0,
G532_net_0,
G535_net_0,
G537_net_0;

pin #(16) pin_0 ({VDD, CK, G0, G1, G2, G3, G4, G5, G6, G7, G8, G9, G10, G11, G12, G13}, {VDD_net_0, CK_net_0, G0_net_0, G1_net_0, G2_net_0, G3_net_0, G4_net_0, G5_net_0, G6_net_0, G7_net_0, G8_net_0, G9_net_0, G10_net_0, G11_net_0, G12_net_0, G13_net_0});

pout #(14) pout_0 ({G546_net_0, G539_net_0, G550_net_0, G551_net_0, G552_net_0, G547_net_0, G548_net_0, G549_net_0, G530_net_0, G45_net_0, G542_net_0, G532_net_0, G535_net_0, G537_net_0}, {G546, G539, G550, G551, G552, G547, G548, G549, G530, G45, G542, G532, G535, G537});

fanout_n #(4, 0, 0) FANOUT_1 (s1196_wire_3, {s1196_wire_3_0, s1196_wire_3_1, s1196_wire_3_2, s1196_wire_3_3});
fanout_n #(2, 0, 0) FANOUT_2 (s1196_wire_19, {s1196_wire_19_0, s1196_wire_19_1});
fanout_n #(2, 0, 0) FANOUT_3 (s1196_wire_21, {s1196_wire_21_0, s1196_wire_21_1});
fanout_n #(2, 0, 0) FANOUT_4 (s1196_wire_23, {s1196_wire_23_0, s1196_wire_23_1});
fanout_n #(6, 0, 0) FANOUT_5 (s1196_wire_27, {s1196_wire_27_0, s1196_wire_27_1, s1196_wire_27_2, s1196_wire_27_3, s1196_wire_27_4, s1196_wire_27_5});
fanout_n #(2, 0, 0) FANOUT_6 (s1196_wire_29, {s1196_wire_29_0, s1196_wire_29_1});
fanout_n #(5, 0, 0) FANOUT_7 (s1196_wire_31, {s1196_wire_31_0, s1196_wire_31_1, s1196_wire_31_2, s1196_wire_31_3, s1196_wire_31_4});
fanout_n #(4, 0, 0) FANOUT_8 (s1196_wire_33, {s1196_wire_33_0, s1196_wire_33_1, s1196_wire_33_2, s1196_wire_33_3});
fanout_n #(4, 0, 0) FANOUT_9 (s1196_wire_35, {s1196_wire_35_0, s1196_wire_35_1, s1196_wire_35_2, s1196_wire_35_3});
fanout_n #(16, 0, 0) FANOUT_10 (s1196_wire_38, {s1196_wire_38_0, s1196_wire_38_1, s1196_wire_38_2, s1196_wire_38_3, s1196_wire_38_4, s1196_wire_38_5, s1196_wire_38_6, s1196_wire_38_7, s1196_wire_38_8, s1196_wire_38_9, s1196_wire_38_10, s1196_wire_38_11, s1196_wire_38_12, s1196_wire_38_13, s1196_wire_38_14, s1196_wire_38_15});
fanout_n #(22, 0, 0) FANOUT_11 (s1196_wire_41, {s1196_wire_41_0, s1196_wire_41_1, s1196_wire_41_2, s1196_wire_41_3, s1196_wire_41_4, s1196_wire_41_5, s1196_wire_41_6, s1196_wire_41_7, s1196_wire_41_8, s1196_wire_41_9, s1196_wire_41_10, s1196_wire_41_11, s1196_wire_41_12, s1196_wire_41_13, s1196_wire_41_14, s1196_wire_41_15, s1196_wire_41_16, s1196_wire_41_17, s1196_wire_41_18, s1196_wire_41_19, s1196_wire_41_20, s1196_wire_41_21});
fanout_n #(41, 0, 0) FANOUT_12 (s1196_wire_58, {s1196_wire_58_0, s1196_wire_58_1, s1196_wire_58_2, s1196_wire_58_3, s1196_wire_58_4, s1196_wire_58_5, s1196_wire_58_6, s1196_wire_58_7, s1196_wire_58_8, s1196_wire_58_9, s1196_wire_58_10, s1196_wire_58_11, s1196_wire_58_12, s1196_wire_58_13, s1196_wire_58_14, s1196_wire_58_15, s1196_wire_58_16, s1196_wire_58_17, s1196_wire_58_18, s1196_wire_58_19, s1196_wire_58_20, s1196_wire_58_21, s1196_wire_58_22, s1196_wire_58_23, s1196_wire_58_24, s1196_wire_58_25, s1196_wire_58_26, s1196_wire_58_27, s1196_wire_58_28, s1196_wire_58_29, s1196_wire_58_30, s1196_wire_58_31, s1196_wire_58_32, s1196_wire_58_33, s1196_wire_58_34, s1196_wire_58_35, s1196_wire_58_36, s1196_wire_58_37, s1196_wire_58_38, s1196_wire_58_39, s1196_wire_58_40});
fanout_n #(2, 0, 0) FANOUT_13 (s1196_wire_64, {s1196_wire_64_0, s1196_wire_64_1});
fanout_n #(4, 0, 0) FANOUT_14 (s1196_wire_74, {s1196_wire_74_0, s1196_wire_74_1, s1196_wire_74_2, s1196_wire_74_3});
fanout_n #(2, 0, 0) FANOUT_15 (s1196_wire_78, {s1196_wire_78_0, s1196_wire_78_1});
fanout_n #(2, 0, 0) FANOUT_16 (s1196_wire_90, {s1196_wire_90_0, s1196_wire_90_1});
fanout_n #(27, 0, 0) FANOUT_17 (s1196_wire_79, {s1196_wire_79_0, s1196_wire_79_1, s1196_wire_79_2, s1196_wire_79_3, s1196_wire_79_4, s1196_wire_79_5, s1196_wire_79_6, s1196_wire_79_7, s1196_wire_79_8, s1196_wire_79_9, s1196_wire_79_10, s1196_wire_79_11, s1196_wire_79_12, s1196_wire_79_13, s1196_wire_79_14, s1196_wire_79_15, s1196_wire_79_16, s1196_wire_79_17, s1196_wire_79_18, s1196_wire_79_19, s1196_wire_79_20, s1196_wire_79_21, s1196_wire_79_22, s1196_wire_79_23, s1196_wire_79_24, s1196_wire_79_25, s1196_wire_79_26});
fanout_n #(15, 0, 0) FANOUT_18 (s1196_wire_54, {s1196_wire_54_0, s1196_wire_54_1, s1196_wire_54_2, s1196_wire_54_3, s1196_wire_54_4, s1196_wire_54_5, s1196_wire_54_6, s1196_wire_54_7, s1196_wire_54_8, s1196_wire_54_9, s1196_wire_54_10, s1196_wire_54_11, s1196_wire_54_12, s1196_wire_54_13, s1196_wire_54_14});
fanout_n #(7, 0, 0) FANOUT_19 (s1196_wire_71, {s1196_wire_71_0, s1196_wire_71_1, s1196_wire_71_2, s1196_wire_71_3, s1196_wire_71_4, s1196_wire_71_5, s1196_wire_71_6});
fanout_n #(2, 0, 0) FANOUT_20 (s1196_wire_159, {s1196_wire_159_0, s1196_wire_159_1});
fanout_n #(2, 0, 0) FANOUT_21 (s1196_wire_168, {s1196_wire_168_0, s1196_wire_168_1});
fanout_n #(15, 0, 0) FANOUT_22 (s1196_wire_178, {s1196_wire_178_0, s1196_wire_178_1, s1196_wire_178_2, s1196_wire_178_3, s1196_wire_178_4, s1196_wire_178_5, s1196_wire_178_6, s1196_wire_178_7, s1196_wire_178_8, s1196_wire_178_9, s1196_wire_178_10, s1196_wire_178_11, s1196_wire_178_12, s1196_wire_178_13, s1196_wire_178_14});
fanout_n #(8, 0, 0) FANOUT_23 (s1196_wire_179, {s1196_wire_179_0, s1196_wire_179_1, s1196_wire_179_2, s1196_wire_179_3, s1196_wire_179_4, s1196_wire_179_5, s1196_wire_179_6, s1196_wire_179_7});
fanout_n #(3, 0, 0) FANOUT_24 (s1196_wire_191, {s1196_wire_191_0, s1196_wire_191_1, s1196_wire_191_2});
fanout_n #(4, 0, 0) FANOUT_25 (s1196_wire_138, {s1196_wire_138_0, s1196_wire_138_1, s1196_wire_138_2, s1196_wire_138_3});
fanout_n #(4, 0, 0) FANOUT_26 (s1196_wire_195, {s1196_wire_195_0, s1196_wire_195_1, s1196_wire_195_2, s1196_wire_195_3});
fanout_n #(3, 0, 0) FANOUT_27 (s1196_wire_209, {s1196_wire_209_0, s1196_wire_209_1, s1196_wire_209_2});
fanout_n #(12, 0, 0) FANOUT_28 (s1196_wire_52, {s1196_wire_52_0, s1196_wire_52_1, s1196_wire_52_2, s1196_wire_52_3, s1196_wire_52_4, s1196_wire_52_5, s1196_wire_52_6, s1196_wire_52_7, s1196_wire_52_8, s1196_wire_52_9, s1196_wire_52_10, s1196_wire_52_11});
fanout_n #(2, 0, 0) FANOUT_29 (s1196_wire_230, {s1196_wire_230_0, s1196_wire_230_1});
fanout_n #(2, 0, 0) FANOUT_30 (s1196_wire_185, {s1196_wire_185_0, s1196_wire_185_1});
fanout_n #(2, 0, 0) FANOUT_31 (s1196_wire_237, {s1196_wire_237_0, s1196_wire_237_1});
fanout_n #(6, 0, 0) FANOUT_32 (s1196_wire_244, {s1196_wire_244_0, s1196_wire_244_1, s1196_wire_244_2, s1196_wire_244_3, s1196_wire_244_4, s1196_wire_244_5});
fanout_n #(2, 0, 0) FANOUT_33 (s1196_wire_243, {s1196_wire_243_0, s1196_wire_243_1});
fanout_n #(2, 0, 0) FANOUT_34 (s1196_wire_212, {s1196_wire_212_0, s1196_wire_212_1});
fanout_n #(2, 0, 0) FANOUT_35 (s1196_wire_217, {s1196_wire_217_0, s1196_wire_217_1});
fanout_n #(2, 0, 0) FANOUT_36 (s1196_wire_234, {s1196_wire_234_0, s1196_wire_234_1});
fanout_n #(2, 0, 0) FANOUT_37 (s1196_wire_238, {s1196_wire_238_0, s1196_wire_238_1});
fanout_n #(4, 0, 0) FANOUT_38 (s1196_wire_269, {s1196_wire_269_0, s1196_wire_269_1, s1196_wire_269_2, s1196_wire_269_3});
fanout_n #(2, 0, 0) FANOUT_39 (s1196_wire_270, {s1196_wire_270_0, s1196_wire_270_1});
fanout_n #(2, 0, 0) FANOUT_40 (s1196_wire_277, {s1196_wire_277_0, s1196_wire_277_1});
fanout_n #(2, 0, 0) FANOUT_41 (s1196_wire_285, {s1196_wire_285_0, s1196_wire_285_1});
fanout_n #(4, 0, 0) FANOUT_42 (s1196_wire_293, {s1196_wire_293_0, s1196_wire_293_1, s1196_wire_293_2, s1196_wire_293_3});
fanout_n #(33, 0, 0) FANOUT_43 (s1196_wire_158, {s1196_wire_158_0, s1196_wire_158_1, s1196_wire_158_2, s1196_wire_158_3, s1196_wire_158_4, s1196_wire_158_5, s1196_wire_158_6, s1196_wire_158_7, s1196_wire_158_8, s1196_wire_158_9, s1196_wire_158_10, s1196_wire_158_11, s1196_wire_158_12, s1196_wire_158_13, s1196_wire_158_14, s1196_wire_158_15, s1196_wire_158_16, s1196_wire_158_17, s1196_wire_158_18, s1196_wire_158_19, s1196_wire_158_20, s1196_wire_158_21, s1196_wire_158_22, s1196_wire_158_23, s1196_wire_158_24, s1196_wire_158_25, s1196_wire_158_26, s1196_wire_158_27, s1196_wire_158_28, s1196_wire_158_29, s1196_wire_158_30, s1196_wire_158_31, s1196_wire_158_32});
fanout_n #(3, 0, 0) FANOUT_44 (s1196_wire_313, {s1196_wire_313_0, s1196_wire_313_1, s1196_wire_313_2});
fanout_n #(2, 0, 0) FANOUT_45 (s1196_wire_314, {s1196_wire_314_0, s1196_wire_314_1});
fanout_n #(4, 0, 0) FANOUT_46 (s1196_wire_80, {s1196_wire_80_0, s1196_wire_80_1, s1196_wire_80_2, s1196_wire_80_3});
fanout_n #(3, 0, 0) FANOUT_47 (s1196_wire_328, {s1196_wire_328_0, s1196_wire_328_1, s1196_wire_328_2});
fanout_n #(3, 0, 0) FANOUT_48 (s1196_wire_334, {s1196_wire_334_0, s1196_wire_334_1, s1196_wire_334_2});
fanout_n #(2, 0, 0) FANOUT_49 (s1196_wire_70, {s1196_wire_70_0, s1196_wire_70_1});
fanout_n #(3, 0, 0) FANOUT_50 (s1196_wire_72, {s1196_wire_72_0, s1196_wire_72_1, s1196_wire_72_2});
fanout_n #(2, 0, 0) FANOUT_51 (s1196_wire_279, {s1196_wire_279_0, s1196_wire_279_1});
fanout_n #(4, 0, 0) FANOUT_52 (s1196_wire_251, {s1196_wire_251_0, s1196_wire_251_1, s1196_wire_251_2, s1196_wire_251_3});
fanout_n #(6, 0, 0) FANOUT_53 (s1196_wire_246, {s1196_wire_246_0, s1196_wire_246_1, s1196_wire_246_2, s1196_wire_246_3, s1196_wire_246_4, s1196_wire_246_5});
fanout_n #(5, 0, 0) FANOUT_54 (s1196_wire_206, {s1196_wire_206_0, s1196_wire_206_1, s1196_wire_206_2, s1196_wire_206_3, s1196_wire_206_4});
fanout_n #(41, 0, 0) FANOUT_55 (s1196_wire_63, {s1196_wire_63_0, s1196_wire_63_1, s1196_wire_63_2, s1196_wire_63_3, s1196_wire_63_4, s1196_wire_63_5, s1196_wire_63_6, s1196_wire_63_7, s1196_wire_63_8, s1196_wire_63_9, s1196_wire_63_10, s1196_wire_63_11, s1196_wire_63_12, s1196_wire_63_13, s1196_wire_63_14, s1196_wire_63_15, s1196_wire_63_16, s1196_wire_63_17, s1196_wire_63_18, s1196_wire_63_19, s1196_wire_63_20, s1196_wire_63_21, s1196_wire_63_22, s1196_wire_63_23, s1196_wire_63_24, s1196_wire_63_25, s1196_wire_63_26, s1196_wire_63_27, s1196_wire_63_28, s1196_wire_63_29, s1196_wire_63_30, s1196_wire_63_31, s1196_wire_63_32, s1196_wire_63_33, s1196_wire_63_34, s1196_wire_63_35, s1196_wire_63_36, s1196_wire_63_37, s1196_wire_63_38, s1196_wire_63_39, s1196_wire_63_40});
fanout_n #(2, 0, 0) FANOUT_56 (s1196_wire_379, {s1196_wire_379_0, s1196_wire_379_1});
fanout_n #(2, 0, 0) FANOUT_57 (s1196_wire_426, {s1196_wire_426_0, s1196_wire_426_1});
fanout_n #(6, 0, 0) FANOUT_58 (s1196_wire_120, {s1196_wire_120_0, s1196_wire_120_1, s1196_wire_120_2, s1196_wire_120_3, s1196_wire_120_4, s1196_wire_120_5});
fanout_n #(37, 0, 0) FANOUT_59 (s1196_wire_59, {s1196_wire_59_0, s1196_wire_59_1, s1196_wire_59_2, s1196_wire_59_3, s1196_wire_59_4, s1196_wire_59_5, s1196_wire_59_6, s1196_wire_59_7, s1196_wire_59_8, s1196_wire_59_9, s1196_wire_59_10, s1196_wire_59_11, s1196_wire_59_12, s1196_wire_59_13, s1196_wire_59_14, s1196_wire_59_15, s1196_wire_59_16, s1196_wire_59_17, s1196_wire_59_18, s1196_wire_59_19, s1196_wire_59_20, s1196_wire_59_21, s1196_wire_59_22, s1196_wire_59_23, s1196_wire_59_24, s1196_wire_59_25, s1196_wire_59_26, s1196_wire_59_27, s1196_wire_59_28, s1196_wire_59_29, s1196_wire_59_30, s1196_wire_59_31, s1196_wire_59_32, s1196_wire_59_33, s1196_wire_59_34, s1196_wire_59_35, s1196_wire_59_36});
fanout_n #(4, 0, 0) FANOUT_60 (s1196_wire_260, {s1196_wire_260_0, s1196_wire_260_1, s1196_wire_260_2, s1196_wire_260_3});
fanout_n #(9, 0, 0) FANOUT_61 (s1196_wire_339, {s1196_wire_339_0, s1196_wire_339_1, s1196_wire_339_2, s1196_wire_339_3, s1196_wire_339_4, s1196_wire_339_5, s1196_wire_339_6, s1196_wire_339_7, s1196_wire_339_8});
fanout_n #(10, 0, 0) FANOUT_62 (s1196_wire_190, {s1196_wire_190_0, s1196_wire_190_1, s1196_wire_190_2, s1196_wire_190_3, s1196_wire_190_4, s1196_wire_190_5, s1196_wire_190_6, s1196_wire_190_7, s1196_wire_190_8, s1196_wire_190_9});
fanout_n #(12, 0, 0) FANOUT_63 (s1196_wire_151, {s1196_wire_151_0, s1196_wire_151_1, s1196_wire_151_2, s1196_wire_151_3, s1196_wire_151_4, s1196_wire_151_5, s1196_wire_151_6, s1196_wire_151_7, s1196_wire_151_8, s1196_wire_151_9, s1196_wire_151_10, s1196_wire_151_11});
fanout_n #(33, 0, 0) FANOUT_64 (s1196_wire_161, {s1196_wire_161_0, s1196_wire_161_1, s1196_wire_161_2, s1196_wire_161_3, s1196_wire_161_4, s1196_wire_161_5, s1196_wire_161_6, s1196_wire_161_7, s1196_wire_161_8, s1196_wire_161_9, s1196_wire_161_10, s1196_wire_161_11, s1196_wire_161_12, s1196_wire_161_13, s1196_wire_161_14, s1196_wire_161_15, s1196_wire_161_16, s1196_wire_161_17, s1196_wire_161_18, s1196_wire_161_19, s1196_wire_161_20, s1196_wire_161_21, s1196_wire_161_22, s1196_wire_161_23, s1196_wire_161_24, s1196_wire_161_25, s1196_wire_161_26, s1196_wire_161_27, s1196_wire_161_28, s1196_wire_161_29, s1196_wire_161_30, s1196_wire_161_31, s1196_wire_161_32});
fanout_n #(3, 0, 0) FANOUT_65 (s1196_wire_380, {s1196_wire_380_0, s1196_wire_380_1, s1196_wire_380_2});
fanout_n #(2, 0, 0) FANOUT_66 (s1196_wire_255, {s1196_wire_255_0, s1196_wire_255_1});
fanout_n #(6, 0, 0) FANOUT_67 (s1196_wire_254, {s1196_wire_254_0, s1196_wire_254_1, s1196_wire_254_2, s1196_wire_254_3, s1196_wire_254_4, s1196_wire_254_5});
fanout_n #(3, 0, 0) FANOUT_68 (s1196_wire_193, {s1196_wire_193_0, s1196_wire_193_1, s1196_wire_193_2});
fanout_n #(4, 0, 0) FANOUT_69 (s1196_wire_216, {s1196_wire_216_0, s1196_wire_216_1, s1196_wire_216_2, s1196_wire_216_3});
fanout_n #(45, 0, 0) FANOUT_70 (s1196_wire_60, {s1196_wire_60_0, s1196_wire_60_1, s1196_wire_60_2, s1196_wire_60_3, s1196_wire_60_4, s1196_wire_60_5, s1196_wire_60_6, s1196_wire_60_7, s1196_wire_60_8, s1196_wire_60_9, s1196_wire_60_10, s1196_wire_60_11, s1196_wire_60_12, s1196_wire_60_13, s1196_wire_60_14, s1196_wire_60_15, s1196_wire_60_16, s1196_wire_60_17, s1196_wire_60_18, s1196_wire_60_19, s1196_wire_60_20, s1196_wire_60_21, s1196_wire_60_22, s1196_wire_60_23, s1196_wire_60_24, s1196_wire_60_25, s1196_wire_60_26, s1196_wire_60_27, s1196_wire_60_28, s1196_wire_60_29, s1196_wire_60_30, s1196_wire_60_31, s1196_wire_60_32, s1196_wire_60_33, s1196_wire_60_34, s1196_wire_60_35, s1196_wire_60_36, s1196_wire_60_37, s1196_wire_60_38, s1196_wire_60_39, s1196_wire_60_40, s1196_wire_60_41, s1196_wire_60_42, s1196_wire_60_43, s1196_wire_60_44});
fanout_n #(3, 0, 0) FANOUT_71 (s1196_wire_495, {s1196_wire_495_0, s1196_wire_495_1, s1196_wire_495_2});
fanout_n #(38, 0, 0) FANOUT_72 (s1196_wire_68, {s1196_wire_68_0, s1196_wire_68_1, s1196_wire_68_2, s1196_wire_68_3, s1196_wire_68_4, s1196_wire_68_5, s1196_wire_68_6, s1196_wire_68_7, s1196_wire_68_8, s1196_wire_68_9, s1196_wire_68_10, s1196_wire_68_11, s1196_wire_68_12, s1196_wire_68_13, s1196_wire_68_14, s1196_wire_68_15, s1196_wire_68_16, s1196_wire_68_17, s1196_wire_68_18, s1196_wire_68_19, s1196_wire_68_20, s1196_wire_68_21, s1196_wire_68_22, s1196_wire_68_23, s1196_wire_68_24, s1196_wire_68_25, s1196_wire_68_26, s1196_wire_68_27, s1196_wire_68_28, s1196_wire_68_29, s1196_wire_68_30, s1196_wire_68_31, s1196_wire_68_32, s1196_wire_68_33, s1196_wire_68_34, s1196_wire_68_35, s1196_wire_68_36, s1196_wire_68_37});
fanout_n #(41, 0, 0) FANOUT_73 (s1196_wire_91, {s1196_wire_91_0, s1196_wire_91_1, s1196_wire_91_2, s1196_wire_91_3, s1196_wire_91_4, s1196_wire_91_5, s1196_wire_91_6, s1196_wire_91_7, s1196_wire_91_8, s1196_wire_91_9, s1196_wire_91_10, s1196_wire_91_11, s1196_wire_91_12, s1196_wire_91_13, s1196_wire_91_14, s1196_wire_91_15, s1196_wire_91_16, s1196_wire_91_17, s1196_wire_91_18, s1196_wire_91_19, s1196_wire_91_20, s1196_wire_91_21, s1196_wire_91_22, s1196_wire_91_23, s1196_wire_91_24, s1196_wire_91_25, s1196_wire_91_26, s1196_wire_91_27, s1196_wire_91_28, s1196_wire_91_29, s1196_wire_91_30, s1196_wire_91_31, s1196_wire_91_32, s1196_wire_91_33, s1196_wire_91_34, s1196_wire_91_35, s1196_wire_91_36, s1196_wire_91_37, s1196_wire_91_38, s1196_wire_91_39, s1196_wire_91_40});
fanout_n #(41, 0, 0) FANOUT_74 (s1196_wire_61, {s1196_wire_61_0, s1196_wire_61_1, s1196_wire_61_2, s1196_wire_61_3, s1196_wire_61_4, s1196_wire_61_5, s1196_wire_61_6, s1196_wire_61_7, s1196_wire_61_8, s1196_wire_61_9, s1196_wire_61_10, s1196_wire_61_11, s1196_wire_61_12, s1196_wire_61_13, s1196_wire_61_14, s1196_wire_61_15, s1196_wire_61_16, s1196_wire_61_17, s1196_wire_61_18, s1196_wire_61_19, s1196_wire_61_20, s1196_wire_61_21, s1196_wire_61_22, s1196_wire_61_23, s1196_wire_61_24, s1196_wire_61_25, s1196_wire_61_26, s1196_wire_61_27, s1196_wire_61_28, s1196_wire_61_29, s1196_wire_61_30, s1196_wire_61_31, s1196_wire_61_32, s1196_wire_61_33, s1196_wire_61_34, s1196_wire_61_35, s1196_wire_61_36, s1196_wire_61_37, s1196_wire_61_38, s1196_wire_61_39, s1196_wire_61_40});


bufg #(0, 0) BUF_1 (s1196_wire_1, CK_net_0);
bufg #(0, 0) BUF_2 (s1196_wire_38, G0_net_0);
notg #(0, 0) NOT_1 (s1196_wire_39, s1196_wire_38_0);
and_n #(2, 0, 0) AND_1 (s1196_wire_40, {s1196_wire_38_1, s1196_wire_41_0});
notg #(0, 0) NOT_2 (s1196_wire_42, s1196_wire_38_2);
and_n #(2, 0, 0) AND_2 (s1196_wire_43, {s1196_wire_38_3, s1196_wire_44});
notg #(0, 0) NOT_3 (s1196_wire_45, s1196_wire_38_4);
and_n #(2, 0, 0) AND_3 (s1196_wire_46, {s1196_wire_38_5, s1196_wire_47});
notg #(0, 0) NOT_4 (s1196_wire_48, s1196_wire_38_6);
and_n #(2, 0, 0) AND_4 (s1196_wire_49, {s1196_wire_38_7, s1196_wire_50});
and_n #(2, 0, 0) AND_5 (s1196_wire_51, {s1196_wire_38_8, s1196_wire_52_0});
and_n #(4, 0, 0) AND_6 (s1196_wire_53, {s1196_wire_38_9, s1196_wire_54_0, s1196_wire_41_1, s1196_wire_3_0});
notg #(0, 0) NOT_5 (s1196_wire_55, s1196_wire_38_10);
notg #(0, 0) NOT_6 (s1196_wire_56, s1196_wire_38_11);
and_n #(5, 0, 0) AND_7 (s1196_wire_57, {s1196_wire_38_12, s1196_wire_58_0, s1196_wire_59_0, s1196_wire_60_0, s1196_wire_61_0});
bufg #(0, 0) BUF_3 (s1196_wire_41, G1_net_0);
bufg #(0, 0) BUF_4 (s1196_wire_58, G10_net_0);
and_n #(2, 0, 0) AND_8 (s1196_wire_62, {s1196_wire_63_0, s1196_wire_59_1});
and_n #(2, 0, 0) AND_9 (s1196_wire_64, {s1196_wire_65, s1196_wire_66});
notg #(0, 0) NOT_7 (s1196_wire_67, s1196_wire_64_0);
and_n #(2, 0, 0) AND_10 (s1196_wire_65, {s1196_wire_35_0, s1196_wire_68_0});
notg #(0, 0) NOT_8 (s1196_wire_66, s1196_wire_60_1);
nor_n #(3, 0, 0) NOR_1 (s1196_wire_69, {s1196_wire_70_0, s1196_wire_71_0, s1196_wire_72_0});
notg #(0, 0) NOT_9 (s1196_wire_73, s1196_wire_69);
and_n #(2, 0, 0) AND_11 (s1196_wire_74, {s1196_wire_58_1, s1196_wire_75});
notg #(0, 0) NOT_10 (s1196_wire_76, s1196_wire_58_2);
notg #(0, 0) NOT_11 (s1196_wire_77, s1196_wire_58_3);
and_n #(4, 0, 0) AND_12 (s1196_wire_78, {s1196_wire_58_4, s1196_wire_79_0, s1196_wire_80_0, s1196_wire_61_1});
or_n #(2, 0, 0) OR_1 (s1196_wire_34, {s1196_wire_58_5, s1196_wire_81});
and_n #(2, 0, 0) AND_13 (s1196_wire_82, {s1196_wire_58_6, s1196_wire_83});
and_n #(2, 0, 0) AND_14 (s1196_wire_84, {s1196_wire_58_7, s1196_wire_85});
or_n #(2, 0, 0) OR_2 (s1196_wire_86, {s1196_wire_58_8, s1196_wire_87});
notg #(0, 0) NOT_12 (s1196_wire_88, s1196_wire_58_9);
notg #(0, 0) NOT_13 (s1196_wire_89, s1196_wire_58_10);
and_n #(5, 0, 0) AND_15 (s1196_wire_90, {s1196_wire_58_11, s1196_wire_79_1, s1196_wire_68_1, s1196_wire_91_0, s1196_wire_61_2});
and_n #(2, 0, 0) AND_16 (s1196_wire_92, {s1196_wire_58_12, s1196_wire_91_1});
and_n #(4, 0, 0) AND_17 (s1196_wire_93, {s1196_wire_58_13, s1196_wire_79_2, s1196_wire_68_2, s1196_wire_91_2});
and_n #(2, 0, 0) AND_18 (s1196_wire_94, {s1196_wire_58_14, s1196_wire_68_3});
and_n #(2, 0, 0) AND_19 (s1196_wire_95, {s1196_wire_58_15, s1196_wire_96});
and_n #(2, 0, 0) AND_20 (s1196_wire_97, {s1196_wire_58_16, s1196_wire_98});
and_n #(2, 0, 0) AND_21 (s1196_wire_99, {s1196_wire_58_17, s1196_wire_100});
and_n #(2, 0, 0) AND_22 (s1196_wire_101, {s1196_wire_58_18, s1196_wire_102});
notg #(0, 0) NOT_14 (s1196_wire_103, s1196_wire_58_19);
and_n #(2, 0, 0) AND_23 (s1196_wire_104, {s1196_wire_58_20, s1196_wire_52_1});
and_n #(2, 0, 0) AND_24 (s1196_wire_105, {s1196_wire_58_21, s1196_wire_91_3});
notg #(0, 0) NOT_15 (s1196_wire_106, s1196_wire_58_22);
and_n #(2, 0, 0) AND_25 (s1196_wire_107, {s1196_wire_58_23, s1196_wire_61_3});
notg #(0, 0) NOT_16 (s1196_wire_108, s1196_wire_58_24);
and_n #(2, 0, 0) AND_26 (s1196_wire_109, {s1196_wire_58_25, s1196_wire_61_4});
and_n #(4, 0, 0) AND_27 (s1196_wire_110, {s1196_wire_58_26, s1196_wire_79_3, s1196_wire_68_4, s1196_wire_91_4});
notg #(0, 0) NOT_17 (s1196_wire_111, s1196_wire_58_27);
or_n #(2, 0, 0) OR_3 (s1196_wire_112, {s1196_wire_58_28, s1196_wire_113});
notg #(0, 0) NOT_18 (s1196_wire_114, s1196_wire_58_29);
and_n #(5, 0, 0) AND_28 (s1196_wire_115, {s1196_wire_58_30, s1196_wire_79_4, s1196_wire_68_5, s1196_wire_91_5, s1196_wire_61_5});
notg #(0, 0) NOT_19 (s1196_wire_116, s1196_wire_58_31);
and_n #(2, 0, 0) AND_29 (s1196_wire_117, {s1196_wire_58_32, s1196_wire_60_2});
and_n #(4, 0, 0) AND_30 (s1196_wire_118, {s1196_wire_58_33, s1196_wire_79_5, s1196_wire_91_6, s1196_wire_61_6});
bufg #(0, 0) BUF_5 (s1196_wire_79, G11_net_0);
and_n #(2, 0, 0) AND_31 (s1196_wire_119, {s1196_wire_79_6, s1196_wire_120_0});
and_n #(2, 0, 0) AND_32 (s1196_wire_81, {s1196_wire_79_7, s1196_wire_121});
and_n #(2, 0, 0) AND_33 (s1196_wire_122, {s1196_wire_79_8, s1196_wire_123});
and_n #(2, 0, 0) AND_34 (s1196_wire_124, {s1196_wire_79_9, s1196_wire_27_0});
notg #(0, 0) NOT_20 (s1196_wire_125, s1196_wire_79_10);
and_n #(2, 0, 0) AND_35 (s1196_wire_126, {s1196_wire_79_11, s1196_wire_89});
and_n #(2, 0, 0) AND_36 (s1196_wire_127, {s1196_wire_79_12, s1196_wire_80_1});
and_n #(2, 0, 0) AND_37 (s1196_wire_128, {s1196_wire_79_13, s1196_wire_129});
and_n #(2, 0, 0) AND_38 (s1196_wire_130, {s1196_wire_79_14, s1196_wire_131});
and_n #(4, 0, 0) AND_39 (s1196_wire_132, {s1196_wire_79_15, s1196_wire_52_2, s1196_wire_60_3, s1196_wire_91_7});
or_n #(2, 0, 0) OR_4 (s1196_wire_133, {s1196_wire_79_16, s1196_wire_106});
and_n #(2, 0, 0) AND_40 (s1196_wire_134, {s1196_wire_79_17, s1196_wire_25});
and_n #(2, 0, 0) AND_41 (s1196_wire_135, {s1196_wire_79_18, s1196_wire_136});
and_n #(4, 0, 0) AND_42 (s1196_wire_137, {s1196_wire_79_19, s1196_wire_138_0, s1196_wire_74_0, s1196_wire_61_7});
and_n #(2, 0, 0) AND_43 (s1196_wire_139, {s1196_wire_79_20, s1196_wire_140});
and_n #(3, 0, 0) AND_44 (s1196_wire_141, {s1196_wire_79_21, s1196_wire_142, s1196_wire_143});
and_n #(2, 0, 0) AND_45 (s1196_wire_144, {s1196_wire_79_22, s1196_wire_145});
and_n #(2, 0, 0) AND_46 (s1196_wire_146, {s1196_wire_79_23, s1196_wire_41_2});
bufg #(0, 0) BUF_6 (s1196_wire_54, G12_net_0);
and_n #(2, 0, 0) AND_47 (s1196_wire_71, {s1196_wire_147, s1196_wire_63_1});
notg #(0, 0) NOT_21 (s1196_wire_148, s1196_wire_71_1);
and_n #(2, 0, 0) AND_48 (s1196_wire_149, {s1196_wire_71_2, s1196_wire_60_4});
and_n #(2, 0, 0) AND_49 (s1196_wire_150, {s1196_wire_71_3, s1196_wire_151_0});
and_n #(2, 0, 0) AND_50 (s1196_wire_152, {s1196_wire_71_4, s1196_wire_60_5});
and_n #(2, 0, 0) AND_51 (s1196_wire_153, {s1196_wire_71_5, s1196_wire_154});
or_n #(3, 0, 0) OR_5 (s1196_wire_155, {s1196_wire_71_6, s1196_wire_156, s1196_wire_157});
notg #(0, 0) NOT_22 (s1196_wire_147, s1196_wire_158_0);
and_n #(2, 0, 0) AND_52 (s1196_wire_159, {s1196_wire_160, s1196_wire_161_0});
or_n #(2, 0, 0) OR_6 (s1196_wire_162, {s1196_wire_159_0, s1196_wire_151_1});
notg #(0, 0) NOT_23 (s1196_wire_160, s1196_wire_59_2);
notg #(0, 0) NOT_24 (s1196_wire_163, s1196_wire_54_1);
notg #(0, 0) NOT_25 (s1196_wire_164, s1196_wire_54_2);
notg #(0, 0) NOT_26 (s1196_wire_165, s1196_wire_54_3);
notg #(0, 0) NOT_27 (s1196_wire_166, s1196_wire_54_4);
and_n #(2, 0, 0) AND_53 (s1196_wire_167, {s1196_wire_54_5, s1196_wire_3_1});
and_n #(3, 0, 0) AND_54 (s1196_wire_168, {s1196_wire_54_6, s1196_wire_169, s1196_wire_170});
notg #(0, 0) NOT_28 (s1196_wire_171, s1196_wire_54_7);
notg #(0, 0) NOT_29 (s1196_wire_172, s1196_wire_54_8);
notg #(0, 0) NOT_30 (s1196_wire_173, s1196_wire_54_9);
and_n #(2, 0, 0) AND_55 (s1196_wire_174, {s1196_wire_54_10, s1196_wire_161_1});
notg #(0, 0) NOT_31 (s1196_wire_175, s1196_wire_54_11);
notg #(0, 0) NOT_32 (s1196_wire_176, s1196_wire_54_12);
notg #(0, 0) NOT_33 (s1196_wire_177, s1196_wire_54_13);
bufg #(0, 0) BUF_7 (s1196_wire_178, G13_net_0);
and_n #(2, 0, 0) AND_56 (s1196_wire_179, {s1196_wire_63_2, s1196_wire_161_2});
notg #(0, 0) NOT_34 (s1196_wire_180, s1196_wire_179_0);
and_n #(2, 0, 0) AND_57 (s1196_wire_181, {s1196_wire_179_1, s1196_wire_41_3});
xor_n #(2, 0, 0) XOR_1 (s1196_wire_16, {s1196_wire_179_2, s1196_wire_158_1});
or_n #(2, 0, 0) OR_7 (s1196_wire_182, {s1196_wire_179_3, s1196_wire_183});
and_n #(2, 0, 0) AND_58 (s1196_wire_184, {s1196_wire_179_4, s1196_wire_185_0});
xor_n #(2, 0, 0) XOR_2 (s1196_wire_186, {s1196_wire_179_5, s1196_wire_59_3});
or_n #(2, 0, 0) OR_8 (s1196_wire_187, {s1196_wire_179_6, s1196_wire_188});
and_n #(3, 0, 0) AND_59 (s1196_wire_189, {s1196_wire_179_7, s1196_wire_90_0, s1196_wire_190_0});
and_n #(2, 0, 0) AND_60 (s1196_wire_191, {s1196_wire_178_0, s1196_wire_163});
notg #(0, 0) NOT_35 (s1196_wire_192, s1196_wire_178_1);
and_n #(2, 0, 0) AND_61 (s1196_wire_138, {s1196_wire_178_2, s1196_wire_193_0});
notg #(0, 0) NOT_36 (s1196_wire_194, s1196_wire_178_3);
or_n #(2, 0, 0) OR_9 (s1196_wire_195, {s1196_wire_178_4, s1196_wire_196});
notg #(0, 0) NOT_37 (s1196_wire_197, s1196_wire_178_5);
and_n #(2, 0, 0) AND_62 (s1196_wire_198, {s1196_wire_178_6, s1196_wire_199});
notg #(0, 0) NOT_38 (s1196_wire_169, s1196_wire_178_7);
notg #(0, 0) NOT_39 (s1196_wire_200, s1196_wire_178_8);
notg #(0, 0) NOT_40 (s1196_wire_201, s1196_wire_178_9);
and_n #(3, 0, 0) AND_63 (s1196_wire_202, {s1196_wire_178_10, s1196_wire_203, s1196_wire_204});
and_n #(2, 0, 0) AND_64 (s1196_wire_205, {s1196_wire_178_11, s1196_wire_206_0});
notg #(0, 0) NOT_41 (s1196_wire_207, s1196_wire_178_12);
and_n #(2, 0, 0) AND_65 (s1196_wire_208, {s1196_wire_178_13, s1196_wire_41_4});
or_n #(2, 0, 0) OR_10 (s1196_wire_209, {s1196_wire_210, s1196_wire_138_1});
and_n #(2, 0, 0) AND_66 (s1196_wire_211, {s1196_wire_209_0, s1196_wire_212_0});
and_n #(2, 0, 0) AND_67 (s1196_wire_213, {s1196_wire_209_1, s1196_wire_91_8});
and_n #(2, 0, 0) AND_68 (s1196_wire_214, {s1196_wire_209_2, s1196_wire_60_6});
notg #(0, 0) NOT_42 (s1196_wire_215, s1196_wire_195_0);
and_n #(2, 0, 0) AND_69 (s1196_wire_210, {s1196_wire_215, s1196_wire_216_0});
and_n #(2, 0, 0) AND_70 (s1196_wire_52, {s1196_wire_194, s1196_wire_217_0});
and_n #(2, 0, 0) AND_71 (s1196_wire_218, {s1196_wire_52_3, s1196_wire_219});
and_n #(2, 0, 0) AND_72 (s1196_wire_220, {s1196_wire_52_4, s1196_wire_221});
and_n #(2, 0, 0) AND_73 (s1196_wire_222, {s1196_wire_52_5, s1196_wire_223});
and_n #(2, 0, 0) AND_74 (s1196_wire_224, {s1196_wire_52_6, s1196_wire_158_2});
and_n #(2, 0, 0) AND_75 (s1196_wire_225, {s1196_wire_52_7, s1196_wire_68_6});
and_n #(2, 0, 0) AND_76 (s1196_wire_226, {s1196_wire_52_8, s1196_wire_60_7});
and_n #(2, 0, 0) AND_77 (s1196_wire_227, {s1196_wire_52_9, s1196_wire_60_8});
and_n #(2, 0, 0) AND_78 (s1196_wire_228, {s1196_wire_52_10, s1196_wire_60_9});
and_n #(2, 0, 0) AND_79 (s1196_wire_229, {s1196_wire_52_11, s1196_wire_60_10});
and_n #(2, 0, 0) AND_80 (s1196_wire_230, {s1196_wire_191_0, s1196_wire_231});
and_n #(2, 0, 0) AND_81 (s1196_wire_232, {s1196_wire_191_1, s1196_wire_206_1});
and_n #(2, 0, 0) AND_82 (s1196_wire_233, {s1196_wire_191_2, s1196_wire_158_3});
and_n #(2, 0, 0) AND_83 (s1196_wire_185, {s1196_wire_192, s1196_wire_234_0});
and_n #(2, 0, 0) AND_84 (s1196_wire_235, {s1196_wire_185_1, s1196_wire_236});
and_n #(2, 0, 0) AND_85 (s1196_wire_237, {s1196_wire_238_0, s1196_wire_181});
and_n #(3, 0, 0) AND_86 (s1196_wire_239, {s1196_wire_237_0, s1196_wire_21_0, s1196_wire_19_0});
and_n #(2, 0, 0) AND_87 (s1196_wire_240, {s1196_wire_237_1, s1196_wire_241});
and_n #(2, 0, 0) AND_88 (s1196_wire_18, {s1196_wire_242, s1196_wire_243_0});
nor_n #(2, 0, 0) NOR_2 (s1196_wire_242, {s1196_wire_59_4, s1196_wire_38_13});
and_n #(2, 0, 0) AND_89 (s1196_wire_244, {s1196_wire_243_1, s1196_wire_245});
and_n #(2, 0, 0) AND_90 (s1196_wire_243, {s1196_wire_77, s1196_wire_68_7});
nor_n #(2, 0, 0) NOR_3 (s1196_wire_212, {s1196_wire_246_0, s1196_wire_59_5});
or_n #(2, 0, 0) OR_11 (s1196_wire_247, {s1196_wire_212_1, s1196_wire_248});
and_n #(2, 0, 0) AND_91 (s1196_wire_217, {s1196_wire_167, s1196_wire_249});
and_n #(2, 0, 0) AND_92 (s1196_wire_250, {s1196_wire_217_1, s1196_wire_41_5});
notg #(0, 0) NOT_43 (s1196_wire_249, s1196_wire_251_0);
and_n #(3, 0, 0) AND_93 (s1196_wire_234, {s1196_wire_252, s1196_wire_164, s1196_wire_31_0});
and_n #(2, 0, 0) AND_94 (s1196_wire_253, {s1196_wire_234_1, s1196_wire_158_4});
notg #(0, 0) NOT_44 (s1196_wire_252, s1196_wire_254_0);
and_n #(2, 0, 0) AND_95 (s1196_wire_238, {s1196_wire_168_0, s1196_wire_255_0});
and_n #(2, 0, 0) AND_96 (s1196_wire_256, {s1196_wire_168_1, s1196_wire_257});
notg #(0, 0) NOT_45 (s1196_wire_258, s1196_wire_3_2);
or_n #(2, 0, 0) OR_12 (s1196_wire_170, {s1196_wire_258, s1196_wire_251_1});
or_n #(2, 0, 0) OR_13 (s1196_wire_259, {s1196_wire_238_1, s1196_wire_260_0});
and_n #(2, 0, 0) AND_97 (s1196_wire_261, {s1196_wire_230_0, s1196_wire_262});
and_n #(2, 0, 0) AND_98 (s1196_wire_263, {s1196_wire_230_1, s1196_wire_193_1});
notg #(0, 0) NOT_46 (s1196_wire_231, s1196_wire_206_2);
notg #(0, 0) NOT_47 (s1196_wire_264, s1196_wire_195_1);
notg #(0, 0) NOT_48 (s1196_wire_265, s1196_wire_195_2);
notg #(0, 0) NOT_49 (s1196_wire_266, s1196_wire_254_1);
and_n #(2, 0, 0) AND_99 (s1196_wire_196, {s1196_wire_266, s1196_wire_31_1});
and_n #(2, 0, 0) AND_100 (s1196_wire_267, {s1196_wire_138_2, s1196_wire_151_2});
and_n #(2, 0, 0) AND_101 (s1196_wire_268, {s1196_wire_138_3, s1196_wire_120_1});
nor_n #(2, 0, 0) NOR_4 (s1196_wire_269, {s1196_wire_79_24, s1196_wire_68_8});
and_n #(2, 0, 0) AND_102 (s1196_wire_270, {s1196_wire_269_0, s1196_wire_271});
and_n #(3, 0, 0) AND_103 (s1196_wire_272, {s1196_wire_269_1, s1196_wire_111, s1196_wire_273});
and_n #(2, 0, 0) AND_104 (s1196_wire_274, {s1196_wire_269_2, s1196_wire_61_8});
and_n #(3, 0, 0) AND_105 (s1196_wire_275, {s1196_wire_269_3, s1196_wire_114, s1196_wire_276});
and_n #(2, 0, 0) AND_106 (s1196_wire_277, {s1196_wire_278, s1196_wire_279_0});
and_n #(3, 0, 0) AND_107 (s1196_wire_280, {s1196_wire_277_0, s1196_wire_281, s1196_wire_282});
and_n #(3, 0, 0) AND_108 (s1196_wire_283, {s1196_wire_277_1, s1196_wire_67, s1196_wire_284});
notg #(0, 0) NOT_50 (s1196_wire_278, s1196_wire_61_9);
nor_n #(2, 0, 0) NOR_5 (s1196_wire_285, {s1196_wire_35_1, s1196_wire_60_11});
and_n #(2, 0, 0) AND_109 (s1196_wire_286, {s1196_wire_285_0, s1196_wire_88});
or_n #(2, 0, 0) OR_14 (s1196_wire_287, {s1196_wire_285_1, s1196_wire_288});
and_n #(2, 0, 0) AND_110 (s1196_wire_289, {s1196_wire_119, s1196_wire_290});
and_n #(2, 0, 0) AND_111 (s1196_wire_291, {s1196_wire_289, s1196_wire_292});
notg #(0, 0) NOT_51 (s1196_wire_290, s1196_wire_161_3);
and_n #(2, 0, 0) AND_112 (s1196_wire_293, {s1196_wire_41_6, s1196_wire_59_6});
notg #(0, 0) NOT_52 (s1196_wire_294, s1196_wire_41_7);
and_n #(2, 0, 0) AND_113 (s1196_wire_295, {s1196_wire_41_8, s1196_wire_296});
notg #(0, 0) NOT_53 (s1196_wire_297, s1196_wire_41_9);
notg #(0, 0) NOT_54 (s1196_wire_298, s1196_wire_41_10);
and_n #(2, 0, 0) AND_114 (s1196_wire_299, {s1196_wire_41_11, s1196_wire_158_5});
and_n #(2, 0, 0) AND_115 (s1196_wire_300, {s1196_wire_41_12, s1196_wire_301});
notg #(0, 0) NOT_55 (s1196_wire_302, s1196_wire_41_13);
and_n #(2, 0, 0) AND_116 (s1196_wire_303, {s1196_wire_41_14, s1196_wire_304});
notg #(0, 0) NOT_56 (s1196_wire_305, s1196_wire_41_15);
and_n #(2, 0, 0) AND_117 (s1196_wire_306, {s1196_wire_41_16, s1196_wire_307});
and_n #(2, 0, 0) AND_118 (s1196_wire_308, {s1196_wire_41_17, s1196_wire_309});
notg #(0, 0) NOT_57 (s1196_wire_310, s1196_wire_41_18);
and_n #(2, 0, 0) AND_119 (s1196_wire_311, {s1196_wire_41_19, s1196_wire_60_12});
and_n #(4, 0, 0) AND_120 (s1196_wire_312, {s1196_wire_41_20, s1196_wire_161_4, s1196_wire_60_13, s1196_wire_61_10});
bufg #(0, 0) BUF_8 (s1196_wire_158, G2_net_0);
nor_n #(2, 0, 0) NOR_6 (s1196_wire_313, {s1196_wire_59_7, s1196_wire_60_14});
and_n #(2, 0, 0) AND_121 (s1196_wire_314, {s1196_wire_313_0, s1196_wire_315});
or_n #(2, 0, 0) OR_15 (s1196_wire_316, {s1196_wire_313_1, s1196_wire_317});
and_n #(2, 0, 0) AND_122 (s1196_wire_318, {s1196_wire_313_2, s1196_wire_319});
and_n #(2, 0, 0) AND_123 (s1196_wire_80, {s1196_wire_190_1, s1196_wire_161_5});
and_n #(3, 0, 0) AND_124 (s1196_wire_320, {s1196_wire_80_2, s1196_wire_321, s1196_wire_322});
and_n #(2, 0, 0) AND_125 (s1196_wire_323, {s1196_wire_80_3, s1196_wire_244_0});
and_n #(2, 0, 0) AND_126 (s1196_wire_324, {s1196_wire_74_1, s1196_wire_61_11});
and_n #(3, 0, 0) AND_127 (s1196_wire_325, {s1196_wire_74_2, s1196_wire_120_2, s1196_wire_61_12});
or_n #(2, 0, 0) OR_16 (s1196_wire_326, {s1196_wire_74_3, s1196_wire_327});
notg #(0, 0) NOT_58 (s1196_wire_75, s1196_wire_91_9);
nor_n #(2, 0, 0) NOR_7 (s1196_wire_328, {s1196_wire_91_10, s1196_wire_68_9});
notg #(0, 0) NOT_59 (s1196_wire_329, s1196_wire_328_0);
and_n #(2, 0, 0) AND_128 (s1196_wire_330, {s1196_wire_328_1, s1196_wire_331});
and_n #(2, 0, 0) AND_129 (s1196_wire_288, {s1196_wire_328_2, s1196_wire_332});
and_n #(2, 0, 0) AND_130 (s1196_wire_333, {s1196_wire_314_0, s1196_wire_279_1});
notg #(0, 0) NOT_60 (s1196_wire_315, s1196_wire_161_6);
and_n #(2, 0, 0) AND_131 (s1196_wire_334, {s1196_wire_294, s1196_wire_158_6});
notg #(0, 0) NOT_61 (s1196_wire_335, s1196_wire_334_0);
notg #(0, 0) NOT_62 (s1196_wire_336, s1196_wire_334_1);
and_n #(2, 0, 0) AND_132 (s1196_wire_337, {s1196_wire_334_2, s1196_wire_63_3});
and_n #(4, 0, 0) AND_133 (s1196_wire_338, {s1196_wire_270_0, s1196_wire_339_0, s1196_wire_190_2, s1196_wire_161_7});
and_n #(3, 0, 0) AND_134 (s1196_wire_248, {s1196_wire_270_1, s1196_wire_339_1, s1196_wire_161_8});
notg #(0, 0) NOT_63 (s1196_wire_271, s1196_wire_91_11);
and_n #(3, 0, 0) AND_135 (s1196_wire_340, {s1196_wire_244_1, s1196_wire_341, s1196_wire_342});
and_n #(2, 0, 0) AND_136 (s1196_wire_188, {s1196_wire_244_2, s1196_wire_60_15});
or_n #(2, 0, 0) OR_17 (s1196_wire_343, {s1196_wire_244_3, s1196_wire_344});
notg #(0, 0) NOT_64 (s1196_wire_245, s1196_wire_61_13);
or_n #(2, 0, 0) OR_18 (s1196_wire_331, {s1196_wire_78_0, s1196_wire_333});
and_n #(2, 0, 0) AND_137 (s1196_wire_70, {s1196_wire_345, s1196_wire_158_7});
and_n #(2, 0, 0) AND_138 (s1196_wire_346, {s1196_wire_70_1, s1196_wire_347});
notg #(0, 0) NOT_65 (s1196_wire_345, s1196_wire_63_4);
and_n #(2, 0, 0) AND_139 (s1196_wire_72, {s1196_wire_180, s1196_wire_59_8});
notg #(0, 0) NOT_66 (s1196_wire_348, s1196_wire_72_1);
notg #(0, 0) NOT_67 (s1196_wire_349, s1196_wire_72_2);
nor_n #(2, 0, 0) NOR_8 (s1196_wire_279, {s1196_wire_79_25, s1196_wire_58_34});
or_n #(3, 0, 0) OR_19 (s1196_wire_251, {s1196_wire_350, s1196_wire_144, s1196_wire_351});
notg #(0, 0) NOT_68 (s1196_wire_332, s1196_wire_61_14);
notg #(0, 0) NOT_69 (s1196_wire_352, s1196_wire_33_0);
and_n #(2, 0, 0) AND_140 (s1196_wire_327, {s1196_wire_352, s1196_wire_91_12});
nand_n #(2, 0, 0) NAND_1 (s1196_wire_284, {s1196_wire_33_1, s1196_wire_91_13});
and_n #(3, 0, 0) AND_141 (s1196_wire_353, {s1196_wire_112, s1196_wire_354, s1196_wire_91_14});
nor_n #(2, 0, 0) NOR_9 (s1196_wire_354, {s1196_wire_64_1, s1196_wire_33_2});
and_n #(2, 0, 0) AND_142 (s1196_wire_355, {s1196_wire_55, s1196_wire_63_5});
or_n #(2, 0, 0) OR_20 (s1196_wire_356, {s1196_wire_355, s1196_wire_357});
nor_n #(2, 0, 0) NOR_10 (s1196_wire_357, {s1196_wire_63_6, s1196_wire_161_9});
notg #(0, 0) NOT_70 (s1196_wire_113, s1196_wire_61_15);
or_n #(2, 0, 0) OR_21 (s1196_wire_145, {s1196_wire_287, s1196_wire_353});
and_n #(2, 0, 0) AND_143 (s1196_wire_350, {s1196_wire_356, s1196_wire_358});
and_n #(2, 0, 0) AND_144 (s1196_wire_359, {s1196_wire_326, s1196_wire_274});
or_n #(2, 0, 0) OR_22 (s1196_wire_351, {s1196_wire_283, s1196_wire_359});
notg #(0, 0) NOT_71 (s1196_wire_358, s1196_wire_59_9);
notg #(0, 0) NOT_72 (s1196_wire_360, s1196_wire_295);
notg #(0, 0) NOT_73 (s1196_wire_361, s1196_wire_190_3);
and_n #(2, 0, 0) AND_145 (s1196_wire_317, {s1196_wire_361, s1196_wire_63_7});
notg #(0, 0) NOT_74 (s1196_wire_362, s1196_wire_63_8);
and_n #(2, 0, 0) AND_146 (s1196_wire_363, {s1196_wire_362, s1196_wire_151_3});
and_n #(2, 0, 0) AND_147 (s1196_wire_364, {s1196_wire_73, s1196_wire_60_16});
or_n #(3, 0, 0) OR_23 (s1196_wire_296, {s1196_wire_363, s1196_wire_364, s1196_wire_365});
and_n #(2, 0, 0) AND_148 (s1196_wire_365, {s1196_wire_316, s1196_wire_161_10});
and_n #(2, 0, 0) AND_149 (s1196_wire_366, {s1196_wire_367, s1196_wire_368});
notg #(0, 0) NOT_75 (s1196_wire_369, s1196_wire_366);
and_n #(2, 0, 0) AND_150 (s1196_wire_367, {s1196_wire_293_0, s1196_wire_158_8});
notg #(0, 0) NOT_76 (s1196_wire_368, s1196_wire_60_17);
notg #(0, 0) NOT_77 (s1196_wire_281, s1196_wire_60_18);
notg #(0, 0) NOT_78 (s1196_wire_282, s1196_wire_161_11);
notg #(0, 0) NOT_79 (s1196_wire_370, s1196_wire_293_1);
and_n #(2, 0, 0) AND_151 (s1196_wire_371, {s1196_wire_293_2, s1196_wire_63_9});
xor_n #(2, 0, 0) XOR_3 (s1196_wire_372, {s1196_wire_293_3, s1196_wire_161_12});
and_n #(2, 0, 0) AND_152 (s1196_wire_246, {s1196_wire_373, s1196_wire_374});
notg #(0, 0) NOT_80 (s1196_wire_375, s1196_wire_246_1);
notg #(0, 0) NOT_81 (s1196_wire_376, s1196_wire_246_2);
notg #(0, 0) NOT_82 (s1196_wire_377, s1196_wire_246_3);
notg #(0, 0) NOT_83 (s1196_wire_378, s1196_wire_246_4);
notg #(0, 0) NOT_84 (s1196_wire_321, s1196_wire_246_5);
nand_n #(2, 0, 0) NAND_2 (s1196_wire_374, {s1196_wire_244_4, s1196_wire_91_15});
notg #(0, 0) NOT_85 (s1196_wire_373, s1196_wire_379_0);
nor_n #(2, 0, 0) NOR_11 (s1196_wire_206, {s1196_wire_380_0, s1196_wire_254_2});
and_n #(2, 0, 0) AND_153 (s1196_wire_381, {s1196_wire_206_3, s1196_wire_372});
and_n #(2, 0, 0) AND_154 (s1196_wire_382, {s1196_wire_206_4, s1196_wire_383});
notg #(0, 0) NOT_86 (s1196_wire_44, s1196_wire_37);
and_n #(2, 0, 0) AND_155 (s1196_wire_183, {s1196_wire_158_9, s1196_wire_370});
and_n #(2, 0, 0) AND_156 (s1196_wire_384, {s1196_wire_158_10, s1196_wire_385});
and_n #(3, 0, 0) AND_157 (s1196_wire_386, {s1196_wire_158_11, s1196_wire_348, s1196_wire_387});
and_n #(2, 0, 0) AND_158 (s1196_wire_388, {s1196_wire_158_12, s1196_wire_389});
notg #(0, 0) NOT_87 (s1196_wire_390, s1196_wire_158_13);
and_n #(3, 0, 0) AND_159 (s1196_wire_391, {s1196_wire_158_14, s1196_wire_392, s1196_wire_393});
and_n #(2, 0, 0) AND_160 (s1196_wire_394, {s1196_wire_158_15, s1196_wire_59_10});
and_n #(2, 0, 0) AND_161 (s1196_wire_395, {s1196_wire_158_16, s1196_wire_396});
notg #(0, 0) NOT_88 (s1196_wire_397, s1196_wire_158_17);
and_n #(2, 0, 0) AND_162 (s1196_wire_398, {s1196_wire_158_18, s1196_wire_59_11});
and_n #(2, 0, 0) AND_163 (s1196_wire_399, {s1196_wire_158_19, s1196_wire_59_12});
notg #(0, 0) NOT_89 (s1196_wire_400, s1196_wire_158_20);
and_n #(2, 0, 0) AND_164 (s1196_wire_401, {s1196_wire_158_21, s1196_wire_402});
and_n #(2, 0, 0) AND_165 (s1196_wire_403, {s1196_wire_158_22, s1196_wire_404});
and_n #(2, 0, 0) AND_166 (s1196_wire_405, {s1196_wire_158_23, s1196_wire_31_2});
and_n #(2, 0, 0) AND_167 (s1196_wire_406, {s1196_wire_158_24, s1196_wire_151_4});
and_n #(2, 0, 0) AND_168 (s1196_wire_407, {s1196_wire_158_25, s1196_wire_63_10});
and_n #(2, 0, 0) AND_169 (s1196_wire_408, {s1196_wire_158_26, s1196_wire_409});
bufg #(0, 0) BUF_9 (s1196_wire_63, G3_net_0);
and_n #(2, 0, 0) AND_170 (s1196_wire_410, {s1196_wire_35_2, s1196_wire_68_10});
or_n #(2, 0, 0) OR_24 (s1196_wire_411, {s1196_wire_33_3, s1196_wire_412});
and_n #(2, 0, 0) AND_171 (s1196_wire_413, {s1196_wire_31_3, s1196_wire_197});
and_n #(2, 0, 0) AND_172 (s1196_wire_414, {s1196_wire_31_4, s1196_wire_17});
and_n #(2, 0, 0) AND_173 (s1196_wire_379, {s1196_wire_324, s1196_wire_415});
or_n #(2, 0, 0) OR_25 (s1196_wire_416, {s1196_wire_379_1, s1196_wire_417});
notg #(0, 0) NOT_90 (s1196_wire_415, s1196_wire_68_11);
notg #(0, 0) NOT_91 (s1196_wire_418, s1196_wire_29_0);
notg #(0, 0) NOT_92 (s1196_wire_419, s1196_wire_29_1);
and_n #(2, 0, 0) AND_174 (s1196_wire_420, {s1196_wire_27_1, s1196_wire_91_16});
and_n #(2, 0, 0) AND_175 (s1196_wire_421, {s1196_wire_27_2, s1196_wire_68_12});
and_n #(2, 0, 0) AND_176 (s1196_wire_422, {s1196_wire_27_3, s1196_wire_423});
or_n #(2, 0, 0) OR_26 (s1196_wire_424, {s1196_wire_27_4, s1196_wire_227});
or_n #(2, 0, 0) OR_27 (s1196_wire_425, {s1196_wire_27_5, s1196_wire_228});
nor_n #(2, 0, 0) NOR_12 (s1196_wire_426, {s1196_wire_339_2, s1196_wire_244_5});
notg #(0, 0) NOT_93 (s1196_wire_292, s1196_wire_426_0);
notg #(0, 0) NOT_94 (s1196_wire_427, s1196_wire_426_1);
and_n #(2, 0, 0) AND_177 (s1196_wire_428, {s1196_wire_23_0, s1196_wire_429});
and_n #(3, 0, 0) AND_178 (s1196_wire_430, {s1196_wire_23_1, s1196_wire_431, s1196_wire_432});
and_n #(4, 0, 0) AND_179 (s1196_wire_433, {s1196_wire_21_1, s1196_wire_56, s1196_wire_116, s1196_wire_434});
and_n #(2, 0, 0) AND_180 (s1196_wire_435, {s1196_wire_19_1, s1196_wire_60_19});
and_n #(2, 0, 0) AND_181 (s1196_wire_120, {s1196_wire_63_11, s1196_wire_190_4});
notg #(0, 0) NOT_95 (s1196_wire_436, s1196_wire_63_12);
notg #(0, 0) NOT_96 (s1196_wire_437, s1196_wire_63_13);
notg #(0, 0) NOT_97 (s1196_wire_438, s1196_wire_63_14);
and_n #(2, 0, 0) AND_182 (s1196_wire_439, {s1196_wire_63_15, s1196_wire_59_13});
notg #(0, 0) NOT_98 (s1196_wire_393, s1196_wire_63_16);
and_n #(3, 0, 0) AND_183 (s1196_wire_440, {s1196_wire_63_17, s1196_wire_418, s1196_wire_200});
and_n #(2, 0, 0) AND_184 (s1196_wire_441, {s1196_wire_63_18, s1196_wire_442});
notg #(0, 0) NOT_99 (s1196_wire_443, s1196_wire_63_19);
and_n #(2, 0, 0) AND_185 (s1196_wire_444, {s1196_wire_63_20, s1196_wire_445});
notg #(0, 0) NOT_100 (s1196_wire_446, s1196_wire_63_21);
and_n #(2, 0, 0) AND_186 (s1196_wire_447, {s1196_wire_63_22, s1196_wire_60_20});
notg #(0, 0) NOT_101 (s1196_wire_448, s1196_wire_63_23);
notg #(0, 0) NOT_102 (s1196_wire_449, s1196_wire_63_24);
and_n #(2, 0, 0) AND_187 (s1196_wire_450, {s1196_wire_63_25, s1196_wire_397});
and_n #(2, 0, 0) AND_188 (s1196_wire_451, {s1196_wire_63_26, s1196_wire_452});
notg #(0, 0) NOT_103 (s1196_wire_322, s1196_wire_63_27);
notg #(0, 0) NOT_104 (s1196_wire_431, s1196_wire_63_28);
and_n #(2, 0, 0) AND_189 (s1196_wire_453, {s1196_wire_63_29, s1196_wire_454});
notg #(0, 0) NOT_105 (s1196_wire_455, s1196_wire_63_30);
notg #(0, 0) NOT_106 (s1196_wire_319, s1196_wire_63_31);
notg #(0, 0) NOT_107 (s1196_wire_456, s1196_wire_63_32);
and_n #(2, 0, 0) AND_190 (s1196_wire_457, {s1196_wire_63_33, s1196_wire_419});
and_n #(4, 0, 0) AND_191 (s1196_wire_458, {s1196_wire_63_34, s1196_wire_161_13, s1196_wire_68_13, s1196_wire_91_17});
bufg #(0, 0) BUF_10 (s1196_wire_59, G4_net_0);
notg #(0, 0) NOT_108 (s1196_wire_221, s1196_wire_15);
notg #(0, 0) NOT_109 (s1196_wire_459, s1196_wire_13);
notg #(0, 0) NOT_110 (s1196_wire_219, s1196_wire_11);
notg #(0, 0) NOT_111 (s1196_wire_460, s1196_wire_9);
bufg #(0, 0) BUF_11 (G45_net_0, s1196_wire_5);
and_n #(3, 0, 0) AND_192 (s1196_wire_260, {s1196_wire_264, s1196_wire_166, s1196_wire_216_1});
and_n #(2, 0, 0) AND_193 (s1196_wire_461, {s1196_wire_260_1, s1196_wire_462});
and_n #(3, 0, 0) AND_194 (s1196_wire_463, {s1196_wire_260_2, s1196_wire_464, s1196_wire_443});
and_n #(2, 0, 0) AND_195 (s1196_wire_465, {s1196_wire_260_3, s1196_wire_466});
and_n #(2, 0, 0) AND_196 (s1196_wire_467, {s1196_wire_3_3, s1196_wire_468});
and_n #(2, 0, 0) AND_197 (s1196_wire_339, {s1196_wire_76, s1196_wire_61_16});
and_n #(2, 0, 0) AND_198 (s1196_wire_469, {s1196_wire_339_3, s1196_wire_60_21});
and_n #(2, 0, 0) AND_199 (s1196_wire_470, {s1196_wire_339_4, s1196_wire_68_14});
and_n #(2, 0, 0) AND_200 (s1196_wire_471, {s1196_wire_339_5, s1196_wire_91_18});
or_n #(2, 0, 0) OR_28 (s1196_wire_472, {s1196_wire_339_6, s1196_wire_473});
and_n #(2, 0, 0) AND_201 (s1196_wire_344, {s1196_wire_339_7, s1196_wire_474});
and_n #(2, 0, 0) AND_202 (s1196_wire_190, {s1196_wire_59_14, s1196_wire_60_22});
and_n #(2, 0, 0) AND_203 (s1196_wire_151, {s1196_wire_59_15, s1196_wire_475});
or_n #(2, 0, 0) OR_29 (s1196_wire_476, {s1196_wire_59_16, s1196_wire_477});
or_n #(2, 0, 0) OR_30 (s1196_wire_389, {s1196_wire_59_17, s1196_wire_437});
notg #(0, 0) NOT_112 (s1196_wire_478, s1196_wire_59_18);
notg #(0, 0) NOT_113 (s1196_wire_392, s1196_wire_59_19);
and_n #(2, 0, 0) AND_204 (s1196_wire_479, {s1196_wire_59_20, s1196_wire_201});
or_n #(2, 0, 0) OR_31 (s1196_wire_480, {s1196_wire_59_21, s1196_wire_449});
and_n #(2, 0, 0) AND_205 (s1196_wire_481, {s1196_wire_59_22, s1196_wire_482});
notg #(0, 0) NOT_114 (s1196_wire_156, s1196_wire_59_23);
notg #(0, 0) NOT_115 (s1196_wire_347, s1196_wire_59_24);
and_n #(2, 0, 0) AND_206 (s1196_wire_483, {s1196_wire_59_25, s1196_wire_484});
and_n #(4, 0, 0) AND_207 (s1196_wire_485, {s1196_wire_59_26, s1196_wire_60_23, s1196_wire_91_19, s1196_wire_61_17});
notg #(0, 0) NOT_116 (s1196_wire_486, s1196_wire_59_27);
notg #(0, 0) NOT_117 (s1196_wire_487, s1196_wire_59_28);
and_n #(2, 0, 0) AND_208 (s1196_wire_488, {s1196_wire_59_29, s1196_wire_489});
notg #(0, 0) NOT_118 (s1196_wire_434, s1196_wire_59_30);
bufg #(0, 0) BUF_12 (s1196_wire_161, G5_net_0);
and_n #(2, 0, 0) AND_209 (s1196_wire_36, {s1196_wire_490, s1196_wire_491});
or_n #(2, 0, 0) OR_32 (s1196_wire_490, {s1196_wire_148, s1196_wire_151_5});
nor_n #(2, 0, 0) NOR_13 (s1196_wire_492, {s1196_wire_62, s1196_wire_159_1});
or_n #(2, 0, 0) OR_33 (s1196_wire_491, {s1196_wire_336, s1196_wire_492});
notg #(0, 0) NOT_119 (s1196_wire_121, s1196_wire_61_18);
or_n #(2, 0, 0) OR_34 (s1196_wire_32, {s1196_wire_122, s1196_wire_82});
nand_n #(2, 0, 0) NAND_3 (s1196_wire_83, {s1196_wire_79_26, s1196_wire_61_19});
notg #(0, 0) NOT_120 (s1196_wire_123, s1196_wire_68_15);
or_n #(2, 0, 0) OR_35 (s1196_wire_30, {s1196_wire_153, s1196_wire_403});
notg #(0, 0) NOT_121 (s1196_wire_493, s1196_wire_120_3);
and_n #(2, 0, 0) AND_210 (s1196_wire_494, {s1196_wire_493, s1196_wire_161_14});
notg #(0, 0) NOT_122 (s1196_wire_154, s1196_wire_495_0);
or_n #(2, 0, 0) OR_36 (s1196_wire_404, {s1196_wire_494, s1196_wire_151_6});
notg #(0, 0) NOT_123 (s1196_wire_28, s1196_wire_496);
or_n #(2, 0, 0) OR_37 (s1196_wire_496, {s1196_wire_497, s1196_wire_498});
and_n #(2, 0, 0) AND_211 (s1196_wire_498, {s1196_wire_53, s1196_wire_499});
and_n #(3, 0, 0) AND_212 (s1196_wire_497, {s1196_wire_405, s1196_wire_176, s1196_wire_500});
nor_n #(2, 0, 0) NOR_14 (s1196_wire_499, {s1196_wire_59_31, s1196_wire_251_2});
notg #(0, 0) NOT_124 (s1196_wire_501, s1196_wire_254_3);
and_n #(2, 0, 0) AND_213 (s1196_wire_500, {s1196_wire_501, s1196_wire_151_7});
and_n #(3, 0, 0) AND_214 (s1196_wire_26, {s1196_wire_502, s1196_wire_165, s1196_wire_503});
notg #(0, 0) NOT_125 (s1196_wire_199, s1196_wire_380_1);
notg #(0, 0) NOT_126 (s1196_wire_502, s1196_wire_254_4);
or_n #(2, 0, 0) OR_38 (s1196_wire_503, {s1196_wire_198, s1196_wire_413});
or_n #(2, 0, 0) OR_39 (s1196_wire_24, {s1196_wire_504, s1196_wire_340});
and_n #(2, 0, 0) AND_215 (s1196_wire_504, {s1196_wire_375, s1196_wire_60_24});
notg #(0, 0) NOT_127 (s1196_wire_341, s1196_wire_60_25);
notg #(0, 0) NOT_128 (s1196_wire_342, s1196_wire_91_20);
and_n #(2, 0, 0) AND_216 (s1196_wire_22, {s1196_wire_505, s1196_wire_506});
notg #(0, 0) NOT_129 (s1196_wire_276, s1196_wire_91_21);
or_n #(2, 0, 0) OR_40 (s1196_wire_506, {s1196_wire_115, s1196_wire_275});
notg #(0, 0) NOT_130 (s1196_wire_505, s1196_wire_161_15);
xor_n #(2, 0, 0) XOR_4 (s1196_wire_20, {s1196_wire_60_26, s1196_wire_61_20});
notg #(0, 0) NOT_131 (s1196_wire_14, s1196_wire_507);
and_n #(2, 0, 0) AND_217 (s1196_wire_507, {s1196_wire_508, s1196_wire_91_22});
and_n #(2, 0, 0) AND_218 (s1196_wire_509, {s1196_wire_411, s1196_wire_60_27});
or_n #(2, 0, 0) OR_41 (s1196_wire_508, {s1196_wire_509, s1196_wire_510});
and_n #(2, 0, 0) AND_219 (s1196_wire_511, {s1196_wire_125, s1196_wire_68_16});
and_n #(2, 0, 0) AND_220 (s1196_wire_510, {s1196_wire_410, s1196_wire_512});
notg #(0, 0) NOT_132 (s1196_wire_512, s1196_wire_60_28);
or_n #(2, 0, 0) OR_42 (s1196_wire_513, {s1196_wire_126, s1196_wire_511});
and_n #(2, 0, 0) AND_221 (s1196_wire_412, {s1196_wire_513, s1196_wire_61_21});
notg #(0, 0) NOT_133 (s1196_wire_12, s1196_wire_514);
or_n #(2, 0, 0) OR_43 (s1196_wire_514, {s1196_wire_515, s1196_wire_516});
and_n #(2, 0, 0) AND_222 (s1196_wire_515, {s1196_wire_225, s1196_wire_517});
nand_n #(2, 0, 0) NAND_4 (s1196_wire_98, {s1196_wire_68_17, s1196_wire_61_22});
or_n #(2, 0, 0) OR_44 (s1196_wire_517, {s1196_wire_95, s1196_wire_469});
or_n #(2, 0, 0) OR_45 (s1196_wire_518, {s1196_wire_97, s1196_wire_470});
and_n #(2, 0, 0) AND_223 (s1196_wire_516, {s1196_wire_518, s1196_wire_420});
nand_n #(2, 0, 0) NAND_5 (s1196_wire_96, {s1196_wire_60_29, s1196_wire_61_23});
notg #(0, 0) NOT_134 (s1196_wire_10, s1196_wire_128);
nand_n #(2, 0, 0) NAND_6 (s1196_wire_519, {s1196_wire_58_35, s1196_wire_68_18});
and_n #(2, 0, 0) AND_224 (s1196_wire_520, {s1196_wire_92, s1196_wire_521});
or_n #(2, 0, 0) OR_46 (s1196_wire_522, {s1196_wire_520, s1196_wire_523});
nor_n #(2, 0, 0) NOR_15 (s1196_wire_524, {s1196_wire_339_8, s1196_wire_60_30});
or_n #(2, 0, 0) OR_47 (s1196_wire_525, {s1196_wire_524, s1196_wire_526});
nor_n #(2, 0, 0) NOR_16 (s1196_wire_526, {s1196_wire_91_23, s1196_wire_61_24});
and_n #(2, 0, 0) AND_225 (s1196_wire_523, {s1196_wire_519, s1196_wire_61_25});
and_n #(2, 0, 0) AND_226 (s1196_wire_527, {s1196_wire_525, s1196_wire_68_19});
and_n #(2, 0, 0) AND_227 (s1196_wire_528, {s1196_wire_522, s1196_wire_60_31});
or_n #(2, 0, 0) OR_48 (s1196_wire_129, {s1196_wire_527, s1196_wire_528});
notg #(0, 0) NOT_135 (s1196_wire_521, s1196_wire_61_26);
notg #(0, 0) NOT_136 (s1196_wire_8, s1196_wire_529);
or_n #(2, 0, 0) OR_49 (s1196_wire_529, {s1196_wire_530, s1196_wire_300});
or_n #(2, 0, 0) OR_50 (s1196_wire_301, {s1196_wire_152, s1196_wire_441});
and_n #(2, 0, 0) AND_228 (s1196_wire_530, {s1196_wire_337, s1196_wire_531});
or_n #(3, 0, 0) OR_51 (s1196_wire_442, {s1196_wire_532, s1196_wire_533, s1196_wire_534});
and_n #(2, 0, 0) AND_229 (s1196_wire_532, {s1196_wire_60_32, s1196_wire_151_8});
notg #(0, 0) NOT_137 (s1196_wire_535, s1196_wire_190_5);
and_n #(2, 0, 0) AND_230 (s1196_wire_533, {s1196_wire_535, s1196_wire_161_16});
and_n #(2, 0, 0) AND_231 (s1196_wire_534, {s1196_wire_394, s1196_wire_536});
notg #(0, 0) NOT_138 (s1196_wire_536, s1196_wire_60_33);
notg #(0, 0) NOT_139 (s1196_wire_531, s1196_wire_495_1);
and_n #(2, 0, 0) AND_232 (s1196_wire_6, {s1196_wire_537, s1196_wire_538});
nor_n #(2, 0, 0) NOR_17 (s1196_wire_539, {s1196_wire_78_1, s1196_wire_280});
or_n #(2, 0, 0) OR_52 (s1196_wire_538, {s1196_wire_329, s1196_wire_539});
nand_n #(2, 0, 0) NAND_7 (s1196_wire_537, {s1196_wire_90_1, s1196_wire_314_1});
or_n #(2, 0, 0) OR_53 (s1196_wire_4, {s1196_wire_259, s1196_wire_263});
notg #(0, 0) NOT_140 (s1196_wire_2, s1196_wire_540);
or_n #(4, 0, 0) OR_54 (s1196_wire_540, {s1196_wire_286, s1196_wire_541, s1196_wire_542, s1196_wire_543});
and_n #(3, 0, 0) AND_233 (s1196_wire_543, {s1196_wire_40, s1196_wire_349, s1196_wire_388});
nor_n #(2, 0, 0) NOR_18 (s1196_wire_541, {s1196_wire_60_34, s1196_wire_68_20});
or_n #(4, 0, 0) OR_55 (s1196_wire_544, {s1196_wire_386, s1196_wire_545, s1196_wire_150, s1196_wire_39});
nor_n #(3, 0, 0) NOR_19 (s1196_wire_545, {s1196_wire_63_35, s1196_wire_158_27, s1196_wire_151_9});
and_n #(2, 0, 0) AND_234 (s1196_wire_542, {s1196_wire_544, s1196_wire_297});
notg #(0, 0) NOT_141 (s1196_wire_387, s1196_wire_161_17);
and_n #(3, 0, 0) AND_235 (s1196_wire_380, {s1196_wire_369, s1196_wire_360, s1196_wire_546});
notg #(0, 0) NOT_142 (s1196_wire_203, s1196_wire_380_2);
or_n #(2, 0, 0) OR_56 (s1196_wire_546, {s1196_wire_335, s1196_wire_495_2});
notg #(0, 0) NOT_143 (s1196_wire_257, s1196_wire_255_1);
and_n #(2, 0, 0) AND_236 (s1196_wire_255, {s1196_wire_146, s1196_wire_408});
nor_n #(4, 0, 0) NOR_20 (s1196_wire_547, {s1196_wire_59_32, s1196_wire_161_18, s1196_wire_68_21, s1196_wire_91_24});
notg #(0, 0) NOT_144 (s1196_wire_548, s1196_wire_61_27);
and_n #(2, 0, 0) AND_237 (s1196_wire_549, {s1196_wire_548, s1196_wire_550});
or_n #(2, 0, 0) OR_57 (s1196_wire_551, {s1196_wire_433, s1196_wire_57});
nor_n #(2, 0, 0) NOR_21 (s1196_wire_552, {s1196_wire_38_14, s1196_wire_63_36});
and_n #(3, 0, 0) AND_238 (s1196_wire_550, {s1196_wire_552, s1196_wire_547, s1196_wire_117});
and_n #(2, 0, 0) AND_239 (s1196_wire_553, {s1196_wire_551, s1196_wire_458});
or_n #(2, 0, 0) OR_58 (s1196_wire_409, {s1196_wire_553, s1196_wire_549});
bufg #(0, 0) BUF_13 (G530_net_0, s1196_wire_554);
and_n #(2, 0, 0) AND_240 (s1196_wire_555, {s1196_wire_224, s1196_wire_556});
and_n #(2, 0, 0) AND_241 (s1196_wire_557, {s1196_wire_302, s1196_wire_161_19});
or_n #(2, 0, 0) OR_59 (s1196_wire_47, {s1196_wire_557, s1196_wire_186});
or_n #(2, 0, 0) OR_60 (s1196_wire_304, {s1196_wire_444, s1196_wire_45});
or_n #(2, 0, 0) OR_61 (s1196_wire_464, {s1196_wire_428, s1196_wire_558});
and_n #(2, 0, 0) AND_242 (s1196_wire_558, {s1196_wire_127, s1196_wire_376});
or_n #(2, 0, 0) OR_62 (s1196_wire_556, {s1196_wire_46, s1196_wire_303});
or_n #(2, 0, 0) OR_63 (s1196_wire_554, {s1196_wire_463, s1196_wire_555});
notg #(0, 0) NOT_145 (s1196_wire_445, s1196_wire_161_20);
notg #(0, 0) NOT_146 (s1196_wire_429, s1196_wire_60_35);
bufg #(0, 0) BUF_14 (G532_net_0, s1196_wire_559);
and_n #(2, 0, 0) AND_243 (s1196_wire_560, {s1196_wire_214, s1196_wire_247});
and_n #(3, 0, 0) AND_244 (s1196_wire_561, {s1196_wire_265, s1196_wire_562, s1196_wire_216_2});
and_n #(2, 0, 0) AND_245 (s1196_wire_563, {s1196_wire_175, s1196_wire_564});
and_n #(2, 0, 0) AND_246 (s1196_wire_565, {s1196_wire_51, s1196_wire_566});
notg #(0, 0) NOT_147 (s1196_wire_566, s1196_wire_567);
and_n #(2, 0, 0) AND_247 (s1196_wire_568, {s1196_wire_205, s1196_wire_460});
or_n #(2, 0, 0) OR_64 (s1196_wire_569, {s1196_wire_568, s1196_wire_561});
and_n #(2, 0, 0) AND_248 (s1196_wire_570, {s1196_wire_323, s1196_wire_455});
or_n #(2, 0, 0) OR_65 (s1196_wire_140, {s1196_wire_570, s1196_wire_325});
or_n #(2, 0, 0) OR_66 (s1196_wire_562, {s1196_wire_318, s1196_wire_139});
or_n #(2, 0, 0) OR_67 (s1196_wire_559, {s1196_wire_565, s1196_wire_563});
or_n #(2, 0, 0) OR_68 (s1196_wire_571, {s1196_wire_560, s1196_wire_137});
or_n #(2, 0, 0) OR_69 (s1196_wire_564, {s1196_wire_571, s1196_wire_569});
notg #(0, 0) NOT_148 (s1196_wire_572, s1196_wire_254_5);
or_n #(2, 0, 0) OR_70 (s1196_wire_254, {s1196_wire_573, s1196_wire_574});
or_n #(2, 0, 0) OR_71 (s1196_wire_575, {s1196_wire_118, s1196_wire_576});
and_n #(2, 0, 0) AND_249 (s1196_wire_573, {s1196_wire_577, s1196_wire_578});
and_n #(2, 0, 0) AND_250 (s1196_wire_574, {s1196_wire_575, s1196_wire_68_22});
nor_n #(2, 0, 0) NOR_22 (s1196_wire_576, {s1196_wire_58_36, s1196_wire_61_28});
nand_n #(2, 0, 0) NAND_8 (s1196_wire_578, {s1196_wire_35_3, s1196_wire_91_25});
notg #(0, 0) NOT_149 (s1196_wire_577, s1196_wire_68_23);
bufg #(0, 0) BUF_15 (G535_net_0, s1196_wire_579);
nor_n #(2, 0, 0) NOR_23 (s1196_wire_580, {s1196_wire_63_37, s1196_wire_7});
or_n #(2, 0, 0) OR_72 (s1196_wire_462, {s1196_wire_580, s1196_wire_291});
and_n #(2, 0, 0) AND_251 (s1196_wire_581, {s1196_wire_267, s1196_wire_427});
or_n #(2, 0, 0) OR_73 (s1196_wire_582, {s1196_wire_581, s1196_wire_211});
and_n #(3, 0, 0) AND_252 (s1196_wire_583, {s1196_wire_582, s1196_wire_171, s1196_wire_60_36});
or_n #(3, 0, 0) OR_74 (s1196_wire_579, {s1196_wire_461, s1196_wire_583, s1196_wire_239});
bufg #(0, 0) BUF_16 (G537_net_0, s1196_wire_584);
and_n #(2, 0, 0) AND_253 (s1196_wire_585, {s1196_wire_268, s1196_wire_378});
and_n #(2, 0, 0) AND_254 (s1196_wire_586, {s1196_wire_172, s1196_wire_587});
and_n #(2, 0, 0) AND_255 (s1196_wire_588, {s1196_wire_377, s1196_wire_120_4});
or_n #(3, 0, 0) OR_75 (s1196_wire_466, {s1196_wire_588, s1196_wire_330, s1196_wire_589});
and_n #(2, 0, 0) AND_256 (s1196_wire_590, {s1196_wire_591, s1196_wire_592});
and_n #(2, 0, 0) AND_257 (s1196_wire_589, {s1196_wire_590, s1196_wire_93});
and_n #(2, 0, 0) AND_258 (s1196_wire_593, {s1196_wire_435, s1196_wire_594});
or_n #(2, 0, 0) OR_76 (s1196_wire_241, {s1196_wire_593, s1196_wire_94});
and_n #(2, 0, 0) AND_259 (s1196_wire_595, {s1196_wire_187, s1196_wire_213});
or_n #(2, 0, 0) OR_77 (s1196_wire_587, {s1196_wire_585, s1196_wire_595});
or_n #(2, 0, 0) OR_78 (s1196_wire_396, {s1196_wire_240, s1196_wire_586});
or_n #(2, 0, 0) OR_79 (s1196_wire_584, {s1196_wire_465, s1196_wire_395});
and_n #(2, 0, 0) AND_260 (s1196_wire_591, {s1196_wire_151_10, s1196_wire_61_29});
notg #(0, 0) NOT_150 (s1196_wire_592, s1196_wire_60_37);
notg #(0, 0) NOT_151 (s1196_wire_594, s1196_wire_61_30);
bufg #(0, 0) BUF_17 (G539_net_0, s1196_wire_596);
notg #(0, 0) NOT_152 (s1196_wire_262, s1196_wire_193_2);
nor_n #(3, 0, 0) NOR_24 (s1196_wire_597, {s1196_wire_216_3, s1196_wire_54_14, s1196_wire_195_3});
or_n #(3, 0, 0) OR_80 (s1196_wire_596, {s1196_wire_261, s1196_wire_256, s1196_wire_597});
bufg #(0, 0) BUF_18 (G542_net_0, s1196_wire_598);
and_n #(2, 0, 0) AND_261 (s1196_wire_599, {s1196_wire_421, s1196_wire_600});
notg #(0, 0) NOT_153 (s1196_wire_601, s1196_wire_61_31);
or_n #(3, 0, 0) OR_81 (s1196_wire_102, {s1196_wire_601, s1196_wire_130, s1196_wire_602});
nand_n #(2, 0, 0) NAND_9 (s1196_wire_100, {s1196_wire_91_26, s1196_wire_61_32});
nor_n #(2, 0, 0) NOR_25 (s1196_wire_473, {s1196_wire_91_27, s1196_wire_61_33});
and_n #(2, 0, 0) AND_262 (s1196_wire_602, {s1196_wire_603, s1196_wire_91_28});
or_n #(2, 0, 0) OR_82 (s1196_wire_600, {s1196_wire_99, s1196_wire_471});
and_n #(2, 0, 0) AND_263 (s1196_wire_604, {s1196_wire_472, s1196_wire_68_24});
or_n #(2, 0, 0) OR_83 (s1196_wire_605, {s1196_wire_604, s1196_wire_101});
or_n #(2, 0, 0) OR_84 (s1196_wire_598, {s1196_wire_599, s1196_wire_606});
and_n #(2, 0, 0) AND_264 (s1196_wire_606, {s1196_wire_605, s1196_wire_226});
notg #(0, 0) NOT_154 (s1196_wire_131, s1196_wire_91_29);
notg #(0, 0) NOT_155 (s1196_wire_603, s1196_wire_68_25);
and_n #(2, 0, 0) AND_265 (s1196_wire_193, {s1196_wire_407, s1196_wire_607});
notg #(0, 0) NOT_156 (s1196_wire_608, s1196_wire_60_38);
and_n #(5, 0, 0) AND_266 (s1196_wire_609, {s1196_wire_608, s1196_wire_486, s1196_wire_610, s1196_wire_611, s1196_wire_68_26});
notg #(0, 0) NOT_157 (s1196_wire_610, s1196_wire_91_30);
notg #(0, 0) NOT_158 (s1196_wire_611, s1196_wire_61_34);
and_n #(2, 0, 0) AND_267 (s1196_wire_612, {s1196_wire_108, s1196_wire_613});
and_n #(2, 0, 0) AND_268 (s1196_wire_614, {s1196_wire_310, s1196_wire_615});
and_n #(2, 0, 0) AND_269 (s1196_wire_616, {s1196_wire_311, s1196_wire_617});
and_n #(2, 0, 0) AND_270 (s1196_wire_618, {s1196_wire_109, s1196_wire_619});
nor_n #(2, 0, 0) NOR_26 (s1196_wire_619, {s1196_wire_68_27, s1196_wire_91_31});
and_n #(2, 0, 0) AND_271 (s1196_wire_620, {s1196_wire_107, s1196_wire_621});
and_n #(2, 0, 0) AND_272 (s1196_wire_622, {s1196_wire_68_28, s1196_wire_91_32});
and_n #(2, 0, 0) AND_273 (s1196_wire_623, {s1196_wire_622, s1196_wire_624});
nor_n #(2, 0, 0) NOR_27 (s1196_wire_624, {s1196_wire_58_37, s1196_wire_61_35});
and_n #(2, 0, 0) AND_274 (s1196_wire_617, {s1196_wire_487, s1196_wire_625});
notg #(0, 0) NOT_159 (s1196_wire_142, s1196_wire_161_21);
and_n #(2, 0, 0) AND_275 (s1196_wire_626, {s1196_wire_312, s1196_wire_488});
or_n #(2, 0, 0) OR_85 (s1196_wire_489, {s1196_wire_110, s1196_wire_272});
notg #(0, 0) NOT_160 (s1196_wire_273, s1196_wire_91_33);
nor_n #(2, 0, 0) NOR_28 (s1196_wire_621, {s1196_wire_68_29, s1196_wire_91_34});
nor_n #(2, 0, 0) NOR_29 (s1196_wire_627, {s1196_wire_58_38, s1196_wire_61_36});
and_n #(2, 0, 0) AND_276 (s1196_wire_628, {s1196_wire_627, s1196_wire_629});
and_n #(2, 0, 0) AND_277 (s1196_wire_630, {s1196_wire_485, s1196_wire_631});
or_n #(2, 0, 0) OR_86 (s1196_wire_613, {s1196_wire_630, s1196_wire_609});
or_n #(2, 0, 0) OR_87 (s1196_wire_632, {s1196_wire_620, s1196_wire_628});
or_n #(2, 0, 0) OR_88 (s1196_wire_625, {s1196_wire_618, s1196_wire_623});
and_n #(2, 0, 0) AND_278 (s1196_wire_633, {s1196_wire_632, s1196_wire_190_6});
or_n #(2, 0, 0) OR_89 (s1196_wire_615, {s1196_wire_612, s1196_wire_633});
or_n #(2, 0, 0) OR_90 (s1196_wire_607, {s1196_wire_626, s1196_wire_141});
and_n #(2, 0, 0) AND_279 (s1196_wire_629, {s1196_wire_68_30, s1196_wire_91_35});
or_n #(2, 0, 0) OR_91 (s1196_wire_143, {s1196_wire_616, s1196_wire_614});
notg #(0, 0) NOT_161 (s1196_wire_631, s1196_wire_68_31);
bufg #(0, 0) BUF_19 (G546_net_0, s1196_wire_459);
bufg #(0, 0) BUF_20 (G547_net_0, s1196_wire_634);
notg #(0, 0) NOT_162 (s1196_wire_423, s1196_wire_91_36);
notg #(0, 0) NOT_163 (s1196_wire_635, s1196_wire_91_37);
and_n #(2, 0, 0) AND_280 (s1196_wire_636, {s1196_wire_635, s1196_wire_133});
and_n #(2, 0, 0) AND_281 (s1196_wire_637, {s1196_wire_132, s1196_wire_638});
nor_n #(2, 0, 0) NOR_30 (s1196_wire_638, {s1196_wire_58_39, s1196_wire_68_32});
or_n #(3, 0, 0) OR_92 (s1196_wire_639, {s1196_wire_422, s1196_wire_640, s1196_wire_641});
and_n #(2, 0, 0) AND_282 (s1196_wire_641, {s1196_wire_424, s1196_wire_103});
and_n #(2, 0, 0) AND_283 (s1196_wire_640, {s1196_wire_104, s1196_wire_642});
and_n #(2, 0, 0) AND_284 (s1196_wire_643, {s1196_wire_425, s1196_wire_644});
and_n #(2, 0, 0) AND_285 (s1196_wire_645, {s1196_wire_643, s1196_wire_105});
and_n #(2, 0, 0) AND_286 (s1196_wire_646, {s1196_wire_636, s1196_wire_229});
or_n #(2, 0, 0) OR_93 (s1196_wire_634, {s1196_wire_637, s1196_wire_647});
and_n #(2, 0, 0) AND_287 (s1196_wire_648, {s1196_wire_639, s1196_wire_68_33});
or_n #(3, 0, 0) OR_94 (s1196_wire_649, {s1196_wire_645, s1196_wire_646, s1196_wire_648});
and_n #(2, 0, 0) AND_288 (s1196_wire_647, {s1196_wire_649, s1196_wire_61_37});
notg #(0, 0) NOT_164 (s1196_wire_642, s1196_wire_60_39);
notg #(0, 0) NOT_165 (s1196_wire_644, s1196_wire_68_34);
bufg #(0, 0) BUF_21 (G548_net_0, s1196_wire_650);
or_n #(2, 0, 0) OR_95 (s1196_wire_651, {s1196_wire_84, s1196_wire_652});
and_n #(3, 0, 0) AND_289 (s1196_wire_653, {s1196_wire_86, s1196_wire_654, s1196_wire_91_38});
and_n #(2, 0, 0) AND_290 (s1196_wire_652, {s1196_wire_655, s1196_wire_61_38});
or_n #(2, 0, 0) OR_96 (s1196_wire_656, {s1196_wire_653, s1196_wire_657});
and_n #(2, 0, 0) AND_291 (s1196_wire_657, {s1196_wire_651, s1196_wire_68_35});
and_n #(2, 0, 0) AND_292 (s1196_wire_658, {s1196_wire_656, s1196_wire_124});
or_n #(2, 0, 0) OR_97 (s1196_wire_650, {s1196_wire_658, s1196_wire_218});
nand_n #(2, 0, 0) NAND_10 (s1196_wire_655, {s1196_wire_58_40, s1196_wire_91_39});
notg #(0, 0) NOT_166 (s1196_wire_85, s1196_wire_61_39);
notg #(0, 0) NOT_167 (s1196_wire_87, s1196_wire_61_40);
notg #(0, 0) NOT_168 (s1196_wire_654, s1196_wire_68_36);
bufg #(0, 0) BUF_22 (G549_net_0, s1196_wire_659);
or_n #(3, 0, 0) OR_98 (s1196_wire_383, {s1196_wire_406, s1196_wire_346, s1196_wire_660});
and_n #(2, 0, 0) AND_293 (s1196_wire_157, {s1196_wire_456, s1196_wire_190_7});
and_n #(3, 0, 0) AND_294 (s1196_wire_661, {s1196_wire_177, s1196_wire_382, s1196_wire_208});
or_n #(3, 0, 0) OR_99 (s1196_wire_662, {s1196_wire_457, s1196_wire_663, s1196_wire_664});
nand_n #(2, 0, 0) NAND_11 (s1196_wire_484, {s1196_wire_38_15, s1196_wire_63_38});
nand_n #(2, 0, 0) NAND_12 (s1196_wire_665, {s1196_wire_63_39, s1196_wire_59_33});
and_n #(2, 0, 0) AND_295 (s1196_wire_666, {s1196_wire_665, s1196_wire_161_22});
and_n #(2, 0, 0) AND_296 (s1196_wire_663, {s1196_wire_250, s1196_wire_483});
and_n #(2, 0, 0) AND_297 (s1196_wire_664, {s1196_wire_666, s1196_wire_253});
and_n #(2, 0, 0) AND_298 (s1196_wire_660, {s1196_wire_155, s1196_wire_161_23});
and_n #(2, 0, 0) AND_299 (s1196_wire_667, {s1196_wire_662, s1196_wire_207});
or_n #(2, 0, 0) OR_100 (s1196_wire_659, {s1196_wire_667, s1196_wire_661});
and_n #(2, 0, 0) AND_300 (s1196_wire_668, {s1196_wire_190_8, s1196_wire_436});
and_n #(2, 0, 0) AND_301 (s1196_wire_669, {s1196_wire_190_9, s1196_wire_670});
bufg #(0, 0) BUF_23 (G550_net_0, s1196_wire_671);
or_n #(2, 0, 0) OR_101 (s1196_wire_223, {s1196_wire_43, s1196_wire_672});
and_n #(2, 0, 0) AND_302 (s1196_wire_672, {s1196_wire_371, s1196_wire_42});
nand_n #(2, 0, 0) NAND_13 (s1196_wire_673, {s1196_wire_158_28, s1196_wire_59_34});
and_n #(2, 0, 0) AND_303 (s1196_wire_674, {s1196_wire_673, s1196_wire_184});
and_n #(2, 0, 0) AND_304 (s1196_wire_675, {s1196_wire_381, s1196_wire_233});
or_n #(2, 0, 0) OR_102 (s1196_wire_676, {s1196_wire_440, s1196_wire_675});
or_n #(3, 0, 0) OR_103 (s1196_wire_671, {s1196_wire_674, s1196_wire_222, s1196_wire_676});
bufg #(0, 0) BUF_24 (G551_net_0, s1196_wire_677);
and_n #(2, 0, 0) AND_305 (s1196_wire_678, {s1196_wire_414, s1196_wire_479});
and_n #(2, 0, 0) AND_306 (s1196_wire_679, {s1196_wire_305, s1196_wire_398});
and_n #(3, 0, 0) AND_307 (s1196_wire_680, {s1196_wire_572, s1196_wire_173, s1196_wire_681});
and_n #(3, 0, 0) AND_308 (s1196_wire_682, {s1196_wire_174, s1196_wire_683, s1196_wire_467});
nand_n #(2, 0, 0) NAND_14 (s1196_wire_452, {s1196_wire_41_21, s1196_wire_59_35});
and_n #(2, 0, 0) AND_309 (s1196_wire_684, {s1196_wire_399, s1196_wire_448});
and_n #(2, 0, 0) AND_310 (s1196_wire_685, {s1196_wire_48, s1196_wire_480});
nor_n #(2, 0, 0) NOR_31 (s1196_wire_686, {s1196_wire_158_29, s1196_wire_63_40});
nor_n #(2, 0, 0) NOR_32 (s1196_wire_683, {s1196_wire_178_14, s1196_wire_251_3});
or_n #(3, 0, 0) OR_104 (s1196_wire_482, {s1196_wire_450, s1196_wire_687, s1196_wire_688});
and_n #(2, 0, 0) AND_311 (s1196_wire_687, {s1196_wire_446, s1196_wire_60_40});
nor_n #(2, 0, 0) NOR_33 (s1196_wire_689, {s1196_wire_158_30, s1196_wire_161_24});
and_n #(2, 0, 0) AND_312 (s1196_wire_690, {s1196_wire_689, s1196_wire_447});
or_n #(2, 0, 0) OR_105 (s1196_wire_204, {s1196_wire_679, s1196_wire_308});
or_n #(2, 0, 0) OR_106 (s1196_wire_50, {s1196_wire_684, s1196_wire_451});
or_n #(2, 0, 0) OR_107 (s1196_wire_307, {s1196_wire_686, s1196_wire_685});
or_n #(2, 0, 0) OR_108 (s1196_wire_681, {s1196_wire_678, s1196_wire_202});
or_n #(2, 0, 0) OR_109 (s1196_wire_309, {s1196_wire_690, s1196_wire_481});
or_n #(2, 0, 0) OR_110 (s1196_wire_468, {s1196_wire_49, s1196_wire_306});
notg #(0, 0) NOT_169 (s1196_wire_688, s1196_wire_161_25);
or_n #(2, 0, 0) OR_111 (s1196_wire_677, {s1196_wire_682, s1196_wire_680});
bufg #(0, 0) BUF_25 (G552_net_0, s1196_wire_691);
and_n #(2, 0, 0) AND_313 (s1196_wire_692, {s1196_wire_162, s1196_wire_60_41});
or_n #(2, 0, 0) OR_112 (s1196_wire_385, {s1196_wire_692, s1196_wire_668});
and_n #(2, 0, 0) AND_314 (s1196_wire_693, {s1196_wire_149, s1196_wire_694});
or_n #(2, 0, 0) OR_113 (s1196_wire_236, {s1196_wire_693, s1196_wire_384});
or_n #(3, 0, 0) OR_114 (s1196_wire_691, {s1196_wire_220, s1196_wire_235, s1196_wire_695});
nand_n #(2, 0, 0) NAND_15 (s1196_wire_670, {s1196_wire_158_31, s1196_wire_161_26});
and_n #(2, 0, 0) AND_315 (s1196_wire_696, {s1196_wire_182, s1196_wire_60_42});
or_n #(2, 0, 0) OR_115 (s1196_wire_697, {s1196_wire_669, s1196_wire_696});
and_n #(2, 0, 0) AND_316 (s1196_wire_695, {s1196_wire_697, s1196_wire_232});
notg #(0, 0) NOT_170 (s1196_wire_694, s1196_wire_151_11);
or_n #(2, 0, 0) OR_116 (s1196_wire_216, {s1196_wire_401, s1196_wire_698});
or_n #(2, 0, 0) OR_117 (s1196_wire_454, {s1196_wire_338, s1196_wire_699});
notg #(0, 0) NOT_171 (s1196_wire_432, s1196_wire_60_43);
and_n #(2, 0, 0) AND_317 (s1196_wire_698, {s1196_wire_400, s1196_wire_700});
nor_n #(2, 0, 0) NOR_34 (s1196_wire_701, {s1196_wire_59_36, s1196_wire_161_27});
and_n #(2, 0, 0) AND_318 (s1196_wire_699, {s1196_wire_701, s1196_wire_134});
or_n #(2, 0, 0) OR_118 (s1196_wire_136, {s1196_wire_320, s1196_wire_702});
or_n #(2, 0, 0) OR_119 (s1196_wire_700, {s1196_wire_430, s1196_wire_135});
and_n #(2, 0, 0) AND_319 (s1196_wire_417, {s1196_wire_343, s1196_wire_91_40});
or_n #(2, 0, 0) OR_120 (s1196_wire_402, {s1196_wire_453, s1196_wire_189});
and_n #(3, 0, 0) AND_320 (s1196_wire_702, {s1196_wire_416, s1196_wire_703, s1196_wire_120_5});
notg #(0, 0) NOT_172 (s1196_wire_474, s1196_wire_68_37);
notg #(0, 0) NOT_173 (s1196_wire_703, s1196_wire_161_28);
notg #(0, 0) NOT_174 (s1196_wire_475, s1196_wire_161_29);
notg #(0, 0) NOT_175 (s1196_wire_704, s1196_wire_161_30);
and_n #(3, 0, 0) AND_321 (s1196_wire_705, {s1196_wire_161_31, s1196_wire_438, s1196_wire_390});
bufg #(0, 0) BUF_26 (s1196_wire_60, G6_net_0);
and_n #(2, 0, 0) AND_322 (s1196_wire_495, {s1196_wire_704, s1196_wire_476});
notg #(0, 0) NOT_176 (s1196_wire_477, s1196_wire_60_44);
bufg #(0, 0) BUF_27 (s1196_wire_68, G7_net_0);
bufg #(0, 0) BUF_28 (s1196_wire_91, G8_net_0);
or_n #(3, 0, 0) OR_121 (s1196_wire_567, {s1196_wire_391, s1196_wire_706, s1196_wire_707});
or_n #(2, 0, 0) OR_122 (s1196_wire_708, {s1196_wire_705, s1196_wire_478});
nor_n #(2, 0, 0) NOR_35 (s1196_wire_709, {s1196_wire_158_32, s1196_wire_161_32});
or_n #(2, 0, 0) OR_123 (s1196_wire_710, {s1196_wire_709, s1196_wire_299});
and_n #(2, 0, 0) AND_323 (s1196_wire_706, {s1196_wire_708, s1196_wire_298});
and_n #(2, 0, 0) AND_324 (s1196_wire_707, {s1196_wire_710, s1196_wire_439});
bufg #(0, 0) BUF_29 (s1196_wire_61, G9_net_0);
dff DFF_1  (s1196_wire_3, s1196_wire_2, s1196_wire_1, 1'b0, 1'b0, 1'b1, NbarT, Si, reset);
dff DFF_2  (s1196_wire_5, s1196_wire_4, s1196_wire_1, 1'b0, 1'b0, 1'b1, NbarT, Si, reset);
dff DFF_3  (s1196_wire_7, s1196_wire_6, s1196_wire_1, 1'b0, 1'b0, 1'b1, NbarT, Si, reset);
dff DFF_4  (s1196_wire_9, s1196_wire_8, s1196_wire_1, 1'b0, 1'b0, 1'b1, NbarT, Si, reset);
dff DFF_5  (s1196_wire_11, s1196_wire_10, s1196_wire_1, 1'b0, 1'b0, 1'b1, NbarT, Si, reset);
dff DFF_6  (s1196_wire_13, s1196_wire_12, s1196_wire_1, 1'b0, 1'b0, 1'b1, NbarT, Si, reset);
dff DFF_7  (s1196_wire_15, s1196_wire_14, s1196_wire_1, 1'b0, 1'b0, 1'b1, NbarT, Si, reset);
dff DFF_8  (s1196_wire_17, s1196_wire_16, s1196_wire_1, 1'b0, 1'b0, 1'b1, NbarT, Si, reset);
dff DFF_9  (s1196_wire_19, s1196_wire_18, s1196_wire_1, 1'b0, 1'b0, 1'b1, NbarT, Si, reset);
dff DFF_10  (s1196_wire_21, s1196_wire_20, s1196_wire_1, 1'b0, 1'b0, 1'b1, NbarT, Si, reset);
dff DFF_11  (s1196_wire_23, s1196_wire_22, s1196_wire_1, 1'b0, 1'b0, 1'b1, NbarT, Si, reset);
dff DFF_12  (s1196_wire_25, s1196_wire_24, s1196_wire_1, 1'b0, 1'b0, 1'b1, NbarT, Si, reset);
dff DFF_13  (s1196_wire_27, s1196_wire_26, s1196_wire_1, 1'b0, 1'b0, 1'b1, NbarT, Si, reset);
dff DFF_14  (s1196_wire_29, s1196_wire_28, s1196_wire_1, 1'b0, 1'b0, 1'b1, NbarT, Si, reset);
dff DFF_15  (s1196_wire_31, s1196_wire_30, s1196_wire_1, 1'b0, 1'b0, 1'b1, NbarT, Si, reset);
dff DFF_16  (s1196_wire_33, s1196_wire_32, s1196_wire_1, 1'b0, 1'b0, 1'b1, NbarT, Si, reset);
dff DFF_17  (s1196_wire_35, s1196_wire_34, s1196_wire_1, 1'b0, 1'b0, 1'b1, NbarT, Si, reset);
dff DFF_18  (s1196_wire_37, s1196_wire_36, s1196_wire_1, 1'b0, 1'b0, 1'b1, NbarT, Si, reset);

endmodule
