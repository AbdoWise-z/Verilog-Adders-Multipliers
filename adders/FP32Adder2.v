module FP32Adder2(
    input wire [31:0] a, //a = {sign_bit} 
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

    assign l_mantissa = cmp ? { a_exp != 8'b00000000 , a_mantissa} :
                              { b_exp != 8'b00000000 , b_mantissa};

    assign s_mantissa = cmp ? { b_exp != 8'b00000000 , b_mantissa} >> (a_exp - b_exp) : 
                              { a_exp != 8'b00000000 , a_mantissa} >> (b_exp - a_exp);
    assign c_exp  = cmp ? a_exp : b_exp;
    assign l_sign = cmp ? a_sign : b_sign;
    assign s_sign = cmp ? b_sign : a_sign;

    wire equs;
    assign equs = l_sign ^ s_sign;

    wire [24:0] sum_man; assign sum_man = l_mantissa + s_mantissa;
    wire [22:0] ss_m;
    wire [7:0] ss_exp;
    assign ss_m   = sum_man[24] ? sum_man[23:1] : sum_man[22:0];
    assign ss_exp = sum_man[24] ? c_exp + 1 : c_exp;

    wire [24:0] sum_dif; assign sum_dif = l_mantissa - s_mantissa;
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
    assign ds_exp = ds_exp_offset[7] | (!ds_exp_offset[0]) ? c_exp + ds_exp_offset : 8'b00000000;

    assign S[31]    = l_sign;
    assign S[30:23] = equs ? ds_exp : ss_exp;
    assign S[22:0]  = equs ? ds_m   : ss_m  ;

    assign Overflow = c_exp == 8'b11111111 || S[30:23] == 8'b11111111;

endmodule