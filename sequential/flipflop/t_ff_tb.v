`timescale 1ns / 1ps

module tb_t_ff;

    reg  clk, rst, t;
    wire q;

    t_ff uut (
        .clk(clk),
        .rst(rst),
        .t(t),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0; rst = 1; t = 0;
        #10 rst = 0;

        #10 t = 1;
        #10 t = 1;
        #10 t = 1;
        #10 t = 0;
        #10 t = 0;

        #20 $finish;
    end

    initial begin
        $monitor("Time=%0t | rst=%b t=%b | q=%b", $time, rst, t, q);
    end

endmodule
