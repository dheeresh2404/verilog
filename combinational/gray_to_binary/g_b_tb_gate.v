module tb_gray_to_binary;

reg G3, G2, G1, G0;
wire B3, B2, B1, B0;

gray_to_binary uut(
    .G3(G3),
    .G2(G2),
    .G1(G1),
    .G0(G0),
    .B3(B3),
    .B2(B2),
    .B1(B1),
    .B0(B0)
);

initial
begin
    $monitor("Gray=%b%b%b%b Binary=%b%b%b%b",
              G3,G2,G1,G0,B3,B2,B1,B0);

    {G3,G2,G1,G0}=4'b0000; #10;
    {G3,G2,G1,G0}=4'b0001; #10;
    {G3,G2,G1,G0}=4'b0011; #10;
    {G3,G2,G1,G0}=4'b0010; #10;
    {G3,G2,G1,G0}=4'b0110; #10;
    {G3,G2,G1,G0}=4'b0111; #10;
    {G3,G2,G1,G0}=4'b0101; #10;
    {G3,G2,G1,G0}=4'b0100; #10;
    {G3,G2,G1,G0}=4'b1100; #10;
    {G3,G2,G1,G0}=4'b1101; #10;

    $finish;
end

endmodule
