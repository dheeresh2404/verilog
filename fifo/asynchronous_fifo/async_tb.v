`timescale 1ns/1ps

module async_fifo_tb;
reg wclk,rclk;
reg w_rst,r_rst;
reg w_en,r_en;
reg [7:0]wdata;
wire [7:0]rdata;
wire wfull;
wire rempty;

async_fifo uut(.wclk(wclk),
	.w_rst(w_rst),
	.w_en(w_en),
	.wdata(wdata),
	.rclk(rclk),
	.r_rst(r_rst),
	.r_en(r_en),
	.rdata(rdata),
	.wfull(wfull),
	.rempty(rempty));

always #5 wclk=~wclk;
always #10 rclk=~rclk;

initial begin
	
        $monitor("time=%0t w_rst=%b w_e=%b wdata=%h full=%b r_rst=%b r_e=%b rdata=%h empty=%b",$time,w_rst,w_en,wdata,wfull,r_rst,r_en,rdata,rempty);
	wclk=0;
	rclk=0;
	w_rst=0;
	r_rst=0;
	w_en=0;
	r_en=0;
	wdata=8'b00000000;

	#20;
	w_rst=1;
	r_rst=1;

	#20;
	w_en=1;
	wdata=8'h11;#10;
	wdata=8'h22;#10;
	wdata=8'h33;#10;
	wdata=8'h44;#10;
	wdata=8'h55;#10;
	wdata=8'h66;#10;
	wdata=8'h77;#10;
	wdata=8'h88;#10;

	w_en=0;#30;
	r_en=1;
	#20;
	#20;
	#20;
	#20;
	#20;
	#20;
	#20;
	#20;
	r_en=0;
	#50;
	$finish;
end
initial begin 
	$dumpfile("async_fifo.vcd");
	$dumpvars;
end
endmodule
