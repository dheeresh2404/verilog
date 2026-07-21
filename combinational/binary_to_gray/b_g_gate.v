module binary_to_gray(
    input B3,
    input B2,
    input B1,
    input B0,
    output G3,
    output G2,
    output G1,
    output G0
);

buf GATE1(G3, B3);
xor GATE2(G2, B3, B2);
xor GATE3(G1, B2, B1);
xor GATE4(G0, B1, B0);

endmodule
