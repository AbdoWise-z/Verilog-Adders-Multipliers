`include "WallaceTreeMultiplier32_deps.v"
`include "RecursiveCarryAdder64.v"

module WallaceTreeMultiplier32(
output [63:0] result, 	
input [31:0] a,		
input [31:0] b);


wire [31:0][63:0]pm;
	PartialMultiplication partialmultiplications(pm,a,b);


wire [63:0] s11,s12,s13,s14,s15,s16,s17,s18,s19,s110,c11,c12,c13,c14,c15,c16,c17,c18,c19,c110;

	ThreeLevelAdder64 TLA11(pm[0][63:0],pm[1][63:0],pm[2][63:0],s11[63:0],c11[63:0]);
	ThreeLevelAdder64 TLA12(pm[3][63:0],pm[4][63:0],pm[5][63:0],s12[63:0],c12[63:0]);
	ThreeLevelAdder64 TLA13(pm[6][63:0],pm[7][63:0],pm[8][63:0],s13[63:0],c13[63:0]);
	ThreeLevelAdder64 TLA14(pm[9][63:0],pm[10][63:0],pm[11][63:0],s14[63:0],c14[63:0]);
	ThreeLevelAdder64 TLA15(pm[12][63:0],pm[13][63:0],pm[14][63:0],s15[63:0],c15[63:0]);
	ThreeLevelAdder64 TLA16(pm[15][63:0],pm[16][63:0],pm[17][63:0],s16[63:0],c16[63:0]);
	ThreeLevelAdder64 TLA17(pm[18][63:0],pm[19][63:0],pm[20][63:0],s17[63:0],c17[63:0]);
	ThreeLevelAdder64 TLA18(pm[21][63:0],pm[22][63:0],pm[23][63:0],s18[63:0],c18[63:0]);
	ThreeLevelAdder64 TLA19(pm[24][63:0],pm[25][63:0],pm[26][63:0],s19[63:0],c19[63:0]);
	ThreeLevelAdder64 TLA110(pm[27][63:0],pm[28][63:0],pm[29][63:0],s110[63:0],c110[63:0]);

wire [63:0] s21,s22,s23,s24,s25,s26,s27,c21,c22,c23,c24,c25,c26,c27;

	ThreeLevelAdder64 TLA21(s11[63:0],c11[63:0],s12[63:0],s21[63:0],c21[63:0]);
	ThreeLevelAdder64 TLA22(c12[63:0],s13[63:0],c13[63:0],s22[63:0],c22[63:0]);
	ThreeLevelAdder64 TLA23(s14[63:0],c14[63:0],s15[63:0],s23[63:0],c23[63:0]);
	ThreeLevelAdder64 TLA24(c15[63:0],s16[63:0],c16[63:0],s24[63:0],c24[63:0]);
	ThreeLevelAdder64 TLA25(s17[63:0],c17[63:0],s18[63:0],s25[63:0],c25[63:0]);
	ThreeLevelAdder64 TLA26(c18[63:0],s19[63:0],c19[63:0],s26[63:0],c26[63:0]);
	ThreeLevelAdder64 TLA27(s110[63:0],c110[63:0],pm[30][63:0],s27[63:0],c27[63:0]);

wire [63:0] s31,s32,s33,s34,s35,c31,c32,c33,c34,c35;

	ThreeLevelAdder64 TLA31(s21[63:0],c21[63:0],s22[63:0],s31[63:0],c31[63:0]);
	ThreeLevelAdder64 TLA32(c22[63:0],s23[63:0],c23[63:0],s32[63:0],c32[63:0]);
	ThreeLevelAdder64 TLA33(s24[63:0],c24[63:0],s25[63:0],s33[63:0],c33[63:0]);
	ThreeLevelAdder64 TLA34(c25[63:0],s26[63:0],c26[63:0],s34[63:0],c34[63:0]);
	ThreeLevelAdder64 TLA35(s27[63:0],c27[63:0],pm[31][63:0],s35[63:0],c35[63:0]);

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

