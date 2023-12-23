module SyncBlock(
    input wire signed [31:0] a,
    input wire signed [31:0] b,
    output reg signed [63:0] c,
    input wire clk,
    input wire rst
);

    reg [63:0] prev  = 64'b0;

    reg [31:0] in_a = 32'b0;
    reg [31:0] in_b = 32'b0;
    wire [63:0] out_c;

    VerilogMultiplier mul(
        .a(in_a),
        .b(in_b),
        .c(out_c)
    );

    reg [31:0] counter = 32'b1;

    always @(posedge clk , posedge rst) begin
        if (rst) begin
            //reset signal
            counter <= 32'b1;
            in_a <= 32'b0;
            in_b <= 32'b0;
            prev  <= 64'b0;
            c <= 64'b0;
        end else begin
            if (counter[0] == 1'b1) begin
                in_a <= a;
                in_b <= b;
                c <= prev;
                counter[31:1] <= counter[30:0];
                counter[0] <= 1'b0;
            end else begin
                if (counter[5] == 1'b1) begin  // this will delay until the bit you select +1 (for example this will delay 6 cycles)
                    c <= out_c;
                    prev <= prev;
                    counter <= 1'b1;
                end else begin
                    counter[31:1] <= counter[30:0];
                    counter[0] <= 1'b0;
                end
            end
        end
    end
    
endmodule