module RippleCarryAdder_16Bit(
input [15:0]a,
input [15:0]b,
input Cin,
output [15:0]S,
output  Cout
);
wire [16:0] Carry;
wire [15:0] Sum;

assign Carry[0]= Cin;
genvar i;
	generate
		for(i = 0 ;i <16;i=i+1) begin
			FA BitAdder(a[i],b[i],Carry[i],S[i],Carry[i+1]);
		end
	endgenerate

assign Cout = Carry[16];

endmodule 