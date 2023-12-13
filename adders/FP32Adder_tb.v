`timescale 1ns/1ps

module FP32Adder_tb();

  reg  [31:0] A, B;
  wire [31:0] S;
  wire Overflow;

  reg [31:0] expected_S;
  reg expected_Overflow;

  reg [31:0] testcase;
  reg [31:0] total_passed = 32'b0;

  FP32Adder2_CLA uut (
    .a(A),
    .b(B),
    .S(S),
    .Overflow(Overflow)
  );

  initial begin
    $display("starting test!");
    A          = 32'b11000010001101000000000000000000; //-45
    B          = 32'b11000010001101000000000000000000; //-45
    expected_S = 32'b11000010101101000000000000000000; //-90
    expected_Overflow = 0;
    testcase = 1;
    #10;
    if ((S == expected_S) &&
        (Overflow == expected_Overflow)) begin
      $display("TestCase#%0d: success", testcase);
      total_passed = total_passed + 1;
    end else begin
      $display("TestCase#%0d: failed with input %0d and %0d and output %0d and overflow statues %0d",
               testcase, A, B, S, Overflow);
    end

    A          = 32'b01000010001101000000000000000000; //45
    B          = 32'b01000010001101000000000000000000; //45
    expected_S = 32'b01000010101101000000000000000000; //90
    expected_Overflow = 0;
    testcase = 2;
    #10;
    if ((S == expected_S) &&
        (Overflow == expected_Overflow)) begin
      $display("TestCase#%0d: success", testcase);
      total_passed = total_passed + 1;
    end else begin
      $display("TestCase#%0d: failed with input %0d and %0d and output %0d and overflow statues %0d",
               testcase, A, B, S, Overflow);
    end

    // Test Case 3: Addition of positive and negative number
    A          = 32'b01000000000000000000000000000000; // 2
    B          = 32'b11000000000000000000000000000000; //-2
    expected_S = 32'b10000000000000000000000000000000; // 0 or -0
    expected_Overflow = 0;
    testcase = 3;
    #10;
    if ((S == expected_S) &&
        (Overflow == expected_Overflow)) begin
      $display("TestCase#%0d: success", testcase);
      total_passed = total_passed + 1;
    end else begin
      $display("TestCase#%0d: failed with input %0d and %0d and output %0d and overflow statues %0d",
               testcase, A, B, S, Overflow);
    end

    // Test Case 4: Addition of positive and positive number
    A          = 32'b11000000000111010000111001010110; //-2.454
    B          = 32'b11000000000000000000000000000000; //-2
    expected_S = 32'b11000000100011101000011100101011; //-4.454
    expected_Overflow = 0;
    testcase = 4;
    #10;
    if ((S == expected_S) &&
        (Overflow == expected_Overflow)) begin
      $display("TestCase#%0d: success", testcase);
      total_passed = total_passed + 1;
    end else begin
      $display("TestCase#%0d: failed with input %0d and %0d and output %0d and overflow statues %0d",
               testcase, A, B, S, Overflow);
    end

    // Test Case 5: Addition of negative and negative number
    A          = 32'b11000000000111010000111001010110; //-2.454
    B          = 32'b01000000000000000000000000000000; // 2
    expected_S = 32'b10111110111010000111001010110000; //-0.454
    expected_Overflow = 0;
    testcase = 5;
    #10;
    if ((S == expected_S) &&
        (Overflow == expected_Overflow)) begin
      $display("TestCase#%0d: success", testcase);
      total_passed = total_passed + 1;
    end else begin
      $display("TestCase#%0d: failed with input %0d and %0d and output %0d and overflow statues %0d",
               testcase, A, B, S, Overflow);
    end

    // Additional 3 random test cases
    // Test Case 6:
    A          = 32'b11111111111010000111001010110000;
    B          = 32'b01000010001101000000000000000000; 
    expected_S = 32'b01000010101101000000000000000000;
    expected_Overflow = 1;
    testcase = 6;
    #10;
    if ((S == expected_S) ||
        (Overflow == expected_Overflow)) begin
      $display("TestCase#%0d: success", testcase);
      total_passed = total_passed + 1;
    end else begin
      $display("TestCase#%0d: failed with input %0d and %0d and output %0d and overflow statues %0d",
               testcase, A, B, S, Overflow);
    end

    // Test Case 7:
    A          = 32'b01000010001101000000000000000000;
    B          = 32'b11111111111010000111001010110000; 
    expected_S = 32'b01000010101101000000000000000000;
    expected_Overflow = 1;
    testcase = 7;
    #10;
    if ((S == expected_S) ||
        (Overflow == expected_Overflow)) begin
      $display("TestCase#%0d: success", testcase);
      total_passed = total_passed + 1;
    end else begin
      $display("TestCase#%0d: failed with input %0d and %0d and output %0d and overflow statues %0d",
               testcase, A, B, S, Overflow);
    end

    // Test Case 8:
    A          = 32'b00111111111001011011001000101101; //1.7945
    B          = 32'b01000010110001111001000010001010; //99.7823
    expected_S = 32'b01000010110010110010011101010010; //101.5768
    expected_Overflow = 0;
    testcase = 8;
    #10;
    if ((S == expected_S) &&
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
