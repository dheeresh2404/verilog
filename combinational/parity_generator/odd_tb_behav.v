`timescale 1ns/1ps

module odd_parity_generator_tb;

reg  [3:0] data;
wire parity;

odd_parity_generator uut (
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
    $monitor("%b\t%b", data, parity);

endmodule
