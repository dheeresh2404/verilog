`timescale 1ns / 1ps

module tb_jk_latch;

    reg  enable, j, k;
    wire q;

    jk_latch uut (
        .enable(enable),
        .j(j),
        .k(k),
        .q(q)
    );

    initial begin
        enable = 0; j = 0; k = 0;
        #10;

        enable = 1; j = 1; k = 0;
        #10;

        enable = 0; j = 0; k = 1;
        #10;

        enable = 1; j = 0; k = 1;
        #10;

        enable = 1; j = 1; k = 1;
        #10;

        enable = 1; j = 0; k = 0;
        #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | EN=%b J=%b K=%b | Q=%b", $time, enable, j, k, q);
    end

endmodule
