module task_function_tb(
    input a,
    input b,
    output sum,
    output reg carry
);

assign sum = xor_fun(a,b);

function xor_fun;
    input x,y;
    begin
        xor_fun = x ^ y;
    end
endfunction

task carry_task;
    input x,y;
    output c;
    begin
        c = x & y;
    end
endtask

always @(*) begin
    carry_task(a,b,carry);
end

endmodule
