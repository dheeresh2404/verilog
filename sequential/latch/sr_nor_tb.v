`timescale 1ns / 1ps

module tb_sr_latch_nor;

    reg  s, r;
    wire q, qn;

    sr_latch_nor uut (
        .s(s),
        .r(r),
        .q(q),
        .qn(qn)
    );

    initial begin
        s = 0; r = 1;
        #10;

        s = 0; r = 0;
        #10;

        s = 1; r = 0;
        #10;

        s = 0; r = 0;
        #10;

        s = 1; r = 1;
        #10;

        s = 0; r = 0;
        #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | S=%b R=%b | Q=%b Qn=%b", $time, s, r, q, qn);
    end

endmodule
