// File: tb_mux4to1.v
`timescale 1ns/1ps
module tb_mux4to1;

reg I0, I1, I2, I3;
reg S0, S1;
wire Y;

mux4to1 uut (
    .I0(I0), .I1(I1), .I2(I2), .I3(I3),
    .S0(S0), .S1(S1),
    .Y(Y)
);

initial begin
    // Initialize inputs
    I0 = 0; I1 = 0; I2 = 0; I3 = 0;
    S0 = 0; S1 = 0;

    // Test all input combinations
    #5 I0=1; I1=0; I2=0; I3=0; S0=0; S1=0;
    #5 S0=1; S1=0;
    #5 S0=0; S1=1;
    #5 S0=1; S1=1;
    #5 I0=0; I1=1; I2=0; I3=1; S0=0; S1=0;
    #5 S0=1; S1=0;
    #5 S0=0; S1=1;
    #5 S0=1; S1=1;

    #5 $finish;
end

initial begin
    $monitor("Time=%0t | S1=%b S0=%b | I0=%b I1=%b I2=%b I3=%b | Y=%b", 
             $time, S1, S0, I0, I1, I2, I3, Y);
end

endmodule
