module reverse_tb;
reg [7:0]a;
wire [7:0]y;
reverse uut(.a(a),.y(y));
initial begin
$monitor("a=%b y=%b",a,y);
a=8'b10010011;#10;
a=8'b10011011;#10; 
a=8'b1111001;#10; 
$finish;
end 
endmodule
