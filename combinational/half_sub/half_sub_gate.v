module half_subtractor_gate(
    input A,
    input B,
    output Diff,
    output Borrow
);

xor (Diff, A, B);
not (n1, A);
and (Borrow, n1, B);

endmodule
