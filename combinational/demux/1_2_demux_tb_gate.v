`timescale 1ns/1ps

module demux_1x2_gate_tb;

reg I, S;
wire Y0, Y1;

demux_1x2_gate uut (
    .I(I),
    .S(S),
    .Y0(Y0),
    .Y1(Y1)
);

initial begin
    $display("I S | Y0 Y1");
    $monitor("%b %b | %b  %b", I, S, Y0, Y1);

    I = 0; S = 0; #10;
    I = 0; S = 1; #10;
    I = 1; S = 0; #10;
    I = 1; S = 1; #10;

    $finish;
end

endmodule
