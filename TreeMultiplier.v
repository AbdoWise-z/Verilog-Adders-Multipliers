module TreeMultiplier(
    wire signed [31:0] a,
    wire signed [31:0] b,
    wire signed [62:0] c
);
    wire [30:0] ONES  = 31'b1111111111111111111111111111111;
    wire [30:0] ZEROS = 31'b0000000000000000000000000000000;
    wire signed [63:0] ABS = 64'b1000000000000000000000000000000000000000000000000000000000000000;

    wire [62:0] wA = a[31] ? {ONES,a} : {ZEROS,a};
    wire [62:0] BB = b[31] ? {ONES,b} : {ZEROS,b};
    wire [62:0] wB = BB[62] ? ABS - BB : BB;
    
    wire [62:0] S [32:0];
    assign S[0] = 63'b0;
    assign c  = BB[62] ? ABS - S[32] : S[32];
    
    genvar i;
    generate
        for (i = 0;i < 32;i = i + 1) begin
            assign S[i + 1] = wB[i] == 1'b0 ? S[i] : (S[i] + (wA << i)); 
        end
    endgenerate

endmodule