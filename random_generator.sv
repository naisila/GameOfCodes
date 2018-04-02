`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Bilkent University
// Engineer: Naisila Puka
// 
// Create Date: 12/17/2017 02:28:07 PM
// Module Name: random_generator
// Project Name: Game of Codes
// Description: This is the module for the Pseudo random generator. It generates sequence of 256 values, each of them 8-bit. 
// For the game, the 4 least significant bits of each value will be considered. The random generator was chosen this way in 
// order to make the codes as “random” as possible. Also, the values of direction and rotation of the motor will be assigned 
// in this module as {random[0], random[2]} and {random[1], random[3]} respectively.
// module random_generator(
// input logic clk_slow,
// output logic [1:0] rotation_duration,
// output logic [1:0] direction,
// output logic [7:0]random
// ) ;
// •	clk_slow: slowed down clock from BASYS-3 system clock (100Mhz) to (~1.25dHz )
// •	 rotation_duration: values for rotation duration of the motor {random[1], random[3]}
// •	direction: values for direction of the motor {random[0], random[2]}
// •	random: 8-bit random output
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////

module random_generator(
    input logic clk,
    input logic reset,
    output logic [7:0]q,
    output logic [1:0]direction,
    output logic [1:0]rotation_duration
    );
    
    logic d, xnor1, xor1;
    
    dff ff0(clk, reset, d, q[0]);
    dff ff1(clk, reset, q[0], q[1]);
    dff ff2(clk, reset, q[1], q[2]);
    dff ff3(clk, reset, q[2], q[3]);
    dff ff4(clk, reset, q[3], q[4]);
    dff ff5(clk, reset, q[4], q[5]);
    dff ff6(clk, reset, q[5], q[6]);
    dff ff7(clk, reset, q[6], q[7]);
    xnor theXnor(xnor1, q[1], q[2]);
    xor theXor(xor1, q[3], q[7]);
    xor finalXor(d, xnor1, xor1);
    assign direction = {q[0], q[2]};
    assign rotation_duration = {q[1], q[3]};
endmodule
