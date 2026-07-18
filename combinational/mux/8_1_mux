module mux8x1 (
    input I0,
    input I1,
    input I2,
    input I3,
    input I4,
    input I5,
    input I6,
    input I7,
    input S0,
    input S1,
    input S2,
    output Y
);

assign Y = (S2==0 && S1==0 && S0==0) ? I0 :
           (S2==0 && S1==0 && S0==1) ? I1 :
           (S2==0 && S1==1 && S0==0) ? I2 :
           (S2==0 && S1==1 && S0==1) ? I3 :
           (S2==1 && S1==0 && S0==0) ? I4 :
           (S2==1 && S1==0 && S0==1) ? I5 :
           (S2==1 && S1==1 && S0==0) ? I6 :
                                       I7;

endmodule
