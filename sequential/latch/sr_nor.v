module sr_latch_nor (
    input  wire s,
    input  wire r,
    output wire q,
    output wire qn
);

    assign q  = ~(r | qn);
    assign qn = ~(s | q);

endmodule
