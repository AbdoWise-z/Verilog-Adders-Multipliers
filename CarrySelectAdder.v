module CarrySelectAdder(
	input wire [31:0] A,
	input wire [31:0] B,
	input wire Cin,
	output reg [31:0] S,
	output reg Cout,
	output wire posOverflow,
	output wire negOverflow
);
	wire Carry_select,Carry_upper_one,Carry_upper_zero;	
	wire [15:0] upper_S_one, upper_S_zero,lower_S;
	
	RippleCarryAdder_16Bit First_Nibble(
		.a(A[15:0]),
		.b(B[15:0]),
		.Cin(Cin),
		.S(lower_S),
		.Cout(Carry_select)
	);

	RippleCarryAdder_16Bit Second_Nibble_one(
		.a(A[31:16]),
		.b(B[31:16]),
		.Cin(1'b1),
		.S(upper_S_one),
		.Cout(Carry_upper_one)
	);

	RippleCarryAdder_16Bit Second_Nibble_zero(
		.a(A[31:16]),
		.b(B[31:16]),
		.Cin(1'b0),
		.S(upper_S_zero),
		.Cout(Carry_upper_zero)
	);

	assign negOverflow = (A[31] == B[31]) & (A[31] == 1) & (S[31] == 0);
	assign posOverflow = (A[31] == B[31]) & (A[31] == 0) & (S[31] == 1);

always @ *
begin
 	if(Carry_select == 1'b1)
	 begin
	  {Cout,S} = {Carry_upper_one,upper_S_one,lower_S};
	 end
	else if (Carry_select == 1'b0)
	begin
	 {Cout,S} = {Carry_upper_zero,upper_S_zero,lower_S};
	end
end

endmodule 