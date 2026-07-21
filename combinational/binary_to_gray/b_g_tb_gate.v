module tb_binary_to_gray;

reg B3, B2, B1, B0;
wire G3, G2, G1, G0;

binary_to_gray uut(
    .B3(B3),
    .B2(B2),
    .B1(B1),
    .B0(B0),
    .G3(G3),
    .G2(G2),
    .G1(G1),
    .G0(G0)
);

initial begin

    $monitor("Binary=%b%b%b%b Gray=%b%b%b%b",
              B3,B2,B1,B0,G3,G2,G1,G0);

    {B3,B2,B1,B0}=4'b0000; #10;
    {B3,B2,B1,B0}=4'b0001; #10;
    {B3,B2,B1,B0}=4'b0010; #10;
    {B3,B2,B1,B0}=4'b0011; #10;
    {B3,B2,B1,B0}=4'b0100; #10;
    {B3,B2,B1,B0}=4'b0101; #10;
    {B3,B2,B1,B0}=4'b0110; #10;
    {B3,B2,B1,B0}=4'b0111; #10;
    {B3,B2,B1,B0}=4'b1000; #10;
    {B3,B2,B1,B0}=4'b1001; #10;

    $finish;

end

endmodule
