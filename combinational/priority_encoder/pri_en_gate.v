module priority_encoder_4to2(
    input D3,
    input D2,
    input D1,
    input D0,
    output Y1,
    output Y0,
    output V
);

wire nD2;

// Inverter
not G1(nD2, D2);

// Output equations
or  G2(Y1, D3, D2);

and G3(Y0, nD2, D1);
or  G4(Y0, D3, Y0);

// Valid output
or G5(V, D3, D2, D1, D0);

endmodule
