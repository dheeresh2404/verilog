module count_tb;
reg [7:0] a;
wire [3:0] count;
count uut(.a(a),.count(count));
initial begin
$monitor("a=%b count=%d",a,count);
a=8'b10110111;#10;
a=8'b10111111;#10; 
a=8'b10000111;#10; 
$finish;
end 
endmodule
