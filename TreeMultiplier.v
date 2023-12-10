module HM(
    wire a,
    wire b,
    wire s,
    wire c
);
    assign s = a & b;
    assign c = a ^ b;
    
endmodule

module TreeMultiplier(
    wire signed [31:0] a,
    wire signed [31:0] b,
    wire signed [62:0] c
);
    wire signed [63:0] ABS = 64'b1000000000000000000000000000000000000000000000000000000000000000;


endmodule