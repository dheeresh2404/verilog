module odd_parity_generator (
    input  [3:0] data,
    output reg parity
);

always @(*)
begin
    parity = ~(data[3] ^ data[2] ^ data[1] ^ data[0]);
end

endmodule
