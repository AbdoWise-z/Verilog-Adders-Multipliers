module CarryByPassAdder_4Bit(
input [3:0]a,
input [3:0]b,
input Cin,
output [3:0]S,
output  Cout
);
wire [4:0] Carry;
wire [3:0] P;
wire Select;
assign P = a ^ b;
assign Select = &P;
assign Carry[0]= Cin;
genvar i;
	generate
		for(i = 0 ;i <4;i=i+1) begin
			FA BitAdder(a[i],b[i],Carry[i],S[i],Carry[i+1]);
		end
	endgenerate
assign Cout = Select== 1'b1 ? Cin : Carry[4];
endmodule 