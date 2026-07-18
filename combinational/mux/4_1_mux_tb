`timescale 1ns/1ps

module mux4x1_tb;

reg I0, I1, I2, I3;
reg S0, S1;
wire Y;

// Instantiate the MUX
mux4x1 uut (
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .S0(S0),
    .S1(S1),
    .Y(Y)
);

initial begin
    // Set input values
    I0 = 0;
    I1 = 1;
    I2 = 0;
    I3 = 1;

    // Test all select lines
    S1 = 0; S0 = 0; #10;
    S1 = 0; S0 = 1; #10;
    S1 = 1; S0 = 0; #10;
    S1 = 1; S0 = 1; #10;

    $finish;
end

initial begin
    $monitor("Time=%0t S1=%b S0=%b I0=%b I1=%b I2=%b I3=%b Y=%b",
              $time, S1, S0, I0, I1, I2, I3, Y);
end

endmodule
