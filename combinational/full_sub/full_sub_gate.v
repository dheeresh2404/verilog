module full_subtractor_gate(
    input A,
    input B,
    input Bin,
    output Diff,
    output Borrow
);

wire x1;
wire nA;
wire w1, w2, w3;

xor (x1, A, B);
xor (Diff, x1, Bin);

not (nA, A);

and (w1, nA, B);
and (w2, nA, Bin);
and (w3, B, Bin);

or (Borrow, w1, w2, w3);

endmodule
