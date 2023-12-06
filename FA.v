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