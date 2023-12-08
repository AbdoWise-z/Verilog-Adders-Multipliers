module CarryByPassAdder(
	input wire [31:0]a,
	input wire [31:0]b,
	input wire Cin,
	output wire [31:0]S,
	output wire Cout,
	output wire posOverflow,
	output wire negOverflow
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
	assign negOverflow = (a[31] == b[31]) & (a[31] == 1) & (S[31] == 0);
	assign posOverflow = (a[31] == b[31]) & (a[31] == 0) & (S[31] == 1);

endmodule 