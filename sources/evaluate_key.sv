`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Bilkent University
// Engineer: Naisila Puka
// 
// Create Date: 12/17/2017 02:31:04 PM
// Module Name: case_statement
// Project Name: Game of Codes
// Description:This is the module for evaluating the value that comes from the random sequence generator. 
// It uses the 4 least significant bits of the input, checks whether the key_value coming from the keypad 
// corresponds to the random value with regard to my mapping table.
//module evaluate_key(
//input logic [7:0]random,
//input logic [3:0]key_value,
//output logic answer
//);
//•	random: input that comes from the random generator. Its 4 least significant bits will be considered as the code.
//•	key_value: This comes from the keypad module.The value of key_value holds the code of the pressed key ( {row[1:0], col[1:0]} ). This module will check whether key_value corresponds to the value of random[3:0] according to my mapping table.
//•	answer: indicator of whether the answer given by the user was correct or not. It becomes 1 if the answer is correct and 0 if the answer is wrong.

// Target Devices: BASYS-3, FPGA BETI BOARD
// 
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////

module evaluate_key(input logic [7:0] random,
                      input logic [3:0] key_value,
                      output logic correctAnswer);
always_comb
case (random[3:0])
0: if(key_value == 14) correctAnswer = 1; else correctAnswer = 0;
1: if(key_value == 1) correctAnswer = 1; else correctAnswer = 0;
2: if(key_value == 4) correctAnswer = 1; else correctAnswer = 0;
3: if(key_value == 9) correctAnswer = 1; else correctAnswer = 0;
4: if(key_value == 8) correctAnswer = 1; else correctAnswer = 0;
5: if(key_value == 10) correctAnswer = 1; else correctAnswer = 0;
6: if(key_value == 2) correctAnswer = 1; else correctAnswer = 0;
7: if(key_value == 6) correctAnswer = 1; else correctAnswer = 0;
8: if(key_value == 15) correctAnswer = 1; else correctAnswer = 0;
9: if(key_value == 0) correctAnswer = 1; else correctAnswer = 0;
10: if(key_value == 7) correctAnswer = 1; else correctAnswer = 0;
11: if(key_value == 3) correctAnswer = 1; else correctAnswer = 0;
12: if(key_value == 5) correctAnswer = 1; else correctAnswer = 0;
13: if(key_value == 13) correctAnswer = 1; else correctAnswer = 0;
14: if(key_value == 11) correctAnswer = 1; else correctAnswer = 0;
15: if(key_value == 12) correctAnswer = 1; else correctAnswer = 0;
endcase   
endmodule

