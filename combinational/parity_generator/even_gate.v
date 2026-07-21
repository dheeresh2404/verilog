module even_parity_generator(
    input A,
    input B,
    input C,
    input D,
    output P
);

wire w1, w2;

xor G1(w1, A, B);
xor G2(w2, C, D);
xor G3(P, w1, w2);

endmodule
