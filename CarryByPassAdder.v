module CarryByPassAdder(
input [31:0]a,
input [31:0]b,
input Cin,
output posOverflow,
output negOverflow,
output [31:0]S,
output  Cout
);
wire Carry[32:0];
assign Carry[0]= Cin;
genvar i;
	generate
		for(i = 0 ;i <32;i=i+4) begin
			CarryByPassAdder_4Bit CBPA(a[i+3:i],b[i+3:i],Carry[i],S[i+3:i],Carry[i+4]);
		end
	endgenerate
assign Cout = Carry[32];
endmodule 