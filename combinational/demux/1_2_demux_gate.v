module demux_1x2_gate(
    input I,
    input S,
    output Y0,
    output Y1
);

wire S_bar;

not (S_bar, S);
and (Y0, I, S_bar);
and (Y1, I, S);

endmodule
