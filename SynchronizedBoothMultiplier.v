
module SynchronizedBoothMultiplier(
input  wire clk,reset,
input  wire [31:0] a,b,
output reg [63:0] S
);
reg [31:0]Stimulus1,Stimulus2;
wire [63:0] CombinationalResult;
BoothMultiplier mult(Stimulus1,Stimulus2,CombinationalResult);
always@(posedge clk,negedge reset)
begin
		if(reset == 1'b0)
		begin
			Stimulus1 = 32'b0;
			Stimulus2 = 32'b0;
		end
		else
		begin
			Stimulus1 = a;
			Stimulus2 = b;
		end
end
always @(posedge clk,negedge reset)
begin
	if(reset == 1'b0)
		S = 64'b0;
	else
		S= CombinationalResult;
end
endmodule 