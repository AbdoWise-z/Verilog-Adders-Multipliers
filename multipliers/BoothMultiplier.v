module BoothMultiplier(
input   wire signed [31:0] a,b,
output  reg  signed  [63:0] S);
integer i;
//wire useless1,useless2,useless3;
wire [31:0] /*A10,A01,*/MComp;
reg  signed [63:0] res;
assign MComp = ~b ;
reg  [1:0]  Q1Q0;
//VerilogAdder V10(res[63:32],MComp,1'b0,useless1,useless2,A10,useless3);
//VerilogAdder V01(res[63:32],b,1'b0,useless1,useless2,A01,useless3);
always @(a,b)
begin	
	res = {32'b0,a};
	Q1Q0= {a[0],1'b0};
	for(i = 32;i >0;i= i - 1)
	begin
		if(Q1Q0 === 2'b10)
		begin
			//$display("no you are not");
			//res[63:32] = A10;
			res[63:32]   = res[63:32] + MComp + 1;
		end
		else if (Q1Q0 === 2'b01)
		begin
			//$display("I'm here");
			//res[63:32] = A01;
			res[63:32]   = res[63:32] + b;
		end
		else
		begin
			res = res;
		end
		//$display("%b",res);
		res  = res >>>1;
		Q1Q0 = Q1Q0 >>1;
		Q1Q0[1] = res[0];
	end
	if(a[31]==b[31])
	begin
		res[63]=1'b0;
	end
	S = res;
end
endmodule 