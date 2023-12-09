module RippleCarryAdder(
	input wire [31:0]a,
	input wire [31:0]b,
	input wire Cin,
	output wire [31:0]S,
	output wire Cout,
	output wire posOverflow,
	output wire negOverflow
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
	assign negOverflow = (a[31] == b[31]) & (a[31] == 1) & (S[31] == 0);
	assign posOverflow = (a[31] == b[31]) & (a[31] == 0) & (S[31] == 1);

endmodule 