`timescale 1ns / 1ps

module tb_sr_ff;

    reg  clk, rst, s, r;
    wire q;

    sr_ff uut (
        .clk(clk),
        .rst(rst),
        .s(s),
        .r(r),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0; rst = 1; s = 0; r = 0;
        #10 rst = 0;

        #10 s = 1; r = 0;
        #10 s = 0; r = 0;
        #10 s = 0; r = 1;
        #10 s = 0; r = 0;

        #20 $finish;
    end

    initial begin
        $monitor("Time=%0t | rst=%b s=%b r=%b | q=%b", $time, rst, s, r, q);
    end

endmodule
