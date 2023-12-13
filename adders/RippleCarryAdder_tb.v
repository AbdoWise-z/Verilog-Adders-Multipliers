`timescale 1ns/1ps

module RippleCarryAdder_tb();

  reg [31:0] A, B;
  reg Cin;
  wire [31:0] S;
  wire Cout, Overflow;

  reg [31:0] expected_S;
  reg expected_Cout, expected_Overflow;

  reg [31:0] testcase;
  reg [31:0] total_passed = 32'b0;

  RippleCarryAdder uut (
    .a(A),
    .b(B),
    .Cin(Cin),
    .S(S),
    .Cout(Cout),
    .Overflow(Overflow)
  );

  initial begin
    $display("starting test!");
    // Test Case 1: Overflow of positive numbers
    A          = 32'b01111111111111111111111111111111;  // MAX_INT
    B          = 32'b00000000000000000000000000000001; 
    expected_S = 32'b10000000000000000000000000000000;
    Cin = 0;
    expected_Cout = 0;
    expected_Overflow = 1;
    testcase = 1;
    #10;
    if ((S == expected_S) && (Cout == expected_Cout) &&
        (Overflow == expected_Overflow)) begin
      $display("TestCase#%0d: success", testcase);
      total_passed = total_passed + 1;
    end else begin
      $display("TestCase#%0d: failed with input %0d and %0d and output %0d and overflow statues %0d",
               testcase, A, B, S, Overflow);
    end


    // Test Case 2: Overflow of negative numbers
    A          = 32'b10000000000000000000000000000000;  // MIN_INT
    B          = 32'b11111111111111111111111111111111; 
    expected_S = 32'b01111111111111111111111111111111;
    Cin = 0;
    expected_Cout = 1;
    expected_Overflow = 1;
    testcase = 2;
    #10;
    if ((S == expected_S) && (Cout == expected_Cout) &&
        (Overflow == expected_Overflow)) begin
      $display("TestCase#%0d: success", testcase);
      total_passed = total_passed + 1;
    end else begin
      $display("TestCase#%0d: failed with input %0d and %0d and output %0d and overflow statues %0d",
               testcase, A, B, S, Overflow);
    end

    // Test Case 3: Addition of positive and negative number
    A = 5;
    B = -3;
    Cin = 0;
    expected_S = 2;
    expected_Cout = 1;
    expected_Overflow = 0;
    testcase = 3;
    #10;
    if ((S == expected_S) && (Cout == expected_Cout) &&
        (Overflow == expected_Overflow)) begin
      $display("TestCase#%0d: success", testcase);
      total_passed = total_passed + 1;
    end else begin
      $display("TestCase#%0d: failed with input %0d and %0d and output %0d and overflow statues %0d",
               testcase, A, B, S, Overflow);
    end

    // Test Case 4: Addition of positive and positive number
    A = 8;
    B = 7;
    Cin = 0;
    expected_S = 15;
    expected_Cout = 0;
    expected_Overflow = 0;
    testcase = 4;
    #10;
    if ((S == expected_S) && (Cout == expected_Cout) &&
        (Overflow == expected_Overflow)) begin
      $display("TestCase#%0d: success", testcase);
      total_passed = total_passed + 1;
    end else begin
      $display("TestCase#%0d: failed with input %0d and %0d and output %0d and overflow statues %0d",
               testcase, A, B, S, Overflow);
    end

    // Test Case 5: Addition of negative and negative number
    A = -10;
    B = -8;
    Cin = 0;
    expected_S = -18;
    expected_Cout = 1;
    expected_Overflow = 0;
    testcase = 5;
    #10;
    if ((S == expected_S) && (Cout == expected_Cout) &&
        (Overflow == expected_Overflow)) begin
      $display("TestCase#%0d: success", testcase);
      total_passed = total_passed + 1;
    end else begin
      $display("TestCase#%0d: failed with input %0d and %0d and output %0d and overflow statues %0d",
               testcase, A, B, S, Overflow);
    end

    // Additional 3 random test cases
    // Test Case 6:
    A = 100;
    B = 50;
    Cin = 1;
    expected_S = 151;
    expected_Cout = 0;
    expected_Overflow = 0;
    testcase = 6;
    #10;
    if ((S == expected_S) && (Cout == expected_Cout) &&
        (Overflow == expected_Overflow)) begin
      $display("TestCase#%0d: success", testcase);
      total_passed = total_passed + 1;
    end else begin
      $display("TestCase#%0d: failed with input %0d and %0d and output %0d and overflow statues %0d",
               testcase, A, B, S, Overflow);
    end

    // Test Case 7:
    A = -30;
    B = 40;
    Cin = 1;
    expected_S = 11;
    expected_Cout = 1;
    expected_Overflow = 0;
    testcase = 7;
    #10;
    if ((S == expected_S) && (Cout == expected_Cout) &&
        (Overflow == expected_Overflow)) begin
      $display("TestCase#%0d: success", testcase);
      total_passed = total_passed + 1;
    end else begin
      $display("TestCase#%0d: failed with input %0d and %0d and output %0d and overflow statues %0d",
               testcase, A, B, S, Overflow);
    end

    // Test Case 8:
    A = 0;
    B = 0;
    Cin = 1;
    expected_S = 1;
    expected_Cout = 0;
    expected_Overflow = 0;
    testcase = 8;
    #10;
    if ((S == expected_S) && (Cout == expected_Cout) &&
        (Overflow == expected_Overflow)) begin
      $display("TestCase#%0d: success", testcase);
      total_passed = total_passed + 1;
    end else begin
      $display("TestCase#%0d: failed with input %0d and %0d and output %0d and overflow statues %0d",
               testcase, A, B, S, Overflow);
    end

    // Run test cases
    #10; // Wait for a few time units for signals to settle

    $display("Total : %0d tests passed" , total_passed);
    
  end

endmodule
