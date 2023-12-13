/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Dec 13 20:41:11 2023
/////////////////////////////////////////////////////////////


module CarryLookAheadAdder_23b ( a, b, S, Cin );
  input [24:0] a;
  input [24:0] b;
  output [24:0] S;
  input Cin;
  wire   n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361;

  XNOR2X1 U222 ( .IN1(n196), .IN2(n197), .Q(S[9]) );
  XOR2X1 U223 ( .IN1(n198), .IN2(n199), .Q(S[8]) );
  XNOR2X1 U224 ( .IN1(n200), .IN2(n201), .Q(S[7]) );
  AOI21X1 U225 ( .IN1(n202), .IN2(n203), .IN3(n204), .QN(n201) );
  XOR2X1 U226 ( .IN1(n202), .IN2(n203), .Q(S[6]) );
  XOR2X1 U227 ( .IN1(n205), .IN2(n206), .Q(S[5]) );
  XOR2X1 U228 ( .IN1(n207), .IN2(n208), .Q(S[4]) );
  XOR2X1 U229 ( .IN1(n209), .IN2(n210), .Q(S[3]) );
  XOR2X1 U230 ( .IN1(n211), .IN2(n212), .Q(S[2]) );
  XNOR3X1 U231 ( .IN1(b[24]), .IN2(a[24]), .IN3(n213), .Q(S[24]) );
  OA221X1 U232 ( .IN1(n214), .IN2(n215), .IN3(n216), .IN4(n217), .IN5(n218), 
        .Q(n213) );
  OA22X1 U233 ( .IN1(n219), .IN2(n220), .IN3(n221), .IN4(n222), .Q(n218) );
  INVX0 U234 ( .IN1(n223), .QN(n222) );
  AOI21X1 U235 ( .IN1(n224), .IN2(n225), .IN3(n226), .QN(n221) );
  AO21X1 U236 ( .IN1(n227), .IN2(n228), .IN3(n220), .Q(n217) );
  NAND3X0 U237 ( .IN1(n225), .IN2(n223), .IN3(n229), .QN(n220) );
  INVX0 U238 ( .IN1(a[23]), .QN(n215) );
  XNOR2X1 U239 ( .IN1(n223), .IN2(n230), .Q(S[23]) );
  NOR2X0 U240 ( .IN1(n231), .IN2(n226), .QN(n230) );
  AO22X1 U241 ( .IN1(a[22]), .IN2(b[22]), .IN3(n232), .IN4(n233), .Q(n226) );
  INVX0 U242 ( .IN1(n234), .QN(n232) );
  OA21X1 U243 ( .IN1(n235), .IN2(n236), .IN3(n225), .Q(n231) );
  AND2X1 U244 ( .IN1(n237), .IN2(n233), .Q(n225) );
  AOI21X1 U245 ( .IN1(n238), .IN2(n239), .IN3(n240), .QN(n235) );
  XNOR2X1 U246 ( .IN1(a[23]), .IN2(n214), .Q(n223) );
  INVX0 U247 ( .IN1(b[23]), .QN(n214) );
  XOR2X1 U248 ( .IN1(n241), .IN2(n233), .Q(S[22]) );
  XOR2X1 U249 ( .IN1(a[22]), .IN2(b[22]), .Q(n233) );
  NAND3X0 U250 ( .IN1(n242), .IN2(n234), .IN3(n243), .QN(n241) );
  OA22X1 U251 ( .IN1(n244), .IN2(n245), .IN3(n246), .IN4(n247), .Q(n243) );
  OA21X1 U252 ( .IN1(n248), .IN2(n249), .IN3(n250), .Q(n246) );
  INVX0 U253 ( .IN1(n251), .QN(n250) );
  INVX0 U254 ( .IN1(n237), .QN(n245) );
  NOR2X0 U255 ( .IN1(n252), .IN2(n236), .QN(n244) );
  NAND2X0 U256 ( .IN1(a[21]), .IN2(b[21]), .QN(n234) );
  OR4X1 U257 ( .IN1(n253), .IN2(n247), .IN3(n249), .IN4(n196), .Q(n242) );
  NAND3X0 U258 ( .IN1(n237), .IN2(n254), .IN3(n255), .QN(n247) );
  XNOR2X1 U259 ( .IN1(n237), .IN2(n256), .Q(S[21]) );
  NOR3X0 U260 ( .IN1(n236), .IN2(n252), .IN3(n257), .QN(n256) );
  NOR2X0 U261 ( .IN1(n258), .IN2(n259), .QN(n257) );
  INVX0 U262 ( .IN1(n255), .QN(n259) );
  OA22X1 U263 ( .IN1(n260), .IN2(n261), .IN3(n262), .IN4(n263), .Q(n258) );
  OA21X1 U264 ( .IN1(n264), .IN2(n265), .IN3(n266), .Q(n262) );
  INVX0 U265 ( .IN1(n267), .QN(n264) );
  AND3X1 U266 ( .IN1(a[15]), .IN2(b[15]), .IN3(n255), .Q(n252) );
  NOR2X0 U267 ( .IN1(n240), .IN2(n268), .QN(n255) );
  AO21X1 U268 ( .IN1(n269), .IN2(n229), .IN3(n224), .Q(n236) );
  AO22X1 U269 ( .IN1(a[20]), .IN2(b[20]), .IN3(n270), .IN4(n271), .Q(n224) );
  AO22X1 U270 ( .IN1(a[19]), .IN2(b[19]), .IN3(n272), .IN4(n273), .Q(n271) );
  INVX0 U271 ( .IN1(n240), .QN(n229) );
  NAND3X0 U272 ( .IN1(n270), .IN2(n272), .IN3(n274), .QN(n240) );
  XOR2X1 U273 ( .IN1(a[21]), .IN2(b[21]), .Q(n237) );
  XNOR2X1 U274 ( .IN1(n270), .IN2(n275), .Q(S[20]) );
  AOI22X1 U275 ( .IN1(n276), .IN2(n272), .IN3(b[19]), .IN4(a[19]), .QN(n275)
         );
  OR2X1 U276 ( .IN1(n277), .IN2(n278), .Q(n276) );
  OA21X1 U277 ( .IN1(n279), .IN2(n280), .IN3(n281), .Q(n277) );
  XOR2X1 U278 ( .IN1(a[20]), .IN2(b[20]), .Q(n270) );
  XOR2X1 U279 ( .IN1(n282), .IN2(n283), .Q(S[1]) );
  XNOR2X1 U280 ( .IN1(n272), .IN2(n284), .Q(S[19]) );
  AOI21X1 U281 ( .IN1(n285), .IN2(n281), .IN3(n278), .QN(n284) );
  AO21X1 U282 ( .IN1(n274), .IN2(n286), .IN3(n273), .Q(n278) );
  AO22X1 U283 ( .IN1(a[18]), .IN2(b[18]), .IN3(n287), .IN4(n288), .Q(n273) );
  AO21X1 U284 ( .IN1(n289), .IN2(n290), .IN3(n269), .Q(n286) );
  INVX0 U285 ( .IN1(n291), .QN(n269) );
  AND3X1 U286 ( .IN1(n289), .IN2(n292), .IN3(n274), .Q(n281) );
  AND2X1 U287 ( .IN1(n293), .IN2(n288), .Q(n274) );
  XOR2X1 U288 ( .IN1(a[19]), .IN2(b[19]), .Q(n272) );
  XOR2X1 U289 ( .IN1(n294), .IN2(n288), .Q(S[18]) );
  XOR2X1 U290 ( .IN1(a[18]), .IN2(b[18]), .Q(n288) );
  AO221X1 U291 ( .IN1(n293), .IN2(n295), .IN3(n296), .IN4(n297), .IN5(n287), 
        .Q(n294) );
  OA21X1 U292 ( .IN1(n298), .IN2(n299), .IN3(n293), .Q(n296) );
  INVX0 U293 ( .IN1(n228), .QN(n298) );
  NAND3X0 U294 ( .IN1(n300), .IN2(n205), .IN3(n301), .QN(n228) );
  INVX0 U295 ( .IN1(n219), .QN(n295) );
  OA21X1 U296 ( .IN1(n268), .IN2(n302), .IN3(n291), .Q(n219) );
  XOR2X1 U297 ( .IN1(n303), .IN2(n293), .Q(S[17]) );
  AOI21X1 U298 ( .IN1(n304), .IN2(n305), .IN3(n287), .QN(n293) );
  NOR2X0 U299 ( .IN1(n305), .IN2(n304), .QN(n287) );
  INVX0 U300 ( .IN1(b[17]), .QN(n305) );
  INVX0 U301 ( .IN1(a[17]), .QN(n304) );
  NAND3X0 U302 ( .IN1(n239), .IN2(n291), .IN3(n238), .QN(n303) );
  NAND3X0 U303 ( .IN1(n306), .IN2(n307), .IN3(n297), .QN(n238) );
  INVX0 U304 ( .IN1(n216), .QN(n297) );
  NAND4X0 U305 ( .IN1(n308), .IN2(n289), .IN3(n292), .IN4(n309), .QN(n216) );
  AO21X1 U306 ( .IN1(n310), .IN2(n197), .IN3(n311), .Q(n307) );
  AO21X1 U307 ( .IN1(n302), .IN2(n312), .IN3(n268), .Q(n239) );
  INVX0 U308 ( .IN1(n289), .QN(n268) );
  NAND4X0 U309 ( .IN1(n313), .IN2(n308), .IN3(n292), .IN4(n309), .QN(n312) );
  AOI21X1 U310 ( .IN1(n292), .IN2(n314), .IN3(n290), .QN(n302) );
  OAI21X1 U311 ( .IN1(n315), .IN2(n316), .IN3(n317), .QN(n314) );
  XNOR2X1 U312 ( .IN1(n289), .IN2(n318), .Q(S[16]) );
  OA21X1 U313 ( .IN1(n319), .IN2(n260), .IN3(n320), .Q(n318) );
  INVX0 U314 ( .IN1(n290), .QN(n320) );
  AO22X1 U315 ( .IN1(a[15]), .IN2(b[15]), .IN3(n254), .IN4(n251), .Q(n290) );
  NAND2X0 U316 ( .IN1(n266), .IN2(n321), .QN(n251) );
  NAND3X0 U317 ( .IN1(a[13]), .IN2(n322), .IN3(b[13]), .QN(n321) );
  INVX0 U318 ( .IN1(n292), .QN(n260) );
  NOR2X0 U319 ( .IN1(n249), .IN2(n263), .QN(n292) );
  INVX0 U320 ( .IN1(n254), .QN(n263) );
  NAND2X0 U321 ( .IN1(n323), .IN2(n322), .QN(n249) );
  OA21X1 U322 ( .IN1(n196), .IN2(n253), .IN3(n248), .Q(n319) );
  NOR3X0 U323 ( .IN1(n324), .IN2(n325), .IN3(n326), .QN(n196) );
  OA21X1 U324 ( .IN1(a[16]), .IN2(b[16]), .IN3(n291), .Q(n289) );
  NAND2X0 U325 ( .IN1(b[16]), .IN2(a[16]), .QN(n291) );
  XNOR2X1 U326 ( .IN1(n254), .IN2(n327), .Q(S[15]) );
  OA21X1 U327 ( .IN1(n328), .IN2(n265), .IN3(n266), .Q(n327) );
  NAND2X0 U328 ( .IN1(a[14]), .IN2(b[14]), .QN(n266) );
  INVX0 U329 ( .IN1(n322), .QN(n265) );
  XOR2X1 U330 ( .IN1(a[15]), .IN2(b[15]), .Q(n254) );
  XNOR2X1 U331 ( .IN1(n322), .IN2(n328), .Q(S[14]) );
  AOI21X1 U332 ( .IN1(n279), .IN2(n323), .IN3(n267), .QN(n328) );
  AO22X1 U333 ( .IN1(b[13]), .IN2(a[13]), .IN3(n323), .IN4(n280), .Q(n267) );
  NAND2X0 U334 ( .IN1(n248), .IN2(n329), .QN(n280) );
  NAND3X0 U335 ( .IN1(a[8]), .IN2(b[8]), .IN3(n330), .QN(n329) );
  INVX0 U336 ( .IN1(n261), .QN(n279) );
  NAND3X0 U337 ( .IN1(n199), .IN2(n198), .IN3(n330), .QN(n261) );
  INVX0 U338 ( .IN1(n253), .QN(n330) );
  AO21X1 U339 ( .IN1(n200), .IN2(n331), .IN3(n332), .Q(n198) );
  AO21X1 U340 ( .IN1(n203), .IN2(n333), .IN3(n204), .Q(n331) );
  NAND3X0 U341 ( .IN1(n334), .IN2(n335), .IN3(n336), .QN(n333) );
  NAND2X0 U342 ( .IN1(n206), .IN2(n337), .QN(n336) );
  NAND4X0 U343 ( .IN1(n206), .IN2(n210), .IN3(n208), .IN4(n209), .QN(n334) );
  XOR2X1 U344 ( .IN1(a[14]), .IN2(b[14]), .Q(n322) );
  XOR2X1 U345 ( .IN1(n285), .IN2(n323), .Q(S[13]) );
  XOR2X1 U346 ( .IN1(a[13]), .IN2(b[13]), .Q(n323) );
  OAI21X1 U347 ( .IN1(n253), .IN2(n338), .IN3(n248), .QN(n285) );
  OA21X1 U348 ( .IN1(n339), .IN2(n315), .IN3(n317), .Q(n248) );
  OA21X1 U349 ( .IN1(n340), .IN2(n341), .IN3(n316), .Q(n339) );
  INVX0 U350 ( .IN1(n308), .QN(n341) );
  OA21X1 U351 ( .IN1(n342), .IN2(n343), .IN3(n344), .Q(n340) );
  AOI21X1 U352 ( .IN1(n345), .IN2(n202), .IN3(n346), .QN(n338) );
  AO21X1 U353 ( .IN1(n206), .IN2(n205), .IN3(n347), .Q(n202) );
  NAND3X0 U354 ( .IN1(n308), .IN2(n309), .IN3(n301), .QN(n253) );
  XNOR2X1 U355 ( .IN1(n348), .IN2(n315), .Q(S[12]) );
  INVX0 U356 ( .IN1(n309), .QN(n315) );
  OA21X1 U357 ( .IN1(a[12]), .IN2(b[12]), .IN3(n317), .Q(n309) );
  NAND2X0 U358 ( .IN1(b[12]), .IN2(a[12]), .QN(n317) );
  NAND3X0 U359 ( .IN1(n349), .IN2(n316), .IN3(n350), .QN(n348) );
  NAND2X0 U360 ( .IN1(n308), .IN2(n299), .QN(n350) );
  INVX0 U361 ( .IN1(n227), .QN(n299) );
  OA21X1 U362 ( .IN1(n342), .IN2(n351), .IN3(n344), .Q(n227) );
  INVX0 U363 ( .IN1(n306), .QN(n342) );
  NAND4X0 U364 ( .IN1(n301), .IN2(n308), .IN3(n300), .IN4(n205), .QN(n349) );
  AO22X1 U365 ( .IN1(a[4]), .IN2(b[4]), .IN3(n208), .IN4(n207), .Q(n205) );
  XNOR2X1 U366 ( .IN1(n308), .IN2(n352), .Q(S[11]) );
  AOI221X1 U367 ( .IN1(n301), .IN2(n310), .IN3(n311), .IN4(n306), .IN5(n313), 
        .QN(n352) );
  INVX0 U368 ( .IN1(n344), .QN(n313) );
  NAND2X0 U369 ( .IN1(n351), .IN2(n353), .QN(n311) );
  NAND4X0 U370 ( .IN1(n197), .IN2(n300), .IN3(a[4]), .IN4(b[4]), .QN(n353) );
  INVX0 U371 ( .IN1(n354), .QN(n351) );
  AND3X1 U372 ( .IN1(n208), .IN2(n207), .IN3(n300), .Q(n310) );
  AO22X1 U373 ( .IN1(b[3]), .IN2(a[3]), .IN3(n210), .IN4(n209), .Q(n207) );
  AND2X1 U374 ( .IN1(n306), .IN2(n197), .Q(n301) );
  OA21X1 U375 ( .IN1(a[11]), .IN2(b[11]), .IN3(n316), .Q(n308) );
  NAND2X0 U376 ( .IN1(b[11]), .IN2(a[11]), .QN(n316) );
  XNOR2X1 U377 ( .IN1(n306), .IN2(n355), .Q(S[10]) );
  NOR2X0 U378 ( .IN1(n356), .IN2(n354), .QN(n355) );
  AO21X1 U379 ( .IN1(n197), .IN2(n326), .IN3(n357), .Q(n354) );
  INVX0 U380 ( .IN1(n343), .QN(n357) );
  AO21X1 U381 ( .IN1(n347), .IN2(n345), .IN3(n346), .Q(n326) );
  AO22X1 U382 ( .IN1(a[8]), .IN2(b[8]), .IN3(n199), .IN4(n358), .Q(n346) );
  AO21X1 U383 ( .IN1(n204), .IN2(n200), .IN3(n332), .Q(n358) );
  AND2X1 U384 ( .IN1(a[7]), .IN2(b[7]), .Q(n332) );
  AND2X1 U385 ( .IN1(a[6]), .IN2(b[6]), .Q(n204) );
  INVX0 U386 ( .IN1(n335), .QN(n347) );
  NAND2X0 U387 ( .IN1(a[5]), .IN2(b[5]), .QN(n335) );
  OA21X1 U388 ( .IN1(n325), .IN2(n324), .IN3(n197), .Q(n356) );
  OA21X1 U389 ( .IN1(a[9]), .IN2(b[9]), .IN3(n343), .Q(n197) );
  NAND2X0 U390 ( .IN1(b[9]), .IN2(a[9]), .QN(n343) );
  AND4X1 U391 ( .IN1(n300), .IN2(n210), .IN3(n208), .IN4(n209), .Q(n324) );
  AO21X1 U392 ( .IN1(n212), .IN2(n211), .IN3(n359), .Q(n209) );
  AND2X1 U393 ( .IN1(a[2]), .IN2(b[2]), .Q(n359) );
  AO22X1 U394 ( .IN1(a[1]), .IN2(b[1]), .IN3(n283), .IN4(n282), .Q(n211) );
  AO22X1 U395 ( .IN1(a[0]), .IN2(b[0]), .IN3(Cin), .IN4(n360), .Q(n282) );
  XOR2X1 U396 ( .IN1(a[1]), .IN2(b[1]), .Q(n283) );
  XOR2X1 U397 ( .IN1(a[2]), .IN2(b[2]), .Q(n212) );
  XOR2X1 U398 ( .IN1(a[3]), .IN2(b[3]), .Q(n210) );
  AND2X1 U399 ( .IN1(n300), .IN2(n337), .Q(n325) );
  AO22X1 U400 ( .IN1(a[4]), .IN2(b[4]), .IN3(n361), .IN4(b[3]), .Q(n337) );
  AND2X1 U401 ( .IN1(n208), .IN2(a[3]), .Q(n361) );
  XOR2X1 U402 ( .IN1(a[4]), .IN2(b[4]), .Q(n208) );
  AND2X1 U403 ( .IN1(n345), .IN2(n206), .Q(n300) );
  XOR2X1 U404 ( .IN1(a[5]), .IN2(b[5]), .Q(n206) );
  AND3X1 U405 ( .IN1(n200), .IN2(n203), .IN3(n199), .Q(n345) );
  XOR2X1 U406 ( .IN1(a[8]), .IN2(b[8]), .Q(n199) );
  XOR2X1 U407 ( .IN1(a[6]), .IN2(b[6]), .Q(n203) );
  XOR2X1 U408 ( .IN1(a[7]), .IN2(b[7]), .Q(n200) );
  OA21X1 U409 ( .IN1(a[10]), .IN2(b[10]), .IN3(n344), .Q(n306) );
  NAND2X0 U410 ( .IN1(b[10]), .IN2(a[10]), .QN(n344) );
  XOR2X1 U411 ( .IN1(Cin), .IN2(n360), .Q(S[0]) );
  XOR2X1 U412 ( .IN1(a[0]), .IN2(b[0]), .Q(n360) );
