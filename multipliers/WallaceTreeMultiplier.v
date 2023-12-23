module ThreeLevelAdder64(
	input [63:0]x,
	input [63:0]y,
	input [63:0]z,
	output [63:0]s,
	output [63:0]c);
assign s = x^y^z;
assign c[0] = 1'b0;
assign c[63:1] = (x[63:0]&y[63:0]) | (y[63:0]&z[63:0]) | (z[63:0]&x[63:0]);

endmodule

module PartialMultiplication(
	output wire [2047:0] x,
	input [31:0]a,
	input [31:0]b);

genvar i;
generate
  for (i = 0; i < 32; i = i + 1) begin : gen_block
    assign x[(i + 1) * 64 - 1: 64 * i] = (b[i] == 1'b1) ? (a << i) : 64'b0000000000000000000000000000000000000000000000000000000000000000;
  end
endgenerate

endmodule

module RecursiveCarryAdder64(
output [63:0] sum,
output cout,
input [63:0] a,b);
  
wire cin = 1'b0;
wire [63:0] c,x,y;
  
and_xor axr[63:0](x, y, a, b);
wire [63:1] x2, y2;
equalize equalize_0(c[0], x[0]);
computePart comp_0[63:1](x2[63:1], y2[63:1], x[63:1], y[63:1], x[62:0], y[62:0]);

wire [63:2] x3, y3;
equalize equalize_1(c[1], x2[1]);
computePart comp_1[63:2](x3[63:2], y3[63:2], x2[63:2], y2[63:2], {x2[61:1],x[0]}, {y2[61:1],y[0]});

wire [63:4] x4, y4;
equalize equalize_2[3:2](c[3:2], x3[3:2]);
computePart comp_2[63:4](x4[63:4], y4[63:4], x3[63:4], y3[63:4], {x3[59:2],x2[1],x[0]}, {y3[59:2],y2[1],y[0]});

wire [63:8] x5, y5;
equalize equalize_3[7:4](c[7:4], x4[7:4]);
computePart comp_3[63:8](x5[63:8], y5[63:8], x4[63:8], y4[63:8], {x4[55:4],x3[3:2],x2[1],x[0]}, {y4[55:4],y3[3:2],y2[1],y[0]});
        
wire [63:16] x6, y6;
equalize equalize_4[15:8](c[15:8], x5[15:8]);
computePart comp_4[63:16](x6[63:16], y6[63:16], x5[63:16], y5[63:16], {x5[47:8],x4[7:4],x3[3:2],x2[1],x[0]}, {y5[47:8],y4[7:4],y3[3:2],y2[1],y[0]});
  
wire [63:32] x7, y7;
equalize equalize_5[31:16](c[31:16], x6[31:16]);
computePart comp_5[63:32](x7[63:32], y7[63:32], x6[63:32], y6[63:32], {x6[31:16],x5[15:8],x4[7:4],x3[3:2],x2[1],x[0]}, {y6[31:16],y5[15:8],y4[7:4],y3[3:2],y2[1],y[0]});



equalize equalize_6[63:32](c[63:32], x6[63:32]);
halfadder2 adder_0(sum[0],y[0],cin);
halfadder2 adder_1[63:1](sum[63:1],y[63:1], c[62:0]);
buf(cout, c[63]);
endmodule



module and_xor(
    output X, Y,
    input A, B);
    and(X, A, B);
    xor(Y, A, B);
endmodule

module halfadder2(
    output Z,
    input X, Y);
    xor(Z, X, Y);
endmodule

module equalize(
    output R,
    input I);
    assign R=I;
endmodule

module computePart(output X, Y, input Xi, Yi, Xii, Yii);
    wire w;
    and(w, Yi, Xii);
    or(X, w, Xi);
    and(Y, Yi, Yii);
endmodule


module WallaceTreeMultiplier32(
input [31:0] a,		
input [31:0] b,
output [63:0] c
);

	wire[31:0]mA;
	wire[31:0]mB;
	assign mA = a[31] == 1'b1 ? ~a + 1 : a;
	assign mB = b[31] == 1'b1 ? ~b + 1 : b;
	
	wire [2047:0]pm;
	PartialMultiplication partialmultiplications(pm,mA,mB);


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
wire [63:0] res;
RecursiveCarryAdder64 cla(res,cout,s81,c81);
assign c = (a[31] != b[31]) ? ~res + 1 : res;

endmodule

