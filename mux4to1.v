// File: mux4to1.v
module mux4to1 (
    input wire I0, I1, I2, I3,
    input wire S0, S1,
    output wire Y
);

assign Y = (~S1 & ~S0 & I0) |
           (~S1 &  S0 & I1) |
           ( S1 & ~S0 & I2) |
           ( S1 &  S0 & I3);

endmodule
