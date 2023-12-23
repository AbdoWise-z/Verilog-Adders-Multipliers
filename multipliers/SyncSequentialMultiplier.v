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

module SyncSequentialMultiplier(
    input wire signed [31:0] a,
    input wire signed [31:0] b,
    output wire signed [63:0] c,
    input wire clk,
    input wire rst
);
    reg slow_clk = 1'b1;
    reg [31:0] in_a = 32'b0;
    reg [31:0] in_b = 32'b0;
    reg [63:0] out_c;

    assign c = out_c;

    wire [63:0] temp_c;
    SequentialMultiplier mul(
        .a(in_a),
        .b(in_b),
        .c(temp_c)
    );

    reg [31:0] counter = 32'b1;

    always @(posedge slow_clk, posedge rst) begin
        if (rst) begin
            in_a <= 32'b0;
            in_b <= 32'b0;
            out_c <= 64'b0;
        end else begin
            in_a <= a;
            in_b <= b;
            out_c <= temp_c;
        end
    end

    always @(posedge clk , posedge rst) begin
        if (rst) begin
            //reset signal
            counter <= 32'b1;
            slow_clk <= 1'b0;
        end else begin
            if (counter[5] == 1'b1) begin // this will delay until the bit you select +1 x2 (for example this will delay 6 cycles)
                counter <= 32'b1;
                slow_clk <= ~slow_clk;    // flip clk
            end else begin
                counter[31:1] <= counter[30:0];
                counter[0] <= 1'b1;
            end
        end
    end
    
endmodule