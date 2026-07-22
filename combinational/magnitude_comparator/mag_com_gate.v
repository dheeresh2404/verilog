module mag_comparator(
input a1,a2,b1,b2,
output out_1,out_2,out_3);
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12;
not(w1,a1);
not(w2,a2);
not(w3,b1);
not(w4,b2);
and(w5,a1,w3);
and(w6,a1,a2,w4);
and(w7,a2,w3,w4);
or(out_1,w5,w6,w7);
xnor(w8,a1,b1);
xnor(w9,a2,b2);
and(out_2,w8,w9);
and(w10,w1,b1);
and(w11,w2,b1,b2);
and(w12,w1,w2,b2);
or(out_3,w10,w11,w12);
endmodule

