module encoder8x3(
    input d0,
    input d1,
    input d2,
    input d3,
    input d4,
    input d5,
    input d6,
    input d7,
    output y0,
    output y1,
    output y2
);

or (y0, d1, d3, d5, d7);
or (y1, d2, d3, d6, d7);
or (y2, d4, d5, d6, d7);

endmodule
