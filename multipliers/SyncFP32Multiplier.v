module FP32Multiplier(
    input   wire [31:0] a,b,
    output  wire Overflow,
    output  wire [31:0] c
);

    wire [31:0] ZEROS = 32'b00000000000000000000000000000000;
    wire [8:0] posOverflow = 9'b101111101;   //381
    wire [8:0] negOverflow = 9'b010000000;   //128


    wire [7:0] a_exp;
    wire [7:0] b_exp;
    wire [8:0] addition_exp;
    wire [8:0] bias  = 9'b110000001;  // 2's complement of 127
    wire [9:0] biased_addition_exp;
    wire [7:0] result_exp;
    wire [7:0] final_exp;
    wire [23:0] a_mantissa;  // 23-bit for mantessa and implicit 1-bit leading one
    wire [23:0] b_mantissa;
    wire [47:0] result_mantissa; 
    wire [22:0] final_mantissa;
    wire sign;
    wire of;

    assign sign = a[31] ^ b[31];
    assign a_exp  = a[30:23];
    assign b_exp  = b[30:23];
    assign a_mantissa = { 1'b1, a[22:0] };
    assign b_mantissa = { 1'b1, b[22:0] };

    assign addition_exp = a_exp + b_exp;
    assign biased_addition_exp = addition_exp + bias;
    assign result_exp = biased_addition_exp[7:0]; // discard the carry from previous addition & discard the second MSB as it should be 0
                                                  // (otherwise overflow happens)
    assign result_mantissa = a_mantissa * b_mantissa;
    assign final_exp = result_mantissa[47:46] == 2'b11 || result_mantissa[47:46] == 2'b10 ? result_exp + 1'b1 : result_exp;
    assign final_mantissa = result_mantissa[47:46] == 2'b11 || result_mantissa[47:46] == 2'b10 ? result_mantissa[46:24] : result_mantissa[45:23];

    assign of = addition_exp > posOverflow || addition_exp < negOverflow ? 1'b1 : 1'b0; 
    assign Overflow = of;

    //addition of exponent must be between [1 + 127, 254 + 127]  as the bias is -127
    assign c = a[30:0] == ZEROS[30:0] || b[30:0] == ZEROS[30:0] || of ? ZEROS : { sign, final_exp, final_mantissa };

endmodule

module SyncFP32Multiplier(
    input wire [31:0] a,
    input wire [31:0] b,
    output wire [31:0] c,
    output wire Overflow,
    input wire clk,
    input wire rst
);
    reg slow_clk = 1'b1;
    reg [31:0] in_a = 32'b0;
    reg [31:0] in_b = 32'b0;
    reg [31:0] out_c;
    reg out_Overflow;

    assign c = out_c;
    assign Overflow = out_Overflow;

    wire [31:0] temp_c;
    wire temp_Overflow;

    FP32Multiplier mul(
        .a(in_a),
        .b(in_b),
        .c(temp_c),
        .Overflow(temp_Overflow)
    );

    reg [31:0] counter = 32'b1;

    always @(posedge slow_clk, posedge rst) begin
        if (rst) begin
            in_a <= 32'b0;
            in_b <= 32'b0;
            out_c <= 64'b0;
            out_Overflow <= 1'b0;
        end else begin
            in_a <= a;
            in_b <= b;
            out_c <= temp_c;
            out_Overflow <= temp_Overflow;
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