module encoder8x3_tb;

reg d0,d1,d2,d3,d4,d5,d6,d7;
wire y0,y1,y2;

encoder8x3 uut(
    .d0(d0), .d1(d1), .d2(d2), .d3(d3),
    .d4(d4), .d5(d5), .d6(d6), .d7(d7),
    .y0(y0), .y1(y1), .y2(y2)
);

initial
begin
    $monitor("d7=%b d6=%b d5=%b d4=%b d3=%b d2=%b d1=%b d0=%b -> y2=%b y1=%b y0=%b",
             d7,d6,d5,d4,d3,d2,d1,d0,y2,y1,y0);

    d0=1; d1=0; d2=0; d3=0; d4=0; d5=0; d6=0; d7=0;
    #10 d0=0; d1=1;
    #10 d1=0; d2=1;
    #10 d2=0; d3=1;
    #10 d3=0; d4=1;
    #10 d4=0; d5=1;
    #10 d5=0; d6=1;
    #10 d6=0; d7=1;
    #10 $finish;
end

endmodule
