module half_subtractor (
    input A,
    input B,
    output Difference,
    output Borrow
);

assign Difference = A ^ B;   // XOR operation
assign Borrow = (~A) & B;    // NOT A AND B

endmodule
