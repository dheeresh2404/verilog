`timescale 1ns/1ps

module comparator_1bit_df_tb;

reg A, B;
wire G, L, E;

comparator_1bit_df uut(
    .A(A),
    .B(B),
    .G(G),
    .L(L),
    .E(E)
);

initial begin
    $display("A B | G L E");
    $monitor("%b %b | %b %b %b", A, B, G, L, E);

    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    $finish;
end

endmodule
