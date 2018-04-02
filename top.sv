`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Bilkent University
// Engineer: Naisila Puka
// 
// Create Date: 12/13/2017 08:58:59 PM
// Module Name: top
// Project Name: Game of Codes
// Description: This is the top module of the game, where I connect all the inputs and outputs of the different modules I have for the 
// game, as shown in the high level block diagram at part 3.
// 
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////


module top(input logic clk_in, 
           input logic restart,
           // just connect them to FPGA (motor driver)	
           output [3:0] phases,
           //matrix  4x4 keypad
           output [3:0] keyb_row,
           input  [3:0] keyb_col,
           //7-segment signals
           output a, b, c, d, e, f, g, dp, 
           output [3:0] an  
            );
            
logic clk_out;
logic [7:0] q;
logic answer;
logic [1:0] direction; 
logic [1:0] rotation_duration;
logic [3:0] key_value;
logic key_valid;
logic [3:0] in0;

initial begin
in0 = 4'h0; //initial value
end

Clock_Divider divideClock(clk_in, clk_out);

random_generator pseudoRandom(clk_out, restart, q, direction, rotation_duration);

steppermotor_wrapper steppermotor_wrapper_inst0( clk_in, direction, rotation_duration, phases, clk_out);

keypad4X4 keypad4X4_inst0(clk_in, keyb_row, keyb_col, key_value, key_valid);

evaluate_key check(q, key_value, answer);

SevSeg_4digit SevSeg_4digit_inst0(clk_in, in0, 4'h0, 4'h0, 4'h0, a, b, c, d, e, f, g, dp, an);

case_check points(clk_in, clk_out, key_valid, restart, answer, in0);

endmodule
