module mux_4x1_gate(
    input I0,
    input I1,
    input I2,
    input I3,
    input S1,
    input S0,
    output Y
);

wire S1_bar, S0_bar;
wire w1, w2, w3, w4;

not (S1_bar, S1);
not (S0_bar, S0);

and (w1, I0, S1_bar, S0_bar);
and (w2, I1, S1_bar, S0);
and (w3, I2, S1, S0_bar);
and (w4, I3, S1, S0);

or (Y, w1, w2, w3, w4);

endmodule
