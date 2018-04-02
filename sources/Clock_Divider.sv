`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Bilkent University
// Engineer: Provided in LAB4 CS223 FALL 2017
// Create Date: 12/17/2017 02:32:20 PM
// Module Name: Clock_Divider
// Project Name: Game of Codes
// Description: Slows down the clock
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
// clk_in is the original clock signal coming from the FPGA board (100 MHz)
// clk_out is the slowed-down clock signal that you can use for your modules (~1Hz)
module Clock_Divider(
 input clk_in,
 output clk_out
 );

logic [30:0] count = {1'b1, 30'b0};
logic clk_NoBuf;
always@ (posedge clk_in) begin
if(count != 31'b0)
count <= count - 1;
else
count <= {1'b1, 30'b0};
end//always
assign clk_NoBuf = count[30];
BUFG BUFG_inst (
 .I(clk_NoBuf), // 1-bit input: Clock input
 .O(clk_out) // 1-bit output: Clock output

);
endmodule
