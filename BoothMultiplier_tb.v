`timescale 1 ns/ 100 ps
module BoothMultiplier_tb();
reg  signed [31:0]a,b;
wire signed [63:0]S;
reg clk,reset;
wire [63:0]Expected;
SynchronizedBoothMultiplier dut(clk,reset,a,b,S);
VerilogMultiplier dut2(a,b,Expected);
integer testcase,total_passed;
always
begin
#1	clk = ~clk;
end
initial
begin
testcase = 1;
total_passed=0;
reset =1'b1;
clk   =1'b1;
a     = 1345;
b     = 2345;
#1
reset = 1'b0;
#1
reset = 1'b1;
#3
if(Expected == S)
	begin	
		$display("TestCase#%0d: success", testcase);
		total_passed = total_passed + 1;
	end 
else 
	begin
		$display("TestCase#%0d: failed with input %0d and %0d and output %0d",
                testcase, a, b, S);
	end
testcase = testcase +1;
#1
a     = 32'b10000000000000000000000000000000;
b     = 32'b01111111111111111111111111111111;
#3
if(Expected == S)
	begin	
		$display("TestCase#%0d: success", testcase);
		total_passed = total_passed + 1;
	end 
else 
	begin
		$display("TestCase#%0d: failed with input %0d and %0d and output %0d",
                testcase, a, b, S);
	end
testcase = testcase +1;
#1
a     = -15313131;
b     = -2031232132;
#3
if(Expected == S)
	begin	
		$display("TestCase#%0d: success", testcase);
		total_passed = total_passed + 1;
	end 
else 
	begin
		$display("TestCase#%0d: failed with input %0d and %0d and output %0d",
                testcase, a, b, S);
	end
testcase = testcase +1;
#1
a     = 15313131;
b     = -2031232132;
#3
if(Expected == S)
	begin	
		$display("TestCase#%0d: success", testcase);
		total_passed = total_passed + 1;
	end 
else 
	begin
		$display("TestCase#%0d: failed with input %0d and %0d and output %0d",
                testcase, a, b, S);
	end
testcase = testcase +1;
#1
a     = 0;
b     = -2031232132;
#3
if(Expected == S)
	begin	
		$display("TestCase#%0d: success", testcase);
		total_passed = total_passed + 1;
	end 
else 
	begin
		$display("TestCase#%0d: failed with input %0d and %0d and output %0d",
                testcase, a, b, S);
	end
testcase = testcase +1;
#1
a     = 1;
b     = -2031232132;
#3
if(Expected == S)
	begin	
		$display("TestCase#%0d: success", testcase);
		total_passed = total_passed + 1;
	end 
else 
	begin
		$display("TestCase#%0d: failed with input %0d and %0d and output %0d",
                testcase, a, b, S);
	end
testcase = testcase +1;
#1
a     = 1;
b     = 2031232132;
#3
if(Expected == S)
	begin	
		$display("TestCase#%0d: success", testcase);
		total_passed = total_passed + 1;
	end 
else 
	begin
		$display("TestCase#%0d: failed with input %0d and %0d and output %0d",
                testcase, a, b, S);
	end
testcase = testcase +1;
#1
a     = 32'b10000000000000000000000000000000;
b     = 32'b10000000000000000000000000000000;
#3
if(Expected == S)
	begin	
		$display("TestCase#%0d: success", testcase);
		total_passed = total_passed + 1;
	end 
else 
	begin
		$display("TestCase#%0d: failed with input %0d and %0d and output %0d",
                testcase, a, b, S);
	end
testcase = testcase +1;
#5
$display("Total_passed:%d out of 8",total_passed);
end
endmodule
