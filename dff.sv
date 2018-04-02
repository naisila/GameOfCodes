`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Bilkent University
// Engineer: Naisila Puka
// 
// Create Date: 12/17/2017 02:27:28 PM
// Module Name: dff
// Project Name: Game of Codes
// Description: A simple d flip flop
// Revision:
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module dff( input logic clk, 
            input logic r,
            input logic d,
            output logic q
            );
    always_ff@(posedge clk)
        if(r) q <= 0;
        else q <= d;
endmodule
