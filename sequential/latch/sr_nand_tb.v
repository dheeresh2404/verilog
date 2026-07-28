`timescale 1ns / 1ps

module tb_sr_latch_nand;

    reg  sn, rn;
    wire q, qn;

    sr_latch_nand uut (
        .sn(sn),
        .rn(rn),
        .q(q),
        .qn(qn)
    );

    initial begin
        sn = 0; rn = 1;
        #10;

        sn = 1; rn = 1;
        #10;

        sn = 1; rn = 0;
        #10;

        sn = 1; rn = 1;
        #10;

        sn = 0; rn = 0;
        #10;

        sn = 1; rn = 1;
        #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | Sn=%b Rn=%b | Q=%b Qn=%b", $time, sn, rn, q, qn);
    end

endmodule
