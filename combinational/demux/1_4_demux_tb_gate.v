`timescale 1ns/1ps

module demux_1x4_gate_tb;

reg I, S1, S0;
wire Y0, Y1, Y2, Y3;

demux_1x4_gate uut(
    .I(I),
    .S1(S1),
    .S0(S0),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin
    $display("I S1 S0 | Y0 Y1 Y2 Y3");
    $monitor("%b  %b  %b | %b  %b  %b  %b",
              I, S1, S0, Y0, Y1, Y2, Y3);

    I=0; S1=0; S0=0; #10;
    I=0; S1=0; S0=1; #10;
    I=0; S1=1; S0=0; #10;
    I=0; S1=1; S0=1; #10;

    I=1; S1=0; S0=0; #10;
    I=1; S1=0; S0=1; #10;
    I=1; S1=1; S0=0; #10;
    I=1; S1=1; S0=1; #10;

    $finish;
end

endmodule
