module priority_encoder_4x2_df(
    input I0,
    input I1,
    input I2,
    input I3,
    output Y1,
    output Y0
);

assign Y1 = I3 | I2;
assign Y0 = I3 | (~I2 & I1);

endmodule
