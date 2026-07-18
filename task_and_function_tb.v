`timescale 1ns/1ps

module task_function_tb;

reg a, b;
wire sum;
wire carry;

// Instantiate the DUT
task_function uut (
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
);

initial begin

    $display("A B | Sum Carry");
    $display("----------------");

    a = 0; b = 0;
    #10;
    $display("%b %b |  %b    %b", a, b, sum, carry);

    a = 0; b = 1;
    #10;
    $display("%b %b |  %b    %b", a, b, sum, carry);

    a = 1; b = 0;
    #10;
    $display("%b %b |  %b    %b", a, b, sum, carry);

    a = 1; b = 1;
    #10;
    $display("%b %b |  %b    %b", a, b, sum, carry);

    $finish;

end

endmodule
