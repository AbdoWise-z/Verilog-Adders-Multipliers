/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Dec 13 20:30:53 2023
/////////////////////////////////////////////////////////////


module FP32Adder2_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  FADDX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .S(SUM[7]) );
  FADDX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  FADDX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  FADDX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  FADDX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  FADDX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  FADDX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2X1 U1 ( .IN1(B[0]), .IN2(A[0]), .Q(n1) );
  XOR2X1 U2 ( .IN1(B[0]), .IN2(A[0]), .Q(SUM[0]) );
endmodule


module FP32Adder2_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;
  wire   [24:0] carry;

  FADDX1 U2_22 ( .A(A[22]), .B(n14), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  FADDX1 U2_21 ( .A(A[21]), .B(n13), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  FADDX1 U2_20 ( .A(A[20]), .B(n12), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  FADDX1 U2_19 ( .A(A[19]), .B(n19), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  FADDX1 U2_18 ( .A(A[18]), .B(n22), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  FADDX1 U2_17 ( .A(A[17]), .B(n21), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  FADDX1 U2_16 ( .A(A[16]), .B(n20), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  FADDX1 U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  FADDX1 U2_14 ( .A(A[14]), .B(n10), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FADDX1 U2_13 ( .A(A[13]), .B(n9), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FADDX1 U2_12 ( .A(A[12]), .B(n8), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FADDX1 U2_11 ( .A(A[11]), .B(n7), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FADDX1 U2_10 ( .A(A[10]), .B(n6), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FADDX1 U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FADDX1 U2_8 ( .A(A[8]), .B(n16), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  FADDX1 U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FADDX1 U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FADDX1 U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1 U2_4 ( .A(A[4]), .B(n2), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1 U2_3 ( .A(A[3]), .B(n25), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  FADDX1 U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  FADDX1 U2_1 ( .A(A[1]), .B(n23), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  XOR3X1 U2_23 ( .IN1(A[23]), .IN2(n15), .IN3(carry[23]), .Q(DIFF[23]) );
  INVX0 U1 ( .IN1(B[0]), .QN(n18) );
  INVX0 U2 ( .IN1(B[23]), .QN(n15) );
  INVX0 U3 ( .IN1(A[0]), .QN(n1) );
  INVX0 U4 ( .IN1(B[6]), .QN(n4) );
  INVX0 U5 ( .IN1(B[14]), .QN(n10) );
  INVX0 U6 ( .IN1(B[7]), .QN(n5) );
  INVX0 U7 ( .IN1(B[15]), .QN(n11) );
  INVX0 U8 ( .IN1(B[8]), .QN(n16) );
  NAND2X1 U9 ( .IN1(B[0]), .IN2(n1), .QN(carry[1]) );
  INVX0 U10 ( .IN1(B[1]), .QN(n23) );
  INVX0 U11 ( .IN1(B[16]), .QN(n20) );
  INVX0 U12 ( .IN1(B[9]), .QN(n17) );
  INVX0 U13 ( .IN1(B[19]), .QN(n19) );
  INVX0 U14 ( .IN1(B[2]), .QN(n24) );
  INVX0 U15 ( .IN1(B[17]), .QN(n21) );
  INVX0 U16 ( .IN1(B[4]), .QN(n2) );
  INVX0 U17 ( .IN1(B[10]), .QN(n6) );
  INVX0 U18 ( .IN1(B[11]), .QN(n7) );
  INVX0 U19 ( .IN1(B[20]), .QN(n12) );
  INVX0 U20 ( .IN1(B[3]), .QN(n25) );
  INVX0 U21 ( .IN1(B[18]), .QN(n22) );
  INVX0 U22 ( .IN1(B[5]), .QN(n3) );
  INVX0 U23 ( .IN1(B[12]), .QN(n8) );
  INVX0 U24 ( .IN1(B[21]), .QN(n13) );
  INVX0 U25 ( .IN1(B[22]), .QN(n14) );
  INVX0 U26 ( .IN1(B[13]), .QN(n9) );
  XOR2X1 U27 ( .IN1(n1), .IN2(n18), .Q(DIFF[0]) );
endmodule


module FP32Adder2_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .IN1(A[0]), .QN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[7]), .IN2(A[7]), .Q(SUM[7]) );
endmodule


module FP32Adder2_DW01_add_1 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [24:1] carry;

  FADDX1 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(SUM[24]), .S(
        SUM[23]) );
  FADDX1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FADDX1 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FADDX1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FADDX1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FADDX1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FADDX1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FADDX1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FADDX1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FADDX1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FADDX1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FADDX1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FADDX1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FADDX1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FADDX1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FADDX1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  FADDX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  FADDX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  FADDX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  FADDX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  FADDX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  FADDX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  FADDX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2X1 U1 ( .IN1(B[0]), .IN2(A[0]), .Q(n1) );
  XOR2X1 U2 ( .IN1(B[0]), .IN2(A[0]), .Q(SUM[0]) );
endmodule


module FP32Adder2_DW_rash_0 ( A, DATA_TC, SH, SH_TC, B );
  input [23:0] A;
  input [7:0] SH;
  output [23:0] B;
  input DATA_TC, SH_TC;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103;

  INVX0 U3 ( .IN1(n82), .QN(n1) );
  INVX0 U4 ( .IN1(n81), .QN(n11) );
  INVX0 U5 ( .IN1(n80), .QN(n10) );
  INVX0 U6 ( .IN1(n59), .QN(n9) );
  INVX0 U7 ( .IN1(n58), .QN(n8) );
  INVX0 U8 ( .IN1(n61), .QN(n4) );
  INVX0 U9 ( .IN1(SH[0]), .QN(n12) );
  INVX0 U10 ( .IN1(SH[2]), .QN(n7) );
  INVX0 U11 ( .IN1(SH[7]), .QN(n2) );
  INVX0 U12 ( .IN1(n69), .QN(n6) );
  INVX0 U13 ( .IN1(n84), .QN(n3) );
  INVX0 U14 ( .IN1(n77), .QN(n5) );
  INVX0 U15 ( .IN1(A[1]), .QN(n16) );
  INVX0 U16 ( .IN1(A[3]), .QN(n14) );
  INVX0 U17 ( .IN1(A[2]), .QN(n15) );
  INVX0 U18 ( .IN1(A[4]), .QN(n13) );
  AO222X1 U19 ( .IN1(n17), .IN2(n18), .IN3(n19), .IN4(n20), .IN5(n21), .IN6(
        n22), .Q(B[9]) );
  AO222X1 U20 ( .IN1(n17), .IN2(n23), .IN3(n19), .IN4(n24), .IN5(n21), .IN6(
        n25), .Q(B[8]) );
  AO221X1 U21 ( .IN1(n17), .IN2(n26), .IN3(n21), .IN4(n27), .IN5(n28), .Q(B[7]) );
  AO222X1 U22 ( .IN1(n29), .IN2(n30), .IN3(n31), .IN4(n32), .IN5(n33), .IN6(
        n34), .Q(n28) );
  AO221X1 U23 ( .IN1(n17), .IN2(n35), .IN3(n21), .IN4(n36), .IN5(n37), .Q(B[6]) );
  AO222X1 U24 ( .IN1(n33), .IN2(n38), .IN3(n31), .IN4(n39), .IN5(n29), .IN6(
        n40), .Q(n37) );
  AO221X1 U25 ( .IN1(n17), .IN2(n41), .IN3(n21), .IN4(n18), .IN5(n42), .Q(B[5]) );
  AO222X1 U26 ( .IN1(n33), .IN2(n22), .IN3(n31), .IN4(n43), .IN5(n29), .IN6(
        n44), .Q(n42) );
  AO221X1 U27 ( .IN1(n17), .IN2(n45), .IN3(n21), .IN4(n23), .IN5(n46), .Q(B[4]) );
  AO222X1 U28 ( .IN1(n33), .IN2(n25), .IN3(n31), .IN4(n47), .IN5(n29), .IN6(
        n48), .Q(n46) );
  NOR4X0 U29 ( .IN1(n4), .IN2(n49), .IN3(SH[2]), .IN4(SH[7]), .QN(n29) );
  AND2X1 U30 ( .IN1(n19), .IN2(SH[2]), .Q(n31) );
  OA21X1 U31 ( .IN1(n50), .IN2(n51), .IN3(n2), .Q(B[3]) );
  MUX21X1 U32 ( .IN1(n52), .IN2(n53), .S(n49), .Q(n51) );
  AO222X1 U33 ( .IN1(n54), .IN2(n34), .IN3(n55), .IN4(n27), .IN5(n56), .IN6(
        n26), .Q(n53) );
  AO221X1 U34 ( .IN1(A[10]), .IN2(n10), .IN3(A[9]), .IN4(n11), .IN5(n57), .Q(
        n26) );
  AO22X1 U35 ( .IN1(A[7]), .IN2(n58), .IN3(A[8]), .IN4(n59), .Q(n57) );
  AND2X1 U36 ( .IN1(n60), .IN2(n61), .Q(n52) );
  NOR2X0 U37 ( .IN1(n62), .IN2(n63), .QN(n50) );
  OA221X1 U38 ( .IN1(n8), .IN2(n14), .IN3(n9), .IN4(n13), .IN5(n64), .Q(n62)
         );
  AOI22X1 U39 ( .IN1(n10), .IN2(A[6]), .IN3(n11), .IN4(A[5]), .QN(n64) );
  OA21X1 U40 ( .IN1(n65), .IN2(n66), .IN3(n2), .Q(B[2]) );
  MUX21X1 U41 ( .IN1(n6), .IN2(n67), .S(n49), .Q(n66) );
  AO222X1 U42 ( .IN1(n54), .IN2(n38), .IN3(n55), .IN4(n36), .IN5(n56), .IN6(
        n35), .Q(n67) );
  AO221X1 U43 ( .IN1(A[9]), .IN2(n10), .IN3(A[8]), .IN4(n11), .IN5(n68), .Q(
        n35) );
  AO22X1 U44 ( .IN1(A[6]), .IN2(n58), .IN3(A[7]), .IN4(n59), .Q(n68) );
  NOR2X0 U45 ( .IN1(n70), .IN2(n63), .QN(n65) );
  OA221X1 U46 ( .IN1(n8), .IN2(n15), .IN3(n9), .IN4(n14), .IN5(n71), .Q(n70)
         );
  AOI22X1 U47 ( .IN1(n10), .IN2(A[5]), .IN3(n11), .IN4(A[4]), .QN(n71) );
  AND2X1 U48 ( .IN1(n17), .IN2(n30), .Q(B[23]) );
  AND2X1 U49 ( .IN1(n40), .IN2(n17), .Q(B[22]) );
  AND2X1 U50 ( .IN1(n44), .IN2(n17), .Q(B[21]) );
  AND2X1 U51 ( .IN1(n48), .IN2(n17), .Q(B[20]) );
  OA21X1 U52 ( .IN1(n72), .IN2(n73), .IN3(n2), .Q(B[1]) );
  MUX21X1 U53 ( .IN1(n5), .IN2(n74), .S(n49), .Q(n73) );
  AO222X1 U54 ( .IN1(n54), .IN2(n22), .IN3(n55), .IN4(n18), .IN5(n56), .IN6(
        n41), .Q(n74) );
  AO221X1 U55 ( .IN1(A[8]), .IN2(n10), .IN3(A[7]), .IN4(n11), .IN5(n75), .Q(
        n41) );
  AO22X1 U56 ( .IN1(A[5]), .IN2(n58), .IN3(A[6]), .IN4(n59), .Q(n75) );
  AO221X1 U57 ( .IN1(A[12]), .IN2(n10), .IN3(A[11]), .IN4(n11), .IN5(n76), .Q(
        n18) );
  AO22X1 U58 ( .IN1(A[9]), .IN2(n58), .IN3(A[10]), .IN4(n59), .Q(n76) );
  NOR2X0 U59 ( .IN1(n78), .IN2(n63), .QN(n72) );
  OA221X1 U60 ( .IN1(n8), .IN2(n16), .IN3(n9), .IN4(n15), .IN5(n79), .Q(n78)
         );
  OA22X1 U61 ( .IN1(n80), .IN2(n13), .IN3(n81), .IN4(n14), .Q(n79) );
  AND3X1 U62 ( .IN1(n1), .IN2(n60), .IN3(n61), .Q(B[19]) );
  NOR2X0 U63 ( .IN1(n82), .IN2(n69), .QN(B[18]) );
  NAND2X0 U64 ( .IN1(n61), .IN2(n83), .QN(n69) );
  NOR2X0 U65 ( .IN1(n82), .IN2(n77), .QN(B[17]) );
  NAND2X0 U66 ( .IN1(n61), .IN2(n20), .QN(n77) );
  MUX21X1 U67 ( .IN1(n43), .IN2(n44), .S(SH[2]), .Q(n20) );
  NOR2X0 U68 ( .IN1(n82), .IN2(n84), .QN(B[16]) );
  AO222X1 U69 ( .IN1(n17), .IN2(n34), .IN3(n33), .IN4(n30), .IN5(n21), .IN6(
        n32), .Q(B[15]) );
  AO222X1 U70 ( .IN1(n17), .IN2(n38), .IN3(n33), .IN4(n40), .IN5(n21), .IN6(
        n39), .Q(B[14]) );
  AO222X1 U71 ( .IN1(n17), .IN2(n22), .IN3(n33), .IN4(n44), .IN5(n21), .IN6(
        n43), .Q(B[13]) );
  AO221X1 U72 ( .IN1(A[20]), .IN2(n10), .IN3(A[19]), .IN4(n11), .IN5(n85), .Q(
        n43) );
  AO22X1 U73 ( .IN1(A[17]), .IN2(n58), .IN3(A[18]), .IN4(n59), .Q(n85) );
  AO222X1 U74 ( .IN1(A[22]), .IN2(n59), .IN3(A[23]), .IN4(n11), .IN5(A[21]), 
        .IN6(n58), .Q(n44) );
  AO221X1 U75 ( .IN1(A[16]), .IN2(n10), .IN3(A[15]), .IN4(n11), .IN5(n86), .Q(
        n22) );
  AO22X1 U76 ( .IN1(A[13]), .IN2(n58), .IN3(A[14]), .IN4(n59), .Q(n86) );
  AO222X1 U77 ( .IN1(n17), .IN2(n25), .IN3(n33), .IN4(n48), .IN5(n21), .IN6(
        n47), .Q(B[12]) );
  AND2X1 U78 ( .IN1(n19), .IN2(n7), .Q(n33) );
  AO222X1 U79 ( .IN1(n21), .IN2(n34), .IN3(n17), .IN4(n27), .IN5(n19), .IN6(
        n60), .Q(B[11]) );
  MUX21X1 U80 ( .IN1(n30), .IN2(n32), .S(n7), .Q(n60) );
  AO221X1 U81 ( .IN1(n10), .IN2(A[22]), .IN3(A[21]), .IN4(n11), .IN5(n87), .Q(
        n32) );
  AO22X1 U82 ( .IN1(A[19]), .IN2(n58), .IN3(A[20]), .IN4(n59), .Q(n87) );
  AND2X1 U83 ( .IN1(n58), .IN2(A[23]), .Q(n30) );
  AO221X1 U84 ( .IN1(A[14]), .IN2(n10), .IN3(A[13]), .IN4(n11), .IN5(n88), .Q(
        n27) );
  AO22X1 U85 ( .IN1(A[11]), .IN2(n58), .IN3(A[12]), .IN4(n59), .Q(n88) );
  AO221X1 U86 ( .IN1(A[18]), .IN2(n10), .IN3(A[17]), .IN4(n11), .IN5(n89), .Q(
        n34) );
  AO22X1 U87 ( .IN1(A[15]), .IN2(n58), .IN3(A[16]), .IN4(n59), .Q(n89) );
  AO222X1 U88 ( .IN1(n17), .IN2(n36), .IN3(n19), .IN4(n83), .IN5(n21), .IN6(
        n38), .Q(B[10]) );
  AO221X1 U89 ( .IN1(A[17]), .IN2(n10), .IN3(A[16]), .IN4(n11), .IN5(n90), .Q(
        n38) );
  AO22X1 U90 ( .IN1(A[14]), .IN2(n58), .IN3(A[15]), .IN4(n59), .Q(n90) );
  AND2X1 U91 ( .IN1(n56), .IN2(n1), .Q(n21) );
  MUX21X1 U92 ( .IN1(n39), .IN2(n40), .S(SH[2]), .Q(n83) );
  AO22X1 U93 ( .IN1(n58), .IN2(A[22]), .IN3(n59), .IN4(A[23]), .Q(n40) );
  AO221X1 U94 ( .IN1(n10), .IN2(A[21]), .IN3(A[20]), .IN4(n11), .IN5(n91), .Q(
        n39) );
  AO22X1 U95 ( .IN1(A[18]), .IN2(n58), .IN3(A[19]), .IN4(n59), .Q(n91) );
  NOR2X0 U96 ( .IN1(n82), .IN2(n61), .QN(n19) );
  NAND2X0 U97 ( .IN1(n49), .IN2(n2), .QN(n82) );
  AO221X1 U98 ( .IN1(A[13]), .IN2(n10), .IN3(A[12]), .IN4(n11), .IN5(n92), .Q(
        n36) );
  AO22X1 U99 ( .IN1(A[10]), .IN2(n58), .IN3(A[11]), .IN4(n59), .Q(n92) );
  NOR2X0 U100 ( .IN1(n63), .IN2(SH[7]), .QN(n17) );
  OA21X1 U101 ( .IN1(n93), .IN2(n94), .IN3(n2), .Q(B[0]) );
  MUX21X1 U102 ( .IN1(n3), .IN2(n95), .S(n49), .Q(n94) );
  AO222X1 U103 ( .IN1(n54), .IN2(n25), .IN3(n55), .IN4(n23), .IN5(n56), .IN6(
        n45), .Q(n95) );
  AO221X1 U104 ( .IN1(A[7]), .IN2(n10), .IN3(A[6]), .IN4(n11), .IN5(n96), .Q(
        n45) );
  AO22X1 U105 ( .IN1(A[4]), .IN2(n58), .IN3(A[5]), .IN4(n59), .Q(n96) );
  NOR2X0 U106 ( .IN1(n4), .IN2(n7), .QN(n56) );
  AO221X1 U107 ( .IN1(A[11]), .IN2(n10), .IN3(A[10]), .IN4(n11), .IN5(n97), 
        .Q(n23) );
  AO22X1 U108 ( .IN1(A[8]), .IN2(n58), .IN3(A[9]), .IN4(n59), .Q(n97) );
  NOR2X0 U109 ( .IN1(n61), .IN2(SH[2]), .QN(n55) );
  AO221X1 U110 ( .IN1(A[15]), .IN2(n10), .IN3(A[14]), .IN4(n11), .IN5(n98), 
        .Q(n25) );
  AO22X1 U111 ( .IN1(A[12]), .IN2(n58), .IN3(A[13]), .IN4(n59), .Q(n98) );
  NOR2X0 U112 ( .IN1(n7), .IN2(n61), .QN(n54) );
  NAND2X0 U113 ( .IN1(n61), .IN2(n24), .QN(n84) );
  MUX21X1 U114 ( .IN1(n47), .IN2(n48), .S(SH[2]), .Q(n24) );
  AO221X1 U115 ( .IN1(n10), .IN2(A[23]), .IN3(A[22]), .IN4(n11), .IN5(n99), 
        .Q(n48) );
  AO22X1 U116 ( .IN1(A[20]), .IN2(n58), .IN3(A[21]), .IN4(n59), .Q(n99) );
  AO221X1 U117 ( .IN1(A[19]), .IN2(n10), .IN3(A[18]), .IN4(n11), .IN5(n100), 
        .Q(n47) );
  AO22X1 U118 ( .IN1(A[16]), .IN2(n58), .IN3(A[17]), .IN4(n59), .Q(n100) );
  NOR2X0 U119 ( .IN1(n101), .IN2(n63), .QN(n93) );
  NAND3X0 U120 ( .IN1(n49), .IN2(n7), .IN3(n61), .QN(n63) );
  NOR2X0 U121 ( .IN1(SH[3]), .IN2(n102), .QN(n61) );
  NOR2X0 U122 ( .IN1(SH[4]), .IN2(n102), .QN(n49) );
  OR2X1 U123 ( .IN1(SH[5]), .IN2(SH[6]), .Q(n102) );
  OA221X1 U124 ( .IN1(n81), .IN2(n15), .IN3(n80), .IN4(n14), .IN5(n103), .Q(
        n101) );
  AOI22X1 U125 ( .IN1(A[1]), .IN2(n59), .IN3(A[0]), .IN4(n58), .QN(n103) );
  NOR2X0 U126 ( .IN1(SH[0]), .IN2(SH[1]), .QN(n58) );
  NOR2X0 U127 ( .IN1(n12), .IN2(SH[1]), .QN(n59) );
  NAND2X0 U128 ( .IN1(SH[0]), .IN2(SH[1]), .QN(n80) );
  NAND2X0 U129 ( .IN1(SH[1]), .IN2(n12), .QN(n81) );
endmodule


module FP32Adder2_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [8:0] carry;

  FADDX1 U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FADDX1 U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1 U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1 U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FADDX1 U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FADDX1 U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XOR3X1 U2_7 ( .IN1(A[7]), .IN2(n2), .IN3(carry[7]), .Q(DIFF[7]) );
  NAND2X1 U1 ( .IN1(B[0]), .IN2(n1), .QN(carry[1]) );
  INVX0 U2 ( .IN1(B[1]), .QN(n8) );
  INVX0 U3 ( .IN1(B[2]), .QN(n7) );
  INVX0 U4 ( .IN1(B[3]), .QN(n6) );
  INVX0 U5 ( .IN1(B[4]), .QN(n5) );
  INVX0 U6 ( .IN1(B[5]), .QN(n4) );
  INVX0 U7 ( .IN1(B[6]), .QN(n3) );
  INVX0 U8 ( .IN1(A[0]), .QN(n1) );
  INVX0 U9 ( .IN1(B[0]), .QN(n9) );
  INVX0 U10 ( .IN1(B[7]), .QN(n2) );
  XOR2X1 U11 ( .IN1(n1), .IN2(n9), .Q(DIFF[0]) );
endmodule


module FP32Adder2_DW_rash_1 ( A, DATA_TC, SH, SH_TC, B );
  input [23:0] A;
  input [7:0] SH;
  output [23:0] B;
  input DATA_TC, SH_TC;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103;

  INVX0 U3 ( .IN1(n82), .QN(n1) );
  INVX0 U4 ( .IN1(n69), .QN(n6) );
  INVX0 U5 ( .IN1(n84), .QN(n3) );
  INVX0 U6 ( .IN1(n77), .QN(n5) );
  INVX0 U7 ( .IN1(n81), .QN(n11) );
  INVX0 U8 ( .IN1(n80), .QN(n10) );
  INVX0 U9 ( .IN1(n59), .QN(n9) );
  INVX0 U10 ( .IN1(n58), .QN(n8) );
  INVX0 U11 ( .IN1(n61), .QN(n4) );
  INVX0 U12 ( .IN1(SH[0]), .QN(n12) );
  INVX0 U13 ( .IN1(SH[2]), .QN(n7) );
  INVX0 U14 ( .IN1(SH[7]), .QN(n2) );
  INVX0 U15 ( .IN1(A[1]), .QN(n16) );
  INVX0 U16 ( .IN1(A[3]), .QN(n14) );
  INVX0 U17 ( .IN1(A[2]), .QN(n15) );
  INVX0 U18 ( .IN1(A[4]), .QN(n13) );
  AO222X1 U19 ( .IN1(n17), .IN2(n18), .IN3(n19), .IN4(n20), .IN5(n21), .IN6(
        n22), .Q(B[9]) );
  AO222X1 U20 ( .IN1(n17), .IN2(n23), .IN3(n19), .IN4(n24), .IN5(n21), .IN6(
        n25), .Q(B[8]) );
  AO221X1 U21 ( .IN1(n17), .IN2(n26), .IN3(n21), .IN4(n27), .IN5(n28), .Q(B[7]) );
  AO222X1 U22 ( .IN1(n29), .IN2(n30), .IN3(n31), .IN4(n32), .IN5(n33), .IN6(
        n34), .Q(n28) );
  AO221X1 U23 ( .IN1(n17), .IN2(n35), .IN3(n21), .IN4(n36), .IN5(n37), .Q(B[6]) );
  AO222X1 U24 ( .IN1(n33), .IN2(n38), .IN3(n31), .IN4(n39), .IN5(n29), .IN6(
        n40), .Q(n37) );
  AO221X1 U25 ( .IN1(n17), .IN2(n41), .IN3(n21), .IN4(n18), .IN5(n42), .Q(B[5]) );
  AO222X1 U26 ( .IN1(n33), .IN2(n22), .IN3(n31), .IN4(n43), .IN5(n29), .IN6(
        n44), .Q(n42) );
  AO221X1 U27 ( .IN1(n17), .IN2(n45), .IN3(n21), .IN4(n23), .IN5(n46), .Q(B[4]) );
  AO222X1 U28 ( .IN1(n33), .IN2(n25), .IN3(n31), .IN4(n47), .IN5(n29), .IN6(
        n48), .Q(n46) );
  NOR4X0 U29 ( .IN1(n4), .IN2(n49), .IN3(SH[2]), .IN4(SH[7]), .QN(n29) );
  AND2X1 U30 ( .IN1(n19), .IN2(SH[2]), .Q(n31) );
  OA21X1 U31 ( .IN1(n50), .IN2(n51), .IN3(n2), .Q(B[3]) );
  MUX21X1 U32 ( .IN1(n52), .IN2(n53), .S(n49), .Q(n51) );
  AO222X1 U33 ( .IN1(n54), .IN2(n34), .IN3(n55), .IN4(n27), .IN5(n56), .IN6(
        n26), .Q(n53) );
  AO221X1 U34 ( .IN1(A[10]), .IN2(n10), .IN3(A[9]), .IN4(n11), .IN5(n57), .Q(
        n26) );
  AO22X1 U35 ( .IN1(A[7]), .IN2(n58), .IN3(A[8]), .IN4(n59), .Q(n57) );
  AND2X1 U36 ( .IN1(n60), .IN2(n61), .Q(n52) );
  NOR2X0 U37 ( .IN1(n62), .IN2(n63), .QN(n50) );
  OA221X1 U38 ( .IN1(n8), .IN2(n14), .IN3(n9), .IN4(n13), .IN5(n64), .Q(n62)
         );
  AOI22X1 U39 ( .IN1(n10), .IN2(A[6]), .IN3(n11), .IN4(A[5]), .QN(n64) );
  OA21X1 U40 ( .IN1(n65), .IN2(n66), .IN3(n2), .Q(B[2]) );
  MUX21X1 U41 ( .IN1(n6), .IN2(n67), .S(n49), .Q(n66) );
  AO222X1 U42 ( .IN1(n54), .IN2(n38), .IN3(n55), .IN4(n36), .IN5(n56), .IN6(
        n35), .Q(n67) );
  AO221X1 U43 ( .IN1(A[9]), .IN2(n10), .IN3(A[8]), .IN4(n11), .IN5(n68), .Q(
        n35) );
  AO22X1 U44 ( .IN1(A[6]), .IN2(n58), .IN3(A[7]), .IN4(n59), .Q(n68) );
  NOR2X0 U45 ( .IN1(n70), .IN2(n63), .QN(n65) );
  OA221X1 U46 ( .IN1(n8), .IN2(n15), .IN3(n9), .IN4(n14), .IN5(n71), .Q(n70)
         );
  AOI22X1 U47 ( .IN1(n10), .IN2(A[5]), .IN3(n11), .IN4(A[4]), .QN(n71) );
  AND2X1 U48 ( .IN1(n17), .IN2(n30), .Q(B[23]) );
  AND2X1 U49 ( .IN1(n40), .IN2(n17), .Q(B[22]) );
  AND2X1 U50 ( .IN1(n44), .IN2(n17), .Q(B[21]) );
  AND2X1 U51 ( .IN1(n48), .IN2(n17), .Q(B[20]) );
  OA21X1 U52 ( .IN1(n72), .IN2(n73), .IN3(n2), .Q(B[1]) );
  MUX21X1 U53 ( .IN1(n5), .IN2(n74), .S(n49), .Q(n73) );
  AO222X1 U54 ( .IN1(n54), .IN2(n22), .IN3(n55), .IN4(n18), .IN5(n56), .IN6(
        n41), .Q(n74) );
  AO221X1 U55 ( .IN1(A[8]), .IN2(n10), .IN3(A[7]), .IN4(n11), .IN5(n75), .Q(
        n41) );
  AO22X1 U56 ( .IN1(A[5]), .IN2(n58), .IN3(A[6]), .IN4(n59), .Q(n75) );
  AO221X1 U57 ( .IN1(A[12]), .IN2(n10), .IN3(A[11]), .IN4(n11), .IN5(n76), .Q(
        n18) );
  AO22X1 U58 ( .IN1(A[9]), .IN2(n58), .IN3(A[10]), .IN4(n59), .Q(n76) );
  NOR2X0 U59 ( .IN1(n78), .IN2(n63), .QN(n72) );
  OA221X1 U60 ( .IN1(n8), .IN2(n16), .IN3(n9), .IN4(n15), .IN5(n79), .Q(n78)
         );
  OA22X1 U61 ( .IN1(n80), .IN2(n13), .IN3(n81), .IN4(n14), .Q(n79) );
  AND3X1 U62 ( .IN1(n1), .IN2(n60), .IN3(n61), .Q(B[19]) );
  NOR2X0 U63 ( .IN1(n82), .IN2(n69), .QN(B[18]) );
  NAND2X0 U64 ( .IN1(n61), .IN2(n83), .QN(n69) );
  NOR2X0 U65 ( .IN1(n82), .IN2(n77), .QN(B[17]) );
  NAND2X0 U66 ( .IN1(n61), .IN2(n20), .QN(n77) );
  MUX21X1 U67 ( .IN1(n43), .IN2(n44), .S(SH[2]), .Q(n20) );
  NOR2X0 U68 ( .IN1(n82), .IN2(n84), .QN(B[16]) );
  AO222X1 U69 ( .IN1(n17), .IN2(n34), .IN3(n33), .IN4(n30), .IN5(n21), .IN6(
        n32), .Q(B[15]) );
  AO222X1 U70 ( .IN1(n17), .IN2(n38), .IN3(n33), .IN4(n40), .IN5(n21), .IN6(
        n39), .Q(B[14]) );
  AO222X1 U71 ( .IN1(n17), .IN2(n22), .IN3(n33), .IN4(n44), .IN5(n21), .IN6(
        n43), .Q(B[13]) );
  AO221X1 U72 ( .IN1(A[20]), .IN2(n10), .IN3(A[19]), .IN4(n11), .IN5(n85), .Q(
        n43) );
  AO22X1 U73 ( .IN1(A[17]), .IN2(n58), .IN3(A[18]), .IN4(n59), .Q(n85) );
  AO222X1 U74 ( .IN1(A[22]), .IN2(n59), .IN3(A[23]), .IN4(n11), .IN5(A[21]), 
        .IN6(n58), .Q(n44) );
  AO221X1 U75 ( .IN1(A[16]), .IN2(n10), .IN3(A[15]), .IN4(n11), .IN5(n86), .Q(
        n22) );
  AO22X1 U76 ( .IN1(A[13]), .IN2(n58), .IN3(A[14]), .IN4(n59), .Q(n86) );
  AO222X1 U77 ( .IN1(n17), .IN2(n25), .IN3(n33), .IN4(n48), .IN5(n21), .IN6(
        n47), .Q(B[12]) );
  AND2X1 U78 ( .IN1(n19), .IN2(n7), .Q(n33) );
  AO222X1 U79 ( .IN1(n21), .IN2(n34), .IN3(n17), .IN4(n27), .IN5(n19), .IN6(
        n60), .Q(B[11]) );
  MUX21X1 U80 ( .IN1(n30), .IN2(n32), .S(n7), .Q(n60) );
  AO221X1 U81 ( .IN1(n10), .IN2(A[22]), .IN3(A[21]), .IN4(n11), .IN5(n87), .Q(
        n32) );
  AO22X1 U82 ( .IN1(A[19]), .IN2(n58), .IN3(A[20]), .IN4(n59), .Q(n87) );
  AND2X1 U83 ( .IN1(n58), .IN2(A[23]), .Q(n30) );
  AO221X1 U84 ( .IN1(A[14]), .IN2(n10), .IN3(A[13]), .IN4(n11), .IN5(n88), .Q(
        n27) );
  AO22X1 U85 ( .IN1(A[11]), .IN2(n58), .IN3(A[12]), .IN4(n59), .Q(n88) );
  AO221X1 U86 ( .IN1(A[18]), .IN2(n10), .IN3(A[17]), .IN4(n11), .IN5(n89), .Q(
        n34) );
  AO22X1 U87 ( .IN1(A[15]), .IN2(n58), .IN3(A[16]), .IN4(n59), .Q(n89) );
  AO222X1 U88 ( .IN1(n17), .IN2(n36), .IN3(n19), .IN4(n83), .IN5(n21), .IN6(
        n38), .Q(B[10]) );
  AO221X1 U89 ( .IN1(A[17]), .IN2(n10), .IN3(A[16]), .IN4(n11), .IN5(n90), .Q(
        n38) );
  AO22X1 U90 ( .IN1(A[14]), .IN2(n58), .IN3(A[15]), .IN4(n59), .Q(n90) );
  AND2X1 U91 ( .IN1(n56), .IN2(n1), .Q(n21) );
  MUX21X1 U92 ( .IN1(n39), .IN2(n40), .S(SH[2]), .Q(n83) );
  AO22X1 U93 ( .IN1(n58), .IN2(A[22]), .IN3(n59), .IN4(A[23]), .Q(n40) );
  AO221X1 U94 ( .IN1(n10), .IN2(A[21]), .IN3(A[20]), .IN4(n11), .IN5(n91), .Q(
        n39) );
  AO22X1 U95 ( .IN1(A[18]), .IN2(n58), .IN3(A[19]), .IN4(n59), .Q(n91) );
  NOR2X0 U96 ( .IN1(n82), .IN2(n61), .QN(n19) );
  NAND2X0 U97 ( .IN1(n49), .IN2(n2), .QN(n82) );
  AO221X1 U98 ( .IN1(A[13]), .IN2(n10), .IN3(A[12]), .IN4(n11), .IN5(n92), .Q(
        n36) );
  AO22X1 U99 ( .IN1(A[10]), .IN2(n58), .IN3(A[11]), .IN4(n59), .Q(n92) );
  NOR2X0 U100 ( .IN1(n63), .IN2(SH[7]), .QN(n17) );
  OA21X1 U101 ( .IN1(n93), .IN2(n94), .IN3(n2), .Q(B[0]) );
  MUX21X1 U102 ( .IN1(n3), .IN2(n95), .S(n49), .Q(n94) );
  AO222X1 U103 ( .IN1(n54), .IN2(n25), .IN3(n55), .IN4(n23), .IN5(n56), .IN6(
        n45), .Q(n95) );
  AO221X1 U104 ( .IN1(A[7]), .IN2(n10), .IN3(A[6]), .IN4(n11), .IN5(n96), .Q(
        n45) );
  AO22X1 U105 ( .IN1(A[4]), .IN2(n58), .IN3(A[5]), .IN4(n59), .Q(n96) );
  NOR2X0 U106 ( .IN1(n4), .IN2(n7), .QN(n56) );
  AO221X1 U107 ( .IN1(A[11]), .IN2(n10), .IN3(A[10]), .IN4(n11), .IN5(n97), 
        .Q(n23) );
  AO22X1 U108 ( .IN1(A[8]), .IN2(n58), .IN3(A[9]), .IN4(n59), .Q(n97) );
  NOR2X0 U109 ( .IN1(n61), .IN2(SH[2]), .QN(n55) );
  AO221X1 U110 ( .IN1(A[15]), .IN2(n10), .IN3(A[14]), .IN4(n11), .IN5(n98), 
        .Q(n25) );
  AO22X1 U111 ( .IN1(A[12]), .IN2(n58), .IN3(A[13]), .IN4(n59), .Q(n98) );
  NOR2X0 U112 ( .IN1(n7), .IN2(n61), .QN(n54) );
  NAND2X0 U113 ( .IN1(n61), .IN2(n24), .QN(n84) );
  MUX21X1 U114 ( .IN1(n47), .IN2(n48), .S(SH[2]), .Q(n24) );
  AO221X1 U115 ( .IN1(n10), .IN2(A[23]), .IN3(A[22]), .IN4(n11), .IN5(n99), 
        .Q(n48) );
  AO22X1 U116 ( .IN1(A[20]), .IN2(n58), .IN3(A[21]), .IN4(n59), .Q(n99) );
  AO221X1 U117 ( .IN1(A[19]), .IN2(n10), .IN3(A[18]), .IN4(n11), .IN5(n100), 
        .Q(n47) );
  AO22X1 U118 ( .IN1(A[16]), .IN2(n58), .IN3(A[17]), .IN4(n59), .Q(n100) );
  NOR2X0 U119 ( .IN1(n101), .IN2(n63), .QN(n93) );
  NAND3X0 U120 ( .IN1(n49), .IN2(n7), .IN3(n61), .QN(n63) );
  NOR2X0 U121 ( .IN1(SH[3]), .IN2(n102), .QN(n61) );
  NOR2X0 U122 ( .IN1(SH[4]), .IN2(n102), .QN(n49) );
  OR2X1 U123 ( .IN1(SH[5]), .IN2(SH[6]), .Q(n102) );
  OA221X1 U124 ( .IN1(n81), .IN2(n15), .IN3(n80), .IN4(n14), .IN5(n103), .Q(
        n101) );
  AOI22X1 U125 ( .IN1(A[1]), .IN2(n59), .IN3(A[0]), .IN4(n58), .QN(n103) );
  NOR2X0 U126 ( .IN1(SH[0]), .IN2(SH[1]), .QN(n58) );
  NOR2X0 U127 ( .IN1(n12), .IN2(SH[1]), .QN(n59) );
  NAND2X0 U128 ( .IN1(SH[0]), .IN2(SH[1]), .QN(n80) );
  NAND2X0 U129 ( .IN1(SH[1]), .IN2(n12), .QN(n81) );
endmodule


module FP32Adder2_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [8:0] carry;

  FADDX1 U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FADDX1 U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1 U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1 U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FADDX1 U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FADDX1 U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XOR3X1 U2_7 ( .IN1(A[7]), .IN2(n2), .IN3(carry[7]), .Q(DIFF[7]) );
  NAND2X1 U1 ( .IN1(B[0]), .IN2(n1), .QN(carry[1]) );
  INVX0 U2 ( .IN1(B[1]), .QN(n8) );
  INVX0 U3 ( .IN1(B[2]), .QN(n7) );
  INVX0 U4 ( .IN1(B[3]), .QN(n6) );
  INVX0 U5 ( .IN1(B[4]), .QN(n5) );
  INVX0 U6 ( .IN1(B[5]), .QN(n4) );
  INVX0 U7 ( .IN1(B[6]), .QN(n3) );
  INVX0 U8 ( .IN1(A[0]), .QN(n1) );
  INVX0 U9 ( .IN1(B[0]), .QN(n9) );
  INVX0 U10 ( .IN1(B[7]), .QN(n2) );
  XOR2X1 U11 ( .IN1(n1), .IN2(n9), .Q(DIFF[0]) );
endmodule


module FP32Adder2_Synth ( a, b, S, Overflow );
  input [31:0] a;
  input [31:0] b;
  output [31:0] S;
  output Overflow;
  wire   N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32,
         N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N51, N52, N53, N54,
         N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68,
         N69, N70, N71, N72, N73, N74, N76, N77, N78, N79, N80, N81, N82, N83,
         N247, N248, N249, N250, N251, N252, N253, N254, N276, N283, N50, N49,
         N48, N47, N46, N45, N44, N43, N18, N17, N16, N15, N14, N13, N12, N11,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, n484,
         n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n558, n559, n560, n561,
         n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572,
         n573, n574;
  wire   [23:0] l_mantissa;
  wire   [23:0] s_mantissa;
  wire   [7:0] c_exp;
  wire   [24:0] sum_man;
  wire   [23:0] sum_dif;
  wire   [7:0] ds_exp_offset;

  FP32Adder2_DW01_add_0 add_109 ( .A(c_exp), .B({ds_exp_offset[7:6], 
        ds_exp_offset[6], ds_exp_offset[4:0]}), .CI(1'b0), .SUM({N254, N253, 
        N252, N251, N250, N249, N248, N247}) );
  FP32Adder2_DW01_sub_0 sub_52 ( .A(l_mantissa), .B(s_mantissa), .CI(1'b0), 
        .DIFF(sum_dif) );
  FP32Adder2_DW01_inc_0 add_50 ( .A(c_exp), .SUM({N83, N82, N81, N80, N79, N78, 
        N77, N76}) );
  FP32Adder2_DW01_add_1 add_46 ( .A({1'b0, l_mantissa}), .B({1'b0, s_mantissa}), .CI(1'b0), .SUM(sum_man) );
  FP32Adder2_DW_rash_0 srl_37_2 ( .A({N276, a[22:0]}), .DATA_TC(1'b0), .SH({
        N50, N49, N48, N47, N46, N45, N44, N43}), .SH_TC(1'b0), .B({N74, N73, 
        N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, 
        N58, N57, N56, N55, N54, N53, N52, N51}) );
  FP32Adder2_DW01_sub_1 sub_37_2 ( .A(b[30:23]), .B(a[30:23]), .CI(1'b0), 
        .DIFF({N50, N49, N48, N47, N46, N45, N44, N43}) );
  FP32Adder2_DW_rash_1 srl_37 ( .A({N283, b[22:0]}), .DATA_TC(1'b0), .SH({N18, 
        N17, N16, N15, N14, N13, N12, N11}), .SH_TC(1'b0), .B({N42, N41, N40, 
        N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, 
        N25, N24, N23, N22, N21, N20, N19}) );
  FP32Adder2_DW01_sub_2 sub_37 ( .A(a[30:23]), .B(b[30:23]), .CI(1'b0), .DIFF(
        {N18, N17, N16, N15, N14, N13, N12, N11}) );
  NOR2X1 U355 ( .IN1(n287), .IN2(sum_man[24]), .QN(n289) );
  AOI222X2 U356 ( .IN1(n495), .IN2(n496), .IN3(n497), .IN4(n498), .IN5(a[30]), 
        .IN6(n499), .QN(n265) );
  MUX21X1 U357 ( .IN1(N28), .IN2(N60), .S(n265), .Q(s_mantissa[9]) );
  MUX21X1 U358 ( .IN1(N27), .IN2(N59), .S(n265), .Q(s_mantissa[8]) );
  MUX21X1 U359 ( .IN1(N26), .IN2(N58), .S(n265), .Q(s_mantissa[7]) );
  MUX21X1 U360 ( .IN1(N25), .IN2(N57), .S(n265), .Q(s_mantissa[6]) );
  MUX21X1 U361 ( .IN1(N24), .IN2(N56), .S(n265), .Q(s_mantissa[5]) );
  MUX21X1 U362 ( .IN1(N23), .IN2(N55), .S(n265), .Q(s_mantissa[4]) );
  MUX21X1 U363 ( .IN1(N22), .IN2(N54), .S(n265), .Q(s_mantissa[3]) );
  MUX21X1 U364 ( .IN1(N21), .IN2(N53), .S(n265), .Q(s_mantissa[2]) );
  MUX21X1 U365 ( .IN1(N42), .IN2(N74), .S(n265), .Q(s_mantissa[23]) );
  MUX21X1 U366 ( .IN1(N41), .IN2(N73), .S(n265), .Q(s_mantissa[22]) );
  MUX21X1 U367 ( .IN1(N40), .IN2(N72), .S(n265), .Q(s_mantissa[21]) );
  MUX21X1 U368 ( .IN1(N39), .IN2(N71), .S(n265), .Q(s_mantissa[20]) );
  MUX21X1 U369 ( .IN1(N20), .IN2(N52), .S(n265), .Q(s_mantissa[1]) );
  MUX21X1 U370 ( .IN1(N38), .IN2(N70), .S(n265), .Q(s_mantissa[19]) );
  MUX21X1 U371 ( .IN1(N37), .IN2(N69), .S(n265), .Q(s_mantissa[18]) );
  MUX21X1 U372 ( .IN1(N36), .IN2(N68), .S(n265), .Q(s_mantissa[17]) );
  MUX21X1 U373 ( .IN1(N35), .IN2(N67), .S(n265), .Q(s_mantissa[16]) );
  MUX21X1 U374 ( .IN1(N34), .IN2(N66), .S(n265), .Q(s_mantissa[15]) );
  MUX21X1 U375 ( .IN1(N33), .IN2(N65), .S(n265), .Q(s_mantissa[14]) );
  MUX21X1 U376 ( .IN1(N32), .IN2(N64), .S(n265), .Q(s_mantissa[13]) );
  MUX21X1 U377 ( .IN1(N31), .IN2(N63), .S(n265), .Q(s_mantissa[12]) );
  MUX21X1 U378 ( .IN1(N30), .IN2(N62), .S(n265), .Q(s_mantissa[11]) );
  MUX21X1 U379 ( .IN1(N29), .IN2(N61), .S(n265), .Q(s_mantissa[10]) );
  MUX21X1 U380 ( .IN1(N19), .IN2(N51), .S(n265), .Q(s_mantissa[0]) );
  MUX21X1 U381 ( .IN1(a[9]), .IN2(b[9]), .S(n265), .Q(l_mantissa[9]) );
  MUX21X1 U382 ( .IN1(a[8]), .IN2(b[8]), .S(n265), .Q(l_mantissa[8]) );
  MUX21X1 U383 ( .IN1(a[7]), .IN2(b[7]), .S(n265), .Q(l_mantissa[7]) );
  MUX21X1 U384 ( .IN1(a[6]), .IN2(b[6]), .S(n265), .Q(l_mantissa[6]) );
  MUX21X1 U385 ( .IN1(a[5]), .IN2(b[5]), .S(n265), .Q(l_mantissa[5]) );
  MUX21X1 U386 ( .IN1(a[4]), .IN2(b[4]), .S(n265), .Q(l_mantissa[4]) );
  MUX21X1 U387 ( .IN1(a[3]), .IN2(b[3]), .S(n265), .Q(l_mantissa[3]) );
  MUX21X1 U388 ( .IN1(a[2]), .IN2(b[2]), .S(n265), .Q(l_mantissa[2]) );
  OR2X1 U389 ( .IN1(N276), .IN2(N283), .Q(l_mantissa[23]) );
  MUX21X1 U390 ( .IN1(a[22]), .IN2(b[22]), .S(n265), .Q(l_mantissa[22]) );
  MUX21X1 U391 ( .IN1(a[21]), .IN2(b[21]), .S(n265), .Q(l_mantissa[21]) );
  MUX21X1 U392 ( .IN1(a[20]), .IN2(b[20]), .S(n265), .Q(l_mantissa[20]) );
  MUX21X1 U393 ( .IN1(a[1]), .IN2(b[1]), .S(n265), .Q(l_mantissa[1]) );
  MUX21X1 U394 ( .IN1(a[19]), .IN2(b[19]), .S(n265), .Q(l_mantissa[19]) );
  MUX21X1 U395 ( .IN1(a[18]), .IN2(b[18]), .S(n265), .Q(l_mantissa[18]) );
  MUX21X1 U396 ( .IN1(a[17]), .IN2(b[17]), .S(n265), .Q(l_mantissa[17]) );
  MUX21X1 U397 ( .IN1(a[16]), .IN2(b[16]), .S(n265), .Q(l_mantissa[16]) );
  MUX21X1 U398 ( .IN1(a[15]), .IN2(b[15]), .S(n265), .Q(l_mantissa[15]) );
  MUX21X1 U399 ( .IN1(a[14]), .IN2(b[14]), .S(n265), .Q(l_mantissa[14]) );
  MUX21X1 U400 ( .IN1(a[13]), .IN2(b[13]), .S(n265), .Q(l_mantissa[13]) );
  MUX21X1 U401 ( .IN1(a[12]), .IN2(b[12]), .S(n265), .Q(l_mantissa[12]) );
  MUX21X1 U402 ( .IN1(a[11]), .IN2(b[11]), .S(n265), .Q(l_mantissa[11]) );
  MUX21X1 U403 ( .IN1(a[10]), .IN2(b[10]), .S(n265), .Q(l_mantissa[10]) );
  MUX21X1 U404 ( .IN1(a[0]), .IN2(b[0]), .S(n265), .Q(l_mantissa[0]) );
  NAND2X0 U405 ( .IN1(n266), .IN2(n267), .QN(ds_exp_offset[6]) );
  NAND2X0 U406 ( .IN1(n268), .IN2(n266), .QN(ds_exp_offset[4]) );
  NAND3X0 U407 ( .IN1(n269), .IN2(n266), .IN3(n270), .QN(ds_exp_offset[3]) );
  NAND4X0 U408 ( .IN1(n271), .IN2(n272), .IN3(n273), .IN4(n274), .QN(
        ds_exp_offset[2]) );
  AND3X1 U409 ( .IN1(n275), .IN2(n276), .IN3(n277), .Q(n274) );
  NAND4X0 U410 ( .IN1(n278), .IN2(n276), .IN3(n279), .IN4(n280), .QN(
        ds_exp_offset[1]) );
  AND2X1 U411 ( .IN1(n281), .IN2(n282), .Q(n279) );
  AND3X1 U412 ( .IN1(n283), .IN2(n284), .IN3(n285), .Q(n276) );
  AO222X1 U413 ( .IN1(sum_man[10]), .IN2(n286), .IN3(n287), .IN4(n288), .IN5(
        sum_man[9]), .IN6(n289), .Q(S[9]) );
  NAND4X0 U414 ( .IN1(n290), .IN2(n291), .IN3(n292), .IN4(n293), .QN(n288) );
  OA222X1 U415 ( .IN1(n294), .IN2(n284), .IN3(n295), .IN4(n296), .IN5(n297), 
        .IN6(n281), .Q(n293) );
  OA22X1 U416 ( .IN1(n298), .IN2(n271), .IN3(n299), .IN4(n300), .Q(n292) );
  OA222X1 U417 ( .IN1(n301), .IN2(n302), .IN3(n303), .IN4(n304), .IN5(n305), 
        .IN6(n306), .Q(n291) );
  OA22X1 U418 ( .IN1(n307), .IN2(n308), .IN3(n309), .IN4(n310), .Q(n290) );
  AO222X1 U419 ( .IN1(sum_man[9]), .IN2(n286), .IN3(n287), .IN4(n311), .IN5(
        sum_man[8]), .IN6(n289), .Q(S[8]) );
  NAND4X0 U420 ( .IN1(n312), .IN2(n313), .IN3(n314), .IN4(n315), .QN(n311) );
  OA222X1 U421 ( .IN1(n305), .IN2(n284), .IN3(n307), .IN4(n296), .IN5(n299), 
        .IN6(n281), .Q(n315) );
  OA22X1 U422 ( .IN1(n303), .IN2(n271), .IN3(n295), .IN4(n300), .Q(n314) );
  OA22X1 U423 ( .IN1(n297), .IN2(n304), .IN3(n298), .IN4(n306), .Q(n313) );
  OA22X1 U424 ( .IN1(n294), .IN2(n302), .IN3(n301), .IN4(n310), .Q(n312) );
  AO222X1 U425 ( .IN1(sum_man[8]), .IN2(n286), .IN3(n287), .IN4(n316), .IN5(
        sum_man[7]), .IN6(n289), .Q(S[7]) );
  NAND4X0 U426 ( .IN1(n317), .IN2(n318), .IN3(n319), .IN4(n320), .QN(n316) );
  OA22X1 U427 ( .IN1(n295), .IN2(n281), .IN3(n298), .IN4(n284), .Q(n320) );
  OA22X1 U428 ( .IN1(n297), .IN2(n271), .IN3(n307), .IN4(n300), .Q(n319) );
  OA22X1 U429 ( .IN1(n299), .IN2(n304), .IN3(n303), .IN4(n306), .Q(n318) );
  OA22X1 U430 ( .IN1(n305), .IN2(n302), .IN3(n294), .IN4(n310), .Q(n317) );
  AO222X1 U431 ( .IN1(sum_man[7]), .IN2(n286), .IN3(n287), .IN4(n321), .IN5(
        sum_man[6]), .IN6(n289), .Q(S[6]) );
  NAND3X0 U432 ( .IN1(n322), .IN2(n323), .IN3(n324), .QN(n321) );
  OA222X1 U433 ( .IN1(n305), .IN2(n310), .IN3(n297), .IN4(n306), .IN5(n298), 
        .IN6(n302), .Q(n324) );
  OA22X1 U434 ( .IN1(n307), .IN2(n281), .IN3(n303), .IN4(n284), .Q(n323) );
  OA22X1 U435 ( .IN1(n299), .IN2(n271), .IN3(n295), .IN4(n304), .Q(n322) );
  AO222X1 U436 ( .IN1(sum_man[6]), .IN2(n286), .IN3(n287), .IN4(n325), .IN5(
        sum_man[5]), .IN6(n289), .Q(S[5]) );
  NAND2X0 U437 ( .IN1(n326), .IN2(n327), .QN(n325) );
  OA222X1 U438 ( .IN1(n307), .IN2(n304), .IN3(n297), .IN4(n284), .IN5(n295), 
        .IN6(n271), .Q(n327) );
  OA222X1 U439 ( .IN1(n298), .IN2(n310), .IN3(n299), .IN4(n306), .IN5(n303), 
        .IN6(n302), .Q(n326) );
  AO222X1 U440 ( .IN1(sum_man[5]), .IN2(n286), .IN3(n287), .IN4(n328), .IN5(
        sum_man[4]), .IN6(n289), .Q(S[4]) );
  AO221X1 U441 ( .IN1(n329), .IN2(sum_dif[3]), .IN3(sum_dif[23]), .IN4(
        sum_dif[4]), .IN5(n330), .Q(n328) );
  AO222X1 U442 ( .IN1(n331), .IN2(sum_dif[0]), .IN3(n332), .IN4(sum_dif[2]), 
        .IN5(n333), .IN6(sum_dif[1]), .Q(n330) );
  AO222X1 U443 ( .IN1(sum_man[4]), .IN2(n286), .IN3(n287), .IN4(n334), .IN5(
        sum_man[3]), .IN6(n289), .Q(S[3]) );
  AO221X1 U444 ( .IN1(n332), .IN2(sum_dif[1]), .IN3(n333), .IN4(sum_dif[0]), 
        .IN5(n335), .Q(n334) );
  AO22X1 U445 ( .IN1(sum_dif[23]), .IN2(sum_dif[3]), .IN3(n329), .IN4(
        sum_dif[2]), .Q(n335) );
  AO222X1 U446 ( .IN1(sum_man[3]), .IN2(n286), .IN3(n287), .IN4(n336), .IN5(
        sum_man[2]), .IN6(n289), .Q(S[2]) );
  AO222X1 U447 ( .IN1(n329), .IN2(sum_dif[1]), .IN3(n332), .IN4(sum_dif[0]), 
        .IN5(sum_dif[23]), .IN6(sum_dif[2]), .Q(n336) );
  AO222X1 U448 ( .IN1(sum_man[23]), .IN2(n286), .IN3(n287), .IN4(n337), .IN5(
        sum_man[22]), .IN6(n289), .Q(S[22]) );
  NAND4X0 U449 ( .IN1(n338), .IN2(n339), .IN3(n340), .IN4(n341), .QN(n337) );
  OA221X1 U450 ( .IN1(n342), .IN2(n296), .IN3(n343), .IN4(n283), .IN5(n344), 
        .Q(n341) );
  OA22X1 U451 ( .IN1(n345), .IN2(n281), .IN3(n346), .IN4(n284), .Q(n344) );
  OA222X1 U452 ( .IN1(n347), .IN2(n300), .IN3(n348), .IN4(n271), .IN5(n349), 
        .IN6(n272), .Q(n340) );
  OA222X1 U453 ( .IN1(n350), .IN2(n351), .IN3(n352), .IN4(n304), .IN5(n353), 
        .IN6(n306), .Q(n339) );
  AOI222X1 U454 ( .IN1(sum_dif[22]), .IN2(sum_dif[23]), .IN3(sum_dif[21]), 
        .IN4(n329), .IN5(sum_dif[13]), .IN6(n354), .QN(n338) );
  AO222X1 U455 ( .IN1(sum_man[22]), .IN2(n286), .IN3(n287), .IN4(n355), .IN5(
        sum_man[21]), .IN6(n289), .Q(S[21]) );
  NAND4X0 U456 ( .IN1(n356), .IN2(n357), .IN3(n358), .IN4(n359), .QN(n355) );
  NOR2X0 U457 ( .IN1(n360), .IN2(n361), .QN(n359) );
  AO221X1 U458 ( .IN1(n362), .IN2(sum_dif[5]), .IN3(sum_dif[23]), .IN4(
        sum_dif[21]), .IN5(n363), .Q(n361) );
  AO222X1 U459 ( .IN1(n329), .IN2(sum_dif[20]), .IN3(n364), .IN4(sum_dif[10]), 
        .IN5(n354), .IN6(sum_dif[12]), .Q(n363) );
  INVX0 U460 ( .IN1(n365), .QN(n362) );
  AO221X1 U461 ( .IN1(n366), .IN2(sum_dif[3]), .IN3(n333), .IN4(sum_dif[18]), 
        .IN5(n367), .Q(n360) );
  AO222X1 U462 ( .IN1(n368), .IN2(sum_dif[14]), .IN3(n369), .IN4(sum_dif[7]), 
        .IN5(n370), .IN6(sum_dif[16]), .Q(n367) );
  INVX0 U463 ( .IN1(n371), .QN(n366) );
  OA221X1 U464 ( .IN1(n372), .IN2(n309), .IN3(n352), .IN4(n271), .IN5(n373), 
        .Q(n358) );
  OA222X1 U465 ( .IN1(n353), .IN2(n284), .IN3(n374), .IN4(n296), .IN5(n347), 
        .IN6(n281), .Q(n373) );
  OA222X1 U466 ( .IN1(n303), .IN2(n285), .IN3(n375), .IN4(n295), .IN5(n299), 
        .IN6(n273), .Q(n357) );
  OA21X1 U467 ( .IN1(n376), .IN2(n307), .IN3(n377), .Q(n375) );
  OA222X1 U468 ( .IN1(n305), .IN2(n378), .IN3(n301), .IN4(n282), .IN5(n350), 
        .IN6(n283), .Q(n356) );
  AO222X1 U469 ( .IN1(sum_man[21]), .IN2(n286), .IN3(n287), .IN4(n379), .IN5(
        sum_man[20]), .IN6(n289), .Q(S[20]) );
  NAND4X0 U470 ( .IN1(n380), .IN2(n381), .IN3(n382), .IN4(n383), .QN(n379) );
  NOR2X0 U471 ( .IN1(n384), .IN2(n385), .QN(n383) );
  OAI222X1 U472 ( .IN1(n378), .IN2(n298), .IN3(n283), .IN4(n349), .IN5(n296), 
        .IN6(n343), .QN(n385) );
  OAI222X1 U473 ( .IN1(n285), .IN2(n297), .IN3(n273), .IN4(n295), .IN5(n282), 
        .IN6(n294), .QN(n384) );
  OA221X1 U474 ( .IN1(n305), .IN2(n386), .IN3(n372), .IN4(n301), .IN5(n387), 
        .Q(n382) );
  OA222X1 U475 ( .IN1(n345), .IN2(n271), .IN3(n342), .IN4(n281), .IN5(n348), 
        .IN6(n284), .Q(n387) );
  OA221X1 U476 ( .IN1(n352), .IN2(n306), .IN3(n299), .IN4(n371), .IN5(n388), 
        .Q(n381) );
  OA222X1 U477 ( .IN1(n347), .IN2(n304), .IN3(n374), .IN4(n300), .IN5(n307), 
        .IN6(n377), .Q(n388) );
  OA221X1 U478 ( .IN1(n346), .IN2(n310), .IN3(n303), .IN4(n365), .IN5(n389), 
        .Q(n380) );
  OA222X1 U479 ( .IN1(n350), .IN2(n308), .IN3(n309), .IN4(n351), .IN5(n353), 
        .IN6(n302), .Q(n389) );
  AO222X1 U480 ( .IN1(sum_man[2]), .IN2(n286), .IN3(n287), .IN4(n390), .IN5(
        sum_man[1]), .IN6(n289), .Q(S[1]) );
  AO22X1 U481 ( .IN1(sum_dif[23]), .IN2(sum_dif[1]), .IN3(n329), .IN4(
        sum_dif[0]), .Q(n390) );
  AO222X1 U482 ( .IN1(sum_man[20]), .IN2(n286), .IN3(n287), .IN4(n391), .IN5(
        sum_man[19]), .IN6(n289), .Q(S[19]) );
  NAND4X0 U483 ( .IN1(n392), .IN2(n393), .IN3(n394), .IN4(n395), .QN(n391) );
  OA221X1 U484 ( .IN1(n303), .IN2(n378), .IN3(n309), .IN4(n283), .IN5(n396), 
        .Q(n395) );
  OA222X1 U485 ( .IN1(n305), .IN2(n282), .IN3(n307), .IN4(n273), .IN5(n299), 
        .IN6(n285), .Q(n396) );
  OA221X1 U486 ( .IN1(n372), .IN2(n294), .IN3(n347), .IN4(n271), .IN5(n397), 
        .Q(n394) );
  OA222X1 U487 ( .IN1(n352), .IN2(n284), .IN3(n350), .IN4(n296), .IN5(n374), 
        .IN6(n281), .Q(n397) );
  OA221X1 U488 ( .IN1(n345), .IN2(n306), .IN3(n295), .IN4(n371), .IN5(n398), 
        .Q(n393) );
  OA222X1 U489 ( .IN1(n342), .IN2(n304), .IN3(n298), .IN4(n386), .IN5(n343), 
        .IN6(n300), .Q(n398) );
  OA221X1 U490 ( .IN1(n353), .IN2(n310), .IN3(n297), .IN4(n365), .IN5(n399), 
        .Q(n392) );
  OA222X1 U491 ( .IN1(n349), .IN2(n308), .IN3(n301), .IN4(n351), .IN5(n348), 
        .IN6(n302), .Q(n399) );
  AO222X1 U492 ( .IN1(sum_man[19]), .IN2(n286), .IN3(n287), .IN4(n400), .IN5(
        sum_man[18]), .IN6(n289), .Q(S[18]) );
  NAND4X0 U493 ( .IN1(n401), .IN2(n402), .IN3(n403), .IN4(n404), .QN(n400) );
  OA221X1 U494 ( .IN1(n349), .IN2(n296), .IN3(n297), .IN4(n378), .IN5(n405), 
        .Q(n404) );
  OA222X1 U495 ( .IN1(n301), .IN2(n283), .IN3(n295), .IN4(n285), .IN5(n298), 
        .IN6(n282), .Q(n405) );
  OA221X1 U496 ( .IN1(n303), .IN2(n386), .IN3(n372), .IN4(n305), .IN5(n406), 
        .Q(n403) );
  OA222X1 U497 ( .IN1(n342), .IN2(n271), .IN3(n343), .IN4(n281), .IN5(n345), 
        .IN6(n284), .Q(n406) );
  OA221X1 U498 ( .IN1(n294), .IN2(n351), .IN3(n347), .IN4(n306), .IN5(n407), 
        .Q(n402) );
  OA222X1 U499 ( .IN1(n307), .IN2(n371), .IN3(n350), .IN4(n300), .IN5(n374), 
        .IN6(n304), .Q(n407) );
  OA221X1 U500 ( .IN1(n309), .IN2(n308), .IN3(n352), .IN4(n302), .IN5(n408), 
        .Q(n401) );
  OA22X1 U501 ( .IN1(n299), .IN2(n365), .IN3(n348), .IN4(n310), .Q(n408) );
  AO222X1 U502 ( .IN1(sum_man[18]), .IN2(n286), .IN3(n287), .IN4(n409), .IN5(
        sum_man[17]), .IN6(n289), .Q(S[17]) );
  NAND4X0 U503 ( .IN1(n410), .IN2(n411), .IN3(n412), .IN4(n413), .QN(n409) );
  OA221X1 U504 ( .IN1(n309), .IN2(n296), .IN3(n299), .IN4(n378), .IN5(n414), 
        .Q(n413) );
  OA222X1 U505 ( .IN1(n294), .IN2(n283), .IN3(n307), .IN4(n285), .IN5(n303), 
        .IN6(n282), .Q(n414) );
  OA221X1 U506 ( .IN1(n372), .IN2(n298), .IN3(n374), .IN4(n271), .IN5(n415), 
        .Q(n412) );
  OA22X1 U507 ( .IN1(n350), .IN2(n281), .IN3(n347), .IN4(n284), .Q(n415) );
  OA221X1 U508 ( .IN1(n305), .IN2(n351), .IN3(n342), .IN4(n306), .IN5(n416), 
        .Q(n411) );
  OA222X1 U509 ( .IN1(n343), .IN2(n304), .IN3(n297), .IN4(n386), .IN5(n349), 
        .IN6(n300), .Q(n416) );
  OA221X1 U510 ( .IN1(n301), .IN2(n308), .IN3(n345), .IN4(n302), .IN5(n417), 
        .Q(n410) );
  OA22X1 U511 ( .IN1(n295), .IN2(n365), .IN3(n352), .IN4(n310), .Q(n417) );
  AO222X1 U512 ( .IN1(sum_man[17]), .IN2(n286), .IN3(n287), .IN4(n418), .IN5(
        sum_man[16]), .IN6(n289), .Q(S[16]) );
  NAND4X0 U513 ( .IN1(n419), .IN2(n420), .IN3(n421), .IN4(n422), .QN(n418) );
  OA221X1 U514 ( .IN1(n349), .IN2(n281), .IN3(n301), .IN4(n296), .IN5(n423), 
        .Q(n422) );
  OA222X1 U515 ( .IN1(n295), .IN2(n378), .IN3(n297), .IN4(n282), .IN5(n305), 
        .IN6(n283), .Q(n423) );
  OA221X1 U516 ( .IN1(n299), .IN2(n386), .IN3(n372), .IN4(n303), .IN5(n424), 
        .Q(n421) );
  OA22X1 U517 ( .IN1(n342), .IN2(n284), .IN3(n343), .IN4(n271), .Q(n424) );
  OA221X1 U518 ( .IN1(n350), .IN2(n304), .IN3(n309), .IN4(n300), .IN5(n425), 
        .Q(n420) );
  OA22X1 U519 ( .IN1(n374), .IN2(n306), .IN3(n298), .IN4(n351), .Q(n425) );
  OA221X1 U520 ( .IN1(n294), .IN2(n308), .IN3(n347), .IN4(n302), .IN5(n426), 
        .Q(n419) );
  OA22X1 U521 ( .IN1(n307), .IN2(n365), .IN3(n345), .IN4(n310), .Q(n426) );
  AO222X1 U522 ( .IN1(sum_man[16]), .IN2(n286), .IN3(n287), .IN4(n427), .IN5(
        sum_man[15]), .IN6(n289), .Q(S[15]) );
  NAND4X0 U523 ( .IN1(n428), .IN2(n429), .IN3(n430), .IN4(n431), .QN(n427) );
  OA221X1 U524 ( .IN1(n298), .IN2(n283), .IN3(n299), .IN4(n282), .IN5(n432), 
        .Q(n431) );
  OA22X1 U525 ( .IN1(n307), .IN2(n378), .IN3(n294), .IN4(n296), .Q(n432) );
  OA221X1 U526 ( .IN1(n372), .IN2(n297), .IN3(n350), .IN4(n271), .IN5(n433), 
        .Q(n430) );
  OA22X1 U527 ( .IN1(n309), .IN2(n281), .IN3(n374), .IN4(n284), .Q(n433) );
  OA221X1 U528 ( .IN1(n301), .IN2(n300), .IN3(n295), .IN4(n386), .IN5(n434), 
        .Q(n429) );
  OA22X1 U529 ( .IN1(n349), .IN2(n304), .IN3(n343), .IN4(n306), .Q(n434) );
  OA221X1 U530 ( .IN1(n347), .IN2(n310), .IN3(n305), .IN4(n308), .IN5(n435), 
        .Q(n428) );
  OA22X1 U531 ( .IN1(n303), .IN2(n351), .IN3(n342), .IN4(n302), .Q(n435) );
  AO222X1 U532 ( .IN1(sum_man[15]), .IN2(n286), .IN3(n287), .IN4(n436), .IN5(
        sum_man[14]), .IN6(n289), .Q(S[14]) );
  NAND4X0 U533 ( .IN1(n437), .IN2(n438), .IN3(n439), .IN4(n440), .QN(n436) );
  OA221X1 U534 ( .IN1(n303), .IN2(n283), .IN3(n295), .IN4(n282), .IN5(n441), 
        .Q(n440) );
  OA22X1 U535 ( .IN1(n305), .IN2(n296), .IN3(n301), .IN4(n281), .Q(n441) );
  OA221X1 U536 ( .IN1(n307), .IN2(n386), .IN3(n372), .IN4(n299), .IN5(n442), 
        .Q(n439) );
  OA22X1 U537 ( .IN1(n343), .IN2(n284), .IN3(n349), .IN4(n271), .Q(n442) );
  OA221X1 U538 ( .IN1(n309), .IN2(n304), .IN3(n294), .IN4(n300), .IN5(n443), 
        .Q(n438) );
  OA22X1 U539 ( .IN1(n350), .IN2(n306), .IN3(n297), .IN4(n351), .Q(n443) );
  OA222X1 U540 ( .IN1(n342), .IN2(n310), .IN3(n374), .IN4(n302), .IN5(n298), 
        .IN6(n308), .Q(n437) );
  AO222X1 U541 ( .IN1(sum_man[14]), .IN2(n286), .IN3(n287), .IN4(n444), .IN5(
        sum_man[13]), .IN6(n289), .Q(S[13]) );
  NAND4X0 U542 ( .IN1(n445), .IN2(n446), .IN3(n447), .IN4(n448), .QN(n444) );
  OA221X1 U543 ( .IN1(n297), .IN2(n283), .IN3(n307), .IN4(n282), .IN5(n449), 
        .Q(n448) );
  OA22X1 U544 ( .IN1(n298), .IN2(n296), .IN3(n294), .IN4(n281), .Q(n449) );
  OA222X1 U545 ( .IN1(n372), .IN2(n295), .IN3(n350), .IN4(n284), .IN5(n309), 
        .IN6(n271), .Q(n447) );
  OA221X1 U546 ( .IN1(n301), .IN2(n304), .IN3(n305), .IN4(n300), .IN5(n450), 
        .Q(n446) );
  OA22X1 U547 ( .IN1(n349), .IN2(n306), .IN3(n299), .IN4(n351), .Q(n450) );
  OA222X1 U548 ( .IN1(n374), .IN2(n310), .IN3(n343), .IN4(n302), .IN5(n303), 
        .IN6(n308), .Q(n445) );
  AO222X1 U549 ( .IN1(sum_man[13]), .IN2(n286), .IN3(n287), .IN4(n451), .IN5(
        sum_man[12]), .IN6(n289), .Q(S[12]) );
  NAND4X0 U550 ( .IN1(n452), .IN2(n453), .IN3(n454), .IN4(n455), .QN(n451) );
  OA221X1 U551 ( .IN1(n303), .IN2(n296), .IN3(n299), .IN4(n283), .IN5(n456), 
        .Q(n455) );
  OA22X1 U552 ( .IN1(n305), .IN2(n281), .IN3(n349), .IN4(n284), .Q(n456) );
  OA222X1 U553 ( .IN1(n298), .IN2(n300), .IN3(n301), .IN4(n271), .IN5(n372), 
        .IN6(n307), .Q(n454) );
  OA222X1 U554 ( .IN1(n295), .IN2(n351), .IN3(n294), .IN4(n304), .IN5(n309), 
        .IN6(n306), .Q(n453) );
  OA222X1 U555 ( .IN1(n343), .IN2(n310), .IN3(n350), .IN4(n302), .IN5(n297), 
        .IN6(n308), .Q(n452) );
  AO222X1 U556 ( .IN1(sum_man[12]), .IN2(n286), .IN3(n287), .IN4(n457), .IN5(
        sum_man[11]), .IN6(n289), .Q(S[11]) );
  NAND4X0 U557 ( .IN1(n458), .IN2(n459), .IN3(n460), .IN4(n461), .QN(n457) );
  OA222X1 U558 ( .IN1(n298), .IN2(n281), .IN3(n295), .IN4(n283), .IN5(n297), 
        .IN6(n296), .Q(n461) );
  OA222X1 U559 ( .IN1(n303), .IN2(n300), .IN3(n309), .IN4(n284), .IN5(n294), 
        .IN6(n271), .Q(n460) );
  OA222X1 U560 ( .IN1(n307), .IN2(n351), .IN3(n305), .IN4(n304), .IN5(n301), 
        .IN6(n306), .Q(n459) );
  OA222X1 U561 ( .IN1(n350), .IN2(n310), .IN3(n349), .IN4(n302), .IN5(n299), 
        .IN6(n308), .Q(n458) );
  AO222X1 U562 ( .IN1(sum_man[11]), .IN2(n286), .IN3(n287), .IN4(n462), .IN5(
        n289), .IN6(sum_man[10]), .Q(S[10]) );
  NAND4X0 U563 ( .IN1(n463), .IN2(n464), .IN3(n465), .IN4(n466), .QN(n462) );
  OA222X1 U564 ( .IN1(n303), .IN2(n281), .IN3(n307), .IN4(n283), .IN5(n299), 
        .IN6(n296), .Q(n466) );
  OA222X1 U565 ( .IN1(n297), .IN2(n300), .IN3(n301), .IN4(n284), .IN5(n305), 
        .IN6(n271), .Q(n465) );
  OA222X1 U566 ( .IN1(n309), .IN2(n302), .IN3(n298), .IN4(n304), .IN5(n294), 
        .IN6(n306), .Q(n464) );
  INVX0 U567 ( .IN1(sum_dif[9]), .QN(n309) );
  OA22X1 U568 ( .IN1(n295), .IN2(n308), .IN3(n349), .IN4(n310), .Q(n463) );
  AO222X1 U569 ( .IN1(sum_man[1]), .IN2(n286), .IN3(n467), .IN4(n287), .IN5(
        sum_man[0]), .IN6(n289), .Q(S[0]) );
  NOR2X0 U570 ( .IN1(n307), .IN2(n310), .QN(n467) );
  OAI22X1 U571 ( .IN1(n468), .IN2(n469), .IN3(n470), .IN4(n471), .QN(Overflow)
         );
  NAND4X0 U572 ( .IN1(S[23]), .IN2(S[24]), .IN3(S[25]), .IN4(S[26]), .QN(n471)
         );
  AO222X1 U573 ( .IN1(N250), .IN2(n472), .IN3(N79), .IN4(n286), .IN5(n289), 
        .IN6(c_exp[3]), .Q(S[26]) );
  AO222X1 U574 ( .IN1(N249), .IN2(n472), .IN3(N78), .IN4(n286), .IN5(n289), 
        .IN6(c_exp[2]), .Q(S[25]) );
  AO222X1 U575 ( .IN1(N248), .IN2(n472), .IN3(N77), .IN4(n286), .IN5(n289), 
        .IN6(c_exp[1]), .Q(S[24]) );
  AO222X1 U576 ( .IN1(N247), .IN2(n472), .IN3(N76), .IN4(n286), .IN5(n289), 
        .IN6(c_exp[0]), .Q(S[23]) );
  NAND4X0 U577 ( .IN1(S[27]), .IN2(S[28]), .IN3(S[29]), .IN4(S[30]), .QN(n470)
         );
  AO222X1 U578 ( .IN1(N254), .IN2(n472), .IN3(N83), .IN4(n286), .IN5(n289), 
        .IN6(c_exp[7]), .Q(S[30]) );
  AO222X1 U579 ( .IN1(N253), .IN2(n472), .IN3(N82), .IN4(n286), .IN5(n289), 
        .IN6(c_exp[6]), .Q(S[29]) );
  AO222X1 U580 ( .IN1(N252), .IN2(n472), .IN3(N81), .IN4(n286), .IN5(n289), 
        .IN6(c_exp[5]), .Q(S[28]) );
  AO222X1 U581 ( .IN1(N251), .IN2(n472), .IN3(N80), .IN4(n286), .IN5(n289), 
        .IN6(c_exp[4]), .Q(S[27]) );
  AND2X1 U582 ( .IN1(sum_man[24]), .IN2(n473), .Q(n286) );
  AOI21X1 U583 ( .IN1(ds_exp_offset[0]), .IN2(n267), .IN3(n473), .QN(n472) );
  INVX0 U584 ( .IN1(n287), .QN(n473) );
  XOR2X1 U585 ( .IN1(S[31]), .IN2(n474), .Q(n287) );
  MUX21X1 U586 ( .IN1(b[31]), .IN2(a[31]), .S(n265), .Q(n474) );
  MUX21X1 U587 ( .IN1(a[31]), .IN2(b[31]), .S(n265), .Q(S[31]) );
  INVX0 U588 ( .IN1(ds_exp_offset[7]), .QN(n267) );
  NAND2X0 U589 ( .IN1(n268), .IN2(n270), .QN(ds_exp_offset[7]) );
  AND4X1 U590 ( .IN1(n285), .IN2(n280), .IN3(n273), .IN4(n475), .Q(n270) );
  AND4X1 U591 ( .IN1(n365), .IN2(n371), .IN3(n377), .IN4(n476), .Q(n475) );
  NAND3X0 U592 ( .IN1(n477), .IN2(n303), .IN3(sum_dif[3]), .QN(n273) );
  NAND2X0 U593 ( .IN1(sum_dif[1]), .IN2(n478), .QN(n280) );
  NAND3X0 U594 ( .IN1(n479), .IN2(n305), .IN3(sum_dif[5]), .QN(n285) );
  AND4X1 U595 ( .IN1(n378), .IN2(n386), .IN3(n480), .IN4(n481), .Q(n268) );
  AND4X1 U596 ( .IN1(n283), .IN2(n282), .IN3(n269), .IN4(n372), .Q(n481) );
  OA21X1 U597 ( .IN1(n349), .IN2(n482), .IN3(n272), .Q(n372) );
  NAND4X0 U598 ( .IN1(sum_dif[11]), .IN2(n483), .IN3(n343), .IN4(n374), .QN(
        n272) );
  AND4X1 U599 ( .IN1(n296), .IN2(n281), .IN3(n484), .IN4(n485), .Q(n269) );
  NOR4X0 U600 ( .IN1(n329), .IN2(n333), .IN3(n370), .IN4(n368), .QN(n485) );
  INVX0 U601 ( .IN1(n304), .QN(n370) );
  INVX0 U602 ( .IN1(n306), .QN(n333) );
  INVX0 U603 ( .IN1(n302), .QN(n329) );
  NOR2X0 U604 ( .IN1(n331), .IN2(n332), .QN(n484) );
  INVX0 U605 ( .IN1(n284), .QN(n332) );
  NAND2X0 U606 ( .IN1(sum_dif[21]), .IN2(n486), .QN(n284) );
  INVX0 U607 ( .IN1(n271), .QN(n331) );
  NAND4X0 U608 ( .IN1(sum_dif[19]), .IN2(n486), .IN3(n346), .IN4(n487), .QN(
        n271) );
  NAND2X0 U609 ( .IN1(sum_dif[17]), .IN2(n488), .QN(n281) );
  NAND4X0 U610 ( .IN1(sum_dif[15]), .IN2(n488), .IN3(n345), .IN4(n352), .QN(
        n296) );
  NAND3X0 U611 ( .IN1(n489), .IN2(n349), .IN3(sum_dif[9]), .QN(n282) );
  INVX0 U612 ( .IN1(sum_dif[10]), .QN(n349) );
  NAND2X0 U613 ( .IN1(sum_dif[13]), .IN2(n483), .QN(n283) );
  NOR2X0 U614 ( .IN1(n354), .IN2(n364), .QN(n480) );
  INVX0 U615 ( .IN1(n351), .QN(n364) );
  INVX0 U616 ( .IN1(n308), .QN(n354) );
  NAND3X0 U617 ( .IN1(n490), .IN2(n301), .IN3(sum_dif[7]), .QN(n378) );
  NAND4X0 U618 ( .IN1(n278), .IN2(n277), .IN3(n491), .IN4(n476), .QN(
        ds_exp_offset[0]) );
  NAND3X0 U619 ( .IN1(n478), .IN2(n295), .IN3(sum_dif[0]), .QN(n476) );
  NOR2X0 U620 ( .IN1(n369), .IN2(n368), .QN(n491) );
  INVX0 U621 ( .IN1(n300), .QN(n368) );
  NAND3X0 U622 ( .IN1(n488), .IN2(n352), .IN3(sum_dif[16]), .QN(n300) );
  INVX0 U623 ( .IN1(n386), .QN(n369) );
  NAND2X0 U624 ( .IN1(sum_dif[8]), .IN2(n490), .QN(n386) );
  AND3X1 U625 ( .IN1(n306), .IN2(n351), .IN3(n371), .Q(n277) );
  NAND2X0 U626 ( .IN1(sum_dif[4]), .IN2(n477), .QN(n371) );
  NAND3X0 U627 ( .IN1(n483), .IN2(n374), .IN3(sum_dif[12]), .QN(n351) );
  NAND3X0 U628 ( .IN1(n486), .IN2(n487), .IN3(sum_dif[20]), .QN(n306) );
  AND4X1 U629 ( .IN1(n275), .IN2(n492), .IN3(n377), .IN4(n304), .Q(n278) );
  NAND2X0 U630 ( .IN1(sum_dif[18]), .IN2(n493), .QN(n304) );
  OR2X1 U631 ( .IN1(n299), .IN2(n376), .Q(n377) );
  INVX0 U632 ( .IN1(sum_dif[2]), .QN(n299) );
  NAND2X0 U633 ( .IN1(sum_dif[10]), .IN2(n489), .QN(n492) );
  INVX0 U634 ( .IN1(n482), .QN(n489) );
  AND4X1 U635 ( .IN1(n266), .IN2(n365), .IN3(n302), .IN4(n308), .Q(n275) );
  NAND2X0 U636 ( .IN1(sum_dif[14]), .IN2(n494), .QN(n308) );
  NAND2X0 U637 ( .IN1(sum_dif[22]), .IN2(n310), .QN(n302) );
  INVX0 U638 ( .IN1(sum_dif[23]), .QN(n310) );
  NAND2X0 U639 ( .IN1(sum_dif[6]), .IN2(n479), .QN(n365) );
  NAND3X0 U640 ( .IN1(n307), .IN2(n295), .IN3(n478), .QN(n266) );
  NOR2X0 U641 ( .IN1(n376), .IN2(sum_dif[2]), .QN(n478) );
  NAND3X0 U642 ( .IN1(n297), .IN2(n303), .IN3(n477), .QN(n376) );
  AND3X1 U643 ( .IN1(n298), .IN2(n305), .IN3(n479), .Q(n477) );
  AND3X1 U644 ( .IN1(n294), .IN2(n301), .IN3(n490), .Q(n479) );
  NOR3X0 U645 ( .IN1(sum_dif[10]), .IN2(sum_dif[9]), .IN3(n482), .QN(n490) );
  NAND4X0 U646 ( .IN1(n483), .IN2(n350), .IN3(n343), .IN4(n374), .QN(n482) );
  INVX0 U647 ( .IN1(sum_dif[13]), .QN(n374) );
  INVX0 U648 ( .IN1(sum_dif[12]), .QN(n343) );
  INVX0 U649 ( .IN1(sum_dif[11]), .QN(n350) );
  AND2X1 U650 ( .IN1(n494), .IN2(n342), .Q(n483) );
  INVX0 U651 ( .IN1(sum_dif[14]), .QN(n342) );
  AND4X1 U652 ( .IN1(n488), .IN2(n347), .IN3(n345), .IN4(n352), .Q(n494) );
  INVX0 U653 ( .IN1(sum_dif[17]), .QN(n352) );
  INVX0 U654 ( .IN1(sum_dif[16]), .QN(n345) );
  INVX0 U655 ( .IN1(sum_dif[15]), .QN(n347) );
  AND2X1 U656 ( .IN1(n493), .IN2(n348), .Q(n488) );
  INVX0 U657 ( .IN1(sum_dif[18]), .QN(n348) );
  AND4X1 U658 ( .IN1(n486), .IN2(n353), .IN3(n346), .IN4(n487), .Q(n493) );
  INVX0 U659 ( .IN1(sum_dif[21]), .QN(n487) );
  INVX0 U660 ( .IN1(sum_dif[20]), .QN(n346) );
  INVX0 U661 ( .IN1(sum_dif[19]), .QN(n353) );
  NOR2X0 U662 ( .IN1(sum_dif[23]), .IN2(sum_dif[22]), .QN(n486) );
  INVX0 U663 ( .IN1(sum_dif[8]), .QN(n301) );
  INVX0 U664 ( .IN1(sum_dif[7]), .QN(n294) );
  INVX0 U665 ( .IN1(sum_dif[6]), .QN(n305) );
  INVX0 U666 ( .IN1(sum_dif[5]), .QN(n298) );
  INVX0 U667 ( .IN1(sum_dif[4]), .QN(n303) );
  INVX0 U668 ( .IN1(sum_dif[3]), .QN(n297) );
  INVX0 U669 ( .IN1(sum_dif[1]), .QN(n295) );
  INVX0 U670 ( .IN1(sum_dif[0]), .QN(n307) );
  NAND4X0 U671 ( .IN1(c_exp[0]), .IN2(c_exp[1]), .IN3(c_exp[2]), .IN4(c_exp[3]), .QN(n469) );
  MUX21X1 U672 ( .IN1(a[26]), .IN2(b[26]), .S(n265), .Q(c_exp[3]) );
  MUX21X1 U673 ( .IN1(a[25]), .IN2(b[25]), .S(n265), .Q(c_exp[2]) );
  MUX21X1 U674 ( .IN1(a[24]), .IN2(b[24]), .S(n265), .Q(c_exp[1]) );
  MUX21X1 U675 ( .IN1(a[23]), .IN2(b[23]), .S(n265), .Q(c_exp[0]) );
  NAND4X0 U676 ( .IN1(c_exp[4]), .IN2(c_exp[5]), .IN3(c_exp[6]), .IN4(c_exp[7]), .QN(n468) );
  OR2X1 U677 ( .IN1(a[30]), .IN2(b[30]), .Q(c_exp[7]) );
  MUX21X1 U678 ( .IN1(a[29]), .IN2(b[29]), .S(n265), .Q(c_exp[6]) );
  MUX21X1 U679 ( .IN1(a[28]), .IN2(b[28]), .S(n265), .Q(c_exp[5]) );
  MUX21X1 U680 ( .IN1(a[27]), .IN2(b[27]), .S(n265), .Q(c_exp[4]) );
  OR2X1 U681 ( .IN1(n499), .IN2(a[30]), .Q(n497) );
  AO22X1 U682 ( .IN1(a[29]), .IN2(n500), .IN3(n501), .IN4(n502), .Q(n499) );
  NOR2X0 U683 ( .IN1(n503), .IN2(n504), .QN(n501) );
  OA221X1 U684 ( .IN1(b[28]), .IN2(n505), .IN3(b[27]), .IN4(n506), .IN5(n507), 
        .Q(n504) );
  NAND3X0 U685 ( .IN1(n508), .IN2(n509), .IN3(n510), .QN(n507) );
  AO222X1 U686 ( .IN1(a[25]), .IN2(n511), .IN3(n512), .IN4(n513), .IN5(a[26]), 
        .IN6(n514), .Q(n509) );
  INVX0 U687 ( .IN1(n515), .QN(n513) );
  AO22X1 U688 ( .IN1(a[24]), .IN2(n516), .IN3(n517), .IN4(a[23]), .Q(n512) );
  NOR2X0 U689 ( .IN1(b[23]), .IN2(n518), .QN(n517) );
  NOR4X0 U690 ( .IN1(n519), .IN2(n518), .IN3(n503), .IN4(n515), .QN(n496) );
  NOR2X0 U691 ( .IN1(n511), .IN2(a[25]), .QN(n515) );
  INVX0 U692 ( .IN1(b[25]), .QN(n511) );
  NOR2X0 U693 ( .IN1(n500), .IN2(a[29]), .QN(n503) );
  INVX0 U694 ( .IN1(b[29]), .QN(n500) );
  NOR2X0 U695 ( .IN1(n516), .IN2(a[24]), .QN(n518) );
  NAND2X0 U696 ( .IN1(n510), .IN2(n508), .QN(n519) );
  NAND2X0 U697 ( .IN1(b[27]), .IN2(n506), .QN(n508) );
  INVX0 U698 ( .IN1(a[27]), .QN(n506) );
  OR2X1 U699 ( .IN1(n514), .IN2(a[26]), .Q(n510) );
  INVX0 U700 ( .IN1(b[26]), .QN(n514) );
  OA221X1 U701 ( .IN1(a[30]), .IN2(n498), .IN3(n520), .IN4(n521), .IN5(n522), 
        .Q(n495) );
  OA21X1 U702 ( .IN1(a[23]), .IN2(n523), .IN3(n502), .Q(n522) );
  NAND2X0 U703 ( .IN1(b[28]), .IN2(n505), .QN(n502) );
  INVX0 U704 ( .IN1(a[28]), .QN(n505) );
  AND2X1 U705 ( .IN1(n524), .IN2(a[22]), .Q(n521) );
  OA221X1 U706 ( .IN1(a[21]), .IN2(n525), .IN3(a[22]), .IN4(n524), .IN5(n526), 
        .Q(n520) );
  AO221X1 U707 ( .IN1(a[20]), .IN2(n527), .IN3(a[21]), .IN4(n525), .IN5(n528), 
        .Q(n526) );
  OA221X1 U708 ( .IN1(a[19]), .IN2(n529), .IN3(a[20]), .IN4(n527), .IN5(n530), 
        .Q(n528) );
  AO221X1 U709 ( .IN1(a[18]), .IN2(n531), .IN3(a[19]), .IN4(n529), .IN5(n532), 
        .Q(n530) );
  OA221X1 U710 ( .IN1(a[17]), .IN2(n533), .IN3(a[18]), .IN4(n531), .IN5(n534), 
        .Q(n532) );
  AO221X1 U711 ( .IN1(a[16]), .IN2(n535), .IN3(a[17]), .IN4(n533), .IN5(n536), 
        .Q(n534) );
  OA221X1 U712 ( .IN1(a[15]), .IN2(n537), .IN3(a[16]), .IN4(n535), .IN5(n538), 
        .Q(n536) );
  AO221X1 U713 ( .IN1(a[14]), .IN2(n539), .IN3(a[15]), .IN4(n537), .IN5(n540), 
        .Q(n538) );
  OA221X1 U714 ( .IN1(a[13]), .IN2(n541), .IN3(a[14]), .IN4(n539), .IN5(n542), 
        .Q(n540) );
  AO221X1 U715 ( .IN1(a[12]), .IN2(n543), .IN3(a[13]), .IN4(n541), .IN5(n544), 
        .Q(n542) );
  OA221X1 U716 ( .IN1(a[11]), .IN2(n545), .IN3(a[12]), .IN4(n543), .IN5(n546), 
        .Q(n544) );
  AO221X1 U717 ( .IN1(a[10]), .IN2(n547), .IN3(a[11]), .IN4(n545), .IN5(n548), 
        .Q(n546) );
  OA221X1 U718 ( .IN1(a[9]), .IN2(n549), .IN3(a[10]), .IN4(n547), .IN5(n550), 
        .Q(n548) );
  AO221X1 U719 ( .IN1(a[8]), .IN2(n551), .IN3(a[9]), .IN4(n549), .IN5(n552), 
        .Q(n550) );
  OA221X1 U720 ( .IN1(a[7]), .IN2(n553), .IN3(a[8]), .IN4(n551), .IN5(n554), 
        .Q(n552) );
  AO221X1 U721 ( .IN1(a[6]), .IN2(n555), .IN3(a[7]), .IN4(n553), .IN5(n556), 
        .Q(n554) );
  OA221X1 U722 ( .IN1(a[5]), .IN2(n557), .IN3(a[6]), .IN4(n555), .IN5(n558), 
        .Q(n556) );
  AO221X1 U723 ( .IN1(a[4]), .IN2(n559), .IN3(a[5]), .IN4(n557), .IN5(n560), 
        .Q(n558) );
  OA221X1 U724 ( .IN1(a[3]), .IN2(n561), .IN3(a[4]), .IN4(n559), .IN5(n562), 
        .Q(n560) );
  AO222X1 U725 ( .IN1(a[2]), .IN2(n563), .IN3(n564), .IN4(n565), .IN5(a[3]), 
        .IN6(n561), .Q(n562) );
  INVX0 U726 ( .IN1(b[2]), .QN(n565) );
  OR2X1 U727 ( .IN1(n563), .IN2(a[2]), .Q(n564) );
  AO22X1 U728 ( .IN1(a[1]), .IN2(n566), .IN3(n567), .IN4(a[0]), .Q(n563) );
  OA21X1 U729 ( .IN1(a[1]), .IN2(n566), .IN3(n568), .Q(n567) );
  INVX0 U730 ( .IN1(b[0]), .QN(n568) );
  INVX0 U731 ( .IN1(b[1]), .QN(n566) );
  INVX0 U732 ( .IN1(b[3]), .QN(n561) );
  INVX0 U733 ( .IN1(b[4]), .QN(n559) );
  INVX0 U734 ( .IN1(b[5]), .QN(n557) );
  INVX0 U735 ( .IN1(b[6]), .QN(n555) );
  INVX0 U736 ( .IN1(b[7]), .QN(n553) );
  INVX0 U737 ( .IN1(b[8]), .QN(n551) );
  INVX0 U738 ( .IN1(b[9]), .QN(n549) );
  INVX0 U739 ( .IN1(b[10]), .QN(n547) );
  INVX0 U740 ( .IN1(b[11]), .QN(n545) );
  INVX0 U741 ( .IN1(b[12]), .QN(n543) );
  INVX0 U742 ( .IN1(b[13]), .QN(n541) );
  INVX0 U743 ( .IN1(b[14]), .QN(n539) );
  INVX0 U744 ( .IN1(b[15]), .QN(n537) );
  INVX0 U745 ( .IN1(b[16]), .QN(n535) );
  INVX0 U746 ( .IN1(b[17]), .QN(n533) );
  INVX0 U747 ( .IN1(b[18]), .QN(n531) );
  INVX0 U748 ( .IN1(b[19]), .QN(n529) );
  INVX0 U749 ( .IN1(b[20]), .QN(n527) );
  INVX0 U750 ( .IN1(b[22]), .QN(n524) );
  INVX0 U751 ( .IN1(b[21]), .QN(n525) );
  INVX0 U752 ( .IN1(b[30]), .QN(n498) );
  NAND4X0 U753 ( .IN1(n523), .IN2(n516), .IN3(n569), .IN4(n570), .QN(N283) );
  NOR4X0 U754 ( .IN1(b[30]), .IN2(b[29]), .IN3(b[28]), .IN4(b[27]), .QN(n570)
         );
  NOR2X0 U755 ( .IN1(b[26]), .IN2(b[25]), .QN(n569) );
  INVX0 U756 ( .IN1(b[24]), .QN(n516) );
  INVX0 U757 ( .IN1(b[23]), .QN(n523) );
  NAND4X0 U758 ( .IN1(n571), .IN2(n572), .IN3(n573), .IN4(n574), .QN(N276) );
  NOR4X0 U759 ( .IN1(a[30]), .IN2(a[29]), .IN3(a[28]), .IN4(a[27]), .QN(n574)
         );
  NOR2X0 U760 ( .IN1(a[26]), .IN2(a[25]), .QN(n573) );
  INVX0 U761 ( .IN1(a[24]), .QN(n572) );
  INVX0 U762 ( .IN1(a[23]), .QN(n571) );
endmodule

