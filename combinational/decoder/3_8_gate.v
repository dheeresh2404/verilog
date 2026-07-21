module decoder3x8 (
    input a,
    input b,
    input c,
    output y0,
    output y1,
    output y2,
    output y3,
    output y4,
    output y5,
    output y6,
    output y7
);

wire na, nb, nc;

not (na, a);
not (nb, b);
not (nc, c);

and (y0, na, nb, nc);
and (y1, na, nb, c);
and (y2, na, b, nc);
and (y3, na, b, c);
and (y4, a, nb, nc);
and (y5, a, nb, c);
and (y6, a, b, nc);
and (y7, a, b, c);

endmodule
