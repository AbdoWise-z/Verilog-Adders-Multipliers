module CarryByPassAdder_4Bit(
	input [3:0]a,
	input [3:0]b,
	input Cin,
	output [3:0]S,
	output Cout
);

	wire [4:0] Carry;
	wire [3:0] P;
	wire Select;

	assign P = a ^ b;
	assign Select = &P;
	assign Carry[0] = Cin;

	genvar i;
	generate
		for(i = 0; i < 4; i=i+1) begin
			// found a small optimization
			assign S[i] = P[i] ^ Carry[i];
			assign Carry[i+1] = (a[i] & b[i]) | (b[i] & Carry[i]) | (a[i] && Carry[i]);
		end
	endgenerate

	assign Cout = Select == 1'b1 ? Cin : Carry[4];

endmodule 

module CarryByPassAdder(
	input wire [31:0]a,
	input wire [31:0]b,
	input wire Cin,
	output wire [31:0]S,
	output wire Cout,
	output wire Overflow
);
	wire Carry[8:0];
	assign Carry[0]= Cin;
	genvar i;
	generate
		for(i = 0; i < 8; i = i+1) begin
			parameter k = i * 4;
			CarryByPassAdder_4Bit CBPA(
				a[k + 3 :k],
				b[k + 3 :k],
				Carry[i],
				S[k + 3 :k],
				Carry[i+1]
			);
		end
	endgenerate

	assign Cout = Carry[8];
	assign Overflow = (a[31] == b[31]) & (a[31] != S[31]);

endmodule 