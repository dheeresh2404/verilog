`timescale 1ns / 1ps

module tb_top_module;

    // Testbench signals
    reg  clk;
    reg  d;
    wire q;

    // Instantiate the Unit Under Test (UUT)
    top_module uut (
        .clk(clk),
        .d(d),
        .q(q)
    );

    // 1. Clock Generation: 10ns period clock (toggles every 5ns)
    always #5 clk = ~clk;

    // 2. Stimulus Block
    initial begin
        // Initialize signals
        clk = 0;
        d   = 0;

        // Display header in console
        $display("Time | clk | d | q");
        $display("-----------------");

        // Apply test vectors
        #7  d = 1; // Change 'd' before rising edge of clk (5ns, 15ns...)
        #10 d = 0;
        #10 d = 1;
        #20 d = 0;

        #10 $finish; // End simulation
    end

    // 3. Monitor Output: Prints signal changes at rising edge of clock
    always @(posedge clk) begin
        #1; // Small delay to read values after the clock edge
        $display("%4t |  %b  | %b | %b", $time, clk, d, q);
    end

endmodule


