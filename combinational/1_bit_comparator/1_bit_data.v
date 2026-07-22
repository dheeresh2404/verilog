module comparator_1bit_df(
    input A,
    input B,
    output G,
    output L,
    output E
);

assign G = A & ~B;    
assign L = ~A & B; 
assign E = ~(A ^ B);  

endmodule
