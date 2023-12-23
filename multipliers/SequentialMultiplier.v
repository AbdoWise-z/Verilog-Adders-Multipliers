module SequentialMultiplier(
    input wire signed [31:0] a,
    input wire signed [31:0] b,
    output wire signed [63:0] c
);
    wire [31:0] ONES       = 32'b11111111111111111111111111111111;
    wire [31:0] ZEROS      = 32'b00000000000000000000000000000000;
    
    wire [63:0] wA = a[31] ? {ONES,a} : {ZEROS,a}; //sign extend
    wire [63:0] BB = b[31] ? {ONES,b} : {ZEROS,b}; //sign extend
    wire [63:0] wB = BB[63] ? -BB : BB;
    
    wire [63:0] S [32:0];
    assign S[0] = 64'b0;
    assign c    = BB[63] ? -S[32] : S[32];
    
    genvar i;
    generate
        for (i = 0;i < 32;i = i + 1) begin
            assign S[i + 1] = wB[i] == 1'b0 ? S[i] : (S[i] + (wA << i)); 
        end
    endgenerate

endmodule