`timescale 1ns/1ps

module demux_1to2_tb;

reg din, sel;
wire y0, y1;

demux_1to2 uut (
    .din(din),
    .sel(sel),
    .y0(y0),
    .y1(y1)
);

initial
begin
    $display("din sel | y0 y1");
    $monitor(" %b   %b  | %b  %b", din, sel, y0, y1);

    din = 0; sel = 0; #10;
    din = 1; sel = 0; #10;
    din = 0; sel = 1; #10;
    din = 1; sel = 1; #10;

    $finish;
end

endmodule
