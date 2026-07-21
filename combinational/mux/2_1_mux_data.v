module mux2x1 (
    input I0,
    input I1,
    input S,
    output Y
);

assign Y = (S == 0) ? I0 : I1;

endmodule
