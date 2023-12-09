module VerilogAdder(
	input  wire [31:0]a,
	input  wire [31:0]b,
	input  wire Cin,
	output wire posOverflow,
	output wire negOverflow,
	output wire [31:0]S,
	output wire Cout
);
	assign {Cout,S} = a + b + Cin;
	assign negOverflow = (a[31] == b[31]) & (a[31] == 1) & (S[31] == 0);
	assign posOverflow = (a[31] == b[31]) & (a[31] == 0) & (S[31] == 1);
endmodule 
