module FP32Adder(
    input wire [31:0] a, //a = {sign_bit} 
	input wire [31:0] b,
    output wire [31:0]S
);

    wire a_sign;
    wire b_sign;
    wire [7:0] a_exp;
    wire [7:0] b_exp;
    wire [22:0] a_mantissa;
    wire [22:0] b_mantissa;

    assign a_sign = a[31];
    assign b_sign = b[31];
    assign a_exp  = a[30:23];
    assign b_exp  = b[30:23];
    assign a_mantissa = a[22:0];
    assign b_mantissa = b[22:0];
    
    //addition of floating point values requires shifting with variable amounts, so we
    //really have to use processes and registers

    reg [23:0] l_mantissa;
    reg [23:0] s_mantissa;
    reg [7:0] c_exp;
    reg l_sign;
    reg s_sign;

    reg [24:0] result_matissa;
    reg [7:0] result_exp;
    
    reg [22:0] r_mantissa;
    
    integer i;

    always @(*) begin
        //we try to write both numbers in the same exponent
        //I assume here that the number is written in such a
        //way that the exp value is the maximun it can be
        //FP = {sign} * 1.{mantissa} * 2^{exp}

        if (a_exp > b_exp || (a_exp == b_exp && a_mantissa > b_mantissa)) begin
            l_mantissa = { a_exp != 8'b00000000 , a_mantissa};
            s_mantissa = { b_exp != 8'b00000000 , b_mantissa} >> (a_exp - b_exp);
            c_exp      = a_exp;
            l_sign     = a_sign;
            s_sign     = b_sign;
        end else begin
            l_mantissa = { b_exp != 8'b00000000 , b_mantissa};
            s_mantissa = { a_exp != 8'b00000000 , a_mantissa} >> (b_exp - a_exp);
            c_exp      = b_exp;
            l_sign     = b_sign;
            s_sign     = a_sign;
        end
    end

    always @(*) begin
        if (l_sign == s_sign) begin //if they have the same sign , then we add and may need to up the exp by one
            result_matissa = l_mantissa + s_mantissa;
            if (result_matissa[24]) begin //we need to up the exponent by one
                r_mantissa = result_matissa[22:0];
                result_exp = c_exp + 1;
            end else begin
                r_mantissa = result_matissa[22:0];
                result_exp = c_exp;
            end
        end else begin //if not , then we sub and shift the result until the first 1 is next to the exp bits , 
                       //taking note that we need to reduce the exp in the process

            result_matissa = l_mantissa - s_mantissa;
            if (result_matissa == 24'b0) begin //result is zero
                r_mantissa = 22'b0;
                result_exp = 8'b0;
            end else begin
                for (i = 1;i < 24;i = i + 1) begin : gen_block1 //idk if this langauge supports break , but I wont take risks lmao
                    if (result_matissa[23] != 1'b1) begin
                        result_matissa = result_matissa << 1; //shift the mantissa 
                        c_exp = c_exp - 1;
                    end 
                end
                r_mantissa = result_matissa[22:0]; //take the bits after the first one
                result_exp = c_exp;                //the exp
            end
        end
    end

    assign S[31]    = l_sign;
    assign S[30:23] = result_exp;
    assign S[22:0]  = r_mantissa;
    
    
endmodule