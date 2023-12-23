
module SyncBlock(
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
    VerilogMultiplier_Synth mul(
        .a(in_a),
        .b(in_b),
        .c(temp_c)
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
            end
        end
    end
    
endmodule