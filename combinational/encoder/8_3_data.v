module encoder_8x3_df(
    input I0,
    input I1,
    input I2,
    input I3,
    input I4,
    input I5,
    input I6,
    input I7,
    output Y2,
    output Y1,
    output Y0
);

assign Y2 = I4 | I5 | I6 | I7;
assign Y1 = I2 | I3 | I6 | I7;
assign Y0 = I1 | I3 | I5 | I7;

endmodule
