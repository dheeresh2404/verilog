module gray_to_binary(
    input G3,
    input G2,
    input G1,
    input G0,
    output B3,
    output B2,
    output B1,
    output B0
);

buf GATE1(B3, G3);
xor GATE2(B2, B3, G2);
xor GATE3(B1, B2, G1);
xor GATE4(B0, B1, G0);

endmodule
