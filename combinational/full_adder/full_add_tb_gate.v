`timescale 1ns/1ps

module full_adder_gate_tb;

reg A, B, Cin;
wire Sum, Carry;

full_adder_gate uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Carry(Carry)
);

initial begin
    $display("A B Cin | Sum Carry");
    $monitor("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Carry);

    A=0; B=0; Cin=0; #10;
    A=0; B=0; Cin=1; #10;
    A=0; B=1; Cin=0; #10;
    A=0; B=1; Cin=1; #10;
    A=1; B=0; Cin=0; #10;
    A=1; B=0; Cin=1; #10;
    A=1; B=1; Cin=0; #10;
    A=1; B=1; Cin=1; #10;

    $finish;
end

endmodule
