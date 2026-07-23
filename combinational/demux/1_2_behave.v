module demux_1to2 (
    input din,
    input sel,
    output reg y0,
    output reg y1
);

always @(*)
begin
    if (sel == 1'b0)
    begin
        y0 = din;
        y1 = 1'b0;
    end
    else
    begin
        y0 = 1'b0;
        y1 = din;
    end
end

endmodule