endmodule


/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Dec 13 20:40:45 2023
/////////////////////////////////////////////////////////////


module CarryLookAheadAdder_8b ( a, b, S, Cin );
  input [7:0] a;
  input [7:0] b;
  output [7:0] S;
  input Cin;
  wire   n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;

  XNOR3X1 U24 ( .IN1(b[7]), .IN2(a[7]), .IN3(n15), .Q(S[7]) );
  AOI22X1 U25 ( .IN1(n16), .IN2(n17), .IN3(b[6]), .IN4(a[6]), .QN(n15) );
  XOR2X1 U26 ( .IN1(n16), .IN2(n17), .Q(S[6]) );
  XOR2X1 U27 ( .IN1(a[6]), .IN2(b[6]), .Q(n17) );
  AO22X1 U28 ( .IN1(a[5]), .IN2(b[5]), .IN3(n18), .IN4(n19), .Q(n16) );
  XOR2X1 U29 ( .IN1(n19), .IN2(n18), .Q(S[5]) );
  XOR2X1 U30 ( .IN1(a[5]), .IN2(b[5]), .Q(n18) );
  AO22X1 U31 ( .IN1(a[4]), .IN2(b[4]), .IN3(n20), .IN4(n21), .Q(n19) );
  XOR2X1 U32 ( .IN1(n21), .IN2(n20), .Q(S[4]) );
  XOR2X1 U33 ( .IN1(a[4]), .IN2(b[4]), .Q(n20) );
  AO22X1 U34 ( .IN1(a[3]), .IN2(b[3]), .IN3(n22), .IN4(n23), .Q(n21) );
  XOR2X1 U35 ( .IN1(n23), .IN2(n22), .Q(S[3]) );
  XOR2X1 U36 ( .IN1(a[3]), .IN2(b[3]), .Q(n22) );
  AO22X1 U37 ( .IN1(a[2]), .IN2(b[2]), .IN3(n24), .IN4(n25), .Q(n23) );
  XOR2X1 U38 ( .IN1(n25), .IN2(n24), .Q(S[2]) );
  XOR2X1 U39 ( .IN1(a[2]), .IN2(b[2]), .Q(n24) );
  AO22X1 U40 ( .IN1(a[1]), .IN2(b[1]), .IN3(n26), .IN4(n27), .Q(n25) );
  XOR2X1 U41 ( .IN1(n27), .IN2(n26), .Q(S[1]) );
  XOR2X1 U42 ( .IN1(a[1]), .IN2(b[1]), .Q(n26) );
  AO22X1 U43 ( .IN1(a[0]), .IN2(b[0]), .IN3(Cin), .IN4(n28), .Q(n27) );
  XOR2X1 U44 ( .IN1(Cin), .IN2(n28), .Q(S[0]) );
  XOR2X1 U45 ( .IN1(a[0]), .IN2(b[0]), .Q(n28) );
endmodule
/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Dec 13 20:55:51 2023
/////////////////////////////////////////////////////////////


