module Synth_Test(
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
		for(i = 0 ;i <32;i=i+4) begin :loop1
			CarryByPassAdder_4Bit CBPA(a[i+3:i],b[i+3:i],Carry[i],S[i+3:i],Carry[i+4]);
		end
	endgenerate
assign Cout = Carry[32];
endmodule 
module CarryByPassAdder_4Bit(
input [3:0]a,
input [3:0]b,
input Cin,
output [3:0]S,
output  Cout
);
wire [4:0] Carry;
wire [3:0] Sum;
wire [3:0] P;
wire Select;
assign P = a ^ b;
assign Select = &P;
assign Carry[0]= Cin;
genvar i;
	generate
		for(i = 0 ;i <4;i=i+1) begin :loop2
			FA BitAdder(a[qi],b[i],Carry[i],S[i],Carry[i+1]);
		end
	endgenerate
assign Cout = Select== 1'b1 ? Cin : Carry[4];
endmodule 