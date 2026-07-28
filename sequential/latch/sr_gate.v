module gated_sr_latch (
    input  wire enable,
    input  wire s,
    input  wire r,
    output reg  q
);

    always @(*) begin
        if (enable) begin
            case ({s, r})
                2'b00: q = q;
                2'b01: q = 1'b0;
                2'b10: q = 1'b1;
                2'b11: q = 1'bx;
            endcase
        end
    end

endmodule
