module VerilogAdder(
	input  wire [31:0]a,
	input  wire [31:0]b,
	input  wire Cin,
	output wire Overflow,
	output wire [31:0]S,
	output wire Cout
);
	assign {Cout,S} = a + b + Cin;
	assign Overflow = (a[31] == b[31]) & (a[31] != S[31]);
endmodule 
