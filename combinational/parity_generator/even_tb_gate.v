module tb_even_parity_generator;

reg A, B, C, D;
wire P;

even_parity_generator uut(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .P(P)
);

initial
begin
    $monitor("A=%b B=%b C=%b D=%b | Parity=%b",
              A, B, C, D, P);

    A=0; B=0; C=0; D=0; #10;
    A=0; B=0; C=0; D=1; #10;
    A=0; B=0; C=1; D=1; #10;
    A=0; B=1; C=0; D=1; #10;
    A=1; B=0; C=1; D=0; #10;
    A=1; B=1; C=1; D=1; #10;

    $finish;
end

endmodule
