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

module SyncBoothMultiplier(
    input wire signed [31:0] a,
    input wire signed [31:0] b,
    output wire signed [63:0] c,
    input wire clk,
    input wire rst
);
    reg slow_clk = 1'b1;
    reg [31:0] in_a = 32'b0;
    reg [31:0] in_b = 32'b0;
    reg [63:0] out_c;

    assign c = out_c;

    wire [63:0] temp_c;
    BoothMultiplier mul(
        .a(in_a),
        .b(in_b),
        .S(temp_c)
    );

    reg [31:0] counter = 32'b1;

    always @(posedge slow_clk, posedge rst) begin
        if (rst) begin
            in_a <= 32'b0;
            in_b <= 32'b0;
            out_c <= 64'b0;
        end else begin
            in_a <= a;
            in_b <= b;
            out_c <= temp_c;
        end
    end

    always @(posedge clk , posedge rst) begin
        if (rst) begin
            //reset signal
            counter <= 32'b1;
            slow_clk <= 1'b0;
        end else begin
            if (counter[5] == 1'b1) begin // this will delay until the bit you select +1 x2 (for example this will delay 6 cycles)
                counter <= 32'b1;
                slow_clk <= ~slow_clk;    // flip clk
            end else begin
                counter[31:1] <= counter[30:0];
                counter[0] <= 1'b1;
            end
        end
    end
    
endmodule