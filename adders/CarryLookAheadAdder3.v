module CarryLookAheadAdder3(
	input wire [31:0]a,
	input wire [31:0]b,
	input wire Cin,
	output reg [31:0]S,
	output wire Cout,
	output wire Overflow
);
    wire [32:0] G;
    wire [31:0] P;
    reg [32:0] Ps;
    reg [32:0] terms;
    
    assign P[31:0] = a ^ b;
    assign G[32:1] = a & b;
    assign G[0] = Cin;
    
    reg [32:0] Carry;
    
    integer i , j , k;
    always @(*) begin
        Carry[0] = Cin;
        for (i = 1;i < 33;i = i + 1) begin : block1
            Ps = 33'b111111111111111111111111111111111;
            terms = 33'b000000000000000000000000000000000;
            for (k = 0;k < i;k = k + 1) begin : block2
                Ps[k + 1] = Ps[k] & P[i - k - 1];
            end

            terms[0] = G[i];
            for (k = 0;k < i;k = k + 1) begin : block3
                terms[k + 1] = (Ps[k + 1] & G[i - k - 1]);
            end
            Carry[i] = (|terms);
            S[i - 1] = Carry[i - 1] ^ P[i - 1]; 
        end
    end

    assign Cout = Carry[32];
	assign Overflow = (a[31] == b[31]) & (a[31] != S[31]);

endmodule