module FP32Adder2_CLA_DW_rash_0 ( A, DATA_TC, SH, SH_TC, B );
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

  INVX0 U3 ( .IN1(n81), .QN(n7) );
  INVX0 U4 ( .IN1(n59), .QN(n5) );
  INVX0 U5 ( .IN1(n82), .QN(n10) );
  INVX0 U6 ( .IN1(n80), .QN(n6) );
  INVX0 U7 ( .IN1(n58), .QN(n4) );
  INVX0 U8 ( .IN1(SH[2]), .QN(n8) );
  INVX0 U9 ( .IN1(n61), .QN(n9) );
  INVX0 U10 ( .IN1(SH[7]), .QN(n11) );
  INVX0 U11 ( .IN1(n84), .QN(n1) );
  INVX0 U12 ( .IN1(n77), .QN(n3) );
  INVX0 U13 ( .IN1(n69), .QN(n2) );
  INVX0 U14 ( .IN1(SH[0]), .QN(n12) );
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
  NOR4X0 U29 ( .IN1(n9), .IN2(n49), .IN3(SH[2]), .IN4(SH[7]), .QN(n29) );
  AND2X1 U30 ( .IN1(n19), .IN2(SH[2]), .Q(n31) );
  OA21X1 U31 ( .IN1(n50), .IN2(n51), .IN3(n11), .Q(B[3]) );
  MUX21X1 U32 ( .IN1(n52), .IN2(n53), .S(n49), .Q(n51) );
  AO222X1 U33 ( .IN1(n54), .IN2(n34), .IN3(n55), .IN4(n27), .IN5(n56), .IN6(
        n26), .Q(n53) );
  AO221X1 U34 ( .IN1(A[10]), .IN2(n6), .IN3(A[9]), .IN4(n7), .IN5(n57), .Q(n26) );
  AO22X1 U35 ( .IN1(A[7]), .IN2(n58), .IN3(A[8]), .IN4(n59), .Q(n57) );
  AND2X1 U36 ( .IN1(n60), .IN2(n61), .Q(n52) );
  NOR2X0 U37 ( .IN1(n62), .IN2(n63), .QN(n50) );
  OA221X1 U38 ( .IN1(n4), .IN2(n14), .IN3(n5), .IN4(n13), .IN5(n64), .Q(n62)
         );
  AOI22X1 U39 ( .IN1(n6), .IN2(A[6]), .IN3(n7), .IN4(A[5]), .QN(n64) );
  OA21X1 U40 ( .IN1(n65), .IN2(n66), .IN3(n11), .Q(B[2]) );
  MUX21X1 U41 ( .IN1(n2), .IN2(n67), .S(n49), .Q(n66) );
  AO222X1 U42 ( .IN1(n54), .IN2(n38), .IN3(n55), .IN4(n36), .IN5(n56), .IN6(
        n35), .Q(n67) );
  AO221X1 U43 ( .IN1(A[9]), .IN2(n6), .IN3(A[8]), .IN4(n7), .IN5(n68), .Q(n35)
         );
  AO22X1 U44 ( .IN1(A[6]), .IN2(n58), .IN3(A[7]), .IN4(n59), .Q(n68) );
  NOR2X0 U45 ( .IN1(n70), .IN2(n63), .QN(n65) );
  OA221X1 U46 ( .IN1(n4), .IN2(n15), .IN3(n5), .IN4(n14), .IN5(n71), .Q(n70)
         );
  AOI22X1 U47 ( .IN1(n6), .IN2(A[5]), .IN3(n7), .IN4(A[4]), .QN(n71) );
  AND2X1 U48 ( .IN1(n17), .IN2(n30), .Q(B[23]) );
  AND2X1 U49 ( .IN1(n40), .IN2(n17), .Q(B[22]) );
  AND2X1 U50 ( .IN1(n44), .IN2(n17), .Q(B[21]) );
  AND2X1 U51 ( .IN1(n48), .IN2(n17), .Q(B[20]) );
  OA21X1 U52 ( .IN1(n72), .IN2(n73), .IN3(n11), .Q(B[1]) );
  MUX21X1 U53 ( .IN1(n3), .IN2(n74), .S(n49), .Q(n73) );
  AO222X1 U54 ( .IN1(n54), .IN2(n22), .IN3(n55), .IN4(n18), .IN5(n56), .IN6(
        n41), .Q(n74) );
  AO221X1 U55 ( .IN1(A[8]), .IN2(n6), .IN3(A[7]), .IN4(n7), .IN5(n75), .Q(n41)
         );
  AO22X1 U56 ( .IN1(A[5]), .IN2(n58), .IN3(A[6]), .IN4(n59), .Q(n75) );
  AO221X1 U57 ( .IN1(A[12]), .IN2(n6), .IN3(A[11]), .IN4(n7), .IN5(n76), .Q(
        n18) );
  AO22X1 U58 ( .IN1(A[9]), .IN2(n58), .IN3(A[10]), .IN4(n59), .Q(n76) );
  NOR2X0 U59 ( .IN1(n78), .IN2(n63), .QN(n72) );
  OA221X1 U60 ( .IN1(n4), .IN2(n16), .IN3(n5), .IN4(n15), .IN5(n79), .Q(n78)
         );
  OA22X1 U61 ( .IN1(n80), .IN2(n13), .IN3(n81), .IN4(n14), .Q(n79) );
  AND3X1 U62 ( .IN1(n10), .IN2(n60), .IN3(n61), .Q(B[19]) );
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
  AO221X1 U72 ( .IN1(A[20]), .IN2(n6), .IN3(A[19]), .IN4(n7), .IN5(n85), .Q(
        n43) );
  AO22X1 U73 ( .IN1(A[17]), .IN2(n58), .IN3(A[18]), .IN4(n59), .Q(n85) );
  AO222X1 U74 ( .IN1(A[22]), .IN2(n59), .IN3(A[23]), .IN4(n7), .IN5(A[21]), 
        .IN6(n58), .Q(n44) );
  AO221X1 U75 ( .IN1(A[16]), .IN2(n6), .IN3(A[15]), .IN4(n7), .IN5(n86), .Q(
        n22) );
  AO22X1 U76 ( .IN1(A[13]), .IN2(n58), .IN3(A[14]), .IN4(n59), .Q(n86) );
  AO222X1 U77 ( .IN1(n17), .IN2(n25), .IN3(n33), .IN4(n48), .IN5(n21), .IN6(
        n47), .Q(B[12]) );
  AND2X1 U78 ( .IN1(n19), .IN2(n8), .Q(n33) );
  AO222X1 U79 ( .IN1(n21), .IN2(n34), .IN3(n17), .IN4(n27), .IN5(n19), .IN6(
        n60), .Q(B[11]) );
  MUX21X1 U80 ( .IN1(n30), .IN2(n32), .S(n8), .Q(n60) );
  AO221X1 U81 ( .IN1(n6), .IN2(A[22]), .IN3(A[21]), .IN4(n7), .IN5(n87), .Q(
        n32) );
  AO22X1 U82 ( .IN1(A[19]), .IN2(n58), .IN3(A[20]), .IN4(n59), .Q(n87) );
  AND2X1 U83 ( .IN1(n58), .IN2(A[23]), .Q(n30) );
  AO221X1 U84 ( .IN1(A[14]), .IN2(n6), .IN3(A[13]), .IN4(n7), .IN5(n88), .Q(
        n27) );
  AO22X1 U85 ( .IN1(A[11]), .IN2(n58), .IN3(A[12]), .IN4(n59), .Q(n88) );
  AO221X1 U86 ( .IN1(A[18]), .IN2(n6), .IN3(A[17]), .IN4(n7), .IN5(n89), .Q(
        n34) );
  AO22X1 U87 ( .IN1(A[15]), .IN2(n58), .IN3(A[16]), .IN4(n59), .Q(n89) );
  AO222X1 U88 ( .IN1(n17), .IN2(n36), .IN3(n19), .IN4(n83), .IN5(n21), .IN6(
        n38), .Q(B[10]) );
  AO221X1 U89 ( .IN1(A[17]), .IN2(n6), .IN3(A[16]), .IN4(n7), .IN5(n90), .Q(
        n38) );
  AO22X1 U90 ( .IN1(A[14]), .IN2(n58), .IN3(A[15]), .IN4(n59), .Q(n90) );
  AND2X1 U91 ( .IN1(n56), .IN2(n10), .Q(n21) );
  MUX21X1 U92 ( .IN1(n39), .IN2(n40), .S(SH[2]), .Q(n83) );
  AO22X1 U93 ( .IN1(n58), .IN2(A[22]), .IN3(n59), .IN4(A[23]), .Q(n40) );
  AO221X1 U94 ( .IN1(n6), .IN2(A[21]), .IN3(A[20]), .IN4(n7), .IN5(n91), .Q(
        n39) );
  AO22X1 U95 ( .IN1(A[18]), .IN2(n58), .IN3(A[19]), .IN4(n59), .Q(n91) );
  NOR2X0 U96 ( .IN1(n82), .IN2(n61), .QN(n19) );
  NAND2X0 U97 ( .IN1(n49), .IN2(n11), .QN(n82) );
  AO221X1 U98 ( .IN1(A[13]), .IN2(n6), .IN3(A[12]), .IN4(n7), .IN5(n92), .Q(
        n36) );
  AO22X1 U99 ( .IN1(A[10]), .IN2(n58), .IN3(A[11]), .IN4(n59), .Q(n92) );
  NOR2X0 U100 ( .IN1(n63), .IN2(SH[7]), .QN(n17) );
  OA21X1 U101 ( .IN1(n93), .IN2(n94), .IN3(n11), .Q(B[0]) );
  MUX21X1 U102 ( .IN1(n1), .IN2(n95), .S(n49), .Q(n94) );
  AO222X1 U103 ( .IN1(n54), .IN2(n25), .IN3(n55), .IN4(n23), .IN5(n56), .IN6(
        n45), .Q(n95) );
  AO221X1 U104 ( .IN1(A[7]), .IN2(n6), .IN3(A[6]), .IN4(n7), .IN5(n96), .Q(n45) );
  AO22X1 U105 ( .IN1(A[4]), .IN2(n58), .IN3(A[5]), .IN4(n59), .Q(n96) );
  NOR2X0 U106 ( .IN1(n9), .IN2(n8), .QN(n56) );
  AO221X1 U107 ( .IN1(A[11]), .IN2(n6), .IN3(A[10]), .IN4(n7), .IN5(n97), .Q(
        n23) );
  AO22X1 U108 ( .IN1(A[8]), .IN2(n58), .IN3(A[9]), .IN4(n59), .Q(n97) );
  NOR2X0 U109 ( .IN1(n61), .IN2(SH[2]), .QN(n55) );
  AO221X1 U110 ( .IN1(A[15]), .IN2(n6), .IN3(A[14]), .IN4(n7), .IN5(n98), .Q(
        n25) );
  AO22X1 U111 ( .IN1(A[12]), .IN2(n58), .IN3(A[13]), .IN4(n59), .Q(n98) );
  NOR2X0 U112 ( .IN1(n8), .IN2(n61), .QN(n54) );
  NAND2X0 U113 ( .IN1(n61), .IN2(n24), .QN(n84) );
  MUX21X1 U114 ( .IN1(n47), .IN2(n48), .S(SH[2]), .Q(n24) );
  AO221X1 U115 ( .IN1(n6), .IN2(A[23]), .IN3(A[22]), .IN4(n7), .IN5(n99), .Q(
        n48) );
  AO22X1 U116 ( .IN1(A[20]), .IN2(n58), .IN3(A[21]), .IN4(n59), .Q(n99) );
  AO221X1 U117 ( .IN1(A[19]), .IN2(n6), .IN3(A[18]), .IN4(n7), .IN5(n100), .Q(
        n47) );
  AO22X1 U118 ( .IN1(A[16]), .IN2(n58), .IN3(A[17]), .IN4(n59), .Q(n100) );
  NOR2X0 U119 ( .IN1(n101), .IN2(n63), .QN(n93) );
  NAND3X0 U120 ( .IN1(n49), .IN2(n8), .IN3(n61), .QN(n63) );
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


