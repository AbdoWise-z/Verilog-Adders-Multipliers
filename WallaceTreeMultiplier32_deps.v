


module ThreeLevelAdder64(
	input [63:0]x,
	input [63:0]y,
	input [63:0]z,
	output [63:0]s,
	output [63:0]c);
assign s = x^y^z;
assign c[0] = 1'b0;
assign c[63:1] = (x[63:0]&y[63:0]) | (y[63:0]&z[63:0]) | (z[63:0]&x[63:0]);

endmodule




module PartialMultiplication(
	output reg[2047:0] x,
	input [31:0]a,
	input [31:0]b);
	genvar i;

generate
  for (i = 0; i < 32; i = i + 1) begin : gen_block
    assign x[i * 64 + 63 -: 64] = (b[i] === 1) ? (a << i) : 64'b0000000000000000000000000000000000000000000000000000000000000000;
  end
endgenerate

endmodule