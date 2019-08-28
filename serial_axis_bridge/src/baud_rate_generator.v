`timescale 1ns / 1ps
// Numerically controlled oscillator implementation of a baud rate generator.
// Set via parameters:
// 1) number of bits in the accumulator
// 2) value to accumulate in each cycle
// by default this is set to accomodate 115,200 from a 100 MHz clock
// For this you need a 1.843200 MHz clock
// This is a divide by 54.253472...
// This is an accumulator of 151 on a 13-bit register (max value of 8192)
// Gives an error of 0.003% (how handy).
module baud_rate_generator(
        input clk_i,
        input rst_i,
        output baud_o
    );
    
    parameter NBITS = 13;
    parameter ADD = 151;
    
    // Accumulator. This is 1 bit larger than requested to register the overflow bit.
    reg [NBITS:0] accumulator = {NBITS+1{1'b0}};
    
    always @(posedge clk_i) begin
        if (rst_i) accumulator <= {NBITS+1{1'b0}};
        else accumulator <= accumulator[NBITS-1:0] + ADD;
    end
    
    assign baud_o = accumulator[NBITS];    
endmodule
