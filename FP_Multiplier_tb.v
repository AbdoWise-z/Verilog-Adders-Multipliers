`timescale 1 ns/ 100 ps

module FP_Multiplier_tb();
reg  signed [31:0]a,b;
wire signed [31:0]S;
wire of;
reg clk,reset;
FP_Multiplier dut(clk,reset,a,b,of,S);
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
a     = 32'b01000010001101100000000000000000;  //45.5
b     = 32'b01000010001101100000000000000000;  //45.5
#1
reset = 1'b0;
#1
reset = 1'b1;
#5
if(S == 32'b01000101000000010110010000000000)
	begin	
		$display("TestCase#%f: success", testcase);
		total_passed = total_passed + 1;
	end 
else 
	begin
		$display("TestCase#%f: failed with input %f and %f and output %f and overflow status %0d",
                testcase, a, b, S, of);
	end
testcase = testcase +1;
#1
a     = 32'b00111111100110011001100110011010; //1.2
b     = 32'b11000000000100110011001100110011; //-2.3
#5
if(S == 32'b11000000001100001010001111010111) 
	begin	
		$display("TestCase#%f: success", testcase);
		total_passed = total_passed + 1;
	end 
else 
	begin
		$display("TestCase#%f: failed with input %f and %f and output %f and overflow status %0d",
                testcase, a, b, S, of);
	end
testcase = testcase +1;
#1
a     = 32'b11000000000100110011001100110011; //-2.3
b     = 32'b11000010001101100000000000000000; //-45.5
#5
if(S == 32'b01000010110100010100110011001100)
	begin	
		$display("TestCase#%f: success", testcase);
		total_passed = total_passed + 1;
	end 
else 
	begin
		$display("TestCase#%f: failed with input %f and %f and output %f and overflow status %0d",
                testcase, a, b, S, of);
	end
testcase = testcase +1;
#1

a     = 32'b11000000000100110011001100110011; //-2.3
b     = 32'b00111111100110011001100110011010; //1.2

#5
if(S == 32'b11000000001100001010001111010111)
	begin	
		$display("TestCase#%f: success", testcase);
		total_passed = total_passed + 1;
	end 
else 
	begin
		$display("TestCase#%f: failed with input %f and %f and output %f and overflow status %0d",
                testcase, a, b, S, of);
	end
testcase = testcase +1;
#1
a     = 0;
b     = 32'b11000010001101100000000000000000; //-45.5
#5
if(S == 32'b0)
	begin	
		$display("TestCase#%f: success", testcase);
		total_passed = total_passed + 1;
	end 
else 
	begin
		$display("TestCase#%f: failed with input %f and %f and output %f and overflow status %0d",
                testcase, a, b, S, of);
	end
testcase = testcase +1;
#1
a     = 32'b00111111100000000000000000000000;
b     = 32'b11000010001101100000000000000000; //-45.5
#5
if(S == 32'b11000010001101100000000000000000)
	begin	
		$display("TestCase#%f: success", testcase);
		total_passed = total_passed + 1;
	end 
else 
	begin
		$display("TestCase#%f: failed with input %f and %f and output %f and overflow status %0d",
                testcase, a, b, S, of);
	end
testcase = testcase +1;
#1
a     = 32'b00001111010100010100110011001101;  //1.03192868669e-29  too small numbers
b     = 32'b00001111010100010100110011001101;  //1.03192868669e-29
#5
if(S == 32'b0 && of == 1'b1)
	begin	
		$display("TestCase#%f: success", testcase);
		total_passed = total_passed + 1;
	end 
else 
	begin
		$display("TestCase#%f: failed with input %f and %f and output %f and overflow status %0d",
                testcase, a, b, S, of);
	end
testcase = testcase +1;
#1
a     = 32'b01111111010100010100110011001101;  //2.78207423574e+38 too large numbers
b     = 32'b01111111010100010100110011001101;  //2.78207423574e+38
#5
if(S == 32'b0 && of == 1'b1)
	begin	
		$display("TestCase#%f: success", testcase);
		total_passed = total_passed + 1;
	end 
else 
	begin
		$display("TestCase#%f: failed with input %f and %f and output %f and overflow status %0d",
                testcase, a, b, S, of);
	end
testcase = testcase +1;
#5
$display("Total_passed:%d out of 8",total_passed);
end
endmodule
