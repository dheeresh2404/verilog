module odd_parity_generator(
    input A,
    input B,
    input C,
    input D,
    output P
);

wire w1, w2, w3;

xor G1(w1, A, B);
xor G2(w2, C, D);
xor G3(w3, w1, w2);
not G4(P, w3);

endmodule
