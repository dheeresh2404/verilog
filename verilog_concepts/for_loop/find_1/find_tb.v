module find_tb;
reg [7:0] a;
wire [3:0]y;
find uut(.a(a),.y(y));
initial begin
$monitor("a=%b y=%d",a,y);
a=8'b00100100;#10;
a=8'b00110000;#10; 
a=8'b00100101;#10; 
$finish;
end
endmodule  
