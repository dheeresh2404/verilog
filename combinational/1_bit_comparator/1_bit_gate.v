module comparator_1bit(
    input A,
    input B,
    output A_gt_B,
    output A_eq_B,
    output A_lt_B
);

wire notA, notB, xor_out;

not G1(notA, A);
not G2(notB, B);

and G3(A_gt_B, A, notB);

and G4(A_lt_B, notA, B);

xor G5(xor_out, A, B);
not G6(A_eq_B, xor_out);

endmodule
