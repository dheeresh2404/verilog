module mux_8x1_gate(
    input I0,
    input I1,
    input I2,
    input I3,
    input I4,
    input I5,
    input I6,
    input I7,
    input S2,
    input S1,
    input S0,
    output Y
);

wire S2_bar, S1_bar, S0_bar;
wire w0, w1, w2, w3, w4, w5, w6, w7;

not (S2_bar, S2);
not (S1_bar, S1);
not (S0_bar, S0);

and (w0, I0, S2_bar, S1_bar, S0_bar);
and (w1, I1, S2_bar, S1_bar, S0);
and (w2, I2, S2_bar, S1, S0_bar);
and (w3, I3, S2_bar, S1, S0);
and (w4, I4, S2, S1_bar, S0_bar);
and (w5, I5, S2, S1_bar, S0);
and (w6, I6, S2, S1, S0_bar);
and (w7, I7, S2, S1, S0);

or (Y, w0, w1, w2, w3, w4, w5, w6, w7);

endmodule
