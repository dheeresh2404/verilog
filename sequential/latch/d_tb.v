`timescale 1ns / 1ps

module tb_d_latch;

    reg  enable, d;
    wire q;

    d_latch uut (
        .enable(enable),
        .d(d),
        .q(q)
    );

    initial begin
        enable = 0; d = 0;
        #10;

        d = 1;
        #10;

        enable = 1;
        #10;

        d = 0;
        #10;

        enable = 0;
        #10;

        d = 1;
        #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | EN=%b D=%b | Q=%b", $time, enable, d, q);
    end

endmodule
