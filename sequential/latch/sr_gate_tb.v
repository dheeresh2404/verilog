`timescale 1ns / 1ps

module tb_gated_sr_latch;

    reg  enable, s, r;
    wire q;

    gated_sr_latch uut (
        .enable(enable),
        .s(s),
        .r(r),
        .q(q)
    );

    initial begin
        enable = 0; s = 0; r = 0;
        #10;

        s = 1; r = 0;
        #10;

        enable = 1;
        #10;

        s = 0; r = 0;
        #10;

        s = 0; r = 1;
        #10;

        enable = 0;
        #10;

        s = 1; r = 0;
        #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | EN=%b S=%b R=%b | Q=%b", $time, enable, s, r, q);
    end

endmodule
