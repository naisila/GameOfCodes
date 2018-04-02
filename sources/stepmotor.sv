`timescale 1 ps / 1 ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Bilkent University
// Engineer: Hamzeh Ahangari : TA OF CS 223 FALL 2017
// 
// Create Date: 
// Design Name: 
// Module Name: 
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

(* keep_hierarchy = "yes" *)
module stepmotor(
	input clk, //100 MHz in Basys3
	input direction, //user input for motor direction
	input  [1:0] speed, // user input for motor speed
	output [3:0] phases, // just connect them to FPGA (motor driver: A B Ab Bb)
	input stop // user input for stopping the motor
    );
	

  wire \<const0> ;
  wire \<const1> ;
  wire [19:17]D;
  wire \FSM_sequential_st[0]_i_1_n_0 ;
  wire \FSM_sequential_st[1]_i_1_n_0 ;
  wire clear;
  wire clk_en_i_1_n_0;
  wire clk_en_i_2_n_0;
  wire clk_en_i_3_n_0;
  wire clk_en_i_4_n_0;
  wire clk_en_reg_n_0;
  wire \count[0]_i_10_n_0 ;
  wire \count[0]_i_11_n_0 ;
  wire \count[0]_i_12_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire \count[0]_i_7_n_0 ;
  wire \count[0]_i_8_n_0 ;
  wire \count[0]_i_9_n_0 ;
  wire [19:0]count_reg;
  wire \count_reg[0]_i_1_n_2 ;
  wire \count_reg[0]_i_1_n_3 ;
  wire \count_reg[0]_i_3_n_0 ;
  wire \count_reg[0]_i_3_n_1 ;
  wire \count_reg[0]_i_3_n_2 ;
  wire \count_reg[0]_i_3_n_3 ;
  wire \count_reg[0]_i_3_n_4 ;
  wire \count_reg[0]_i_3_n_5 ;
  wire \count_reg[0]_i_3_n_6 ;
  wire \count_reg[0]_i_3_n_7 ;
  wire \count_reg[0]_i_4_n_0 ;
  wire \count_reg[0]_i_4_n_1 ;
  wire \count_reg[0]_i_4_n_2 ;
  wire \count_reg[0]_i_4_n_3 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire [19:17]p_0_in;
  wire sel;
  (* RTL_KEEP = "yes" *) wire [0:0]st;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \D[17]_i_1 
       (.I0(speed[1]),
        .I1(speed[0]),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \D[18]_i_1 
       (.I0(speed[0]),
        .I1(speed[1]),
        .O(p_0_in[18]));
  LUT2 #(
    .INIT(4'h2)) 
    \D[19]_i_1 
       (.I0(speed[0]),
        .I1(speed[1]),
        .O(p_0_in[19]));
  FDRE #(
    .INIT(1'b0)) 
    \D_reg[17] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[17]),
        .Q(D[17]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \D_reg[18] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[18]),
        .Q(D[18]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \D_reg[19] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[19]),
        .Q(D[19]),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'h74)) 
    \FSM_sequential_st[0]_i_1 
       (.I0(st),
        .I1(clk_en_reg_n_0),
        .I2(st),
        .O(\FSM_sequential_st[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \FSM_sequential_st[1]_i_1 
       (.I0(direction),
        .I1(phases[1]),
        .I2(st),
        .I3(clk_en_reg_n_0),
        .I4(phases[1]),
        .O(\FSM_sequential_st[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "st_0:00,st_1:11,st_2:10,st_3:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_st_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\FSM_sequential_st[0]_i_1_n_0 ),
        .Q(st),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "st_0:00,st_1:11,st_2:10,st_3:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_st_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\FSM_sequential_st[1]_i_1_n_0 ),
        .Q(phases[1]),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'h00008000)) 
    clk_en_i_1
       (.I0(clk_en_i_2_n_0),
        .I1(clk_en_i_3_n_0),
        .I2(clk_en_i_4_n_0),
        .I3(count_reg[0]),
        .I4(count_reg[1]),
        .O(clk_en_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clk_en_i_2
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .I2(count_reg[14]),
        .I3(count_reg[15]),
        .I4(count_reg[19]),
        .I5(count_reg[18]),
        .O(clk_en_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clk_en_i_3
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .I4(count_reg[7]),
        .I5(count_reg[6]),
        .O(clk_en_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clk_en_i_4
       (.I0(count_reg[10]),
        .I1(count_reg[11]),
        .I2(count_reg[8]),
        .I3(count_reg[9]),
        .I4(count_reg[13]),
        .I5(count_reg[12]),
        .O(clk_en_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_en_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(clk_en_i_1_n_0),
        .Q(clk_en_reg_n_0),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'h8001)) 
    \count[0]_i_10 
       (.I0(count_reg[7]),
        .I1(count_reg[8]),
        .I2(D[17]),
        .I3(count_reg[6]),
        .O(\count[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8001)) 
    \count[0]_i_11 
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .I2(D[17]),
        .I3(count_reg[3]),
        .O(\count[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h8001)) 
    \count[0]_i_12 
       (.I0(count_reg[1]),
        .I1(count_reg[2]),
        .I2(D[17]),
        .I3(count_reg[0]),
        .O(\count[0]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(stop),
        .O(sel));
  LUT4 #(
    .INIT(16'h9009)) 
    \count[0]_i_5 
       (.I0(D[19]),
        .I1(count_reg[19]),
        .I2(D[18]),
        .I3(count_reg[18]),
        .O(\count[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8001)) 
    \count[0]_i_6 
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .I2(D[17]),
        .I3(count_reg[15]),
        .O(\count[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8001)) 
    \count[0]_i_7 
       (.I0(count_reg[13]),
        .I1(count_reg[14]),
        .I2(D[17]),
        .I3(count_reg[12]),
        .O(\count[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_8 
       (.I0(count_reg[0]),
        .O(\count[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8001)) 
    \count[0]_i_9 
       (.I0(count_reg[10]),
        .I1(count_reg[11]),
        .I2(D[17]),
        .I3(count_reg[9]),
        .O(\count[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[0]_i_3_n_7 ),
        .Q(count_reg[0]),
        .R(clear));
  CARRY4 \count_reg[0]_i_1 
       (.CI(\count_reg[0]_i_4_n_0 ),
        .CO({clear,\count_reg[0]_i_1_n_2 ,\count_reg[0]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\count[0]_i_5_n_0 ,\count[0]_i_6_n_0 ,\count[0]_i_7_n_0 }));
  CARRY4 \count_reg[0]_i_3 
       (.CI(\<const0> ),
        .CO({\count_reg[0]_i_3_n_0 ,\count_reg[0]_i_3_n_1 ,\count_reg[0]_i_3_n_2 ,\count_reg[0]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\count_reg[0]_i_3_n_4 ,\count_reg[0]_i_3_n_5 ,\count_reg[0]_i_3_n_6 ,\count_reg[0]_i_3_n_7 }),
        .S({count_reg[3:1],\count[0]_i_8_n_0 }));
  CARRY4 \count_reg[0]_i_4 
       (.CI(\<const0> ),
        .CO({\count_reg[0]_i_4_n_0 ,\count_reg[0]_i_4_n_1 ,\count_reg[0]_i_4_n_2 ,\count_reg[0]_i_4_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\count[0]_i_9_n_0 ,\count[0]_i_10_n_0 ,\count[0]_i_11_n_0 ,\count[0]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(clear));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(clear));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S(count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[0]_i_3_n_6 ),
        .Q(count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[0]_i_3_n_5 ),
        .Q(count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[0]_i_3_n_4 ),
        .Q(count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(clear));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_3_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(clear));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(clear));
  LUT2 #(
    .INIT(4'h6)) 
    \phases[0]_INST_0 
       (.I0(st),
        .I1(phases[1]),
        .O(phases[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \phases[2]_INST_0 
       (.I0(phases[1]),
        .I1(st),
        .O(phases[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \phases[3]_INST_0 
       (.I0(phases[1]),
        .O(phases[3]));
endmodule
	
