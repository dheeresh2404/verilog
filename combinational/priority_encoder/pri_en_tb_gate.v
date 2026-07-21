module tb_priority_encoder_4to2;

reg D3, D2, D1, D0;
wire Y1, Y0, V;

priority_encoder_4to2 uut(
    .D3(D3),
    .D2(D2),
    .D1(D1),
    .D0(D0),
    .Y1(Y1),
    .Y0(Y0),
    .V(V)
);

initial
begin
    $monitor("D3=%b D2=%b D1=%b D0=%b | Y=%b%b V=%b",
              D3, D2, D1, D0, Y1, Y0, V);

    D3=0; D2=0; D1=0; D0=0; #10;
    D3=0; D2=0; D1=0; D0=1; #10;
    D3=0; D2=0; D1=1; D0=1; #10;
    D3=0; D2=1; D1=1; D0=1; #10;
    D3=1; D2=1; D1=1; D0=1; #10;
    D3=1; D2=0; D1=0; D0=0; #10;

    $finish;
end

endmodule
