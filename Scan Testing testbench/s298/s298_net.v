
//Verilog file of module s298


`timescale 1 ns / 1ns

module s298_net(reset, Clock,
g0,
g1,
g2,
g117,
g132,
g66,
g118,
g133,
g67, si, so, NbarT);
  input reset;
  input  Clock;
  input  g0;
  input  g1;
  input  g2;
  input si;
  input NbarT;
  
  output so;
  output g117;
  output g132;
  output g66;
  output g118;
  output g133;
  output g67;

wire
s298_wire_1,
s298_wire_2,
s298_wire_3,
s298_wire_4,
s298_wire_5,
s298_wire_6,
s298_wire_7,
s298_wire_8,
s298_wire_9,
s298_wire_10,
s298_wire_11,
s298_wire_12,
s298_wire_13,
s298_wire_14,
s298_wire_15,
s298_wire_16,
s298_wire_17,
s298_wire_18,
s298_wire_19,
s298_wire_20,
s298_wire_21,
s298_wire_22,
s298_wire_23,
s298_wire_24,
s298_wire_25,
s298_wire_26,
s298_wire_27,
s298_wire_28,
s298_wire_29,
s298_wire_30,
s298_wire_31,
s298_wire_32,
s298_wire_33,
s298_wire_34,
s298_wire_35,
s298_wire_36,
s298_wire_37,
s298_wire_38,
s298_wire_39,
s298_wire_40,
s298_wire_41,
s298_wire_42,
s298_wire_43,
s298_wire_44,
s298_wire_45,
s298_wire_46,
s298_wire_47,
s298_wire_48,
s298_wire_49,
s298_wire_50,
s298_wire_51,
s298_wire_52,
s298_wire_53,
s298_wire_54,
s298_wire_55,
s298_wire_56,
s298_wire_57,
s298_wire_58,
s298_wire_59,
s298_wire_60,
s298_wire_61,
s298_wire_62,
s298_wire_63,
s298_wire_64,
s298_wire_65,
s298_wire_66,
s298_wire_67,
s298_wire_68,
s298_wire_69,
s298_wire_70,
s298_wire_71,
s298_wire_72,
s298_wire_73,
s298_wire_74,
s298_wire_75,
s298_wire_76,
s298_wire_77,
s298_wire_78,
s298_wire_79,
s298_wire_80,
s298_wire_81,
s298_wire_82,
s298_wire_83,
s298_wire_84,
s298_wire_85,
s298_wire_86,
s298_wire_87,
s298_wire_88,
s298_wire_89,
s298_wire_90,
s298_wire_91,
s298_wire_92,
s298_wire_93,
s298_wire_94,
s298_wire_95,
s298_wire_96,
s298_wire_97,
s298_wire_98,
s298_wire_99,
s298_wire_100,
s298_wire_101,
s298_wire_102,
s298_wire_103,
s298_wire_104,
s298_wire_105,
s298_wire_106,
s298_wire_107,
s298_wire_108,
s298_wire_109,
s298_wire_110,
s298_wire_111,
s298_wire_112,
s298_wire_113,
s298_wire_114,
s298_wire_115,
s298_wire_116,
s298_wire_117,
s298_wire_118,
s298_wire_119,
s298_wire_120,
s298_wire_121,
s298_wire_122,
s298_wire_123,
s298_wire_124,
s298_wire_125,
s298_wire_126,
s298_wire_127,
s298_wire_128,
s298_wire_129,
s298_wire_130,
s298_wire_131,
s298_wire_132,
s298_wire_133,
s298_wire_134,
s298_wire_135,
s298_wire_136,
s298_wire_137,
s298_wire_138,
s298_wire_139,
s298_wire_140,
s298_wire_141,
s298_wire_142,
s298_wire_143,
s298_wire_144,
s298_wire_145,
s298_wire_146,
s298_wire_147,
s298_wire_148,
s298_wire_149,
s298_wire_150,
s298_wire_151,
s298_wire_152,
s298_wire_153,
s298_wire_154,
s298_wire_155,
s298_wire_156,
s298_wire_157,
s298_wire_158,
s298_wire_5_0,
s298_wire_5_1,
s298_wire_7_0,
s298_wire_7_1,
s298_wire_13_0,
s298_wire_13_1,
s298_wire_13_2,
s298_wire_21_0,
s298_wire_21_1,
s298_wire_23_0,
s298_wire_23_1,
s298_wire_26_0,
s298_wire_26_1,
s298_wire_26_2,
s298_wire_26_3,
s298_wire_26_4,
s298_wire_26_5,
s298_wire_26_6,
s298_wire_28_0,
s298_wire_28_1,
s298_wire_28_2,
s298_wire_28_3,
s298_wire_28_4,
s298_wire_28_5,
s298_wire_28_6,
s298_wire_28_7,
s298_wire_30_0,
s298_wire_30_1,
s298_wire_30_2,
s298_wire_30_3,
s298_wire_30_4,
s298_wire_30_5,
s298_wire_30_6,
s298_wire_30_7,
s298_wire_30_8,
s298_wire_32_0,
s298_wire_32_1,
s298_wire_32_2,
s298_wire_32_3,
s298_wire_32_4,
s298_wire_32_5,
s298_wire_34_0,
s298_wire_34_1,
s298_wire_34_2,
s298_wire_34_3,
s298_wire_34_4,
s298_wire_34_5,
s298_wire_34_6,
s298_wire_34_7,
s298_wire_34_8,
s298_wire_34_9,
s298_wire_34_10,
s298_wire_34_11,
s298_wire_36_0,
s298_wire_36_1,
s298_wire_36_2,
s298_wire_36_3,
s298_wire_36_4,
s298_wire_36_5,
s298_wire_36_6,
s298_wire_38_0,
s298_wire_38_1,
s298_wire_38_2,
s298_wire_38_3,
s298_wire_38_4,
s298_wire_38_5,
s298_wire_38_6,
s298_wire_38_7,
s298_wire_38_8,
s298_wire_40_0,
s298_wire_40_1,
s298_wire_40_2,
s298_wire_40_3,
s298_wire_40_4,
s298_wire_40_5,
s298_wire_40_6,
s298_wire_42_0,
s298_wire_42_1,
s298_wire_42_2,
s298_wire_42_3,
s298_wire_44_0,
s298_wire_44_1,
s298_wire_44_2,
s298_wire_44_3,
s298_wire_44_4,
s298_wire_44_5,
s298_wire_46_0,
s298_wire_46_1,
s298_wire_46_2,
s298_wire_50_0,
s298_wire_50_1,
s298_wire_50_2,
s298_wire_52_0,
s298_wire_52_1,
s298_wire_53_0,
s298_wire_53_1,
s298_wire_53_2,
s298_wire_53_3,
s298_wire_53_4,
s298_wire_53_5,
s298_wire_53_6,
s298_wire_53_7,
s298_wire_69_0,
s298_wire_69_1,
s298_wire_74_0,
s298_wire_74_1,
s298_wire_109_0,
s298_wire_109_1,
s298_wire_75_0,
s298_wire_75_1,
s298_wire_75_2,
s298_wire_75_3,
s298_wire_75_4,
s298_wire_132_0,
s298_wire_132_1,
s298_wire_132_2,
s298_wire_132_3,
s298_wire_132_4,
s298_wire_132_5,
s298_wire_132_6,
s298_wire_132_7,
s298_wire_157_0,
s298_wire_157_1,
s298_wire_152_0,
s298_wire_152_1,
Clock_net_0,
g0_net_0,
g1_net_0,
g2_net_0,
g117_net_0,
g132_net_0,
g66_net_0,
g118_net_0,
g133_net_0,
g67_net_0;

pin #(4) pin_0 ({Clock, g0, g1, g2}, {Clock_net_0, g0_net_0, g1_net_0, g2_net_0});

pout #(6) pout_0 ({g117_net_0, g132_net_0, g66_net_0, g118_net_0, g133_net_0, g67_net_0}, {g117, g132, g66, g118, g133, g67});

fanout_n #(2, 0, 0) FANOUT_1 (s298_wire_5, {s298_wire_5_0, s298_wire_5_1});
fanout_n #(2, 0, 0) FANOUT_2 (s298_wire_7, {s298_wire_7_0, s298_wire_7_1});
fanout_n #(3, 0, 0) FANOUT_3 (s298_wire_13, {s298_wire_13_0, s298_wire_13_1, s298_wire_13_2});
fanout_n #(2, 0, 0) FANOUT_4 (s298_wire_21, {s298_wire_21_0, s298_wire_21_1});
fanout_n #(2, 0, 0) FANOUT_5 (s298_wire_23, {s298_wire_23_0, s298_wire_23_1});
fanout_n #(7, 0, 0) FANOUT_6 (s298_wire_26, {s298_wire_26_0, s298_wire_26_1, s298_wire_26_2, s298_wire_26_3, s298_wire_26_4, s298_wire_26_5, s298_wire_26_6});
fanout_n #(8, 0, 0) FANOUT_7 (s298_wire_28, {s298_wire_28_0, s298_wire_28_1, s298_wire_28_2, s298_wire_28_3, s298_wire_28_4, s298_wire_28_5, s298_wire_28_6, s298_wire_28_7});
fanout_n #(9, 0, 0) FANOUT_8 (s298_wire_30, {s298_wire_30_0, s298_wire_30_1, s298_wire_30_2, s298_wire_30_3, s298_wire_30_4, s298_wire_30_5, s298_wire_30_6, s298_wire_30_7, s298_wire_30_8});
fanout_n #(6, 0, 0) FANOUT_9 (s298_wire_32, {s298_wire_32_0, s298_wire_32_1, s298_wire_32_2, s298_wire_32_3, s298_wire_32_4, s298_wire_32_5});
fanout_n #(12, 0, 0) FANOUT_10 (s298_wire_34, {s298_wire_34_0, s298_wire_34_1, s298_wire_34_2, s298_wire_34_3, s298_wire_34_4, s298_wire_34_5, s298_wire_34_6, s298_wire_34_7, s298_wire_34_8, s298_wire_34_9, s298_wire_34_10, s298_wire_34_11});
fanout_n #(7, 0, 0) FANOUT_11 (s298_wire_36, {s298_wire_36_0, s298_wire_36_1, s298_wire_36_2, s298_wire_36_3, s298_wire_36_4, s298_wire_36_5, s298_wire_36_6});
fanout_n #(9, 0, 0) FANOUT_12 (s298_wire_38, {s298_wire_38_0, s298_wire_38_1, s298_wire_38_2, s298_wire_38_3, s298_wire_38_4, s298_wire_38_5, s298_wire_38_6, s298_wire_38_7, s298_wire_38_8});
fanout_n #(7, 0, 0) FANOUT_13 (s298_wire_40, {s298_wire_40_0, s298_wire_40_1, s298_wire_40_2, s298_wire_40_3, s298_wire_40_4, s298_wire_40_5, s298_wire_40_6});
fanout_n #(4, 0, 0) FANOUT_14 (s298_wire_42, {s298_wire_42_0, s298_wire_42_1, s298_wire_42_2, s298_wire_42_3});
fanout_n #(6, 0, 0) FANOUT_15 (s298_wire_44, {s298_wire_44_0, s298_wire_44_1, s298_wire_44_2, s298_wire_44_3, s298_wire_44_4, s298_wire_44_5});
fanout_n #(3, 0, 0) FANOUT_16 (s298_wire_46, {s298_wire_46_0, s298_wire_46_1, s298_wire_46_2});
fanout_n #(3, 0, 0) FANOUT_17 (s298_wire_50, {s298_wire_50_0, s298_wire_50_1, s298_wire_50_2});
fanout_n #(2, 0, 0) FANOUT_18 (s298_wire_52, {s298_wire_52_0, s298_wire_52_1});
fanout_n #(8, 0, 0) FANOUT_19 (s298_wire_53, {s298_wire_53_0, s298_wire_53_1, s298_wire_53_2, s298_wire_53_3, s298_wire_53_4, s298_wire_53_5, s298_wire_53_6, s298_wire_53_7});
fanout_n #(2, 0, 0) FANOUT_20 (s298_wire_69, {s298_wire_69_0, s298_wire_69_1});
fanout_n #(2, 0, 0) FANOUT_21 (s298_wire_74, {s298_wire_74_0, s298_wire_74_1});
fanout_n #(2, 0, 0) FANOUT_22 (s298_wire_109, {s298_wire_109_0, s298_wire_109_1});
fanout_n #(5, 0, 0) FANOUT_23 (s298_wire_75, {s298_wire_75_0, s298_wire_75_1, s298_wire_75_2, s298_wire_75_3, s298_wire_75_4});
fanout_n #(8, 0, 0) FANOUT_24 (s298_wire_132, {s298_wire_132_0, s298_wire_132_1, s298_wire_132_2, s298_wire_132_3, s298_wire_132_4, s298_wire_132_5, s298_wire_132_6, s298_wire_132_7});
fanout_n #(2, 0, 0) FANOUT_25 (s298_wire_157, {s298_wire_157_0, s298_wire_157_1});
fanout_n #(2, 0, 0) FANOUT_26 (s298_wire_152, {s298_wire_152_0, s298_wire_152_1});


notg #(0, 0) NOT_1 (s298_wire_2, s298_wire_4);
notg #(0, 0) NOT_2 (s298_wire_8, s298_wire_10);
notg #(0, 0) NOT_3 (s298_wire_14, s298_wire_16);
notg #(0, 0) NOT_4 (s298_wire_18, s298_wire_20);
notg #(0, 0) NOT_5 (s298_wire_22, s298_wire_24);
notg #(0, 0) NOT_6 (s298_wire_25, s298_wire_27);
notg #(0, 0) NOT_7 (s298_wire_29, s298_wire_31);
notg #(0, 0) NOT_8 (s298_wire_33, s298_wire_35);
notg #(0, 0) NOT_9 (s298_wire_37, s298_wire_39);
notg #(0, 0) NOT_10 (s298_wire_41, s298_wire_43);
notg #(0, 0) NOT_11 (s298_wire_45, s298_wire_47);
notg #(0, 0) NOT_12 (s298_wire_49, s298_wire_51);
or_n #(2, 0, 0) OR_1 (s298_wire_53, {s298_wire_54, s298_wire_55});
and_n #(4, 0, 0) AND_1 (s298_wire_56, {s298_wire_53_0, s298_wire_57, s298_wire_58, s298_wire_59});
and_n #(3, 0, 0) AND_2 (s298_wire_10, {s298_wire_53_1, s298_wire_60, s298_wire_61});
notg #(0, 0) NOT_13 (s298_wire_62, s298_wire_53_2);
and_n #(2, 0, 0) AND_3 (s298_wire_63, {s298_wire_53_3, s298_wire_64});
and_n #(2, 0, 0) AND_4 (s298_wire_65, {s298_wire_53_4, s298_wire_28_0});
notg #(0, 0) NOT_14 (s298_wire_66, s298_wire_53_5);
and_n #(2, 0, 0) AND_5 (s298_wire_67, {s298_wire_53_6, s298_wire_68});
and_n #(3, 0, 0) AND_6 (s298_wire_69, {s298_wire_44_0, s298_wire_40_0, s298_wire_36_0});
and_n #(4, 0, 0) AND_7 (s298_wire_70, {s298_wire_44_1, s298_wire_32_0, s298_wire_38_0, s298_wire_34_0});
and_n #(2, 0, 0) AND_8 (s298_wire_71, {s298_wire_44_2, s298_wire_72});
and_n #(2, 0, 0) AND_9 (s298_wire_73, {s298_wire_44_3, s298_wire_38_1});
and_n #(4, 0, 0) AND_10 (s298_wire_74, {s298_wire_52_0, s298_wire_38_2, s298_wire_34_1, s298_wire_75_0});
notg #(0, 0) NOT_15 (s298_wire_76, s298_wire_52_1);
notg #(0, 0) NOT_16 (s298_wire_77, s298_wire_48);
or_n #(2, 0, 0) OR_2 (s298_wire_72, {s298_wire_40_1, s298_wire_78});
and_n #(4, 0, 0) AND_11 (s298_wire_79, {s298_wire_40_2, s298_wire_50_0, s298_wire_34_2, s298_wire_75_1});
and_n #(4, 0, 0) AND_12 (s298_wire_54, {s298_wire_40_3, s298_wire_50_1, s298_wire_34_3, s298_wire_75_2});
and_n #(2, 0, 0) AND_13 (s298_wire_80, {s298_wire_40_4, s298_wire_81});
or_n #(2, 0, 0) OR_3 (s298_wire_64, {s298_wire_36_1, s298_wire_32_1});
and_n #(2, 0, 0) AND_14 (s298_wire_82, {s298_wire_36_2, s298_wire_13_0});
and_n #(2, 0, 0) AND_15 (s298_wire_78, {s298_wire_32_2, s298_wire_34_4});
and_n #(2, 0, 0) AND_16 (s298_wire_83, {s298_wire_32_3, s298_wire_84});
notg #(0, 0) NOT_17 (s298_wire_81, s298_wire_28_1);
and_n #(2, 0, 0) AND_17 (s298_wire_85, {s298_wire_28_2, s298_wire_86});
and_n #(2, 0, 0) AND_18 (s298_wire_87, {s298_wire_28_3, s298_wire_88});
and_n #(2, 0, 0) AND_19 (s298_wire_89, {s298_wire_42_0, s298_wire_38_3});
notg #(0, 0) NOT_18 (s298_wire_90, s298_wire_42_1);
and_n #(2, 0, 0) AND_20 (s298_wire_91, {s298_wire_42_2, s298_wire_66});
notg #(0, 0) NOT_19 (s298_wire_86, s298_wire_15);
notg #(0, 0) NOT_20 (s298_wire_92, s298_wire_46_0);
and_n #(2, 0, 0) AND_21 (s298_wire_93, {s298_wire_46_1, s298_wire_26_0});
and_n #(3, 0, 0) AND_22 (s298_wire_94, {s298_wire_38_4, s298_wire_34_5, s298_wire_30_0});
notg #(0, 0) NOT_21 (s298_wire_95, s298_wire_34_6);
and_n #(2, 0, 0) AND_23 (s298_wire_96, {s298_wire_34_7, s298_wire_97});
notg #(0, 0) NOT_22 (s298_wire_98, s298_wire_34_8);
and_n #(2, 0, 0) AND_24 (s298_wire_99, {s298_wire_34_9, s298_wire_30_1});
and_n #(2, 0, 0) AND_25 (s298_wire_100, {s298_wire_30_2, s298_wire_101});
notg #(0, 0) NOT_23 (s298_wire_97, s298_wire_30_3);
or_n #(2, 0, 0) OR_4 (s298_wire_57, {s298_wire_30_4, s298_wire_5_0});
notg #(0, 0) NOT_24 (s298_wire_102, s298_wire_30_5);
notg #(0, 0) NOT_25 (s298_wire_103, s298_wire_30_6);
notg #(0, 0) NOT_26 (s298_wire_104, s298_wire_26_1);
or_n #(2, 0, 0) OR_5 (s298_wire_84, {s298_wire_26_2, s298_wire_19});
or_n #(2, 0, 0) OR_6 (s298_wire_105, {s298_wire_26_3, s298_wire_13_1});
and_n #(2, 0, 0) AND_26 (s298_wire_106, {s298_wire_23_0, s298_wire_107});
and_n #(2, 0, 0) AND_27 (s298_wire_55, {s298_wire_23_1, s298_wire_108});
nor_n #(4, 0, 0) NOR_1 (s298_wire_109, {s298_wire_36_3, s298_wire_32_4, s298_wire_26_4, s298_wire_40_5});
notg #(0, 0) NOT_27 (s298_wire_58, s298_wire_109_0);
or_n #(2, 0, 0) OR_7 (s298_wire_110, {s298_wire_109_1, s298_wire_83});
nor_n #(2, 0, 0) NOR_2 (s298_wire_75, {s298_wire_28_4, s298_wire_30_7});
notg #(0, 0) NOT_28 (s298_wire_59, s298_wire_75_3);
notg #(0, 0) NOT_29 (s298_wire_111, s298_wire_75_4);
and_n #(2, 0, 0) AND_28 (s298_wire_4, {s298_wire_56, s298_wire_112});
nand_n #(3, 0, 0) NAND_1 (s298_wire_112, {s298_wire_28_5, s298_wire_36_4, s298_wire_3});
nor_n #(3, 0, 0) NOR_3 (s298_wire_113, {s298_wire_32_5, s298_wire_36_5, s298_wire_38_5});
notg #(0, 0) NOT_30 (s298_wire_114, s298_wire_113);
or_n #(2, 0, 0) OR_8 (s298_wire_6, {s298_wire_115, s298_wire_116});
and_n #(2, 0, 0) AND_29 (s298_wire_116, {s298_wire_65, s298_wire_117});
or_n #(2, 0, 0) OR_9 (s298_wire_118, {s298_wire_99, s298_wire_7_0});
and_n #(2, 0, 0) AND_30 (s298_wire_117, {s298_wire_114, s298_wire_118});
nor_n #(2, 0, 0) NOR_4 (s298_wire_115, {s298_wire_53_7, s298_wire_44_4});
nor_n #(2, 0, 0) NOR_5 (s298_wire_119, {s298_wire_34_10, s298_wire_26_5});
or_n #(2, 0, 0) OR_10 (s298_wire_61, {s298_wire_102, s298_wire_119});
nand_n #(2, 0, 0) NAND_2 (s298_wire_60, {s298_wire_28_6, s298_wire_9});
or_n #(2, 0, 0) OR_11 (s298_wire_12, {s298_wire_67, s298_wire_91});
or_n #(2, 0, 0) OR_12 (s298_wire_88, {s298_wire_82, s298_wire_94});
or_n #(2, 0, 0) OR_13 (s298_wire_68, {s298_wire_120, s298_wire_87});
and_n #(2, 0, 0) AND_31 (s298_wire_120, {s298_wire_105, s298_wire_103});
and_n #(2, 0, 0) AND_32 (s298_wire_16, {s298_wire_63, s298_wire_121});
and_n #(2, 0, 0) AND_33 (s298_wire_121, {s298_wire_111, s298_wire_122});
or_n #(2, 0, 0) OR_14 (s298_wire_122, {s298_wire_80, s298_wire_85});
notg #(0, 0) NOT_31 (s298_wire_20, s298_wire_123);
or_n #(2, 0, 0) OR_15 (s298_wire_123, {s298_wire_110, s298_wire_124});
nor_n #(2, 0, 0) NOR_6 (s298_wire_125, {s298_wire_26_6, s298_wire_21_0});
or_n #(2, 0, 0) OR_16 (s298_wire_126, {s298_wire_125, s298_wire_127});
and_n #(2, 0, 0) AND_34 (s298_wire_128, {s298_wire_126, s298_wire_98});
or_n #(2, 0, 0) OR_17 (s298_wire_124, {s298_wire_128, s298_wire_62});
nor_n #(2, 0, 0) NOR_7 (s298_wire_127, {s298_wire_28_7, s298_wire_38_6});
notg #(0, 0) NOT_32 (s298_wire_108, s298_wire_74_0);
notg #(0, 0) NOT_33 (s298_wire_27, s298_wire_129);
or_n #(3, 0, 0) OR_18 (s298_wire_129, {s298_wire_130, s298_wire_131, s298_wire_132_0});
and_n #(2, 0, 0) AND_35 (s298_wire_133, {s298_wire_73, s298_wire_96});
or_n #(2, 0, 0) OR_19 (s298_wire_134, {s298_wire_92, s298_wire_133});
and_n #(2, 0, 0) AND_36 (s298_wire_130, {s298_wire_134, s298_wire_104});
and_n #(2, 0, 0) AND_37 (s298_wire_131, {s298_wire_93, s298_wire_135});
notg #(0, 0) NOT_34 (s298_wire_135, s298_wire_70);
notg #(0, 0) NOT_35 (s298_wire_24, s298_wire_136);
or_n #(3, 0, 0) OR_20 (s298_wire_136, {s298_wire_79, s298_wire_106, s298_wire_132_1});
notg #(0, 0) NOT_36 (s298_wire_107, s298_wire_74_1);
nor_n #(2, 0, 0) NOR_8 (s298_wire_43, {s298_wire_44_5, s298_wire_132_2});
notg #(0, 0) NOT_37 (s298_wire_39, s298_wire_137);
or_n #(2, 0, 0) OR_21 (s298_wire_137, {s298_wire_138, s298_wire_71});
or_n #(2, 0, 0) OR_22 (s298_wire_138, {s298_wire_89, s298_wire_132_3});
and_n #(3, 0, 0) AND_38 (s298_wire_35, {s298_wire_139, s298_wire_140, s298_wire_141});
nor_n #(2, 0, 0) NOR_9 (s298_wire_142, {s298_wire_42_3, s298_wire_38_7});
or_n #(2, 0, 0) OR_23 (s298_wire_141, {s298_wire_95, s298_wire_142});
notg #(0, 0) NOT_38 (s298_wire_139, s298_wire_132_4);
notg #(0, 0) NOT_39 (s298_wire_140, s298_wire_69_0);
notg #(0, 0) NOT_40 (s298_wire_31, s298_wire_143);
or_n #(2, 0, 0) OR_24 (s298_wire_143, {s298_wire_144, s298_wire_145});
notg #(0, 0) NOT_41 (s298_wire_101, s298_wire_69_1);
nor_n #(2, 0, 0) NOR_10 (s298_wire_146, {s298_wire_40_6, s298_wire_36_6});
or_n #(2, 0, 0) OR_25 (s298_wire_147, {s298_wire_146, s298_wire_148});
or_n #(2, 0, 0) OR_26 (s298_wire_144, {s298_wire_100, s298_wire_132_5});
and_n #(2, 0, 0) AND_39 (s298_wire_145, {s298_wire_147, s298_wire_90});
nor_n #(3, 0, 0) NOR_11 (s298_wire_148, {s298_wire_34_11, s298_wire_38_8, s298_wire_30_8});
and_n #(2, 0, 0) AND_40 (s298_wire_51, {s298_wire_149, s298_wire_150});
and_n #(2, 0, 0) AND_41 (s298_wire_151, {s298_wire_76, s298_wire_152_0});
nor_n #(2, 0, 0) NOR_12 (s298_wire_153, {s298_wire_50_2, s298_wire_152_1});
notg #(0, 0) NOT_42 (s298_wire_149, s298_wire_132_6);
or_n #(2, 0, 0) OR_27 (s298_wire_150, {s298_wire_151, s298_wire_153});
and_n #(2, 0, 0) AND_42 (s298_wire_47, {s298_wire_154, s298_wire_155});
and_n #(2, 0, 0) AND_43 (s298_wire_156, {s298_wire_77, s298_wire_157_0});
nor_n #(2, 0, 0) NOR_13 (s298_wire_158, {s298_wire_46_2, s298_wire_157_1});
notg #(0, 0) NOT_43 (s298_wire_154, s298_wire_132_7);
or_n #(2, 0, 0) OR_28 (s298_wire_155, {s298_wire_156, s298_wire_158});
bufg #(0, 0) BUF_1 (s298_wire_1, Clock_net_0);
bufg #(0, 0) BUF_2 (s298_wire_132, g0_net_0);
bufg #(0, 0) BUF_3 (s298_wire_157, g1_net_0);
bufg #(0, 0) BUF_4 (g117_net_0, s298_wire_13_2);
bufg #(0, 0) BUF_5 (g118_net_0, s298_wire_5_1);
bufg #(0, 0) BUF_6 (g132_net_0, s298_wire_17);
bufg #(0, 0) BUF_7 (g133_net_0, s298_wire_7_1);
bufg #(0, 0) BUF_8 (s298_wire_152, g2_net_0);
bufg #(0, 0) BUF_9 (g66_net_0, s298_wire_21_1);
bufg #(0, 0) BUF_10 (g67_net_0, s298_wire_11);
dff DFF_1  (s298_wire_3, s298_wire_2, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, si, reset);
dff DFF_2  (s298_wire_5, s298_wire_4, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_3, reset);
dff DFF_3  (s298_wire_7, s298_wire_6, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_5, reset);
dff DFF_4  (s298_wire_9, s298_wire_8, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_7, reset);
dff DFF_5  (s298_wire_11, s298_wire_10, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_9, reset);
dff DFF_6  (s298_wire_13, s298_wire_12, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_11, reset);
dff DFF_7  (s298_wire_15, s298_wire_14, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_13, reset);
dff DFF_8  (s298_wire_17, s298_wire_16, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_15, reset);
dff DFF_9  (s298_wire_19, s298_wire_18, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_17, reset);
dff DFF_10  (s298_wire_21, s298_wire_20, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_19, reset);
dff DFF_11  (s298_wire_23, s298_wire_22, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_21, reset);
dff DFF_12  (s298_wire_26, s298_wire_25, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_23, reset);
dff DFF_13  (s298_wire_28, s298_wire_27, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_26, reset);
dff DFF_14  (s298_wire_30, s298_wire_29, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_28, reset);
dff DFF_15  (s298_wire_32, s298_wire_31, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_30, reset);
dff DFF_16  (s298_wire_34, s298_wire_33, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_32, reset);
dff DFF_17  (s298_wire_36, s298_wire_35, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_34, reset);
dff DFF_18  (s298_wire_38, s298_wire_37, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_36, reset);
dff DFF_19  (s298_wire_40, s298_wire_39, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_38, reset);
dff DFF_20  (s298_wire_42, s298_wire_41, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_40, reset);
dff DFF_21  (s298_wire_44, s298_wire_43, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_42, reset);
dff DFF_22  (s298_wire_46, s298_wire_45, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_44, reset);
dff DFF_23  (s298_wire_48, s298_wire_47, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_46, reset);
dff DFF_24  (s298_wire_50, s298_wire_49, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_48, reset);
dff DFF_25  (s298_wire_52, s298_wire_51, s298_wire_1, 1'b0, 1'b0, 1'b1, NbarT, s298_wire_50, reset);

assign so = s298_wire_52;

endmodule
