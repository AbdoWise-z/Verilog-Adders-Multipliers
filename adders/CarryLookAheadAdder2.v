module CarryLookAheadAdder2(
	input wire [31:0]a,
	input wire [31:0]b,
	input wire Cin,
	output wire [31:0]S,
	output wire Cout,
	output wire Overflow
);
    wire [32:0] G;
    wire [31:0] P;
    assign P[31:0] = a ^ b;
    assign G[32:1] = a & b;
    assign G[0] = Cin;
    
    wire [32:0] Carry;
    assign Carry[0] = Cin;

    genvar i , j , k;
    generate
        for (i = 1;i < 33;i = i + 1) begin : gen_block1
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

    assign Cout = Carry[32];
	assign Overflow = (a[31] == b[31]) & (a[31] != S[31]);

endmodule