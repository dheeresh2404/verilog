module mux_2x1_gate(
    input I0,
    input I1,
    input S,
    output Y
);

wire S_bar;
wire w1, w2;

not (S_bar, S);
and (w1, I0, S_bar);
and (w2, I1, S);
or  (Y, w1, w2);

endmodule
