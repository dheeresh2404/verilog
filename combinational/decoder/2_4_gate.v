module decoder2x4 (
    input a,
    input b,
    output y0,
    output y1,
    output y2,
    output y3
);

wire na, nb;

not (na, a);
not (nb, b);

and (y0, na, nb);
and (y1, na, b);
and (y2, a, nb);
and (y3, a, b);

endmodule
