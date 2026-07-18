module alu_tb;
reg [3:0]a,b;
wire [4:0]sum,dif;
wire [7:0]mul;
wire [3:0]div;
alu uut(.a(a),.b(b),.sum(sum),.dif(dif),.mul(mul),.div(div));
initial begin
$monitor("a=%d ,b=%d ,sum=%d ,dif=%d ,mul=%d ,div=%d",a,b,sum,dif,mul,div);
a=4'd10;b=4'd5;#10;
a=4'd15;b=4'd2;#10;
$finish;
end
endmodule 
