module array;
 reg [3:0]arr[4:0];
initial begin
$monitor ("arr[0]=%d arr[1]=%d arr[2]=%d arr[3]=%d arr[4]=%d",arr[0],arr[1],arr[2],arr[3],arr[4]);
arr[0]=4'd10;
arr[1]=4'd2;
arr[2]=4'd11;
arr[3]=4'd8;
arr[4]=4'd5;
$finish;
end
endmodule