module FP32Adder2_CLA_DW_rash_1 ( A, DATA_TC, SH, SH_TC, B );
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

  INVX0 U3 ( .IN1(n81), .QN(n7) );
  INVX0 U4 ( .IN1(n59), .QN(n5) );
  INVX0 U5 ( .IN1(n82), .QN(n10) );
  INVX0 U6 ( .IN1(n84), .QN(n1) );
  INVX0 U7 ( .IN1(n77), .QN(n3) );
  INVX0 U8 ( .IN1(n69), .QN(n2) );
  INVX0 U9 ( .IN1(n80), .QN(n6) );
  INVX0 U10 ( .IN1(n58), .QN(n4) );
  INVX0 U11 ( .IN1(SH[2]), .QN(n8) );
  INVX0 U12 ( .IN1(n61), .QN(n9) );
  INVX0 U13 ( .IN1(SH[7]), .QN(n11) );
  INVX0 U14 ( .IN1(SH[0]), .QN(n12) );
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
  NOR4X0 U29 ( .IN1(n9), .IN2(n49), .IN3(SH[2]), .IN4(SH[7]), .QN(n29) );
  AND2X1 U30 ( .IN1(n19), .IN2(SH[2]), .Q(n31) );
  OA21X1 U31 ( .IN1(n50), .IN2(n51), .IN3(n11), .Q(B[3]) );
  MUX21X1 U32 ( .IN1(n52), .IN2(n53), .S(n49), .Q(n51) );
  AO222X1 U33 ( .IN1(n54), .IN2(n34), .IN3(n55), .IN4(n27), .IN5(n56), .IN6(
        n26), .Q(n53) );
  AO221X1 U34 ( .IN1(A[10]), .IN2(n6), .IN3(A[9]), .IN4(n7), .IN5(n57), .Q(n26) );
  AO22X1 U35 ( .IN1(A[7]), .IN2(n58), .IN3(A[8]), .IN4(n59), .Q(n57) );
  AND2X1 U36 ( .IN1(n60), .IN2(n61), .Q(n52) );
  NOR2X0 U37 ( .IN1(n62), .IN2(n63), .QN(n50) );
  OA221X1 U38 ( .IN1(n4), .IN2(n14), .IN3(n5), .IN4(n13), .IN5(n64), .Q(n62)
         );
  AOI22X1 U39 ( .IN1(n6), .IN2(A[6]), .IN3(n7), .IN4(A[5]), .QN(n64) );
  OA21X1 U40 ( .IN1(n65), .IN2(n66), .IN3(n11), .Q(B[2]) );
  MUX21X1 U41 ( .IN1(n2), .IN2(n67), .S(n49), .Q(n66) );
  AO222X1 U42 ( .IN1(n54), .IN2(n38), .IN3(n55), .IN4(n36), .IN5(n56), .IN6(
        n35), .Q(n67) );
  AO221X1 U43 ( .IN1(A[9]), .IN2(n6), .IN3(A[8]), .IN4(n7), .IN5(n68), .Q(n35)
         );
  AO22X1 U44 ( .IN1(A[6]), .IN2(n58), .IN3(A[7]), .IN4(n59), .Q(n68) );
  NOR2X0 U45 ( .IN1(n70), .IN2(n63), .QN(n65) );
  OA221X1 U46 ( .IN1(n4), .IN2(n15), .IN3(n5), .IN4(n14), .IN5(n71), .Q(n70)
         );
  AOI22X1 U47 ( .IN1(n6), .IN2(A[5]), .IN3(n7), .IN4(A[4]), .QN(n71) );
  AND2X1 U48 ( .IN1(n17), .IN2(n30), .Q(B[23]) );
  AND2X1 U49 ( .IN1(n40), .IN2(n17), .Q(B[22]) );
  AND2X1 U50 ( .IN1(n44), .IN2(n17), .Q(B[21]) );
  AND2X1 U51 ( .IN1(n48), .IN2(n17), .Q(B[20]) );
  OA21X1 U52 ( .IN1(n72), .IN2(n73), .IN3(n11), .Q(B[1]) );
  MUX21X1 U53 ( .IN1(n3), .IN2(n74), .S(n49), .Q(n73) );
  AO222X1 U54 ( .IN1(n54), .IN2(n22), .IN3(n55), .IN4(n18), .IN5(n56), .IN6(
        n41), .Q(n74) );
  AO221X1 U55 ( .IN1(A[8]), .IN2(n6), .IN3(A[7]), .IN4(n7), .IN5(n75), .Q(n41)
         );
  AO22X1 U56 ( .IN1(A[5]), .IN2(n58), .IN3(A[6]), .IN4(n59), .Q(n75) );
  AO221X1 U57 ( .IN1(A[12]), .IN2(n6), .IN3(A[11]), .IN4(n7), .IN5(n76), .Q(
        n18) );
  AO22X1 U58 ( .IN1(A[9]), .IN2(n58), .IN3(A[10]), .IN4(n59), .Q(n76) );
  NOR2X0 U59 ( .IN1(n78), .IN2(n63), .QN(n72) );
  OA221X1 U60 ( .IN1(n4), .IN2(n16), .IN3(n5), .IN4(n15), .IN5(n79), .Q(n78)
         );
  OA22X1 U61 ( .IN1(n80), .IN2(n13), .IN3(n81), .IN4(n14), .Q(n79) );
  AND3X1 U62 ( .IN1(n10), .IN2(n60), .IN3(n61), .Q(B[19]) );
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
  AO221X1 U72 ( .IN1(A[20]), .IN2(n6), .IN3(A[19]), .IN4(n7), .IN5(n85), .Q(
        n43) );
  AO22X1 U73 ( .IN1(A[17]), .IN2(n58), .IN3(A[18]), .IN4(n59), .Q(n85) );
  AO222X1 U74 ( .IN1(A[22]), .IN2(n59), .IN3(A[23]), .IN4(n7), .IN5(A[21]), 
        .IN6(n58), .Q(n44) );
  AO221X1 U75 ( .IN1(A[16]), .IN2(n6), .IN3(A[15]), .IN4(n7), .IN5(n86), .Q(
        n22) );
  AO22X1 U76 ( .IN1(A[13]), .IN2(n58), .IN3(A[14]), .IN4(n59), .Q(n86) );
  AO222X1 U77 ( .IN1(n17), .IN2(n25), .IN3(n33), .IN4(n48), .IN5(n21), .IN6(
        n47), .Q(B[12]) );
  AND2X1 U78 ( .IN1(n19), .IN2(n8), .Q(n33) );
  AO222X1 U79 ( .IN1(n21), .IN2(n34), .IN3(n17), .IN4(n27), .IN5(n19), .IN6(
        n60), .Q(B[11]) );
  MUX21X1 U80 ( .IN1(n30), .IN2(n32), .S(n8), .Q(n60) );
  AO221X1 U81 ( .IN1(n6), .IN2(A[22]), .IN3(A[21]), .IN4(n7), .IN5(n87), .Q(
        n32) );
  AO22X1 U82 ( .IN1(A[19]), .IN2(n58), .IN3(A[20]), .IN4(n59), .Q(n87) );
  AND2X1 U83 ( .IN1(n58), .IN2(A[23]), .Q(n30) );
  AO221X1 U84 ( .IN1(A[14]), .IN2(n6), .IN3(A[13]), .IN4(n7), .IN5(n88), .Q(
        n27) );
  AO22X1 U85 ( .IN1(A[11]), .IN2(n58), .IN3(A[12]), .IN4(n59), .Q(n88) );
  AO221X1 U86 ( .IN1(A[18]), .IN2(n6), .IN3(A[17]), .IN4(n7), .IN5(n89), .Q(
        n34) );
  AO22X1 U87 ( .IN1(A[15]), .IN2(n58), .IN3(A[16]), .IN4(n59), .Q(n89) );
  AO222X1 U88 ( .IN1(n17), .IN2(n36), .IN3(n19), .IN4(n83), .IN5(n21), .IN6(
        n38), .Q(B[10]) );
  AO221X1 U89 ( .IN1(A[17]), .IN2(n6), .IN3(A[16]), .IN4(n7), .IN5(n90), .Q(
        n38) );
  AO22X1 U90 ( .IN1(A[14]), .IN2(n58), .IN3(A[15]), .IN4(n59), .Q(n90) );
  AND2X1 U91 ( .IN1(n56), .IN2(n10), .Q(n21) );
  MUX21X1 U92 ( .IN1(n39), .IN2(n40), .S(SH[2]), .Q(n83) );
  AO22X1 U93 ( .IN1(n58), .IN2(A[22]), .IN3(n59), .IN4(A[23]), .Q(n40) );
  AO221X1 U94 ( .IN1(n6), .IN2(A[21]), .IN3(A[20]), .IN4(n7), .IN5(n91), .Q(
        n39) );
  AO22X1 U95 ( .IN1(A[18]), .IN2(n58), .IN3(A[19]), .IN4(n59), .Q(n91) );
  NOR2X0 U96 ( .IN1(n82), .IN2(n61), .QN(n19) );
  NAND2X0 U97 ( .IN1(n49), .IN2(n11), .QN(n82) );
  AO221X1 U98 ( .IN1(A[13]), .IN2(n6), .IN3(A[12]), .IN4(n7), .IN5(n92), .Q(
        n36) );
  AO22X1 U99 ( .IN1(A[10]), .IN2(n58), .IN3(A[11]), .IN4(n59), .Q(n92) );
  NOR2X0 U100 ( .IN1(n63), .IN2(SH[7]), .QN(n17) );
  OA21X1 U101 ( .IN1(n93), .IN2(n94), .IN3(n11), .Q(B[0]) );
  MUX21X1 U102 ( .IN1(n1), .IN2(n95), .S(n49), .Q(n94) );
  AO222X1 U103 ( .IN1(n54), .IN2(n25), .IN3(n55), .IN4(n23), .IN5(n56), .IN6(
        n45), .Q(n95) );
  AO221X1 U104 ( .IN1(A[7]), .IN2(n6), .IN3(A[6]), .IN4(n7), .IN5(n96), .Q(n45) );
  AO22X1 U105 ( .IN1(A[4]), .IN2(n58), .IN3(A[5]), .IN4(n59), .Q(n96) );
  NOR2X0 U106 ( .IN1(n9), .IN2(n8), .QN(n56) );
  AO221X1 U107 ( .IN1(A[11]), .IN2(n6), .IN3(A[10]), .IN4(n7), .IN5(n97), .Q(
        n23) );
  AO22X1 U108 ( .IN1(A[8]), .IN2(n58), .IN3(A[9]), .IN4(n59), .Q(n97) );
  NOR2X0 U109 ( .IN1(n61), .IN2(SH[2]), .QN(n55) );
  AO221X1 U110 ( .IN1(A[15]), .IN2(n6), .IN3(A[14]), .IN4(n7), .IN5(n98), .Q(
        n25) );
  AO22X1 U111 ( .IN1(A[12]), .IN2(n58), .IN3(A[13]), .IN4(n59), .Q(n98) );
  NOR2X0 U112 ( .IN1(n8), .IN2(n61), .QN(n54) );
  NAND2X0 U113 ( .IN1(n61), .IN2(n24), .QN(n84) );
  MUX21X1 U114 ( .IN1(n47), .IN2(n48), .S(SH[2]), .Q(n24) );
  AO221X1 U115 ( .IN1(n6), .IN2(A[23]), .IN3(A[22]), .IN4(n7), .IN5(n99), .Q(
        n48) );
  AO22X1 U116 ( .IN1(A[20]), .IN2(n58), .IN3(A[21]), .IN4(n59), .Q(n99) );
  AO221X1 U117 ( .IN1(A[19]), .IN2(n6), .IN3(A[18]), .IN4(n7), .IN5(n100), .Q(
        n47) );
  AO22X1 U118 ( .IN1(A[16]), .IN2(n58), .IN3(A[17]), .IN4(n59), .Q(n100) );
  NOR2X0 U119 ( .IN1(n101), .IN2(n63), .QN(n93) );
  NAND3X0 U120 ( .IN1(n49), .IN2(n8), .IN3(n61), .QN(n63) );
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


