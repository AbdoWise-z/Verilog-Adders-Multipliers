/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Dec 13 20:28:18 2023
/////////////////////////////////////////////////////////////


module FA_Synth ( a, b, Cin, S, Cout );
  input a, b, Cin;
  output S, Cout;
  wire   n2;

  XOR2X1 U4 ( .IN1(b), .IN2(n2), .Q(S) );
  AO22X1 U5 ( .IN1(Cin), .IN2(a), .IN3(b), .IN4(n2), .Q(Cout) );
  XOR2X1 U6 ( .IN1(Cin), .IN2(a), .Q(n2) );
endmodule


/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Dec 13 20:29:35 2023
/////////////////////////////////////////////////////////////


module RippleCarryAdder_Synth ( a, b, Cin, S, Cout, Overflow );
  input [31:0] a;
  input [31:0] b;
  output [31:0] S;
  input Cin;
  output Cout, Overflow;
  wire   n3, n4;
  wire   [31:1] Carry;

  FA_Synth FA_0  ( .a(a[0]), .b(b[0]), .Cin(Cin), .S(S[0]), 
        .Cout(Carry[1]) );
  FA_Synth FA_1  ( .a(a[1]), .b(b[1]), .Cin(Carry[1]), .S(S[1]), 
        .Cout(Carry[2]) );
  FA_Synth FA_2  ( .a(a[2]), .b(b[2]), .Cin(Carry[2]), .S(S[2]), 
        .Cout(Carry[3]) );
  FA_Synth FA_3  ( .a(a[3]), .b(b[3]), .Cin(Carry[3]), .S(S[3]), 
        .Cout(Carry[4]) );
  FA_Synth FA_4  ( .a(a[4]), .b(b[4]), .Cin(Carry[4]), .S(S[4]), 
        .Cout(Carry[5]) );
  FA_Synth FA_5  ( .a(a[5]), .b(b[5]), .Cin(Carry[5]), .S(S[5]), 
        .Cout(Carry[6]) );
  FA_Synth FA_6  ( .a(a[6]), .b(b[6]), .Cin(Carry[6]), .S(S[6]), 
        .Cout(Carry[7]) );
  FA_Synth FA_7  ( .a(a[7]), .b(b[7]), .Cin(Carry[7]), .S(S[7]), 
        .Cout(Carry[8]) );
  FA_Synth FA_8  ( .a(a[8]), .b(b[8]), .Cin(Carry[8]), .S(S[8]), 
        .Cout(Carry[9]) );
  FA_Synth FA_9  ( .a(a[9]), .b(b[9]), .Cin(Carry[9]), .S(S[9]), 
        .Cout(Carry[10]) );
  FA_Synth FA_10  ( .a(a[10]), .b(b[10]), .Cin(Carry[10]), .S(
        S[10]), .Cout(Carry[11]) );
  FA_Synth FA_11  ( .a(a[11]), .b(b[11]), .Cin(Carry[11]), .S(
        S[11]), .Cout(Carry[12]) );
  FA_Synth FA_12  ( .a(a[12]), .b(b[12]), .Cin(Carry[12]), .S(
        S[12]), .Cout(Carry[13]) );
  FA_Synth FA_13  ( .a(a[13]), .b(b[13]), .Cin(Carry[13]), .S(
        S[13]), .Cout(Carry[14]) );
  FA_Synth FA_14  ( .a(a[14]), .b(b[14]), .Cin(Carry[14]), .S(
        S[14]), .Cout(Carry[15]) );
  FA_Synth FA_15  ( .a(a[15]), .b(b[15]), .Cin(Carry[15]), .S(
        S[15]), .Cout(Carry[16]) );
  FA_Synth FA_16  ( .a(a[16]), .b(b[16]), .Cin(Carry[16]), .S(
        S[16]), .Cout(Carry[17]) );
  FA_Synth FA_17  ( .a(a[17]), .b(b[17]), .Cin(Carry[17]), .S(
        S[17]), .Cout(Carry[18]) );
  FA_Synth FA_18  ( .a(a[18]), .b(b[18]), .Cin(Carry[18]), .S(
        S[18]), .Cout(Carry[19]) );
  FA_Synth FA_19  ( .a(a[19]), .b(b[19]), .Cin(Carry[19]), .S(
        S[19]), .Cout(Carry[20]) );
  FA_Synth FA_20  ( .a(a[20]), .b(b[20]), .Cin(Carry[20]), .S(
        S[20]), .Cout(Carry[21]) );
  FA_Synth FA_21  ( .a(a[21]), .b(b[21]), .Cin(Carry[21]), .S(
        S[21]), .Cout(Carry[22]) );
  FA_Synth FA_22  ( .a(a[22]), .b(b[22]), .Cin(Carry[22]), .S(
        S[22]), .Cout(Carry[23]) );
  FA_Synth FA_23  ( .a(a[23]), .b(b[23]), .Cin(Carry[23]), .S(
        S[23]), .Cout(Carry[24]) );
  FA_Synth FA_24  ( .a(a[24]), .b(b[24]), .Cin(Carry[24]), .S(
        S[24]), .Cout(Carry[25]) );
  FA_Synth FA_25  ( .a(a[25]), .b(b[25]), .Cin(Carry[25]), .S(
        S[25]), .Cout(Carry[26]) );
  FA_Synth FA_26  ( .a(a[26]), .b(b[26]), .Cin(Carry[26]), .S(
        S[26]), .Cout(Carry[27]) );
  FA_Synth FA_27  ( .a(a[27]), .b(b[27]), .Cin(Carry[27]), .S(
        S[27]), .Cout(Carry[28]) );
  FA_Synth FA_28  ( .a(a[28]), .b(b[28]), .Cin(Carry[28]), .S(
        S[28]), .Cout(Carry[29]) );
  FA_Synth FA_29  ( .a(a[29]), .b(b[29]), .Cin(Carry[29]), .S(
        S[29]), .Cout(Carry[30]) );
  FA_Synth FA_30  ( .a(a[30]), .b(b[30]), .Cin(Carry[30]), .S(
        S[30]), .Cout(Carry[31]) );
  FA_Synth FA_31  ( .a(a[31]), .b(b[31]), .Cin(Carry[31]), .S(
        S[31]), .Cout(Cout) );
  NOR2X0 U4 ( .IN1(n3), .IN2(n4), .QN(Overflow) );
  XOR2X1 U5 ( .IN1(b[31]), .IN2(a[31]), .Q(n4) );
  XNOR2X1 U6 ( .IN1(a[31]), .IN2(S[31]), .Q(n3) );
endmodule

