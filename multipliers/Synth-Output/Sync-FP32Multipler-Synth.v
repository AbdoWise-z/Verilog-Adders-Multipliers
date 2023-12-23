/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Dec 23 09:16:23 2023
/////////////////////////////////////////////////////////////


module SyncFP32Multiplier_Synth ( a, b, c, Overflow, clk, rst );
  input [31:0] a;
  input [31:0] b;
  output [31:0] c;
  input clk, rst;
  output Overflow;
  wire   temp_Overflow, slow_clk, N3, N4, N5, N6, N7, n2, n3, n4, n5, n6, n7,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33;
  wire   [31:0] in_a;
  wire   [31:0] in_b;
  wire   [31:0] temp_c;

  DFFARX1 \counter_reg[1]  ( .D(N3), .CLK(clk), .RSTB(n21), .QN(n2) );
  DFFARX1 \counter_reg[2]  ( .D(N4), .CLK(clk), .RSTB(n21), .QN(n3) );
  DFFARX1 \counter_reg[3]  ( .D(N5), .CLK(clk), .RSTB(n21), .QN(n4) );
  DFFARX1 \counter_reg[4]  ( .D(N6), .CLK(clk), .RSTB(n21), .QN(n5) );
  DFFARX1 \counter_reg[5]  ( .D(N7), .CLK(clk), .RSTB(n21), .Q(n9), .QN(N3) );
  DFFARX1 slow_clk_reg ( .D(n7), .CLK(clk), .RSTB(n21), .Q(slow_clk), .QN(n6)
         );
  DFFARX1 \in_a_reg[31]  ( .D(a[31]), .CLK(n22), .RSTB(n21), .Q(in_a[31]) );
  DFFARX1 \in_a_reg[30]  ( .D(a[30]), .CLK(n22), .RSTB(n20), .Q(in_a[30]) );
  DFFARX1 \in_a_reg[29]  ( .D(a[29]), .CLK(n22), .RSTB(n20), .Q(in_a[29]) );
  DFFARX1 \in_a_reg[28]  ( .D(a[28]), .CLK(n22), .RSTB(n20), .Q(in_a[28]) );
  DFFARX1 \in_a_reg[27]  ( .D(a[27]), .CLK(n22), .RSTB(n20), .Q(in_a[27]) );
  DFFARX1 \in_a_reg[26]  ( .D(a[26]), .CLK(n22), .RSTB(n20), .Q(in_a[26]) );
  DFFARX1 \in_a_reg[25]  ( .D(a[25]), .CLK(n22), .RSTB(n20), .Q(in_a[25]) );
  DFFARX1 \in_a_reg[24]  ( .D(a[24]), .CLK(n22), .RSTB(n20), .Q(in_a[24]) );
  DFFARX1 \in_a_reg[23]  ( .D(a[23]), .CLK(n22), .RSTB(n20), .Q(in_a[23]) );
  DFFARX1 \in_a_reg[22]  ( .D(a[22]), .CLK(n22), .RSTB(n20), .Q(in_a[22]) );
  DFFARX1 \in_a_reg[21]  ( .D(a[21]), .CLK(n22), .RSTB(n20), .Q(in_a[21]) );
  DFFARX1 \in_a_reg[20]  ( .D(a[20]), .CLK(n22), .RSTB(n20), .Q(in_a[20]) );
  DFFARX1 \in_a_reg[19]  ( .D(a[19]), .CLK(n23), .RSTB(n20), .Q(in_a[19]) );
  DFFARX1 \in_a_reg[18]  ( .D(a[18]), .CLK(n23), .RSTB(n19), .Q(in_a[18]) );
  DFFARX1 \in_a_reg[17]  ( .D(a[17]), .CLK(n23), .RSTB(n19), .Q(in_a[17]) );
  DFFARX1 \in_a_reg[16]  ( .D(a[16]), .CLK(n23), .RSTB(n19), .Q(in_a[16]) );
  DFFARX1 \in_a_reg[15]  ( .D(a[15]), .CLK(n23), .RSTB(n19), .Q(in_a[15]) );
  DFFARX1 \in_a_reg[14]  ( .D(a[14]), .CLK(n23), .RSTB(n19), .Q(in_a[14]) );
  DFFARX1 \in_a_reg[13]  ( .D(a[13]), .CLK(n23), .RSTB(n19), .Q(in_a[13]) );
  DFFARX1 \in_a_reg[12]  ( .D(a[12]), .CLK(n23), .RSTB(n19), .Q(in_a[12]) );
  DFFARX1 \in_a_reg[11]  ( .D(a[11]), .CLK(n23), .RSTB(n19), .Q(in_a[11]) );
  DFFARX1 \in_a_reg[10]  ( .D(a[10]), .CLK(n23), .RSTB(n19), .Q(in_a[10]) );
  DFFARX1 \in_a_reg[9]  ( .D(a[9]), .CLK(n23), .RSTB(n19), .Q(in_a[9]) );
  DFFARX1 \in_a_reg[8]  ( .D(a[8]), .CLK(n23), .RSTB(n19), .Q(in_a[8]) );
  DFFARX1 \in_a_reg[7]  ( .D(a[7]), .CLK(n24), .RSTB(n19), .Q(in_a[7]) );
  DFFARX1 \in_a_reg[6]  ( .D(a[6]), .CLK(n24), .RSTB(n18), .Q(in_a[6]) );
  DFFARX1 \in_a_reg[5]  ( .D(a[5]), .CLK(n24), .RSTB(n18), .Q(in_a[5]) );
  DFFARX1 \in_a_reg[4]  ( .D(a[4]), .CLK(n24), .RSTB(n18), .Q(in_a[4]) );
  DFFARX1 \in_a_reg[3]  ( .D(a[3]), .CLK(n24), .RSTB(n18), .Q(in_a[3]) );
  DFFARX1 \in_a_reg[2]  ( .D(a[2]), .CLK(n24), .RSTB(n18), .Q(in_a[2]) );
  DFFARX1 \in_a_reg[1]  ( .D(a[1]), .CLK(n24), .RSTB(n18), .Q(in_a[1]) );
  DFFARX1 \in_a_reg[0]  ( .D(a[0]), .CLK(n24), .RSTB(n18), .Q(in_a[0]) );
  DFFARX1 \in_b_reg[31]  ( .D(b[31]), .CLK(n24), .RSTB(n18), .Q(in_b[31]) );
  DFFARX1 \in_b_reg[30]  ( .D(b[30]), .CLK(n24), .RSTB(n18), .Q(in_b[30]) );
  DFFARX1 \in_b_reg[29]  ( .D(b[29]), .CLK(n24), .RSTB(n18), .Q(in_b[29]) );
  DFFARX1 \in_b_reg[28]  ( .D(b[28]), .CLK(n24), .RSTB(n18), .Q(in_b[28]) );
  DFFARX1 \in_b_reg[27]  ( .D(b[27]), .CLK(n25), .RSTB(n18), .Q(in_b[27]) );
  DFFARX1 \in_b_reg[26]  ( .D(b[26]), .CLK(n25), .RSTB(n17), .Q(in_b[26]) );
  DFFARX1 \in_b_reg[25]  ( .D(b[25]), .CLK(n25), .RSTB(n17), .Q(in_b[25]) );
  DFFARX1 \in_b_reg[24]  ( .D(b[24]), .CLK(n25), .RSTB(n17), .Q(in_b[24]) );
  DFFARX1 \in_b_reg[23]  ( .D(b[23]), .CLK(n25), .RSTB(n17), .Q(in_b[23]) );
  DFFARX1 \in_b_reg[22]  ( .D(b[22]), .CLK(n25), .RSTB(n17), .Q(in_b[22]) );
  DFFARX1 \in_b_reg[21]  ( .D(b[21]), .CLK(n25), .RSTB(n17), .Q(in_b[21]) );
  DFFARX1 \in_b_reg[20]  ( .D(b[20]), .CLK(n25), .RSTB(n17), .Q(in_b[20]) );
  DFFARX1 \in_b_reg[19]  ( .D(b[19]), .CLK(n25), .RSTB(n17), .Q(in_b[19]) );
  DFFARX1 \in_b_reg[18]  ( .D(b[18]), .CLK(n25), .RSTB(n17), .Q(in_b[18]) );
  DFFARX1 \in_b_reg[17]  ( .D(b[17]), .CLK(n25), .RSTB(n17), .Q(in_b[17]) );
  DFFARX1 \in_b_reg[16]  ( .D(b[16]), .CLK(n25), .RSTB(n17), .Q(in_b[16]) );
  DFFARX1 \in_b_reg[15]  ( .D(b[15]), .CLK(n26), .RSTB(n17), .Q(in_b[15]) );
  DFFARX1 \in_b_reg[14]  ( .D(b[14]), .CLK(n26), .RSTB(n16), .Q(in_b[14]) );
  DFFARX1 \in_b_reg[13]  ( .D(b[13]), .CLK(n26), .RSTB(n16), .Q(in_b[13]) );
  DFFARX1 \in_b_reg[12]  ( .D(b[12]), .CLK(n26), .RSTB(n16), .Q(in_b[12]) );
  DFFARX1 \in_b_reg[11]  ( .D(b[11]), .CLK(n26), .RSTB(n16), .Q(in_b[11]) );
  DFFARX1 \in_b_reg[10]  ( .D(b[10]), .CLK(n26), .RSTB(n16), .Q(in_b[10]) );
  DFFARX1 \in_b_reg[9]  ( .D(b[9]), .CLK(n26), .RSTB(n16), .Q(in_b[9]) );
  DFFARX1 \in_b_reg[8]  ( .D(b[8]), .CLK(n26), .RSTB(n16), .Q(in_b[8]) );
  DFFARX1 \in_b_reg[7]  ( .D(b[7]), .CLK(n26), .RSTB(n16), .Q(in_b[7]) );
  DFFARX1 \in_b_reg[6]  ( .D(b[6]), .CLK(n26), .RSTB(n16), .Q(in_b[6]) );
  DFFARX1 \in_b_reg[5]  ( .D(b[5]), .CLK(n26), .RSTB(n16), .Q(in_b[5]) );
  DFFARX1 \in_b_reg[4]  ( .D(b[4]), .CLK(n26), .RSTB(n16), .Q(in_b[4]) );
  DFFARX1 \in_b_reg[3]  ( .D(b[3]), .CLK(n27), .RSTB(n16), .Q(in_b[3]) );
  DFFARX1 \in_b_reg[2]  ( .D(b[2]), .CLK(n27), .RSTB(n15), .Q(in_b[2]) );
  DFFARX1 \in_b_reg[1]  ( .D(b[1]), .CLK(n27), .RSTB(n15), .Q(in_b[1]) );
  DFFARX1 \in_b_reg[0]  ( .D(b[0]), .CLK(n27), .RSTB(n15), .Q(in_b[0]) );
  DFFARX1 \out_c_reg[0]  ( .D(temp_c[0]), .CLK(n27), .RSTB(n15), .Q(c[0]) );
  DFFARX1 \out_c_reg[1]  ( .D(temp_c[1]), .CLK(n27), .RSTB(n15), .Q(c[1]) );
  DFFARX1 \out_c_reg[2]  ( .D(temp_c[2]), .CLK(n27), .RSTB(n15), .Q(c[2]) );
  DFFARX1 \out_c_reg[3]  ( .D(temp_c[3]), .CLK(n27), .RSTB(n15), .Q(c[3]) );
  DFFARX1 \out_c_reg[4]  ( .D(temp_c[4]), .CLK(n27), .RSTB(n15), .Q(c[4]) );
  DFFARX1 \out_c_reg[5]  ( .D(temp_c[5]), .CLK(n27), .RSTB(n15), .Q(c[5]) );
  DFFARX1 \out_c_reg[6]  ( .D(temp_c[6]), .CLK(n27), .RSTB(n15), .Q(c[6]) );
  DFFARX1 \out_c_reg[7]  ( .D(temp_c[7]), .CLK(n27), .RSTB(n15), .Q(c[7]) );
  DFFARX1 \out_c_reg[8]  ( .D(temp_c[8]), .CLK(n28), .RSTB(n15), .Q(c[8]) );
  DFFARX1 \out_c_reg[9]  ( .D(temp_c[9]), .CLK(n28), .RSTB(n14), .Q(c[9]) );
  DFFARX1 \out_c_reg[10]  ( .D(temp_c[10]), .CLK(n28), .RSTB(n14), .Q(c[10])
         );
  DFFARX1 \out_c_reg[11]  ( .D(temp_c[11]), .CLK(n28), .RSTB(n14), .Q(c[11])
         );
  DFFARX1 \out_c_reg[12]  ( .D(temp_c[12]), .CLK(n28), .RSTB(n14), .Q(c[12])
         );
  DFFARX1 \out_c_reg[13]  ( .D(temp_c[13]), .CLK(n28), .RSTB(n14), .Q(c[13])
         );
  DFFARX1 \out_c_reg[14]  ( .D(temp_c[14]), .CLK(n28), .RSTB(n14), .Q(c[14])
         );
  DFFARX1 \out_c_reg[15]  ( .D(temp_c[15]), .CLK(n28), .RSTB(n14), .Q(c[15])
         );
  DFFARX1 \out_c_reg[16]  ( .D(temp_c[16]), .CLK(n28), .RSTB(n14), .Q(c[16])
         );
  DFFARX1 \out_c_reg[17]  ( .D(temp_c[17]), .CLK(n28), .RSTB(n14), .Q(c[17])
         );
  DFFARX1 \out_c_reg[18]  ( .D(temp_c[18]), .CLK(n28), .RSTB(n14), .Q(c[18])
         );
  DFFARX1 \out_c_reg[19]  ( .D(temp_c[19]), .CLK(n28), .RSTB(n14), .Q(c[19])
         );
  DFFARX1 \out_c_reg[20]  ( .D(temp_c[20]), .CLK(n29), .RSTB(n14), .Q(c[20])
         );
  DFFARX1 \out_c_reg[21]  ( .D(temp_c[21]), .CLK(n29), .RSTB(n13), .Q(c[21])
         );
  DFFARX1 \out_c_reg[22]  ( .D(temp_c[22]), .CLK(n29), .RSTB(n13), .Q(c[22])
         );
  DFFARX1 \out_c_reg[23]  ( .D(temp_c[23]), .CLK(n29), .RSTB(n13), .Q(c[23])
         );
  DFFARX1 \out_c_reg[24]  ( .D(temp_c[24]), .CLK(n29), .RSTB(n13), .Q(c[24])
         );
  DFFARX1 \out_c_reg[25]  ( .D(temp_c[25]), .CLK(n29), .RSTB(n13), .Q(c[25])
         );
  DFFARX1 \out_c_reg[26]  ( .D(temp_c[26]), .CLK(n29), .RSTB(n13), .Q(c[26])
         );
  DFFARX1 \out_c_reg[27]  ( .D(temp_c[27]), .CLK(n29), .RSTB(n13), .Q(c[27])
         );
  DFFARX1 \out_c_reg[28]  ( .D(temp_c[28]), .CLK(n29), .RSTB(n13), .Q(c[28])
         );
  DFFARX1 \out_c_reg[29]  ( .D(temp_c[29]), .CLK(n29), .RSTB(n13), .Q(c[29])
         );
  DFFARX1 \out_c_reg[30]  ( .D(temp_c[30]), .CLK(n29), .RSTB(n13), .Q(c[30])
         );
  DFFARX1 \out_c_reg[31]  ( .D(temp_c[31]), .CLK(n29), .RSTB(n13), .Q(c[31])
         );
  DFFARX1 out_Overflow_reg ( .D(temp_Overflow), .CLK(n30), .RSTB(n13), .Q(
        Overflow) );
  XOR2X1 U3 ( .IN1(n6), .IN2(N3), .Q(n7) );
  FP32Multiplier_Synth mul ( .a(in_a), .b(in_b), .Overflow(temp_Overflow), .c(temp_c) );
  NBUFFX2 U10 ( .IN(n10), .Q(n13) );
  NBUFFX2 U11 ( .IN(n10), .Q(n14) );
  NBUFFX2 U12 ( .IN(n10), .Q(n15) );
  NBUFFX2 U13 ( .IN(n11), .Q(n16) );
  NBUFFX2 U14 ( .IN(n11), .Q(n17) );
  NBUFFX2 U15 ( .IN(n11), .Q(n18) );
  NBUFFX2 U16 ( .IN(n12), .Q(n19) );
  NBUFFX2 U17 ( .IN(n12), .Q(n20) );
  NBUFFX2 U18 ( .IN(n12), .Q(n21) );
  NBUFFX2 U19 ( .IN(n33), .Q(n10) );
  NBUFFX2 U20 ( .IN(n33), .Q(n11) );
  NBUFFX2 U21 ( .IN(n33), .Q(n12) );
  NBUFFX2 U22 ( .IN(n30), .Q(n29) );
  NBUFFX2 U23 ( .IN(n30), .Q(n28) );
  NBUFFX2 U24 ( .IN(n31), .Q(n27) );
  NBUFFX2 U25 ( .IN(n31), .Q(n26) );
  NBUFFX2 U26 ( .IN(n31), .Q(n25) );
  NBUFFX2 U27 ( .IN(n32), .Q(n24) );
  NBUFFX2 U28 ( .IN(n32), .Q(n23) );
  NBUFFX2 U29 ( .IN(n32), .Q(n22) );
  NOR2X0 U30 ( .IN1(n5), .IN2(n9), .QN(N7) );
  NOR2X0 U31 ( .IN1(n4), .IN2(n9), .QN(N6) );
  NOR2X0 U32 ( .IN1(n3), .IN2(n9), .QN(N5) );
  NOR2X0 U33 ( .IN1(n2), .IN2(n9), .QN(N4) );
  INVX0 U34 ( .IN1(rst), .QN(n33) );
  NBUFFX2 U35 ( .IN(slow_clk), .Q(n30) );
  NBUFFX2 U36 ( .IN(slow_clk), .Q(n31) );
  NBUFFX2 U37 ( .IN(slow_clk), .Q(n32) );
endmodule

