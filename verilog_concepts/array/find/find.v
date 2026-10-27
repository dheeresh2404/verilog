module find_;
reg [3:0]arr[4:0];
reg [3:0]num;
reg find;
integer i;
always@(*) begin
find=0;
for(i=0;i<5;i=i+1)
begin
if(num==arr[i])
find=1;
end
end
initial begin
$monitor("find=%d",find);
arr[0]=4'd10;
arr[1]=4'd2;
arr[2]=4'd11;
arr[3]=4'd8;
arr[4]=4'd5;
num=4'd11;#10;
num=4'd9;
#1;$finish;
end
endmodule
