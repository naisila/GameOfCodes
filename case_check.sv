`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Bilkent University
// Engineer: Naisila Puka
// Create Date: 12/17/2017 04:27:18 PM
// Module Name: case_check
// Project Name: Game of Codes
// Description: This is the module for updating the points of the user in the seven segment display. 
//It takes the answer from the previous module, and if key_valid is 1, which means the user pressed 
//one button in the time slot (approximately 8 seconds), it will increase or decrease one point according to his answer. 
//If the user does not press any key during the time slot, it is considered as a wrong answer and decreases one point. 
//Also, if the user attempts to press again another key from the keypad after having pressed one, it will be ignored. 
//The points will increase up to 9, then anything will be ignored unless restart switch is turned on. 
//Lastly, if the user turns the restart switch on, the points will go to zero again.
//module case_check(
//	input logic clk_fast,
//	input logic clk_slow,
//	input logic key_valid,
//	input logic restart,
//	input logic answer,
//	output logic [3:0]in0
//);
//•	clk_fast: BASYS-3 system clock (100Mhz).
//•	clk_slow:  slowed down clock from BASYS-3 system clock (100Mhz) to (~1.25dHz )
//•	key_valid: this comes from the keypad module. When any key of pinpad is pressed for long enough time, key_valid enters as '1' for just one fast clock cycle.
//•	restart: this is a switch in the Basys. If the user turns the switch on, points will automatically go to zero.
//•	answer: variable for validity of user's answer (pressed key)
//•	in0: This hex number is the output of the module and is passed as input on 7-segment. It is set by the user’s answer validity. In this way his points will be updated.

// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module case_check( input logic clk_fast, clk_slow,
                    input logic key_valid,
                   input logic restart,
                   input logic answer,
                   output logic [3:0]in0
                   );
logic buttonPressed;
initial buttonPressed = 1'b0;             
always_ff@ (posedge clk_fast) 
begin
   if(restart)
       in0 <= 4'h0;  
   else if (key_valid == 1'b1) 
   begin
        case(answer) 
        1'b1: if ( ~buttonPressed ) begin if(in0 != 4'h9) in0 <= in0 + 1; buttonPressed <= 1'b1; end   
        1'b0: if ( ~buttonPressed ) begin if(in0 != 4'h0) in0 <= in0 - 1; buttonPressed <= 1'b1; end   
        endcase
   end//else if   
   else if(clk_slow)
   begin
       if ( buttonPressed ) buttonPressed <= 1'b0;
       else if ( in0 != 1'b0 ) in0 <= in0 - 1;
   end//else if
end//always
endmodule
