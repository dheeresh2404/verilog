module demux_1x4_gate(
    input I,
    input S1,
    input S0,
    output Y0,
    output Y1,
    output Y2,
    output Y3
);

wire S1_bar, S0_bar;

not (S1_bar, S1);
not (S0_bar, S0);

and (Y0, I, S1_bar, S0_bar);
and (Y1, I, S1_bar, S0);
and (Y2, I, S1, S0_bar);
and (Y3, I, S1, S0);

endmodule
