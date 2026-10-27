module reverse(input [7:0]a,
output reg [7:0]y);
integer i,n;
always @(*) begin
n=7;
for(i=0;i<8;i=i+1)
	y[n-i]=a[i];
end
endmodule	
