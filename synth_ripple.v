
/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : U-2022.12-SP7
// Date      : Tue Dec 12 15:00:04 2023
/////////////////////////////////////////////////////////////


module synth_ripple ( a, b, Cin, S, Cout, posOverflow, negOverflow );
  input [31:0] a;
  input [31:0] b;
  output [31:0] S;
  input Cin;
  output Cout, posOverflow, negOverflow;
  wire   N0, N1, N2, N3, N4, N5, N6, N7;
  wire   [31:1] Carry;

  SYNTH_FA \genblk1[0].BitAdder  ( .a(a[0]), .b(b[0]), .Cin(Cin), .S(S[0]), 
        .Cout(Carry[1]) );
  SYNTH_FA \genblk1[1].BitAdder  ( .a(a[1]), .b(b[1]), .Cin(Carry[1]), .S(S[1]), .Cout(Carry[2]) );
  SYNTH_FA \genblk1[2].BitAdder  ( .a(a[2]), .b(b[2]), .Cin(Carry[2]), .S(S[2]), .Cout(Carry[3]) );
  SYNTH_FA \genblk1[3].BitAdder  ( .a(a[3]), .b(b[3]), .Cin(Carry[3]), .S(S[3]), .Cout(Carry[4]) );
  SYNTH_FA \genblk1[4].BitAdder  ( .a(a[4]), .b(b[4]), .Cin(Carry[4]), .S(S[4]), .Cout(Carry[5]) );
  SYNTH_FA \genblk1[5].BitAdder  ( .a(a[5]), .b(b[5]), .Cin(Carry[5]), .S(S[5]), .Cout(Carry[6]) );
  SYNTH_FA \genblk1[6].BitAdder  ( .a(a[6]), .b(b[6]), .Cin(Carry[6]), .S(S[6]), .Cout(Carry[7]) );
  SYNTH_FA \genblk1[7].BitAdder  ( .a(a[7]), .b(b[7]), .Cin(Carry[7]), .S(S[7]), .Cout(Carry[8]) );
  SYNTH_FA \genblk1[8].BitAdder  ( .a(a[8]), .b(b[8]), .Cin(Carry[8]), .S(S[8]), .Cout(Carry[9]) );
  SYNTH_FA \genblk1[9].BitAdder  ( .a(a[9]), .b(b[9]), .Cin(Carry[9]), .S(S[9]), .Cout(Carry[10]) );
  SYNTH_FA \genblk1[10].BitAdder  ( .a(a[10]), .b(b[10]), .Cin(Carry[10]), .S(
        S[10]), .Cout(Carry[11]) );
  SYNTH_FA \genblk1[11].BitAdder  ( .a(a[11]), .b(b[11]), .Cin(Carry[11]), .S(
        S[11]), .Cout(Carry[12]) );
  SYNTH_FA \genblk1[12].BitAdder  ( .a(a[12]), .b(b[12]), .Cin(Carry[12]), .S(
        S[12]), .Cout(Carry[13]) );
  SYNTH_FA \genblk1[13].BitAdder  ( .a(a[13]), .b(b[13]), .Cin(Carry[13]), .S(
        S[13]), .Cout(Carry[14]) );
  SYNTH_FA \genblk1[14].BitAdder  ( .a(a[14]), .b(b[14]), .Cin(Carry[14]), .S(
        S[14]), .Cout(Carry[15]) );
  SYNTH_FA \genblk1[15].BitAdder  ( .a(a[15]), .b(b[15]), .Cin(Carry[15]), .S(
        S[15]), .Cout(Carry[16]) );
  SYNTH_FA \genblk1[16].BitAdder  ( .a(a[16]), .b(b[16]), .Cin(Carry[16]), .S(
        S[16]), .Cout(Carry[17]) );
  SYNTH_FA \genblk1[17].BitAdder  ( .a(a[17]), .b(b[17]), .Cin(Carry[17]), .S(
        S[17]), .Cout(Carry[18]) );
  SYNTH_FA \genblk1[18].BitAdder  ( .a(a[18]), .b(b[18]), .Cin(Carry[18]), .S(
        S[18]), .Cout(Carry[19]) );
  SYNTH_FA \genblk1[19].BitAdder  ( .a(a[19]), .b(b[19]), .Cin(Carry[19]), .S(
        S[19]), .Cout(Carry[20]) );
  SYNTH_FA \genblk1[20].BitAdder  ( .a(a[20]), .b(b[20]), .Cin(Carry[20]), .S(
        S[20]), .Cout(Carry[21]) );
  SYNTH_FA \genblk1[21].BitAdder  ( .a(a[21]), .b(b[21]), .Cin(Carry[21]), .S(
        S[21]), .Cout(Carry[22]) );
  SYNTH_FA \genblk1[22].BitAdder  ( .a(a[22]), .b(b[22]), .Cin(Carry[22]), .S(
        S[22]), .Cout(Carry[23]) );
  SYNTH_FA \genblk1[23].BitAdder  ( .a(a[23]), .b(b[23]), .Cin(Carry[23]), .S(
        S[23]), .Cout(Carry[24]) );
  SYNTH_FA \genblk1[24].BitAdder  ( .a(a[24]), .b(b[24]), .Cin(Carry[24]), .S(
        S[24]), .Cout(Carry[25]) );
  SYNTH_FA \genblk1[25].BitAdder  ( .a(a[25]), .b(b[25]), .Cin(Carry[25]), .S(
        S[25]), .Cout(Carry[26]) );
  SYNTH_FA \genblk1[26].BitAdder  ( .a(a[26]), .b(b[26]), .Cin(Carry[26]), .S(
        S[26]), .Cout(Carry[27]) );
  SYNTH_FA \genblk1[27].BitAdder  ( .a(a[27]), .b(b[27]), .Cin(Carry[27]), .S(
        S[27]), .Cout(Carry[28]) );
  SYNTH_FA \genblk1[28].BitAdder  ( .a(a[28]), .b(b[28]), .Cin(Carry[28]), .S(
        S[28]), .Cout(Carry[29]) );
  SYNTH_FA \genblk1[29].BitAdder  ( .a(a[29]), .b(b[29]), .Cin(Carry[29]), .S(
        S[29]), .Cout(Carry[30]) );
  SYNTH_FA \genblk1[30].BitAdder  ( .a(a[30]), .b(b[30]), .Cin(Carry[30]), .S(
        S[30]), .Cout(Carry[31]) );
  SYNTH_FA \genblk1[31].BitAdder  ( .a(a[31]), .b(b[31]), .Cin(Carry[31]), .S(
        S[31]), .Cout(Cout) );
  XOR2X1 C4 ( (a[31]), (b[31]), (N0) );
  AOINVX1 I_0 ( (N0), (N2) );
  XOR2X1 C8 ( (a[31]), (b[31]), (N1) );
  AOINVX1 I_1 ( (N1), (N3) );
  AOINVX1 I_2 ( (a[31]), (N4) );
  AOINVX1 I_3 ( (S[31]), (N5) );
  AND2X1 C16 ( (N6), (N5), (negOverflow) );
  AND2X1 C17 ( (N2), (a[31]), (N6) );
  AND2X1 C18 ( (N7), (S[31]), (posOverflow) );
  AND2X1 C19 ( (N3), (N4), (N7) );
endmodule

