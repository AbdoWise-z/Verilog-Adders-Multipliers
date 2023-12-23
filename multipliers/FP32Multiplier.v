module FP32Multiplier(
    input   wire signed [31:0] a,b,
    output  wire Overflow,
    output  wire  signed  [31:0] c
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