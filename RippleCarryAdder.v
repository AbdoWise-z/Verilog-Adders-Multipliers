module RippleCarryAdder(
input [31:0]a,
input [31:0]b,
input Cin,
output reg posOverflow,
output reg negOverflow,
output reg [31:0]S,
output reg Cout
);
wire [32:0] Carry;
wire [31:0] Sum;
reg [31:0] stimulus1, stimulus2;
assign Carry[0]= Cin;
genvar i;
	generate
		for(i = 0 ;i <32;i=i+1) begin
			FA BitAdder(stimulus1[i],stimulus2[i],Carry[i],Sum[i],Carry[i+1]);
		end
	endgenerate

always @*
begin 
	stimulus1 = a;
	stimulus2 = b;
	S	  = Sum ;
	Cout = Carry[32];

	if(a[31] == b[31])
	begin
		
		if(Carry[32] == 1 && a[31] ==1 &&S[31] ==0)
		begin
			negOverflow = 1'b1;
		end
		else
		begin
			negOverflow = 1'b0;
		end 
		if(Carry[32] == 1 && a[31] ==0)
		begin
			posOverflow = 1'b1;
		end
		else
		begin
			posOverflow = 1'b0;
		end
	end
	else 
	begin
		negOverflow = 1'b0;
		posOverflow = 1'b0;
	end
end

endmodule 