`include "WallaceTreeMultiplier32_deps.v"
`include "RecursiveCarryAdder64.v"

module WallaceTreeMultiplier32(
output [63:0] result, 	
input [31:0] a,		
input [31:0] b);


wire [2047:0]pm;
	PartialMultiplication partialmultiplications(pm,a,b);


wire [63:0] s11,s12,s13,s14,s15,s16,s17,s18,s19,s110,c11,c12,c13,c14,c15,c16,c17,c18,c19,c110;

	ThreeLevelAdder64 TLA11(pm[63:0],pm[127:64],pm[191:128],s11[63:0],c11[63:0]);
	ThreeLevelAdder64 TLA12(pm[255:192],pm[319:256],pm[383:320],s12[63:0],c12[63:0]);
	ThreeLevelAdder64 TLA13(pm[447:384],pm[511:448],pm[575:512],s13[63:0],c13[63:0]);
	ThreeLevelAdder64 TLA14(pm[639:576],pm[703:640],pm[767:704],s14[63:0],c14[63:0]);
	ThreeLevelAdder64 TLA15(pm[831:768],pm[895:832],pm[959:896],s15[63:0],c15[63:0]);
	ThreeLevelAdder64 TLA16(pm[1023:960],pm[1087:1024],pm[1151:1088],s16[63:0],c16[63:0]);
	ThreeLevelAdder64 TLA17(pm[1215:1152],pm[1279:1216],pm[1343:1280],s17[63:0],c17[63:0]);
	ThreeLevelAdder64 TLA18(pm[1407:1344],pm[1471:1408],pm[1535:1472],s18[63:0],c18[63:0]);
	ThreeLevelAdder64 TLA19(pm[1599:1536],pm[1663:1600],pm[1727:1664],s19[63:0],c19[63:0]);
	ThreeLevelAdder64 TLA110(pm[1791:1728],pm[1855:1792],pm[1919:1856],s110[63:0],c110[63:0]);

wire [63:0] s21,s22,s23,s24,s25,s26,s27,c21,c22,c23,c24,c25,c26,c27;

	ThreeLevelAdder64 TLA21(s11[63:0],c11[63:0],s12[63:0],s21[63:0],c21[63:0]);
	ThreeLevelAdder64 TLA22(c12[63:0],s13[63:0],c13[63:0],s22[63:0],c22[63:0]);
	ThreeLevelAdder64 TLA23(s14[63:0],c14[63:0],s15[63:0],s23[63:0],c23[63:0]);
	ThreeLevelAdder64 TLA24(c15[63:0],s16[63:0],c16[63:0],s24[63:0],c24[63:0]);
	ThreeLevelAdder64 TLA25(s17[63:0],c17[63:0],s18[63:0],s25[63:0],c25[63:0]);
	ThreeLevelAdder64 TLA26(c18[63:0],s19[63:0],c19[63:0],s26[63:0],c26[63:0]);
	ThreeLevelAdder64 TLA27(s110[63:0],c110[63:0],pm[1983:1920],s27[63:0],c27[63:0]);

wire [63:0] s31,s32,s33,s34,s35,c31,c32,c33,c34,c35;

	ThreeLevelAdder64 TLA31(s21[63:0],c21[63:0],s22[63:0],s31[63:0],c31[63:0]);
	ThreeLevelAdder64 TLA32(c22[63:0],s23[63:0],c23[63:0],s32[63:0],c32[63:0]);
	ThreeLevelAdder64 TLA33(s24[63:0],c24[63:0],s25[63:0],s33[63:0],c33[63:0]);
	ThreeLevelAdder64 TLA34(c25[63:0],s26[63:0],c26[63:0],s34[63:0],c34[63:0]);
	ThreeLevelAdder64 TLA35(s27[63:0],c27[63:0],pm[2047:1984],s35[63:0],c35[63:0]);

wire [63:0] s41,s42,s43,c41,c42,c43;

	ThreeLevelAdder64 TLA41(s31[63:0],c31[63:0],s32[63:0],s41[63:0],c41[63:0]);
	ThreeLevelAdder64 TLA42(c32[63:0],s33[63:0],c33[63:0],s42[63:0],c42[63:0]);
	ThreeLevelAdder64 TLA43(s34[63:0],c34[63:0],s35[63:0],s43[63:0],c43[63:0]);

wire [63:0] s51,s52,c51,c52;

	ThreeLevelAdder64 TLA51(s41[63:0],c41[63:0],s42[63:0],s51[63:0],c51[63:0]);
	ThreeLevelAdder64 TLA52(c42[63:0],s43[63:0],c43[63:0],s52[63:0],c52[63:0]);

wire [63:0] s61,c61;

	ThreeLevelAdder64 TLA61(s51[63:0],c51[63:0],s52[63:0],s61[63:0],c61[63:0]);

wire [63:0] s71,c71;

	ThreeLevelAdder64 TLA71(s61[63:0],c61[63:0],c52[63:0],s71[63:0],c71[63:0]);

wire [63:0] s81,c81;

	ThreeLevelAdder64 TLA81(s71[63:0],c71[63:0],c35[63:0],s81[63:0],c81[63:0]);

wire cout;
RecursiveCarryAdder64 cla(result,cout,s81,c81);


endmodule

