module VerilogMultiplier(
    input  wire signed [31:0] a,
    input  wire signed [31:0] b,
    output wire signed [63:0] c
);
    assign c = a * b;
endmodule