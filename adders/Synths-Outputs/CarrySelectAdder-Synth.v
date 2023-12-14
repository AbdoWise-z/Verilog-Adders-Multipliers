/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Dec 13 20:27:52 2023
/////////////////////////////////////////////////////////////


module RippleCarryAdder_16Bit_Synth ( a, b, Cin, S, Cout );
  input [15:0] a;
  input [15:0] b;
  output [15:0] S;
  input Cin;
  output Cout;

  wire   [15:1] Carry;

  FA_Synth FA_0  ( .a(a[0]), .b(b[0]), .Cin(Cin), .S(S[0]), 
        .Cout(Carry[1]) );
  FA_Synth FA_1  ( .a(a[1]), .b(b[1]), .Cin(Carry[1]), .S(S[1]), 
        .Cout(Carry[2]) );
  FA_Synth FA_2  ( .a(a[2]), .b(b[2]), .Cin(Carry[2]), .S(S[2]), 
        .Cout(Carry[3]) );
  FA_Synth  FA_3  ( .a(a[3]), .b(b[3]), .Cin(Carry[3]), .S(S[3]), 
        .Cout(Carry[4]) );
  FA_Synth  FA_4  ( .a(a[4]), .b(b[4]), .Cin(Carry[4]), .S(S[4]), 
        .Cout(Carry[5]) );
  FA_Synth FA_5  ( .a(a[5]), .b(b[5]), .Cin(Carry[5]), .S(S[5]), 
        .Cout(Carry[6]) );
  FA_Synth  FA_6  ( .a(a[6]), .b(b[6]), .Cin(Carry[6]), .S(S[6]), 
        .Cout(Carry[7]) );
  FA_Synth  FA_7  ( .a(a[7]), .b(b[7]), .Cin(Carry[7]), .S(S[7]), 
        .Cout(Carry[8]) );
  FA_Synth  FA_8  ( .a(a[8]), .b(b[8]), .Cin(Carry[8]), .S(S[8]), 
        .Cout(Carry[9]) );
  FA_Synth  FA_9  ( .a(a[9]), .b(b[9]), .Cin(Carry[9]), .S(S[9]), 
        .Cout(Carry[10]) );
  FA_Synth  FA_10  ( .a(a[10]), .b(b[10]), .Cin(Carry[10]), .S(
        S[10]), .Cout(Carry[11]) );
  FA_Synth  FA_11  ( .a(a[11]), .b(b[11]), .Cin(Carry[11]), .S(
        S[11]), .Cout(Carry[12]) );
  FA_Synth  FA_12  ( .a(a[12]), .b(b[12]), .Cin(Carry[12]), .S(
        S[12]), .Cout(Carry[13]) );
  FA_Synth  FA_13  ( .a(a[13]), .b(b[13]), .Cin(Carry[13]), .S(
        S[13]), .Cout(Carry[14]) );
  FA_Synth  FA_14  ( .a(a[14]), .b(b[14]), .Cin(Carry[14]), .S(
        S[14]), .Cout(Carry[15]) );
  FA_Synth  FA_15  ( .a(a[15]), .b(b[15]), .Cin(Carry[15]), .S(
        S[15]), .Cout(Cout) );
endmodule


/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Dec 13 20:27:26 2023
/////////////////////////////////////////////////////////////


module CarrySelectAdder_Synth ( a, b, Cin, S, Cout, Overflow );
  input [31:0] a;
  input [31:0] b;
  output [31:0] S;
  input Cin;
  output Cout, Overflow;
  wire   Carry_select, Carry_upper_one, Carry_upper_zero, n4, n5;
  wire   [15:0] upper_S_one;
  wire   [15:0] upper_S_zero;

  RippleCarryAdder_16Bit_Synth First_Nibble ( .a(a[15:0]), .b(b[15:0]), .Cin(Cin), 
        .S(S[15:0]), .Cout(Carry_select) );
  RippleCarryAdder_16Bit_Synth Second_Nibble_one ( .a(a[31:16]), .b(b[31:16]), 
        .Cin(1'b1), .S(upper_S_one), .Cout(Carry_upper_one) );
  RippleCarryAdder_16Bit_Synth Second_Nibble_zero ( .a(a[31:16]), .b(b[31:16]), 
        .Cin(1'b0), .S(upper_S_zero), .Cout(Carry_upper_zero) );
  MUX21X1 U24 ( .IN1(upper_S_zero[14]), .IN2(upper_S_one[14]), .S(Carry_select), .Q(S[30]) );
  MUX21X1 U25 ( .IN1(upper_S_zero[13]), .IN2(upper_S_one[13]), .S(Carry_select), .Q(S[29]) );
  MUX21X1 U26 ( .IN1(upper_S_zero[12]), .IN2(upper_S_one[12]), .S(Carry_select), .Q(S[28]) );
  MUX21X1 U27 ( .IN1(upper_S_zero[11]), .IN2(upper_S_one[11]), .S(Carry_select), .Q(S[27]) );
  MUX21X1 U28 ( .IN1(upper_S_zero[10]), .IN2(upper_S_one[10]), .S(Carry_select), .Q(S[26]) );
  MUX21X1 U29 ( .IN1(upper_S_zero[9]), .IN2(upper_S_one[9]), .S(Carry_select), 
        .Q(S[25]) );
  MUX21X1 U30 ( .IN1(upper_S_zero[8]), .IN2(upper_S_one[8]), .S(Carry_select), 
        .Q(S[24]) );
  MUX21X1 U31 ( .IN1(upper_S_zero[7]), .IN2(upper_S_one[7]), .S(Carry_select), 
        .Q(S[23]) );
  MUX21X1 U32 ( .IN1(upper_S_zero[6]), .IN2(upper_S_one[6]), .S(Carry_select), 
        .Q(S[22]) );
  MUX21X1 U33 ( .IN1(upper_S_zero[5]), .IN2(upper_S_one[5]), .S(Carry_select), 
        .Q(S[21]) );
  MUX21X1 U34 ( .IN1(upper_S_zero[4]), .IN2(upper_S_one[4]), .S(Carry_select), 
        .Q(S[20]) );
  MUX21X1 U35 ( .IN1(upper_S_zero[3]), .IN2(upper_S_one[3]), .S(Carry_select), 
        .Q(S[19]) );
  MUX21X1 U36 ( .IN1(upper_S_zero[2]), .IN2(upper_S_one[2]), .S(Carry_select), 
        .Q(S[18]) );
  MUX21X1 U37 ( .IN1(upper_S_zero[1]), .IN2(upper_S_one[1]), .S(Carry_select), 
        .Q(S[17]) );
  MUX21X1 U38 ( .IN1(upper_S_zero[0]), .IN2(upper_S_one[0]), .S(Carry_select), 
        .Q(S[16]) );
  NOR2X0 U39 ( .IN1(n4), .IN2(n5), .QN(Overflow) );
  XOR2X1 U40 ( .IN1(b[31]), .IN2(a[31]), .Q(n5) );
  XNOR2X1 U41 ( .IN1(a[31]), .IN2(S[31]), .Q(n4) );
  MUX21X1 U42 ( .IN1(upper_S_zero[15]), .IN2(upper_S_one[15]), .S(Carry_select), .Q(S[31]) );
  MUX21X1 U43 ( .IN1(Carry_upper_zero), .IN2(Carry_upper_one), .S(Carry_select), .Q(Cout) );
endmodule

