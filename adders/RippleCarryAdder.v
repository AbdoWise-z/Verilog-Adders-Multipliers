module FA(
    input a,
    input b,
    input Cin,
    output reg S,
    output reg Cout
);
    always @*
    begin
        S = a ^ b ^ Cin;
        Cout =  a&b | ((a^b) & Cin);
    end
endmodule

module RippleCarryAdder(
	input wire [31:0]a,
	input wire [31:0]b,
	input wire Cin,
	output wire [31:0]S,
	output wire Cout,
	output wire Overflow
);
	wire [32:0] Carry;
	assign Carry[0] = Cin;

	genvar i;
	generate
		for(i = 0 ;i <32;i=i+1) begin
			FA BitAdder(a[i],b[i],Carry[i],S[i],Carry[i+1]);
		end
	endgenerate

	assign Cout = Carry[32];
	assign Overflow = (a[31] == b[31]) & (a[31] != S[31]);

endmodule 