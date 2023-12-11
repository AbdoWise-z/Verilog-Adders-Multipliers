
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
