module CarryLookAheadAdder_23b(
	input wire [24:0]a,
	input wire [24:0]b,
	output wire [24:0]S,
    input wire Cin
);
    wire [25:0] G;
    wire [24:0] P;
    assign P[24:0] = a ^ b;
    assign G[25:1] = a & b;
    assign G[0] = Cin;
    
    wire [25:0] Carry;
    assign Carry[0] = Cin;

    genvar i , j , k;
    generate
        for (i = 1;i < 26;i = i + 1) begin : gen_block1
            wire [i:0] Ps;
            assign Ps[0] = 1'b1;
            for (k = 0;k < i;k = k + 1) begin : gen_block2
                assign Ps[k + 1] = Ps[k] & P[i - k - 1];
            end

            wire [i:0] terms;
            assign terms[0] = G[i];
            for (k = 0;k < i;k = k + 1) begin : gen_block3
                assign terms[k + 1] = terms[k] | (Ps[k + 1] & G[i - k - 1]);
            end
            assign Carry[i] = terms[i];
            assign S[i - 1] = Carry[i - 1] ^ P[i - 1]; 
        end
    endgenerate
endmodule

module CarryLookAheadAdder_8b(
	input wire [7:0]a,
	input wire [7:0]b,
	output wire [7:0]S,
    input wire Cin
);
    wire [8:0] G;
    wire [7:0] P;
    assign P[7:0] = a ^ b;
    assign G[8:1] = a & b;
    assign G[0] = Cin;
    
    wire [8:0] Carry;
    assign Carry[0] = Cin;

    genvar i , j , k;
    generate
        for (i = 1;i < 9;i = i + 1) begin : gen_block1
            wire [i:0] Ps;
            assign Ps[0] = 1'b1;
            for (k = 0;k < i;k = k + 1) begin : gen_block2
                assign Ps[k + 1] = Ps[k] & P[i - k - 1];
            end

            wire [i:0] terms;
            assign terms[0] = G[i];
            for (k = 0;k < i;k = k + 1) begin : gen_block3
                assign terms[k + 1] = terms[k] | (Ps[k + 1] & G[i - k - 1]);
            end
            assign Carry[i] = terms[i];
            assign S[i - 1] = Carry[i - 1] ^ P[i - 1]; 
        end
    endgenerate
endmodule


