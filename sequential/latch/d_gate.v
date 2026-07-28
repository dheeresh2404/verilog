module gated_d_latch (
    input  wire enable,
    input  wire d,
    output reg  q
);

    always @(*) begin
        if (enable) begin
            q = d;
        end
    end

endmodule
