module sr_latch_nand (
    input  wire sn,  
    input  wire rn, 
    output wire q,
    output wire qn
);

    assign q  = ~(sn & qn);
    assign qn = ~(rn & q);

endmodule
