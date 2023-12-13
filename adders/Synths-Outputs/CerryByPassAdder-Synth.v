/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Dec 13 20:19:14 2023
/////////////////////////////////////////////////////////////


module CarryByPassAdder_4Bit_Synth ( a, b, Cin, S, Cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR3X1 U13 ( .IN1(b[3]), .IN2(a[3]), .IN3(n8), .Q(S[3]) );
  XOR3X1 U14 ( .IN1(b[2]), .IN2(a[2]), .IN3(n9), .Q(S[2]) );
  XOR3X1 U15 ( .IN1(b[1]), .IN2(a[1]), .IN3(n10), .Q(S[1]) );
  XOR3X1 U16 ( .IN1(b[0]), .IN2(a[0]), .IN3(Cin), .Q(S[0]) );
  AO22X1 U17 ( .IN1(a[3]), .IN2(n8), .IN3(b[3]), .IN4(n11), .Q(Cout) );
  OR2X1 U18 ( .IN1(n8), .IN2(a[3]), .Q(n11) );
  AO22X1 U19 ( .IN1(a[2]), .IN2(n9), .IN3(b[2]), .IN4(n12), .Q(n8) );
  OR2X1 U20 ( .IN1(n9), .IN2(a[2]), .Q(n12) );
  AO22X1 U21 ( .IN1(a[1]), .IN2(n10), .IN3(b[1]), .IN4(n13), .Q(n9) );
  OR2X1 U22 ( .IN1(n10), .IN2(a[1]), .Q(n13) );
  AO22X1 U23 ( .IN1(a[0]), .IN2(Cin), .IN3(b[0]), .IN4(n14), .Q(n10) );
  OR2X1 U24 ( .IN1(a[0]), .IN2(Cin), .Q(n14) );
endmodule


/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Dec 13 20:16:26 2023
/////////////////////////////////////////////////////////////


module CarryByPassAdder_Synth ( a, b, Cin, S, Cout, Overflow );
  input [31:0] a;
  input [31:0] b;
  output [31:0] S;
  input Cin;
  output Cout, Overflow;
  wire   n3, n4;
  wire   [7:1] Carry;

  CarryByPassAdder_4Bit_Synth CBPA0  ( .a(a[3:0]), .b(b[3:0]), .Cin(Cin), .S(S[3:0]), .Cout(Carry[1]) );
  CarryByPassAdder_4Bit_Synth CBPA1  ( .a(a[7:4]), .b(b[7:4]), .Cin(
        Carry[1]), .S(S[7:4]), .Cout(Carry[2]) );
  CarryByPassAdder_4Bit_Synth CBPA2  ( .a(a[11:8]), .b(b[11:8]), .Cin(
        Carry[2]), .S(S[11:8]), .Cout(Carry[3]) );
  CarryByPassAdder_4Bit_Synth CBPA3  ( .a(a[15:12]), .b(b[15:12]), 
        .Cin(Carry[3]), .S(S[15:12]), .Cout(Carry[4]) );
  CarryByPassAdder_4Bit_Synth CBPA4  ( .a(a[19:16]), .b(b[19:16]), 
        .Cin(Carry[4]), .S(S[19:16]), .Cout(Carry[5]) );
  CarryByPassAdder_4Bit_Synth CBPA5  ( .a(a[23:20]), .b(b[23:20]), 
        .Cin(Carry[5]), .S(S[23:20]), .Cout(Carry[6]) );
  CarryByPassAdder_4Bit_Synth CBPA6  ( .a(a[27:24]), .b(b[27:24]), 
        .Cin(Carry[6]), .S(S[27:24]), .Cout(Carry[7]) );
  CarryByPassAdder_4Bit_Synth CBPA7  ( .a(a[31:28]), .b(b[31:28]), 
        .Cin(Carry[7]), .S(S[31:28]), .Cout(Cout) );
  NOR2X0 U4 ( .IN1(n3), .IN2(n4), .QN(Overflow) );
  XOR2X1 U5 ( .IN1(b[31]), .IN2(a[31]), .Q(n4) );
  XNOR2X1 U6 ( .IN1(a[31]), .IN2(S[31]), .Q(n3) );
endmodule

