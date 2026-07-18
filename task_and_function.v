module task_function;

reg a, b;
wire sum;
reg carry;

assign sum = xor_fun(a, b);

function xor_fun;
    input x, y;
    begin
        xor_fun = x ^ y;
    end
endfunction

task carry_task;
    input x, y;
    output c;
    begin
        c = x & y;
    end
endtask

initial begin

    a = 0; b = 0;
    carry_task(a, b, carry);
    $display("A=%b B=%b Sum=%b Carry=%b", a, b, sum, carry);

    a = 0; b = 1;
    carry_task(a, b, carry);
    $display("A=%b B=%b Sum=%b Carry=%b", a, b, sum, carry);

    a = 1; b = 0;
    carry_task(a, b, carry);
    $display("A=%b B=%b Sum=%b Carry=%b", a, b, sum, carry);

    a = 1; b = 1;
    carry_task(a, b, carry);
    $display("A=%b B=%b Sum=%b Carry=%b", a, b, sum, carry);

    $finish;

end

endmodule
