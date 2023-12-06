module VerilogAdder(
input  [31:0]a,
input  [31:0]b,
input  Cin,
output reg negOverflow,
output reg posOverflow,
output reg [31:0]S,
output reg Cout,
output reg Signal
);
wire [31:0] Sum;
wire CarryOut;

assign {CarryOut,Sum} = a+b +Cin;

always @*
begin 
	Signal = &Sum[31:15];
	Cout = CarryOut;
	S = Sum;
	if(a[31] == b[31])
	begin
		
		if(CarryOut == 1 && a[31] ==1 &&Sum[31] ==0)
		begin
			negOverflow = 1'b1;
		end
		else
		begin
			negOverflow = 1'b0;
		end 
		if(CarryOut == 1 && a[31] ==0)
		begin
			posOverflow = 1'b1;
		end
		else
		begin
			posOverflow = 1'b0;
		end
	end
	else 
	begin
		negOverflow = 1'b0;
		posOverflow = 1'b0;
	end
end
endmodule 
