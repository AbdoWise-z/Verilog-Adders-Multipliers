
module SynchronizedWallaceTreeMultiplier32(
input  wire clk,reset,
input  wire [31:0] a,b,
output reg [63:0] S
);
reg [31:0]Stimulus1,Stimulus2;

wire [63:0] CombinationalResult;
WallaceTreeMultiplier32 mult(CombinationalResult,Stimulus1,Stimulus2);
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
			if(a[31]==1'b1)
			begin 
				Stimulus1=Stimulus1-1;
				Stimulus1=~Stimulus1;
			end
			if(b[31]==1'b1)
			begin 
				Stimulus2=Stimulus2-1;
				Stimulus2=~Stimulus2;
			end
		end
end
always @(posedge clk,negedge reset)
begin
	if(reset == 1'b0)
		S = 64'b0;
	else
		
		S= CombinationalResult;

		
		 if(a[31]!=b[31])
		begin
			S=~S+1;
		end
end
endmodule 
