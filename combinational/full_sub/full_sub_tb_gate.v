`timescale 1ns/1ps

module full_subtractor_gate_tb;

reg A, B, Bin;
wire Diff, Borrow;

full_subtractor_gate uut (
    .A(A),
    .B(B),
    .Bin(Bin),
    .Diff(Diff),
    .Borrow(Borrow)
);

initial begin
    $display("A B Bin | Diff Borrow");
    $monitor("%b %b  %b  |  %b     %b", A, B, Bin, Diff, Borrow);

    A=0; B=0; Bin=0; #10;
    A=0; B=0; Bin=1; #10;
    A=0; B=1; Bin=0; #10;
    A=0; B=1; Bin=1; #10;
    A=1; B=0; Bin=0; #10;
    A=1; B=0; Bin=1; #10;
    A=1; B=1; Bin=0; #10;
    A=1; B=1; Bin=1; #10;

    $finish;
end

endmodule
