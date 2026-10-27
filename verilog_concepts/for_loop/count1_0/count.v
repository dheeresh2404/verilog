module count(input [7:0]a,
output reg [3:0]count);
integer i;
always @(*) begin
count=0;
for(i=0;i<8;i=i+1)
	if(a[i])
		count=count+1;
end
endmodule