module FP32Adder2_CLA_Synth ( a, b, S, Overflow );
  input [31:0] a;
  input [31:0] b;
  output [31:0] S;
  output Overflow;
  wire   N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24,
         N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52,
         N53, N54, N55, N56, N57, N58, N258, N265, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n476,
         n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487,
         n488, n489, n490, n491, n492, n493, n494, n495, n496, n497, n498,
         n499, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509,
         n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, n520,
         n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531,
         n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, n542,
         n543, n544, n545, n546, n547, n548, n549, n550, n551, n552, n553,
         n554, n555, n556, n557, n558, n559, n560, n561, n562, n563, n564,
         n565, n566, n567, n568, n569, n570, n571, n572, n573, n574, n575,
         n576, n577, n578, n579, n580, n581, n582, n583, n584, n585, n586,
         n587, n588, n589, n590, n591, n592, n593, n594, n595, n596, n597,
         n598, n599, n600, n601, n602, n603, n604, n605, n606, n607, n608,
         n609, n610, n611, n612, n613, n614, n615, n616, n617, n618, n619,
         n620, n621, n622, n623, n624, n625, n626;
  wire   [7:0] a_minus_b;
  wire   [7:0] b_minus_a;
  wire   [23:0] l_mantissa;
  wire   [23:0] s_mantissa;
  wire   [7:0] c_exp;
  wire   [24:0] sum_man;
  wire   [7:0] c_exp_inc;
  wire   [24:0] sum_dif;
  wire   [7:0] ds_exp_offset;
  wire   [7:0] ds_exp_off;
  wire   SYNOPSYS_UNCONNECTED__0;

  CarryLookAheadAdder_8b sub_a_b ( .a(a[30:23]), .b({n619, n620, n621, n622, 
        n623, n624, n625, n626}), .S(a_minus_b), .Cin(1'b1) );
  CarryLookAheadAdder_8b sub_b_a ( .a(b[30:23]), .b({n611, n612, n613, n614, 
        n615, n616, n617, n618}), .S(b_minus_a), .Cin(1'b1) );
  CarryLookAheadAdder_23b add1 ( .a({1'b0, l_mantissa}), .b({1'b0, 
        s_mantissa}), .S(sum_man), .Cin(1'b0) );
  CarryLookAheadAdder_8b inc1 ( .a({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .b(c_exp), .S(c_exp_inc), .Cin(1'b1) );
  CarryLookAheadAdder_23b sub1 ( .a({1'b0, l_mantissa}), .b({1'b1, n604, 
        n598, n610, n592, n603, n596, n609, n588, n600, n597, n605, n590, n599, 
        n593, n608, n589, n602, n595, n607, n591, n601, n594, n606, n587}), 
        .S({SYNOPSYS_UNCONNECTED__0, sum_dif[23:0]}), .Cin(1'b1) );
  CarryLookAheadAdder_8b sub2 ( .a({ds_exp_offset[7:6], ds_exp_offset[6], 
        ds_exp_offset[4:0]}), .b(c_exp), .S(ds_exp_off), .Cin(1'b0) );
  FP32Adder2_CLA_DW_rash_0 srl_124_2 ( .A({N265, a[22:0]}), .DATA_TC(1'b0), 
        .SH(b_minus_a), .SH_TC(1'b0), .B({N58, N57, N56, N55, N54, N53, N52, 
        N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, 
        N37, N36, N35}) );
  FP32Adder2_CLA_DW_rash_1 srl_124 ( .A({N258, b[22:0]}), .DATA_TC(1'b0), .SH(
        a_minus_b), .SH_TC(1'b0), .B({N34, N33, N32, N31, N30, N29, N28, N27, 
        N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, 
        N12, N11}) );
  NOR2X1 U381 ( .IN1(n308), .IN2(sum_man[24]), .QN(n310) );
  AOI222X2 U382 ( .IN1(n516), .IN2(n517), .IN3(n518), .IN4(n619), .IN5(n519), 
        .IN6(a[30]), .QN(n286) );
  INVX0 U383 ( .IN1(s_mantissa[0]), .QN(n587) );
  MUX21X1 U384 ( .IN1(N11), .IN2(N35), .S(n286), .Q(s_mantissa[0]) );
  INVX0 U385 ( .IN1(s_mantissa[16]), .QN(n588) );
  MUX21X1 U386 ( .IN1(N27), .IN2(N51), .S(n286), .Q(s_mantissa[16]) );
  INVX0 U387 ( .IN1(s_mantissa[8]), .QN(n589) );
  MUX21X1 U388 ( .IN1(N19), .IN2(N43), .S(n286), .Q(s_mantissa[8]) );
  INVX0 U389 ( .IN1(s_mantissa[12]), .QN(n590) );
  MUX21X1 U390 ( .IN1(N23), .IN2(N47), .S(n286), .Q(s_mantissa[12]) );
  INVX0 U391 ( .IN1(s_mantissa[4]), .QN(n591) );
  MUX21X1 U392 ( .IN1(N15), .IN2(N39), .S(n286), .Q(s_mantissa[4]) );
  INVX0 U393 ( .IN1(s_mantissa[20]), .QN(n592) );
  MUX21X1 U394 ( .IN1(N31), .IN2(N55), .S(n286), .Q(s_mantissa[20]) );
  INVX0 U395 ( .IN1(s_mantissa[10]), .QN(n593) );
  MUX21X1 U396 ( .IN1(N21), .IN2(N45), .S(n286), .Q(s_mantissa[10]) );
  INVX0 U397 ( .IN1(s_mantissa[2]), .QN(n594) );
  MUX21X1 U398 ( .IN1(N13), .IN2(N37), .S(n286), .Q(s_mantissa[2]) );
  INVX0 U399 ( .IN1(s_mantissa[6]), .QN(n595) );
  MUX21X1 U400 ( .IN1(N17), .IN2(N41), .S(n286), .Q(s_mantissa[6]) );
  INVX0 U401 ( .IN1(s_mantissa[18]), .QN(n596) );
  MUX21X1 U402 ( .IN1(N29), .IN2(N53), .S(n286), .Q(s_mantissa[18]) );
  INVX0 U403 ( .IN1(s_mantissa[14]), .QN(n597) );
  MUX21X1 U404 ( .IN1(N25), .IN2(N49), .S(n286), .Q(s_mantissa[14]) );
  INVX0 U405 ( .IN1(s_mantissa[22]), .QN(n598) );
  MUX21X1 U406 ( .IN1(N33), .IN2(N57), .S(n286), .Q(s_mantissa[22]) );
  INVX0 U407 ( .IN1(s_mantissa[11]), .QN(n599) );
  MUX21X1 U408 ( .IN1(N22), .IN2(N46), .S(n286), .Q(s_mantissa[11]) );
  INVX0 U409 ( .IN1(s_mantissa[15]), .QN(n600) );
  MUX21X1 U410 ( .IN1(N26), .IN2(N50), .S(n286), .Q(s_mantissa[15]) );
  INVX0 U411 ( .IN1(s_mantissa[3]), .QN(n601) );
  MUX21X1 U412 ( .IN1(N14), .IN2(N38), .S(n286), .Q(s_mantissa[3]) );
  INVX0 U413 ( .IN1(s_mantissa[7]), .QN(n602) );
  MUX21X1 U414 ( .IN1(N18), .IN2(N42), .S(n286), .Q(s_mantissa[7]) );
  INVX0 U415 ( .IN1(s_mantissa[19]), .QN(n603) );
  MUX21X1 U416 ( .IN1(N30), .IN2(N54), .S(n286), .Q(s_mantissa[19]) );
  INVX0 U417 ( .IN1(s_mantissa[23]), .QN(n604) );
  MUX21X1 U418 ( .IN1(N34), .IN2(N58), .S(n286), .Q(s_mantissa[23]) );
  INVX0 U419 ( .IN1(s_mantissa[13]), .QN(n605) );
  MUX21X1 U420 ( .IN1(N24), .IN2(N48), .S(n286), .Q(s_mantissa[13]) );
  INVX0 U421 ( .IN1(s_mantissa[1]), .QN(n606) );
  MUX21X1 U422 ( .IN1(N12), .IN2(N36), .S(n286), .Q(s_mantissa[1]) );
  INVX0 U423 ( .IN1(s_mantissa[5]), .QN(n607) );
  MUX21X1 U424 ( .IN1(N16), .IN2(N40), .S(n286), .Q(s_mantissa[5]) );
  INVX0 U425 ( .IN1(s_mantissa[9]), .QN(n608) );
  MUX21X1 U426 ( .IN1(N20), .IN2(N44), .S(n286), .Q(s_mantissa[9]) );
  INVX0 U427 ( .IN1(s_mantissa[17]), .QN(n609) );
  MUX21X1 U428 ( .IN1(N28), .IN2(N52), .S(n286), .Q(s_mantissa[17]) );
  INVX0 U429 ( .IN1(s_mantissa[21]), .QN(n610) );
  MUX21X1 U430 ( .IN1(N32), .IN2(N56), .S(n286), .Q(s_mantissa[21]) );
  INVX0 U431 ( .IN1(a[29]), .QN(n612) );
  INVX0 U432 ( .IN1(b[28]), .QN(n621) );
  INVX0 U433 ( .IN1(b[27]), .QN(n622) );
  MUX21X1 U434 ( .IN1(a[9]), .IN2(b[9]), .S(n286), .Q(l_mantissa[9]) );
  MUX21X1 U435 ( .IN1(a[8]), .IN2(b[8]), .S(n286), .Q(l_mantissa[8]) );
  MUX21X1 U436 ( .IN1(a[7]), .IN2(b[7]), .S(n286), .Q(l_mantissa[7]) );
  MUX21X1 U437 ( .IN1(a[6]), .IN2(b[6]), .S(n286), .Q(l_mantissa[6]) );
  MUX21X1 U438 ( .IN1(a[5]), .IN2(b[5]), .S(n286), .Q(l_mantissa[5]) );
  MUX21X1 U439 ( .IN1(a[4]), .IN2(b[4]), .S(n286), .Q(l_mantissa[4]) );
  MUX21X1 U440 ( .IN1(a[3]), .IN2(b[3]), .S(n286), .Q(l_mantissa[3]) );
  MUX21X1 U441 ( .IN1(a[2]), .IN2(b[2]), .S(n286), .Q(l_mantissa[2]) );
  OR2X1 U442 ( .IN1(N258), .IN2(N265), .Q(l_mantissa[23]) );
  MUX21X1 U443 ( .IN1(a[22]), .IN2(b[22]), .S(n286), .Q(l_mantissa[22]) );
  MUX21X1 U444 ( .IN1(a[21]), .IN2(b[21]), .S(n286), .Q(l_mantissa[21]) );
  MUX21X1 U445 ( .IN1(a[20]), .IN2(b[20]), .S(n286), .Q(l_mantissa[20]) );
  MUX21X1 U446 ( .IN1(a[1]), .IN2(b[1]), .S(n286), .Q(l_mantissa[1]) );
  MUX21X1 U447 ( .IN1(a[19]), .IN2(b[19]), .S(n286), .Q(l_mantissa[19]) );
  MUX21X1 U448 ( .IN1(a[18]), .IN2(b[18]), .S(n286), .Q(l_mantissa[18]) );
  MUX21X1 U449 ( .IN1(a[17]), .IN2(b[17]), .S(n286), .Q(l_mantissa[17]) );
  MUX21X1 U450 ( .IN1(a[16]), .IN2(b[16]), .S(n286), .Q(l_mantissa[16]) );
  MUX21X1 U451 ( .IN1(a[15]), .IN2(b[15]), .S(n286), .Q(l_mantissa[15]) );
  MUX21X1 U452 ( .IN1(a[14]), .IN2(b[14]), .S(n286), .Q(l_mantissa[14]) );
  MUX21X1 U453 ( .IN1(a[13]), .IN2(b[13]), .S(n286), .Q(l_mantissa[13]) );
  MUX21X1 U454 ( .IN1(a[12]), .IN2(b[12]), .S(n286), .Q(l_mantissa[12]) );
  MUX21X1 U455 ( .IN1(a[11]), .IN2(b[11]), .S(n286), .Q(l_mantissa[11]) );
  MUX21X1 U456 ( .IN1(a[10]), .IN2(b[10]), .S(n286), .Q(l_mantissa[10]) );
  MUX21X1 U457 ( .IN1(a[0]), .IN2(b[0]), .S(n286), .Q(l_mantissa[0]) );
  NAND2X0 U458 ( .IN1(n287), .IN2(n288), .QN(ds_exp_offset[6]) );
  NAND2X0 U459 ( .IN1(n289), .IN2(n287), .QN(ds_exp_offset[4]) );
  NAND3X0 U460 ( .IN1(n290), .IN2(n287), .IN3(n291), .QN(ds_exp_offset[3]) );
  NAND4X0 U461 ( .IN1(n292), .IN2(n293), .IN3(n294), .IN4(n295), .QN(
        ds_exp_offset[2]) );
  AND3X1 U462 ( .IN1(n296), .IN2(n297), .IN3(n298), .Q(n295) );
  NAND4X0 U463 ( .IN1(n299), .IN2(n297), .IN3(n300), .IN4(n301), .QN(
        ds_exp_offset[1]) );
  AND2X1 U464 ( .IN1(n302), .IN2(n303), .Q(n300) );
  AND3X1 U465 ( .IN1(n304), .IN2(n305), .IN3(n306), .Q(n297) );
  AO222X1 U466 ( .IN1(sum_man[10]), .IN2(n307), .IN3(n308), .IN4(n309), .IN5(
        sum_man[9]), .IN6(n310), .Q(S[9]) );
  NAND4X0 U467 ( .IN1(n311), .IN2(n312), .IN3(n313), .IN4(n314), .QN(n309) );
  OA222X1 U468 ( .IN1(n315), .IN2(n305), .IN3(n316), .IN4(n317), .IN5(n318), 
        .IN6(n302), .Q(n314) );
  OA22X1 U469 ( .IN1(n319), .IN2(n292), .IN3(n320), .IN4(n321), .Q(n313) );
  OA222X1 U470 ( .IN1(n322), .IN2(n323), .IN3(n324), .IN4(n325), .IN5(n326), 
        .IN6(n327), .Q(n312) );
  OA22X1 U471 ( .IN1(n328), .IN2(n329), .IN3(n330), .IN4(n331), .Q(n311) );
  AO222X1 U472 ( .IN1(sum_man[9]), .IN2(n307), .IN3(n308), .IN4(n332), .IN5(
        sum_man[8]), .IN6(n310), .Q(S[8]) );
  NAND4X0 U473 ( .IN1(n333), .IN2(n334), .IN3(n335), .IN4(n336), .QN(n332) );
  OA222X1 U474 ( .IN1(n326), .IN2(n305), .IN3(n328), .IN4(n317), .IN5(n320), 
        .IN6(n302), .Q(n336) );
  OA22X1 U475 ( .IN1(n324), .IN2(n292), .IN3(n316), .IN4(n321), .Q(n335) );
  OA22X1 U476 ( .IN1(n318), .IN2(n325), .IN3(n319), .IN4(n327), .Q(n334) );
  OA22X1 U477 ( .IN1(n315), .IN2(n323), .IN3(n322), .IN4(n331), .Q(n333) );
  AO222X1 U478 ( .IN1(sum_man[8]), .IN2(n307), .IN3(n308), .IN4(n337), .IN5(
        sum_man[7]), .IN6(n310), .Q(S[7]) );
  NAND4X0 U479 ( .IN1(n338), .IN2(n339), .IN3(n340), .IN4(n341), .QN(n337) );
  OA22X1 U480 ( .IN1(n316), .IN2(n302), .IN3(n319), .IN4(n305), .Q(n341) );
  OA22X1 U481 ( .IN1(n318), .IN2(n292), .IN3(n328), .IN4(n321), .Q(n340) );
  OA22X1 U482 ( .IN1(n320), .IN2(n325), .IN3(n324), .IN4(n327), .Q(n339) );
  OA22X1 U483 ( .IN1(n326), .IN2(n323), .IN3(n315), .IN4(n331), .Q(n338) );
  AO222X1 U484 ( .IN1(sum_man[7]), .IN2(n307), .IN3(n308), .IN4(n342), .IN5(
        sum_man[6]), .IN6(n310), .Q(S[6]) );
  NAND3X0 U485 ( .IN1(n343), .IN2(n344), .IN3(n345), .QN(n342) );
  OA222X1 U486 ( .IN1(n326), .IN2(n331), .IN3(n318), .IN4(n327), .IN5(n319), 
        .IN6(n323), .Q(n345) );
  OA22X1 U487 ( .IN1(n328), .IN2(n302), .IN3(n324), .IN4(n305), .Q(n344) );
  OA22X1 U488 ( .IN1(n320), .IN2(n292), .IN3(n316), .IN4(n325), .Q(n343) );
  AO222X1 U489 ( .IN1(sum_man[6]), .IN2(n307), .IN3(n308), .IN4(n346), .IN5(
        sum_man[5]), .IN6(n310), .Q(S[5]) );
  NAND2X0 U490 ( .IN1(n347), .IN2(n348), .QN(n346) );
  OA222X1 U491 ( .IN1(n328), .IN2(n325), .IN3(n318), .IN4(n305), .IN5(n316), 
        .IN6(n292), .Q(n348) );
  OA222X1 U492 ( .IN1(n319), .IN2(n331), .IN3(n320), .IN4(n327), .IN5(n324), 
        .IN6(n323), .Q(n347) );
  AO222X1 U493 ( .IN1(sum_man[5]), .IN2(n307), .IN3(n308), .IN4(n349), .IN5(
        sum_man[4]), .IN6(n310), .Q(S[4]) );
  AO221X1 U494 ( .IN1(n350), .IN2(sum_dif[3]), .IN3(sum_dif[23]), .IN4(
        sum_dif[4]), .IN5(n351), .Q(n349) );
  AO222X1 U495 ( .IN1(n352), .IN2(sum_dif[0]), .IN3(n353), .IN4(sum_dif[2]), 
        .IN5(n354), .IN6(sum_dif[1]), .Q(n351) );
  AO222X1 U496 ( .IN1(sum_man[4]), .IN2(n307), .IN3(n308), .IN4(n355), .IN5(
        sum_man[3]), .IN6(n310), .Q(S[3]) );
  AO221X1 U497 ( .IN1(n353), .IN2(sum_dif[1]), .IN3(n354), .IN4(sum_dif[0]), 
        .IN5(n356), .Q(n355) );
  AO22X1 U498 ( .IN1(sum_dif[23]), .IN2(sum_dif[3]), .IN3(n350), .IN4(
        sum_dif[2]), .Q(n356) );
  AO222X1 U499 ( .IN1(sum_man[3]), .IN2(n307), .IN3(n308), .IN4(n357), .IN5(
        sum_man[2]), .IN6(n310), .Q(S[2]) );
  AO222X1 U500 ( .IN1(n350), .IN2(sum_dif[1]), .IN3(n353), .IN4(sum_dif[0]), 
        .IN5(sum_dif[23]), .IN6(sum_dif[2]), .Q(n357) );
  AO222X1 U501 ( .IN1(sum_man[23]), .IN2(n307), .IN3(n308), .IN4(n358), .IN5(
        sum_man[22]), .IN6(n310), .Q(S[22]) );
  NAND4X0 U502 ( .IN1(n359), .IN2(n360), .IN3(n361), .IN4(n362), .QN(n358) );
  OA221X1 U503 ( .IN1(n363), .IN2(n317), .IN3(n364), .IN4(n304), .IN5(n365), 
        .Q(n362) );
  OA22X1 U504 ( .IN1(n366), .IN2(n302), .IN3(n367), .IN4(n305), .Q(n365) );
  OA222X1 U505 ( .IN1(n368), .IN2(n321), .IN3(n369), .IN4(n292), .IN5(n370), 
        .IN6(n293), .Q(n361) );
  OA222X1 U506 ( .IN1(n371), .IN2(n372), .IN3(n373), .IN4(n325), .IN5(n374), 
        .IN6(n327), .Q(n360) );
  AOI222X1 U507 ( .IN1(sum_dif[22]), .IN2(sum_dif[23]), .IN3(sum_dif[21]), 
        .IN4(n350), .IN5(sum_dif[13]), .IN6(n375), .QN(n359) );
  AO222X1 U508 ( .IN1(sum_man[22]), .IN2(n307), .IN3(n308), .IN4(n376), .IN5(
        sum_man[21]), .IN6(n310), .Q(S[21]) );
  NAND4X0 U509 ( .IN1(n377), .IN2(n378), .IN3(n379), .IN4(n380), .QN(n376) );
  NOR2X0 U510 ( .IN1(n381), .IN2(n382), .QN(n380) );
  AO221X1 U511 ( .IN1(n383), .IN2(sum_dif[5]), .IN3(sum_dif[23]), .IN4(
        sum_dif[21]), .IN5(n384), .Q(n382) );
  AO222X1 U512 ( .IN1(n350), .IN2(sum_dif[20]), .IN3(n385), .IN4(sum_dif[10]), 
        .IN5(n375), .IN6(sum_dif[12]), .Q(n384) );
  INVX0 U513 ( .IN1(n386), .QN(n383) );
  AO221X1 U514 ( .IN1(n387), .IN2(sum_dif[3]), .IN3(n354), .IN4(sum_dif[18]), 
        .IN5(n388), .Q(n381) );
  AO222X1 U515 ( .IN1(n389), .IN2(sum_dif[14]), .IN3(n390), .IN4(sum_dif[7]), 
        .IN5(n391), .IN6(sum_dif[16]), .Q(n388) );
  INVX0 U516 ( .IN1(n392), .QN(n387) );
  OA221X1 U517 ( .IN1(n393), .IN2(n330), .IN3(n373), .IN4(n292), .IN5(n394), 
        .Q(n379) );
  OA222X1 U518 ( .IN1(n374), .IN2(n305), .IN3(n395), .IN4(n317), .IN5(n368), 
        .IN6(n302), .Q(n394) );
  OA222X1 U519 ( .IN1(n324), .IN2(n306), .IN3(n396), .IN4(n316), .IN5(n320), 
        .IN6(n294), .Q(n378) );
  OA21X1 U520 ( .IN1(n397), .IN2(n328), .IN3(n398), .Q(n396) );
  OA222X1 U521 ( .IN1(n326), .IN2(n399), .IN3(n322), .IN4(n303), .IN5(n371), 
        .IN6(n304), .Q(n377) );
  AO222X1 U522 ( .IN1(sum_man[21]), .IN2(n307), .IN3(n308), .IN4(n400), .IN5(
        sum_man[20]), .IN6(n310), .Q(S[20]) );
  NAND4X0 U523 ( .IN1(n401), .IN2(n402), .IN3(n403), .IN4(n404), .QN(n400) );
  NOR2X0 U524 ( .IN1(n405), .IN2(n406), .QN(n404) );
  OAI222X1 U525 ( .IN1(n399), .IN2(n319), .IN3(n304), .IN4(n370), .IN5(n317), 
        .IN6(n364), .QN(n406) );
  OAI222X1 U526 ( .IN1(n306), .IN2(n318), .IN3(n294), .IN4(n316), .IN5(n303), 
        .IN6(n315), .QN(n405) );
  OA221X1 U527 ( .IN1(n326), .IN2(n407), .IN3(n393), .IN4(n322), .IN5(n408), 
        .Q(n403) );
  OA222X1 U528 ( .IN1(n366), .IN2(n292), .IN3(n363), .IN4(n302), .IN5(n369), 
        .IN6(n305), .Q(n408) );
  OA221X1 U529 ( .IN1(n373), .IN2(n327), .IN3(n320), .IN4(n392), .IN5(n409), 
        .Q(n402) );
  OA222X1 U530 ( .IN1(n368), .IN2(n325), .IN3(n395), .IN4(n321), .IN5(n328), 
        .IN6(n398), .Q(n409) );
  OA221X1 U531 ( .IN1(n367), .IN2(n331), .IN3(n324), .IN4(n386), .IN5(n410), 
        .Q(n401) );
  OA222X1 U532 ( .IN1(n371), .IN2(n329), .IN3(n330), .IN4(n372), .IN5(n374), 
        .IN6(n323), .Q(n410) );
  AO222X1 U533 ( .IN1(sum_man[2]), .IN2(n307), .IN3(n308), .IN4(n411), .IN5(
        sum_man[1]), .IN6(n310), .Q(S[1]) );
  AO22X1 U534 ( .IN1(sum_dif[23]), .IN2(sum_dif[1]), .IN3(n350), .IN4(
        sum_dif[0]), .Q(n411) );
  AO222X1 U535 ( .IN1(sum_man[20]), .IN2(n307), .IN3(n308), .IN4(n412), .IN5(
        sum_man[19]), .IN6(n310), .Q(S[19]) );
  NAND4X0 U536 ( .IN1(n413), .IN2(n414), .IN3(n415), .IN4(n416), .QN(n412) );
  OA221X1 U537 ( .IN1(n324), .IN2(n399), .IN3(n330), .IN4(n304), .IN5(n417), 
        .Q(n416) );
  OA222X1 U538 ( .IN1(n326), .IN2(n303), .IN3(n328), .IN4(n294), .IN5(n320), 
        .IN6(n306), .Q(n417) );
  OA221X1 U539 ( .IN1(n393), .IN2(n315), .IN3(n368), .IN4(n292), .IN5(n418), 
        .Q(n415) );
  OA222X1 U540 ( .IN1(n373), .IN2(n305), .IN3(n371), .IN4(n317), .IN5(n395), 
        .IN6(n302), .Q(n418) );
  OA221X1 U541 ( .IN1(n366), .IN2(n327), .IN3(n316), .IN4(n392), .IN5(n419), 
        .Q(n414) );
  OA222X1 U542 ( .IN1(n363), .IN2(n325), .IN3(n319), .IN4(n407), .IN5(n364), 
        .IN6(n321), .Q(n419) );
  OA221X1 U543 ( .IN1(n374), .IN2(n331), .IN3(n318), .IN4(n386), .IN5(n420), 
        .Q(n413) );
  OA222X1 U544 ( .IN1(n370), .IN2(n329), .IN3(n322), .IN4(n372), .IN5(n369), 
        .IN6(n323), .Q(n420) );
  AO222X1 U545 ( .IN1(sum_man[19]), .IN2(n307), .IN3(n308), .IN4(n421), .IN5(
        sum_man[18]), .IN6(n310), .Q(S[18]) );
  NAND4X0 U546 ( .IN1(n422), .IN2(n423), .IN3(n424), .IN4(n425), .QN(n421) );
  OA221X1 U547 ( .IN1(n370), .IN2(n317), .IN3(n318), .IN4(n399), .IN5(n426), 
        .Q(n425) );
  OA222X1 U548 ( .IN1(n322), .IN2(n304), .IN3(n316), .IN4(n306), .IN5(n319), 
        .IN6(n303), .Q(n426) );
  OA221X1 U549 ( .IN1(n324), .IN2(n407), .IN3(n393), .IN4(n326), .IN5(n427), 
        .Q(n424) );
  OA222X1 U550 ( .IN1(n363), .IN2(n292), .IN3(n364), .IN4(n302), .IN5(n366), 
        .IN6(n305), .Q(n427) );
  OA221X1 U551 ( .IN1(n315), .IN2(n372), .IN3(n368), .IN4(n327), .IN5(n428), 
        .Q(n423) );
  OA222X1 U552 ( .IN1(n328), .IN2(n392), .IN3(n371), .IN4(n321), .IN5(n395), 
        .IN6(n325), .Q(n428) );
  OA221X1 U553 ( .IN1(n330), .IN2(n329), .IN3(n373), .IN4(n323), .IN5(n429), 
        .Q(n422) );
  OA22X1 U554 ( .IN1(n320), .IN2(n386), .IN3(n369), .IN4(n331), .Q(n429) );
  AO222X1 U555 ( .IN1(sum_man[18]), .IN2(n307), .IN3(n308), .IN4(n430), .IN5(
        sum_man[17]), .IN6(n310), .Q(S[17]) );
  NAND4X0 U556 ( .IN1(n431), .IN2(n432), .IN3(n433), .IN4(n434), .QN(n430) );
  OA221X1 U557 ( .IN1(n330), .IN2(n317), .IN3(n320), .IN4(n399), .IN5(n435), 
        .Q(n434) );
  OA222X1 U558 ( .IN1(n315), .IN2(n304), .IN3(n328), .IN4(n306), .IN5(n324), 
        .IN6(n303), .Q(n435) );
  OA221X1 U559 ( .IN1(n393), .IN2(n319), .IN3(n395), .IN4(n292), .IN5(n436), 
        .Q(n433) );
  OA22X1 U560 ( .IN1(n371), .IN2(n302), .IN3(n368), .IN4(n305), .Q(n436) );
  OA221X1 U561 ( .IN1(n326), .IN2(n372), .IN3(n363), .IN4(n327), .IN5(n437), 
        .Q(n432) );
  OA222X1 U562 ( .IN1(n364), .IN2(n325), .IN3(n318), .IN4(n407), .IN5(n370), 
        .IN6(n321), .Q(n437) );
  OA221X1 U563 ( .IN1(n322), .IN2(n329), .IN3(n366), .IN4(n323), .IN5(n438), 
        .Q(n431) );
  OA22X1 U564 ( .IN1(n316), .IN2(n386), .IN3(n373), .IN4(n331), .Q(n438) );
  AO222X1 U565 ( .IN1(sum_man[17]), .IN2(n307), .IN3(n308), .IN4(n439), .IN5(
        sum_man[16]), .IN6(n310), .Q(S[16]) );
  NAND4X0 U566 ( .IN1(n440), .IN2(n441), .IN3(n442), .IN4(n443), .QN(n439) );
  OA221X1 U567 ( .IN1(n370), .IN2(n302), .IN3(n322), .IN4(n317), .IN5(n444), 
        .Q(n443) );
  OA222X1 U568 ( .IN1(n316), .IN2(n399), .IN3(n318), .IN4(n303), .IN5(n326), 
        .IN6(n304), .Q(n444) );
  OA221X1 U569 ( .IN1(n320), .IN2(n407), .IN3(n393), .IN4(n324), .IN5(n445), 
        .Q(n442) );
  OA22X1 U570 ( .IN1(n363), .IN2(n305), .IN3(n364), .IN4(n292), .Q(n445) );
  OA221X1 U571 ( .IN1(n371), .IN2(n325), .IN3(n330), .IN4(n321), .IN5(n446), 
        .Q(n441) );
  OA22X1 U572 ( .IN1(n395), .IN2(n327), .IN3(n319), .IN4(n372), .Q(n446) );
  OA221X1 U573 ( .IN1(n315), .IN2(n329), .IN3(n368), .IN4(n323), .IN5(n447), 
        .Q(n440) );
  OA22X1 U574 ( .IN1(n328), .IN2(n386), .IN3(n366), .IN4(n331), .Q(n447) );
  AO222X1 U575 ( .IN1(sum_man[16]), .IN2(n307), .IN3(n308), .IN4(n448), .IN5(
        sum_man[15]), .IN6(n310), .Q(S[15]) );
  NAND4X0 U576 ( .IN1(n449), .IN2(n450), .IN3(n451), .IN4(n452), .QN(n448) );
  OA221X1 U577 ( .IN1(n319), .IN2(n304), .IN3(n320), .IN4(n303), .IN5(n453), 
        .Q(n452) );
  OA22X1 U578 ( .IN1(n328), .IN2(n399), .IN3(n315), .IN4(n317), .Q(n453) );
  OA221X1 U579 ( .IN1(n393), .IN2(n318), .IN3(n371), .IN4(n292), .IN5(n454), 
        .Q(n451) );
  OA22X1 U580 ( .IN1(n330), .IN2(n302), .IN3(n395), .IN4(n305), .Q(n454) );
  OA221X1 U581 ( .IN1(n322), .IN2(n321), .IN3(n316), .IN4(n407), .IN5(n455), 
        .Q(n450) );
  OA22X1 U582 ( .IN1(n370), .IN2(n325), .IN3(n364), .IN4(n327), .Q(n455) );
  OA221X1 U583 ( .IN1(n368), .IN2(n331), .IN3(n326), .IN4(n329), .IN5(n456), 
        .Q(n449) );
  OA22X1 U584 ( .IN1(n324), .IN2(n372), .IN3(n363), .IN4(n323), .Q(n456) );
  AO222X1 U585 ( .IN1(sum_man[15]), .IN2(n307), .IN3(n308), .IN4(n457), .IN5(
        sum_man[14]), .IN6(n310), .Q(S[14]) );
  NAND4X0 U586 ( .IN1(n458), .IN2(n459), .IN3(n460), .IN4(n461), .QN(n457) );
  OA221X1 U587 ( .IN1(n324), .IN2(n304), .IN3(n316), .IN4(n303), .IN5(n462), 
        .Q(n461) );
  OA22X1 U588 ( .IN1(n326), .IN2(n317), .IN3(n322), .IN4(n302), .Q(n462) );
  OA221X1 U589 ( .IN1(n328), .IN2(n407), .IN3(n393), .IN4(n320), .IN5(n463), 
        .Q(n460) );
  OA22X1 U590 ( .IN1(n364), .IN2(n305), .IN3(n370), .IN4(n292), .Q(n463) );
  OA221X1 U591 ( .IN1(n330), .IN2(n325), .IN3(n315), .IN4(n321), .IN5(n464), 
        .Q(n459) );
  OA22X1 U592 ( .IN1(n371), .IN2(n327), .IN3(n318), .IN4(n372), .Q(n464) );
  OA222X1 U593 ( .IN1(n363), .IN2(n331), .IN3(n395), .IN4(n323), .IN5(n319), 
        .IN6(n329), .Q(n458) );
  AO222X1 U594 ( .IN1(sum_man[14]), .IN2(n307), .IN3(n308), .IN4(n465), .IN5(
        sum_man[13]), .IN6(n310), .Q(S[13]) );
  NAND4X0 U595 ( .IN1(n466), .IN2(n467), .IN3(n468), .IN4(n469), .QN(n465) );
  OA221X1 U596 ( .IN1(n318), .IN2(n304), .IN3(n328), .IN4(n303), .IN5(n470), 
        .Q(n469) );
  OA22X1 U597 ( .IN1(n319), .IN2(n317), .IN3(n315), .IN4(n302), .Q(n470) );
  OA222X1 U598 ( .IN1(n393), .IN2(n316), .IN3(n371), .IN4(n305), .IN5(n330), 
        .IN6(n292), .Q(n468) );
  OA221X1 U599 ( .IN1(n322), .IN2(n325), .IN3(n326), .IN4(n321), .IN5(n471), 
        .Q(n467) );
  OA22X1 U600 ( .IN1(n370), .IN2(n327), .IN3(n320), .IN4(n372), .Q(n471) );
  OA222X1 U601 ( .IN1(n395), .IN2(n331), .IN3(n364), .IN4(n323), .IN5(n324), 
        .IN6(n329), .Q(n466) );
  AO222X1 U602 ( .IN1(sum_man[13]), .IN2(n307), .IN3(n308), .IN4(n472), .IN5(
        sum_man[12]), .IN6(n310), .Q(S[12]) );
  NAND4X0 U603 ( .IN1(n473), .IN2(n474), .IN3(n475), .IN4(n476), .QN(n472) );
  OA221X1 U604 ( .IN1(n324), .IN2(n317), .IN3(n320), .IN4(n304), .IN5(n477), 
        .Q(n476) );
  OA22X1 U605 ( .IN1(n326), .IN2(n302), .IN3(n370), .IN4(n305), .Q(n477) );
  OA222X1 U606 ( .IN1(n319), .IN2(n321), .IN3(n322), .IN4(n292), .IN5(n393), 
        .IN6(n328), .Q(n475) );
  OA222X1 U607 ( .IN1(n316), .IN2(n372), .IN3(n315), .IN4(n325), .IN5(n330), 
        .IN6(n327), .Q(n474) );
  OA222X1 U608 ( .IN1(n364), .IN2(n331), .IN3(n371), .IN4(n323), .IN5(n318), 
        .IN6(n329), .Q(n473) );
  AO222X1 U609 ( .IN1(sum_man[12]), .IN2(n307), .IN3(n308), .IN4(n478), .IN5(
        sum_man[11]), .IN6(n310), .Q(S[11]) );
  NAND4X0 U610 ( .IN1(n479), .IN2(n480), .IN3(n481), .IN4(n482), .QN(n478) );
  OA222X1 U611 ( .IN1(n319), .IN2(n302), .IN3(n316), .IN4(n304), .IN5(n318), 
        .IN6(n317), .Q(n482) );
  OA222X1 U612 ( .IN1(n324), .IN2(n321), .IN3(n330), .IN4(n305), .IN5(n315), 
        .IN6(n292), .Q(n481) );
  OA222X1 U613 ( .IN1(n328), .IN2(n372), .IN3(n326), .IN4(n325), .IN5(n322), 
        .IN6(n327), .Q(n480) );
  OA222X1 U614 ( .IN1(n371), .IN2(n331), .IN3(n370), .IN4(n323), .IN5(n320), 
        .IN6(n329), .Q(n479) );
  AO222X1 U615 ( .IN1(sum_man[11]), .IN2(n307), .IN3(n308), .IN4(n483), .IN5(
        n310), .IN6(sum_man[10]), .Q(S[10]) );
  NAND4X0 U616 ( .IN1(n484), .IN2(n485), .IN3(n486), .IN4(n487), .QN(n483) );
  OA222X1 U617 ( .IN1(n324), .IN2(n302), .IN3(n328), .IN4(n304), .IN5(n320), 
        .IN6(n317), .Q(n487) );
  OA222X1 U618 ( .IN1(n318), .IN2(n321), .IN3(n322), .IN4(n305), .IN5(n326), 
        .IN6(n292), .Q(n486) );
  OA222X1 U619 ( .IN1(n330), .IN2(n323), .IN3(n319), .IN4(n325), .IN5(n315), 
        .IN6(n327), .Q(n485) );
  INVX0 U620 ( .IN1(sum_dif[9]), .QN(n330) );
  OA22X1 U621 ( .IN1(n316), .IN2(n329), .IN3(n370), .IN4(n331), .Q(n484) );
  AO222X1 U622 ( .IN1(sum_man[1]), .IN2(n307), .IN3(n488), .IN4(n308), .IN5(
        sum_man[0]), .IN6(n310), .Q(S[0]) );
  NOR2X0 U623 ( .IN1(n328), .IN2(n331), .QN(n488) );
  OAI22X1 U624 ( .IN1(n489), .IN2(n490), .IN3(n491), .IN4(n492), .QN(Overflow)
         );
  NAND4X0 U625 ( .IN1(S[23]), .IN2(S[24]), .IN3(S[25]), .IN4(S[26]), .QN(n492)
         );
  AO222X1 U626 ( .IN1(ds_exp_off[3]), .IN2(n493), .IN3(c_exp_inc[3]), .IN4(
        n307), .IN5(n310), .IN6(c_exp[3]), .Q(S[26]) );
  AO222X1 U627 ( .IN1(ds_exp_off[2]), .IN2(n493), .IN3(c_exp_inc[2]), .IN4(
        n307), .IN5(n310), .IN6(c_exp[2]), .Q(S[25]) );
  AO222X1 U628 ( .IN1(ds_exp_off[1]), .IN2(n493), .IN3(c_exp_inc[1]), .IN4(
        n307), .IN5(n310), .IN6(c_exp[1]), .Q(S[24]) );
  AO222X1 U629 ( .IN1(ds_exp_off[0]), .IN2(n493), .IN3(c_exp_inc[0]), .IN4(
        n307), .IN5(n310), .IN6(c_exp[0]), .Q(S[23]) );
  NAND4X0 U630 ( .IN1(S[27]), .IN2(S[28]), .IN3(S[29]), .IN4(S[30]), .QN(n491)
         );
  AO222X1 U631 ( .IN1(ds_exp_off[7]), .IN2(n493), .IN3(c_exp_inc[7]), .IN4(
        n307), .IN5(n310), .IN6(c_exp[7]), .Q(S[30]) );
  AO222X1 U632 ( .IN1(ds_exp_off[6]), .IN2(n493), .IN3(c_exp_inc[6]), .IN4(
        n307), .IN5(n310), .IN6(c_exp[6]), .Q(S[29]) );
  AO222X1 U633 ( .IN1(ds_exp_off[5]), .IN2(n493), .IN3(c_exp_inc[5]), .IN4(
        n307), .IN5(n310), .IN6(c_exp[5]), .Q(S[28]) );
  AO222X1 U634 ( .IN1(ds_exp_off[4]), .IN2(n493), .IN3(c_exp_inc[4]), .IN4(
        n307), .IN5(n310), .IN6(c_exp[4]), .Q(S[27]) );
  AND2X1 U635 ( .IN1(sum_man[24]), .IN2(n494), .Q(n307) );
  AOI21X1 U636 ( .IN1(ds_exp_offset[0]), .IN2(n288), .IN3(n494), .QN(n493) );
  INVX0 U637 ( .IN1(n308), .QN(n494) );
  XOR2X1 U638 ( .IN1(S[31]), .IN2(n495), .Q(n308) );
  MUX21X1 U639 ( .IN1(b[31]), .IN2(a[31]), .S(n286), .Q(n495) );
  MUX21X1 U640 ( .IN1(a[31]), .IN2(b[31]), .S(n286), .Q(S[31]) );
  INVX0 U641 ( .IN1(ds_exp_offset[7]), .QN(n288) );
  NAND2X0 U642 ( .IN1(n289), .IN2(n291), .QN(ds_exp_offset[7]) );
  AND4X1 U643 ( .IN1(n306), .IN2(n301), .IN3(n294), .IN4(n496), .Q(n291) );
  AND4X1 U644 ( .IN1(n386), .IN2(n392), .IN3(n398), .IN4(n497), .Q(n496) );
  NAND3X0 U645 ( .IN1(n498), .IN2(n324), .IN3(sum_dif[3]), .QN(n294) );
  NAND2X0 U646 ( .IN1(sum_dif[1]), .IN2(n499), .QN(n301) );
  NAND3X0 U647 ( .IN1(n500), .IN2(n326), .IN3(sum_dif[5]), .QN(n306) );
  AND4X1 U648 ( .IN1(n399), .IN2(n407), .IN3(n501), .IN4(n502), .Q(n289) );
  AND4X1 U649 ( .IN1(n304), .IN2(n303), .IN3(n290), .IN4(n393), .Q(n502) );
  OA21X1 U650 ( .IN1(n370), .IN2(n503), .IN3(n293), .Q(n393) );
  NAND4X0 U651 ( .IN1(sum_dif[11]), .IN2(n504), .IN3(n364), .IN4(n395), .QN(
        n293) );
  AND4X1 U652 ( .IN1(n317), .IN2(n302), .IN3(n505), .IN4(n506), .Q(n290) );
  NOR4X0 U653 ( .IN1(n350), .IN2(n354), .IN3(n391), .IN4(n389), .QN(n506) );
  INVX0 U654 ( .IN1(n325), .QN(n391) );
  INVX0 U655 ( .IN1(n327), .QN(n354) );
  INVX0 U656 ( .IN1(n323), .QN(n350) );
  NOR2X0 U657 ( .IN1(n352), .IN2(n353), .QN(n505) );
  INVX0 U658 ( .IN1(n305), .QN(n353) );
  NAND2X0 U659 ( .IN1(sum_dif[21]), .IN2(n507), .QN(n305) );
  INVX0 U660 ( .IN1(n292), .QN(n352) );
  NAND4X0 U661 ( .IN1(sum_dif[19]), .IN2(n507), .IN3(n367), .IN4(n508), .QN(
        n292) );
  NAND2X0 U662 ( .IN1(sum_dif[17]), .IN2(n509), .QN(n302) );
  NAND4X0 U663 ( .IN1(sum_dif[15]), .IN2(n509), .IN3(n366), .IN4(n373), .QN(
        n317) );
  NAND3X0 U664 ( .IN1(n510), .IN2(n370), .IN3(sum_dif[9]), .QN(n303) );
  INVX0 U665 ( .IN1(sum_dif[10]), .QN(n370) );
  NAND2X0 U666 ( .IN1(sum_dif[13]), .IN2(n504), .QN(n304) );
  NOR2X0 U667 ( .IN1(n375), .IN2(n385), .QN(n501) );
  INVX0 U668 ( .IN1(n372), .QN(n385) );
  INVX0 U669 ( .IN1(n329), .QN(n375) );
  NAND3X0 U670 ( .IN1(n511), .IN2(n322), .IN3(sum_dif[7]), .QN(n399) );
  NAND4X0 U671 ( .IN1(n299), .IN2(n298), .IN3(n512), .IN4(n497), .QN(
        ds_exp_offset[0]) );
  NAND3X0 U672 ( .IN1(n499), .IN2(n316), .IN3(sum_dif[0]), .QN(n497) );
  NOR2X0 U673 ( .IN1(n390), .IN2(n389), .QN(n512) );
  INVX0 U674 ( .IN1(n321), .QN(n389) );
  NAND3X0 U675 ( .IN1(n509), .IN2(n373), .IN3(sum_dif[16]), .QN(n321) );
  INVX0 U676 ( .IN1(n407), .QN(n390) );
  NAND2X0 U677 ( .IN1(sum_dif[8]), .IN2(n511), .QN(n407) );
  AND3X1 U678 ( .IN1(n327), .IN2(n372), .IN3(n392), .Q(n298) );
  NAND2X0 U679 ( .IN1(sum_dif[4]), .IN2(n498), .QN(n392) );
  NAND3X0 U680 ( .IN1(n504), .IN2(n395), .IN3(sum_dif[12]), .QN(n372) );
  NAND3X0 U681 ( .IN1(n507), .IN2(n508), .IN3(sum_dif[20]), .QN(n327) );
  AND4X1 U682 ( .IN1(n296), .IN2(n513), .IN3(n398), .IN4(n325), .Q(n299) );
  NAND2X0 U683 ( .IN1(sum_dif[18]), .IN2(n514), .QN(n325) );
  OR2X1 U684 ( .IN1(n320), .IN2(n397), .Q(n398) );
  INVX0 U685 ( .IN1(sum_dif[2]), .QN(n320) );
  NAND2X0 U686 ( .IN1(sum_dif[10]), .IN2(n510), .QN(n513) );
  INVX0 U687 ( .IN1(n503), .QN(n510) );
  AND4X1 U688 ( .IN1(n287), .IN2(n386), .IN3(n323), .IN4(n329), .Q(n296) );
  NAND2X0 U689 ( .IN1(sum_dif[14]), .IN2(n515), .QN(n329) );
  NAND2X0 U690 ( .IN1(sum_dif[22]), .IN2(n331), .QN(n323) );
  INVX0 U691 ( .IN1(sum_dif[23]), .QN(n331) );
  NAND2X0 U692 ( .IN1(sum_dif[6]), .IN2(n500), .QN(n386) );
  NAND3X0 U693 ( .IN1(n328), .IN2(n316), .IN3(n499), .QN(n287) );
  NOR2X0 U694 ( .IN1(n397), .IN2(sum_dif[2]), .QN(n499) );
  NAND3X0 U695 ( .IN1(n318), .IN2(n324), .IN3(n498), .QN(n397) );
  AND3X1 U696 ( .IN1(n319), .IN2(n326), .IN3(n500), .Q(n498) );
  AND3X1 U697 ( .IN1(n315), .IN2(n322), .IN3(n511), .Q(n500) );
  NOR3X0 U698 ( .IN1(sum_dif[10]), .IN2(sum_dif[9]), .IN3(n503), .QN(n511) );
  NAND4X0 U699 ( .IN1(n504), .IN2(n371), .IN3(n364), .IN4(n395), .QN(n503) );
  INVX0 U700 ( .IN1(sum_dif[13]), .QN(n395) );
  INVX0 U701 ( .IN1(sum_dif[12]), .QN(n364) );
  INVX0 U702 ( .IN1(sum_dif[11]), .QN(n371) );
  AND2X1 U703 ( .IN1(n515), .IN2(n363), .Q(n504) );
  INVX0 U704 ( .IN1(sum_dif[14]), .QN(n363) );
  AND4X1 U705 ( .IN1(n509), .IN2(n368), .IN3(n366), .IN4(n373), .Q(n515) );
  INVX0 U706 ( .IN1(sum_dif[17]), .QN(n373) );
  INVX0 U707 ( .IN1(sum_dif[16]), .QN(n366) );
  INVX0 U708 ( .IN1(sum_dif[15]), .QN(n368) );
  AND2X1 U709 ( .IN1(n514), .IN2(n369), .Q(n509) );
  INVX0 U710 ( .IN1(sum_dif[18]), .QN(n369) );
  AND4X1 U711 ( .IN1(n507), .IN2(n374), .IN3(n367), .IN4(n508), .Q(n514) );
  INVX0 U712 ( .IN1(sum_dif[21]), .QN(n508) );
  INVX0 U713 ( .IN1(sum_dif[20]), .QN(n367) );
  INVX0 U714 ( .IN1(sum_dif[19]), .QN(n374) );
  NOR2X0 U715 ( .IN1(sum_dif[23]), .IN2(sum_dif[22]), .QN(n507) );
  INVX0 U716 ( .IN1(sum_dif[8]), .QN(n322) );
  INVX0 U717 ( .IN1(sum_dif[7]), .QN(n315) );
  INVX0 U718 ( .IN1(sum_dif[6]), .QN(n326) );
  INVX0 U719 ( .IN1(sum_dif[5]), .QN(n319) );
  INVX0 U720 ( .IN1(sum_dif[4]), .QN(n324) );
  INVX0 U721 ( .IN1(sum_dif[3]), .QN(n318) );
  INVX0 U722 ( .IN1(sum_dif[1]), .QN(n316) );
  INVX0 U723 ( .IN1(sum_dif[0]), .QN(n328) );
  NAND4X0 U724 ( .IN1(c_exp[0]), .IN2(c_exp[1]), .IN3(c_exp[2]), .IN4(c_exp[3]), .QN(n490) );
  MUX21X1 U725 ( .IN1(a[26]), .IN2(b[26]), .S(n286), .Q(c_exp[3]) );
  MUX21X1 U726 ( .IN1(a[25]), .IN2(b[25]), .S(n286), .Q(c_exp[2]) );
  MUX21X1 U727 ( .IN1(a[24]), .IN2(b[24]), .S(n286), .Q(c_exp[1]) );
  MUX21X1 U728 ( .IN1(a[23]), .IN2(b[23]), .S(n286), .Q(c_exp[0]) );
  NAND4X0 U729 ( .IN1(c_exp[4]), .IN2(c_exp[5]), .IN3(c_exp[6]), .IN4(c_exp[7]), .QN(n489) );
  NAND2X0 U730 ( .IN1(n611), .IN2(n619), .QN(c_exp[7]) );
  INVX0 U731 ( .IN1(a[30]), .QN(n611) );
  MUX21X1 U732 ( .IN1(a[29]), .IN2(b[29]), .S(n286), .Q(c_exp[6]) );
  MUX21X1 U733 ( .IN1(a[28]), .IN2(b[28]), .S(n286), .Q(c_exp[5]) );
  MUX21X1 U734 ( .IN1(a[27]), .IN2(b[27]), .S(n286), .Q(c_exp[4]) );
  OR2X1 U735 ( .IN1(n519), .IN2(a[30]), .Q(n518) );
  AO22X1 U736 ( .IN1(a[29]), .IN2(n620), .IN3(n520), .IN4(n521), .Q(n519) );
  NOR2X0 U737 ( .IN1(n522), .IN2(n523), .QN(n520) );
  OA221X1 U738 ( .IN1(b[28]), .IN2(n613), .IN3(b[27]), .IN4(n614), .IN5(n524), 
        .Q(n523) );
  NAND3X0 U739 ( .IN1(n525), .IN2(n526), .IN3(n527), .QN(n524) );
  AO222X1 U740 ( .IN1(a[25]), .IN2(n624), .IN3(n528), .IN4(n529), .IN5(a[26]), 
        .IN6(n623), .Q(n526) );
  INVX0 U741 ( .IN1(b[26]), .QN(n623) );
  AO22X1 U742 ( .IN1(a[24]), .IN2(n625), .IN3(n530), .IN4(n531), .Q(n528) );
  NOR2X0 U743 ( .IN1(b[23]), .IN2(n618), .QN(n530) );
  INVX0 U744 ( .IN1(b[25]), .QN(n624) );
  NOR4X0 U745 ( .IN1(n532), .IN2(n533), .IN3(n522), .IN4(n534), .QN(n517) );
  INVX0 U746 ( .IN1(n529), .QN(n534) );
  NAND2X0 U747 ( .IN1(b[25]), .IN2(n616), .QN(n529) );
  INVX0 U748 ( .IN1(a[25]), .QN(n616) );
  NOR2X0 U749 ( .IN1(n620), .IN2(a[29]), .QN(n522) );
  INVX0 U750 ( .IN1(b[29]), .QN(n620) );
  INVX0 U751 ( .IN1(n531), .QN(n533) );
  NAND2X0 U752 ( .IN1(b[24]), .IN2(n617), .QN(n531) );
  NAND2X0 U753 ( .IN1(n527), .IN2(n525), .QN(n532) );
  NAND2X0 U754 ( .IN1(b[27]), .IN2(n614), .QN(n525) );
  INVX0 U755 ( .IN1(a[27]), .QN(n614) );
  NAND2X0 U756 ( .IN1(b[26]), .IN2(n615), .QN(n527) );
  INVX0 U757 ( .IN1(a[26]), .QN(n615) );
  OA221X1 U758 ( .IN1(a[30]), .IN2(n619), .IN3(n535), .IN4(n536), .IN5(n537), 
        .Q(n516) );
  OA21X1 U759 ( .IN1(a[23]), .IN2(n626), .IN3(n521), .Q(n537) );
  NAND2X0 U760 ( .IN1(b[28]), .IN2(n613), .QN(n521) );
  INVX0 U761 ( .IN1(a[28]), .QN(n613) );
  AND2X1 U762 ( .IN1(n538), .IN2(a[22]), .Q(n536) );
  OA221X1 U763 ( .IN1(a[21]), .IN2(n539), .IN3(a[22]), .IN4(n538), .IN5(n540), 
        .Q(n535) );
  AO221X1 U764 ( .IN1(a[20]), .IN2(n541), .IN3(a[21]), .IN4(n539), .IN5(n542), 
        .Q(n540) );
  OA221X1 U765 ( .IN1(a[19]), .IN2(n543), .IN3(a[20]), .IN4(n541), .IN5(n544), 
        .Q(n542) );
  AO221X1 U766 ( .IN1(a[18]), .IN2(n545), .IN3(a[19]), .IN4(n543), .IN5(n546), 
        .Q(n544) );
  OA221X1 U767 ( .IN1(a[17]), .IN2(n547), .IN3(a[18]), .IN4(n545), .IN5(n548), 
        .Q(n546) );
  AO221X1 U768 ( .IN1(a[16]), .IN2(n549), .IN3(a[17]), .IN4(n547), .IN5(n550), 
        .Q(n548) );
  OA221X1 U769 ( .IN1(a[15]), .IN2(n551), .IN3(a[16]), .IN4(n549), .IN5(n552), 
        .Q(n550) );
  AO221X1 U770 ( .IN1(a[14]), .IN2(n553), .IN3(a[15]), .IN4(n551), .IN5(n554), 
        .Q(n552) );
  OA221X1 U771 ( .IN1(a[13]), .IN2(n555), .IN3(a[14]), .IN4(n553), .IN5(n556), 
        .Q(n554) );
  AO221X1 U772 ( .IN1(a[12]), .IN2(n557), .IN3(a[13]), .IN4(n555), .IN5(n558), 
        .Q(n556) );
  OA221X1 U773 ( .IN1(a[11]), .IN2(n559), .IN3(a[12]), .IN4(n557), .IN5(n560), 
        .Q(n558) );
  AO221X1 U774 ( .IN1(a[10]), .IN2(n561), .IN3(a[11]), .IN4(n559), .IN5(n562), 
        .Q(n560) );
  OA221X1 U775 ( .IN1(a[9]), .IN2(n563), .IN3(a[10]), .IN4(n561), .IN5(n564), 
        .Q(n562) );
  AO221X1 U776 ( .IN1(a[8]), .IN2(n565), .IN3(a[9]), .IN4(n563), .IN5(n566), 
        .Q(n564) );
  OA221X1 U777 ( .IN1(a[7]), .IN2(n567), .IN3(a[8]), .IN4(n565), .IN5(n568), 
        .Q(n566) );
  AO221X1 U778 ( .IN1(a[6]), .IN2(n569), .IN3(a[7]), .IN4(n567), .IN5(n570), 
        .Q(n568) );
  OA221X1 U779 ( .IN1(a[5]), .IN2(n571), .IN3(a[6]), .IN4(n569), .IN5(n572), 
        .Q(n570) );
  AO221X1 U780 ( .IN1(a[4]), .IN2(n573), .IN3(a[5]), .IN4(n571), .IN5(n574), 
        .Q(n572) );
  OA221X1 U781 ( .IN1(a[3]), .IN2(n575), .IN3(a[4]), .IN4(n573), .IN5(n576), 
        .Q(n574) );
  AO222X1 U782 ( .IN1(a[2]), .IN2(n577), .IN3(n578), .IN4(n579), .IN5(a[3]), 
        .IN6(n575), .Q(n576) );
  INVX0 U783 ( .IN1(b[2]), .QN(n579) );
  OR2X1 U784 ( .IN1(n577), .IN2(a[2]), .Q(n578) );
  AO22X1 U785 ( .IN1(a[1]), .IN2(n580), .IN3(n581), .IN4(a[0]), .Q(n577) );
  OA21X1 U786 ( .IN1(a[1]), .IN2(n580), .IN3(n582), .Q(n581) );
  INVX0 U787 ( .IN1(b[0]), .QN(n582) );
  INVX0 U788 ( .IN1(b[1]), .QN(n580) );
  INVX0 U789 ( .IN1(b[3]), .QN(n575) );
  INVX0 U790 ( .IN1(b[4]), .QN(n573) );
  INVX0 U791 ( .IN1(b[5]), .QN(n571) );
  INVX0 U792 ( .IN1(b[6]), .QN(n569) );
  INVX0 U793 ( .IN1(b[7]), .QN(n567) );
  INVX0 U794 ( .IN1(b[8]), .QN(n565) );
  INVX0 U795 ( .IN1(b[9]), .QN(n563) );
  INVX0 U796 ( .IN1(b[10]), .QN(n561) );
  INVX0 U797 ( .IN1(b[11]), .QN(n559) );
  INVX0 U798 ( .IN1(b[12]), .QN(n557) );
  INVX0 U799 ( .IN1(b[13]), .QN(n555) );
  INVX0 U800 ( .IN1(b[14]), .QN(n553) );
  INVX0 U801 ( .IN1(b[15]), .QN(n551) );
  INVX0 U802 ( .IN1(b[16]), .QN(n549) );
  INVX0 U803 ( .IN1(b[17]), .QN(n547) );
  INVX0 U804 ( .IN1(b[18]), .QN(n545) );
  INVX0 U805 ( .IN1(b[19]), .QN(n543) );
  INVX0 U806 ( .IN1(b[20]), .QN(n541) );
  INVX0 U807 ( .IN1(b[22]), .QN(n538) );
  INVX0 U808 ( .IN1(b[21]), .QN(n539) );
  INVX0 U809 ( .IN1(b[30]), .QN(n619) );
  NAND4X0 U810 ( .IN1(n618), .IN2(n617), .IN3(n583), .IN4(n584), .QN(N265) );
  NOR4X0 U811 ( .IN1(a[30]), .IN2(a[29]), .IN3(a[28]), .IN4(a[27]), .QN(n584)
         );
  NOR2X0 U812 ( .IN1(a[26]), .IN2(a[25]), .QN(n583) );
  INVX0 U813 ( .IN1(a[24]), .QN(n617) );
  INVX0 U814 ( .IN1(a[23]), .QN(n618) );
  NAND4X0 U815 ( .IN1(n626), .IN2(n625), .IN3(n585), .IN4(n586), .QN(N258) );
  NOR4X0 U816 ( .IN1(b[30]), .IN2(b[29]), .IN3(b[28]), .IN4(b[27]), .QN(n586)
         );
  NOR2X0 U817 ( .IN1(b[26]), .IN2(b[25]), .QN(n585) );
  INVX0 U818 ( .IN1(b[24]), .QN(n625) );
  INVX0 U819 ( .IN1(b[23]), .QN(n626) );
endmodule