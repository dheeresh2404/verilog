module even_parity_generator (
    input  [3:0] data,
    output parity
);

assign parity = data[3] ^ data[2] ^ data[1] ^ data[0];

endmodule`timescale 1ns/1ps

module even_parity_generator_tb;

reg  [3:0] data;
wire parity;

even_parity_generator uut (
    .data(data),
    .parity(parity)
);

initial
begin
    $display("Data\tParity");

    data = 4'b0000; #10;
    data = 4'b0001; #10;
    data = 4'b0011; #10;
    data = 4'b0101; #10;
    data = 4'b1010; #10;
    data = 4'b1111; #10;

    $finish;
end

initial
begin
    $monitor("%b\t%b", data, parity);
end

endmodule
