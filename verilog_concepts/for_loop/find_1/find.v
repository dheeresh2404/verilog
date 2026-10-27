module find(input [7:0]a,
output reg [3:0]y);
integer i;
reg found;
always @(*) begin
y=0;
found=0;
for(i=0;i<8;i=i+1)
	if(!found && a[i]) begin
	  y=i;
	  found=1;
  end
end
endmodule	
