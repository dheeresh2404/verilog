module largest_tb;
reg [3:0]arr[0:4];
reg [3:0]max;
integer i;
always@(*) begin                                                                                                                       max=arr[0];                                                                                                                            for(i=1;i<5;i=i+1)                                                                                                                     begin                                                                                                                                  if(arr[i]>max)                                                                                                                         max=arr[i];                                                                                                                            end                                                                                                                                    end        
initial begin
$monitor("max=%d",max);
arr[0]=4'd10;
arr[1]=4'd2;
arr[2]=4'd11;
arr[3]=4'd8;
arr[4]=4'd5;
#1;$finish;
end
endmodule
