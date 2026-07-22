`timescale 1ns/1ps

module priority_encoder_4x2_df_tb;

reg I0, I1, I2, I3;
wire Y1, Y0;

priority_encoder_4x2_df uut (
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .Y1(Y1),
    .Y0(Y0)
);

initial begin
    $display("I3 I2 I1 I0 | Y1 Y0");
    $monitor("%b  %b  %b  %b | %b  %b",
              I3, I2, I1, I0, Y1, Y0);

    I3=0; I2=0; I1=0; I0=1; #10;
    I3=0; I2=0; I1=1; I0=0; #10;
    I3=0; I2=1; I1=0; I0=0; #10;
    I3=1; I2=0; I1=0; I0=0; #10;

    // Multiple inputs high (priority check)
    I3=0; I2=1; I1=1; I0=1; #10;
    I3=1; I2=1; I1=1; I0=1; #10;

    $finish;
end

endmodule
