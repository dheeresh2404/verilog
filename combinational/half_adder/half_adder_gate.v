module half_adder_gate(
    input A,
    input B,
    output Sum,
    output Carry
);

xor (Sum, A, B);
and (Carry, A, B);

endmodule
