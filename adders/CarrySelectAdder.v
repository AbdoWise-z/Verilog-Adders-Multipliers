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

module CarrySelectAdder(
	input wire [31:0] a,
	input wire [31:0] b,
	input wire Cin,
	output reg [31:0] S,
	output reg Cout,
	output wire Overflow
);
	wire Carry_select,Carry_upper_one,Carry_upper_zero;	
	wire [15:0] upper_S_one, upper_S_zero,lower_S;
	
	RippleCarryAdder_16Bit First_Nibble(
		.a(a[15:0]),
		.b(b[15:0]),
		.Cin(Cin),
		.S(lower_S),
		.Cout(Carry_select)
	);

	RippleCarryAdder_16Bit Second_Nibble_one(
		.a(a[31:16]),
		.b(b[31:16]),
		.Cin(1'b1),
		.S(upper_S_one),
		.Cout(Carry_upper_one)
	);

	RippleCarryAdder_16Bit Second_Nibble_zero(
		.a(a[31:16]),
		.b(b[31:16]),
		.Cin(1'b0),
		.S(upper_S_zero),
		.Cout(Carry_upper_zero)
	);

	assign Overflow = (a[31] == b[31]) & (a[31] != S[31]);

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