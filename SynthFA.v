
/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : U-2022.12-SP7
// Date      : Tue Dec 12 16:03:45 2023
/////////////////////////////////////////////////////////////


module SYNTH_FA ( a, b, Cin, S, Cout );
  input a, b, Cin;
  output S, Cout;
  wire   N0, N1, N2;

  XOR2X1 C9 ( (a), (b), (N0) );
  XOR2X1 C10 ( (N0), (Cin), (S) );
  OR2X1 C11 ( (N1), (N2), (Cout) );
  AND2X1 C12 ( (a), (b), (N1) );
  AND2X1 C13 ( (N0), (Cin), (N2) );
endmodule