module FP32Adder2_CLA(
    input wire [31:0] a,
	input wire [31:0] b,
    output wire [31:0]S,
    output wire Overflow
);

    wire a_sign;
    wire b_sign;
    wire [7:0] a_exp;
    wire [7:0] b_exp;
    wire [22:0] a_mantissa;
    wire [22:0] b_mantissa;

    wire [22:0] zeros;
    assign zeros = 23'b00000000000000000000000;

    assign a_sign = a[31];
    assign b_sign = b[31];
    assign a_exp  = a[30:23];
    assign b_exp  = b[30:23];
    assign a_mantissa = a[22:0];
    assign b_mantissa = b[22:0];

    wire [23:0] l_mantissa;
    wire [23:0] s_mantissa;
    wire [7:0] c_exp;
    wire l_sign;
    wire s_sign;

    wire cmp;
    assign cmp = (a_exp > b_exp || (a_exp == b_exp && a_mantissa > b_mantissa));

    wire [7:0] a_minus_b;
    wire [7:0] b_minus_a;
    CarryLookAheadAdder_8b sub_a_b(
        .a(a_exp),
        .b((8'b11111111 ^ b_exp)),
        .S(a_minus_b),
        .Cin(1'b1)
    );

    CarryLookAheadAdder_8b sub_b_a(
        .a(b_exp),
        .b((8'b11111111 ^ a_exp)),
        .S(b_minus_a),
        .Cin(1'b1)
    );

    assign l_mantissa = cmp ? { a_exp != 8'b00000000 , a_mantissa} :
                              { b_exp != 8'b00000000 , b_mantissa};

    assign s_mantissa = cmp ? { b_exp != 8'b00000000 , b_mantissa} >> (a_minus_b) : 
                              { a_exp != 8'b00000000 , a_mantissa} >> (b_minus_a);
    assign c_exp  = cmp ? a_exp : b_exp;
    assign l_sign = cmp ? a_sign : b_sign;
    assign s_sign = cmp ? b_sign : a_sign;

    wire equs;
    assign equs = l_sign ^ s_sign;

    wire [24:0] sum_man; 
    CarryLookAheadAdder_23b add1(
        .a({1'b0 , l_mantissa}),
        .b({1'b0 , s_mantissa}),
        .S(sum_man),
        .Cin(1'b0)
    );
    //assign sum_man = l_mantissa + s_mantissa;

    wire [22:0] ss_m;
    wire [7:0] ss_exp;
    wire [7:0] c_exp_inc;
    CarryLookAheadAdder_8b inc1(
        .a(8'b00000000),
        .b(c_exp),
        .S(c_exp_inc),
        .Cin(1'b1)
    );

    assign ss_m   = sum_man[24] ? sum_man[23:1] : sum_man[22:0];
    assign ss_exp = sum_man[24] ? c_exp_inc : c_exp;

    wire [24:0] sum_dif;
    CarryLookAheadAdder_23b sub1(
        .a({1'b0 , l_mantissa}),
        .b({1'b1 , (24'b111111111111111111111111 ^ s_mantissa)}),
        .S(sum_dif),
        .Cin(1'b1)
    );
    //assign sum_dif = l_mantissa - s_mantissa;

    wire [22:0] ds_m;
    wire [7:0] ds_exp_offset;

    assign ds_m = sum_dif[23] ?  sum_dif[22:0] :
                  sum_dif[22] ? {sum_dif[21:0],zeros[0   ]} :
                  sum_dif[21] ? {sum_dif[20:0],zeros[1:0 ]} :
                  sum_dif[20] ? {sum_dif[19:0],zeros[2:0 ]} :
                  sum_dif[19] ? {sum_dif[18:0],zeros[3:0 ]} :
                  sum_dif[18] ? {sum_dif[17:0],zeros[4:0 ]} :
                  sum_dif[17] ? {sum_dif[16:0],zeros[5:0 ]} :
                  sum_dif[16] ? {sum_dif[15:0],zeros[6:0 ]} :
                  sum_dif[15] ? {sum_dif[14:0],zeros[7:0 ]} :
                  sum_dif[14] ? {sum_dif[13:0],zeros[8:0 ]} :
                  sum_dif[13] ? {sum_dif[12:0],zeros[9:0 ]} :
                  sum_dif[12] ? {sum_dif[11:0],zeros[10:0]} :
                  sum_dif[11] ? {sum_dif[10:0],zeros[11:0]} :
                  sum_dif[10] ? {sum_dif[9:0 ],zeros[11:0]} :
                  sum_dif[9]  ? {sum_dif[8:0 ],zeros[12:0]} :
                  sum_dif[8]  ? {sum_dif[7:0 ],zeros[13:0]} :
                  sum_dif[7]  ? {sum_dif[6:0 ],zeros[14:0]} :
                  sum_dif[6]  ? {sum_dif[5:0 ],zeros[15:0]} :
                  sum_dif[5]  ? {sum_dif[4:0 ],zeros[16:0]} :
                  sum_dif[4]  ? {sum_dif[3:0 ],zeros[17:0]} :
                  sum_dif[3]  ? {sum_dif[2:0 ],zeros[18:0]} :
                  sum_dif[2]  ? {sum_dif[1:0 ],zeros[19:0]} :
                  sum_dif[1]  ? {sum_dif[0   ],zeros[20:0]} :
                  sum_dif[0]  ? zeros[22:0] : zeros[22:0];

    assign ds_exp_offset = 
                  sum_dif[23] ? 8'b00000000 : // -0
                  sum_dif[22] ? 8'b11111111 : // -1
                  sum_dif[21] ? 8'b11111110 : // -2
                  sum_dif[20] ? 8'b11111101 : // -3
                  sum_dif[19] ? 8'b11111100 : // -4
                  sum_dif[18] ? 8'b11111011 : // -5
                  sum_dif[17] ? 8'b11111010 : // -6
                  sum_dif[16] ? 8'b11111001 : // -7
                  sum_dif[15] ? 8'b11111000 : // -8
                  sum_dif[14] ? 8'b11110111 : // -9
                  sum_dif[13] ? 8'b11110110 : // -10 
                  sum_dif[12] ? 8'b11110101 : // -11
                  sum_dif[11] ? 8'b11110100 : // -12
                  sum_dif[10] ? 8'b11110011 : // -13
                  sum_dif[9]  ? 8'b11110010 : // -14
                  sum_dif[8]  ? 8'b11110001 : // -15
                  sum_dif[7]  ? 8'b11110000 : // -16
                  sum_dif[6]  ? 8'b11101111 : // -17
                  sum_dif[5]  ? 8'b11101110 : // -18
                  sum_dif[4]  ? 8'b11101101 : // -19
                  sum_dif[3]  ? 8'b11101100 : // -20
                  sum_dif[2]  ? 8'b11101011 : // -21
                  sum_dif[1]  ? 8'b11101010 : // -22
                  sum_dif[0]  ? 8'b11101001 : // -23
                        8'b01111111; 

    wire [7:0] ds_exp;
    wire [7:0] ds_exp_off;
    CarryLookAheadAdder_8b sub2(
        .a(ds_exp_offset),
        .b(c_exp),
        .S(ds_exp_off),
        .Cin(1'b0)
    );
    assign ds_exp = ds_exp_offset[7] | (!ds_exp_offset[0]) ? ds_exp_off : 8'b00000000;

    assign S[31]    = l_sign;
    assign S[30:23] = equs ? ds_exp : ss_exp;
    assign S[22:0]  = equs ? ds_m   : ss_m  ;

    assign Overflow = c_exp == 8'b11111111 || S[30:23] == 8'b11111111;

endmodule