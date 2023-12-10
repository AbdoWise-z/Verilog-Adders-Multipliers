module VerilogMultiplier(
    wire signed [31:0] a,
    wire signed [31:0] b,
    wire signed [62:0] c
);
    assign c = a * b;
endmodule