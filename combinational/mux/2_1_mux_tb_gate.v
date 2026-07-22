`timescale 1ns/1ps

module mux_2x1_gate_tb;

reg I0, I1, S;
wire Y;

mux_2x1_gate uut (
    .I0(I0),
    .I1(I1),
    .S(S),
    .Y(Y)
);

initial begin
    $display("I0 I1 S | Y");
    $monitor("%b  %b  %b | %b", I0, I1, S, Y);

    I0 = 0; I1 = 0; S = 0; #10;
    I0 = 0; I1 = 1; S = 0; #10;
    I0 = 1; I1 = 0; S = 0; #10;
    I0 = 1; I1 = 1; S = 0; #10;

    I0 = 0; I1 = 0; S = 1; #10;
    I0 = 0; I1 = 1; S = 1; #10;
    I0 = 1; I1 = 0; S = 1; #10;
    I0 = 1; I1 = 1; S = 1; #10;

    $finish;
end

endmodule
