
/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : U-2022.12-SP7
// Date      : Tue Dec 12 16:29:39 2023
/////////////////////////////////////////////////////////////


module Synth_Carry_Select ( A, B, Cin, S, Cout, posOverflow, negOverflow );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Cin;
  output Cout, posOverflow, negOverflow;
  wire   N0, N1, N2, N3, Carry_select, Carry_upper_one, Carry_upper_zero, N4,
         N5, N6, N7, N8, N9, N10;
  wire   [15:0] upper_S_one;
  wire   [15:0] upper_S_zero;

  Synth_RippleCarryAdder_16Bit First_Nibble ( .a(A[15:0]), .b(B[15:0]), .Cin(
        Cin), .S(S[15:0]), .Cout(Carry_select) );
  Synth_RippleCarryAdder_16Bit Second_Nibble_one ( .a(A[31:16]), .b(B[31:16]), 
        .Cin(1'b1), .S(upper_S_one), .Cout(Carry_upper_one) );
  Synth_RippleCarryAdder_16Bit Second_Nibble_zero ( .a(A[31:16]), .b(B[31:16]), 
        .Cin(1'b0), .S(upper_S_zero), .Cout(Carry_upper_zero) );
  XOR2X1 C4 ( .A(A[31]), .B(B[31]), .Z(N0) );
  INVX1 I_0 ( .A(N0), .Z(N4) );
  XOR2X1 C8 ( .A(A[31]), .B(B[31]), .Z(N1) );
  INVX1 I_1 ( .A(N1), .Z(N5) );
  INVX1 I_2 ( .A(A[31]), .Z(N6) );
  INVX1 I_3 ( .A(S[31]), .Z(N7) );
  INVX1 I_4 ( .A(Carry_select), .Z(N8) );
  SELECT_OP C39 ( .DATA1(upper_S_one), .DATA2(upper_S_zero), .CONTROL1(N2), 
        .CONTROL2(N3), .Z(S[31:16]) );
  GTECH_BUF B_0 ( .A(Carry_select), .Z(N2) );
  GTECH_BUF B_1 ( .A(N8), .Z(N3) );
  SELECT_OP C40 ( .DATA1(Carry_upper_one), .DATA2(Carry_upper_zero), 
        .CONTROL1(N2), .CONTROL2(N3), .Z(Cout) );
  AND2X1 C43 ( .A(N9), .B(N7), .Z(negOverflow) );
  AND2X1 C44 ( .A(N4), .B(A[31]), .Z(N9) );
  AND2X1 C45 ( .A(N10), .B(S[31]), .Z(posOverflow) );
  AND2X1 C46 ( .A(N5), .B(N6), .Z(N10) );
endmodule

