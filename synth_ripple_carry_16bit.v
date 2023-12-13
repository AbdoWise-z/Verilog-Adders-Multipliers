
/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : U-2022.12-SP7
// Date      : Tue Dec 12 16:25:07 2023
/////////////////////////////////////////////////////////////


module Synth_RippleCarryAdder_16Bit ( a, b, Cin, S, Cout );
  input [15:0] a;
  input [15:0] b;
  output [15:0] S;
  input Cin;
  output Cout;

  wire   [15:1] Carry;

  SYNTH_FA \genblk1[0].BitAdder  ( .a(a[0]), .b(b[0]), .Cin(Cin), .S(S[0]), .Cout(
        Carry[1]) );
  SYNTH_FA \genblk1[1].BitAdder  ( .a(a[1]), .b(b[1]), .Cin(Carry[1]), .S(S[1]), 
        .Cout(Carry[2]) );
  SYNTH_FA \genblk1[2].BitAdder  ( .a(a[2]), .b(b[2]), .Cin(Carry[2]), .S(S[2]), 
        .Cout(Carry[3]) );
  SYNTH_FA \genblk1[3].BitAdder  ( .a(a[3]), .b(b[3]), .Cin(Carry[3]), .S(S[3]), 
        .Cout(Carry[4]) );
  SYNTH_FA \genblk1[4].BitAdder  ( .a(a[4]), .b(b[4]), .Cin(Carry[4]), .S(S[4]), 
        .Cout(Carry[5]) );
  SYNTH_FA \genblk1[5].BitAdder  ( .a(a[5]), .b(b[5]), .Cin(Carry[5]), .S(S[5]), 
        .Cout(Carry[6]) );
  SYNTH_FA \genblk1[6].BitAdder  ( .a(a[6]), .b(b[6]), .Cin(Carry[6]), .S(S[6]), 
        .Cout(Carry[7]) );
  SYNTH_FA \genblk1[7].BitAdder  ( .a(a[7]), .b(b[7]), .Cin(Carry[7]), .S(S[7]), 
        .Cout(Carry[8]) );
  SYNTH_FA \genblk1[8].BitAdder  ( .a(a[8]), .b(b[8]), .Cin(Carry[8]), .S(S[8]), 
        .Cout(Carry[9]) );
  SYNTH_FA \genblk1[9].BitAdder  ( .a(a[9]), .b(b[9]), .Cin(Carry[9]), .S(S[9]), 
        .Cout(Carry[10]) );
  SYNTH_FA \genblk1[10].BitAdder  ( .a(a[10]), .b(b[10]), .Cin(Carry[10]), .S(S[10]), 
        .Cout(Carry[11]) );
  SYNTH_FA \genblk1[11].BitAdder  ( .a(a[11]), .b(b[11]), .Cin(Carry[11]), .S(S[11]), 
        .Cout(Carry[12]) );
  SYNTH_FA \genblk1[12].BitAdder  ( .a(a[12]), .b(b[12]), .Cin(Carry[12]), .S(S[12]), 
        .Cout(Carry[13]) );
  SYNTH_FA \genblk1[13].BitAdder  ( .a(a[13]), .b(b[13]), .Cin(Carry[13]), .S(S[13]), 
        .Cout(Carry[14]) );
  SYNTH_FA \genblk1[14].BitAdder  ( .a(a[14]), .b(b[14]), .Cin(Carry[14]), .S(S[14]), 
        .Cout(Carry[15]) );
  SYNTH_FA \genblk1[15].BitAdder  ( .a(a[15]), .b(b[15]), .Cin(Carry[15]), .S(S[15]), 
        .Cout(Cout) );
endmodule

