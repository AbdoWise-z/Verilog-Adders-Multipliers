module CarryLookAheadAdder(
input  wire [31:0] a,
input  wire [31:0] b,
input  wire Cin,
output wire Cout,
output reg [31:0] S
);
wire [31:0] P, G;
reg [32:0] Carry; 
reg [32:0] GenerateArr,Term, PropagateAnd ;
assign G = a & b;
assign P = a ^ b;


assign Cout = Carry[32];
integer i,k,j;
always @*
begin
 	Carry[0] = Cin;
	GenerateArr = {G,Cin};
	for(k= 1;k <33 ;k=k+1)
	begin
		Term = 32'b0;
		PropagateAnd = 32'b1;
		for(j= k-1; j >=0; j = j-1)
		begin
			PropagateAnd[j] = PropagateAnd[j] & P[j]; 
		end
		for( j = k-1; j >= 0 ; j = j-1)
		begin
			Term[j] = GenerateArr[j] & (&PropagateAnd); // G[1] & P1 P0
		end

	 	Carry[k] = GenerateArr[k] | (|Term);
	end
	for(i = 0 ;i <32;i=i+1) begin
	 S[i] = P[i] ^ Carry[i];
	end
	
end
// Carry[k] =G[k-1] +P[k-1]Carry[k-1]
//Carry[k-1] = G[k-1] +P[k-1]Carry[k-2]

endmodule 