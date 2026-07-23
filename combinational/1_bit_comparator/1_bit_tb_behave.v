`timescale 1ns/1ps

module comparator_1bit_tb;

reg A, B;
wire A_gt_B, A_lt_B, A_eq_B;

comparator_1bit uut (
    .A(A),
    .B(B),
    .A_gt_B(A_gt_B),
    .A_lt_B(A_lt_B),
    .A_eq_B(A_eq_B)
);

initial
begin
    $display("A B | GT LT EQ");
    $monitor("%b %b |  %b  %b  %b", A, B, A_gt_B, A_lt_B, A_eq_B);

    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    $finish;
end

endmodule
