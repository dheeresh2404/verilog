module t_ff (
    input  wire clk,
    input  wire rst,
    input  wire t,
    output reg  q
);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            q <= 1'b0;
        end else begin
            if (t)
                q <= ~q;
            else
                q <= q;
        end
    end

endmodule
