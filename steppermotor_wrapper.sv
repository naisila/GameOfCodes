`timescale 1 ps / 1 ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Bilkent University
// Engineer: Hamzeh Ahangari : TA OF CS223 FALL 2017
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
module steppermotor_wrapper(
    input clk, //100Mhz on Basys3
	
	//user input for motor rotation direction. 
	// direction[0]: first movement 
	// direction[1]: second movement
	// 1'b0: left  1'b1: right
	input [1:0] direction,
	
	//user input for motor rotation duration.
	// rotation_duration[0]: first movement 
	// rotation_duration[1]: second movement
	// 1'b0: short  1'b1: long
	input [1:0] rotation_duration,  
	
	// just connect them to FPGA (motor drivers)
	output [3:0] phases, 
	
	//user input to initiate motor. a pulse (at least one clock cycle) starts 2 movements of motor. 
	// if you re-apply it before the motor finishes both movements, new start command is ignored.
	input start
	
    );

  wire \<const0> ;
  wire \<const1> ;
  wire \count[28]_i_10_n_0 ;
  wire \count[28]_i_12_n_0 ;
  wire \count[28]_i_13_n_0 ;
  wire \count[28]_i_15_n_0 ;
  wire \count[28]_i_16_n_0 ;
  wire \count[28]_i_17_n_0 ;
  wire \count[28]_i_18_n_0 ;
  wire \count[28]_i_19_n_0 ;
  wire \count[28]_i_1_n_0 ;
  wire \count[28]_i_21_n_0 ;
  wire \count[28]_i_22_n_0 ;
  wire \count[28]_i_23_n_0 ;
  wire \count[28]_i_24_n_0 ;
  wire \count[28]_i_26_n_0 ;
  wire \count[28]_i_27_n_0 ;
  wire \count[28]_i_28_n_0 ;
  wire \count[28]_i_29_n_0 ;
  wire \count[28]_i_30_n_0 ;
  wire \count[28]_i_31_n_0 ;
  wire \count[28]_i_32_n_0 ;
  wire \count[28]_i_33_n_0 ;
  wire \count[28]_i_34_n_0 ;
  wire \count[28]_i_35_n_0 ;
  wire \count[28]_i_36_n_0 ;
  wire \count[28]_i_37_n_0 ;
  wire \count[28]_i_3_n_0 ;
  wire \count[28]_i_6_n_0 ;
  wire \count[28]_i_7_n_0 ;
  wire \count[28]_i_8_n_0 ;
  wire \count[28]_i_9_n_0 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_1 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_1 ;
  wire \count_reg[24]_i_1_n_2 ;
  wire \count_reg[24]_i_1_n_3 ;
  wire \count_reg[28]_i_11_n_0 ;
  wire \count_reg[28]_i_11_n_1 ;
  wire \count_reg[28]_i_11_n_2 ;
  wire \count_reg[28]_i_11_n_3 ;
  wire \count_reg[28]_i_14_n_0 ;
  wire \count_reg[28]_i_14_n_1 ;
  wire \count_reg[28]_i_14_n_2 ;
  wire \count_reg[28]_i_14_n_3 ;
  wire \count_reg[28]_i_20_n_0 ;
  wire \count_reg[28]_i_20_n_1 ;
  wire \count_reg[28]_i_20_n_2 ;
  wire \count_reg[28]_i_20_n_3 ;
  wire \count_reg[28]_i_25_n_0 ;
  wire \count_reg[28]_i_25_n_1 ;
  wire \count_reg[28]_i_25_n_2 ;
  wire \count_reg[28]_i_25_n_3 ;
  wire \count_reg[28]_i_2_n_1 ;
  wire \count_reg[28]_i_2_n_2 ;
  wire \count_reg[28]_i_2_n_3 ;
  wire \count_reg[28]_i_4_n_3 ;
  wire \count_reg[28]_i_5_n_3 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire [28:1]data0;
  wire [0:0]data0__0;
  wire data1;
  wire data2;
  wire direction_motor_i_1_n_0;
  wire [1:0]direction_saved;
  wire init;
  wire init_i_1_n_0;
  wire rotation_duration_saved;
  wire \rotation_duration_saved_reg_n_0_[0] ;
  wire \rotation_duration_saved_reg_n_0_[1] ;
  wire [28:0]sel0;
  wire start_del;
  wire [1:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire stop_motor;
  wire stop_motor_i_1_n_0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(sel0[0]),
        .O(data0__0));
  LUT6 #(
    .INIT(64'hCCF300F3DDF311F3)) 
    \count[28]_i_1 
       (.I0(\count[28]_i_3_n_0 ),
        .I1(state[0]),
        .I2(data1),
        .I3(state[1]),
        .I4(data2),
        .I5(sel0[28]),
        .O(\count[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count[28]_i_10 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[4]),
        .I5(sel0[5]),
        .O(\count[28]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[28]_i_12 
       (.I0(sel0[27]),
        .I1(sel0[28]),
        .O(\count[28]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8008)) 
    \count[28]_i_13 
       (.I0(sel0[24]),
        .I1(sel0[25]),
        .I2(\rotation_duration_saved_reg_n_0_[0] ),
        .I3(sel0[26]),
        .O(\count[28]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[28]_i_15 
       (.I0(sel0[27]),
        .I1(sel0[28]),
        .O(\count[28]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h8008)) 
    \count[28]_i_16 
       (.I0(sel0[24]),
        .I1(sel0[25]),
        .I2(\rotation_duration_saved_reg_n_0_[1] ),
        .I3(sel0[26]),
        .O(\count[28]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[28]_i_17 
       (.I0(sel0[18]),
        .I1(sel0[20]),
        .O(\count[28]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count[28]_i_18 
       (.I0(sel0[6]),
        .I1(sel0[8]),
        .O(\count[28]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \count[28]_i_19 
       (.I0(sel0[19]),
        .I1(sel0[17]),
        .I2(sel0[25]),
        .I3(sel0[24]),
        .O(\count[28]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h1004)) 
    \count[28]_i_21 
       (.I0(sel0[22]),
        .I1(sel0[23]),
        .I2(\rotation_duration_saved_reg_n_0_[0] ),
        .I3(sel0[21]),
        .O(\count[28]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h0024)) 
    \count[28]_i_22 
       (.I0(sel0[18]),
        .I1(sel0[20]),
        .I2(\rotation_duration_saved_reg_n_0_[0] ),
        .I3(sel0[19]),
        .O(\count[28]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h0880)) 
    \count[28]_i_23 
       (.I0(sel0[16]),
        .I1(sel0[17]),
        .I2(\rotation_duration_saved_reg_n_0_[0] ),
        .I3(sel0[15]),
        .O(\count[28]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \count[28]_i_24 
       (.I0(sel0[14]),
        .I1(sel0[13]),
        .I2(sel0[12]),
        .O(\count[28]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h1004)) 
    \count[28]_i_26 
       (.I0(sel0[22]),
        .I1(sel0[23]),
        .I2(\rotation_duration_saved_reg_n_0_[1] ),
        .I3(sel0[21]),
        .O(\count[28]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h0024)) 
    \count[28]_i_27 
       (.I0(sel0[18]),
        .I1(sel0[20]),
        .I2(\rotation_duration_saved_reg_n_0_[1] ),
        .I3(sel0[19]),
        .O(\count[28]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h0880)) 
    \count[28]_i_28 
       (.I0(sel0[16]),
        .I1(sel0[17]),
        .I2(\rotation_duration_saved_reg_n_0_[1] ),
        .I3(sel0[15]),
        .O(\count[28]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \count[28]_i_29 
       (.I0(sel0[14]),
        .I1(sel0[13]),
        .I2(sel0[12]),
        .O(\count[28]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[28]_i_3 
       (.I0(\count[28]_i_6_n_0 ),
        .I1(\count[28]_i_7_n_0 ),
        .I2(\count[28]_i_8_n_0 ),
        .I3(\count[28]_i_9_n_0 ),
        .I4(\count[28]_i_10_n_0 ),
        .O(\count[28]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8040)) 
    \count[28]_i_30 
       (.I0(\rotation_duration_saved_reg_n_0_[0] ),
        .I1(sel0[10]),
        .I2(sel0[9]),
        .I3(sel0[11]),
        .O(\count[28]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h0014)) 
    \count[28]_i_31 
       (.I0(sel0[6]),
        .I1(sel0[8]),
        .I2(\rotation_duration_saved_reg_n_0_[0] ),
        .I3(sel0[7]),
        .O(\count[28]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \count[28]_i_32 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .O(\count[28]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \count[28]_i_33 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(\count[28]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h8040)) 
    \count[28]_i_34 
       (.I0(\rotation_duration_saved_reg_n_0_[1] ),
        .I1(sel0[10]),
        .I2(sel0[9]),
        .I3(sel0[11]),
        .O(\count[28]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h0014)) 
    \count[28]_i_35 
       (.I0(sel0[6]),
        .I1(sel0[8]),
        .I2(\rotation_duration_saved_reg_n_0_[1] ),
        .I3(sel0[7]),
        .O(\count[28]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \count[28]_i_36 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .O(\count[28]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \count[28]_i_37 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(\count[28]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count[28]_i_6 
       (.I0(sel0[13]),
        .I1(sel0[14]),
        .I2(sel0[26]),
        .I3(sel0[27]),
        .I4(\count[28]_i_17_n_0 ),
        .I5(\count[28]_i_18_n_0 ),
        .O(\count[28]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \count[28]_i_7 
       (.I0(sel0[16]),
        .I1(sel0[15]),
        .I2(sel0[7]),
        .I3(sel0[12]),
        .I4(\count[28]_i_19_n_0 ),
        .O(\count[28]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hF7)) 
    \count[28]_i_8 
       (.I0(sel0[10]),
        .I1(sel0[9]),
        .I2(sel0[11]),
        .O(\count[28]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \count[28]_i_9 
       (.I0(sel0[23]),
        .I1(sel0[22]),
        .I2(sel0[21]),
        .O(\count[28]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0__0),
        .Q(sel0[0]),
        .R(\count[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[10]),
        .Q(sel0[10]),
        .R(\count[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[11]),
        .Q(sel0[11]),
        .R(\count[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[12]),
        .Q(sel0[12]),
        .R(\count[28]_i_1_n_0 ));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[12:9]),
        .S(sel0[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[13]),
        .Q(sel0[13]),
        .R(\count[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[14]),
        .Q(sel0[14]),
        .R(\count[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[15]),
        .Q(sel0[15]),
        .R(\count[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[16]),
        .Q(sel0[16]),
        .R(\count[28]_i_1_n_0 ));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[16:13]),
        .S(sel0[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[17]),
        .Q(sel0[17]),
        .R(\count[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[18]),
        .Q(sel0[18]),
        .R(\count[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[19]),
        .Q(sel0[19]),
        .R(\count[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[1]),
        .Q(sel0[1]),
        .R(\count[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[20]),
        .Q(sel0[20]),
        .R(\count[28]_i_1_n_0 ));
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\count_reg[20]_i_1_n_1 ,\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[20:17]),
        .S(sel0[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[21]),
        .Q(sel0[21]),
        .R(\count[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[22]),
        .Q(sel0[22]),
        .R(\count[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[23]),
        .Q(sel0[23]),
        .R(\count[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[24]),
        .Q(sel0[24]),
        .R(\count[28]_i_1_n_0 ));
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\count_reg[24]_i_1_n_1 ,\count_reg[24]_i_1_n_2 ,\count_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[24:21]),
        .S(sel0[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[25]),
        .Q(sel0[25]),
        .R(\count[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[26]),
        .Q(sel0[26]),
        .R(\count[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[27]),
        .Q(sel0[27]),
        .R(\count[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[28]),
        .Q(sel0[28]),
        .R(\count[28]_i_1_n_0 ));
  CARRY4 \count_reg[28]_i_11 
       (.CI(\count_reg[28]_i_20_n_0 ),
        .CO({\count_reg[28]_i_11_n_0 ,\count_reg[28]_i_11_n_1 ,\count_reg[28]_i_11_n_2 ,\count_reg[28]_i_11_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\count[28]_i_21_n_0 ,\count[28]_i_22_n_0 ,\count[28]_i_23_n_0 ,\count[28]_i_24_n_0 }));
  CARRY4 \count_reg[28]_i_14 
       (.CI(\count_reg[28]_i_25_n_0 ),
        .CO({\count_reg[28]_i_14_n_0 ,\count_reg[28]_i_14_n_1 ,\count_reg[28]_i_14_n_2 ,\count_reg[28]_i_14_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\count[28]_i_26_n_0 ,\count[28]_i_27_n_0 ,\count[28]_i_28_n_0 ,\count[28]_i_29_n_0 }));
  CARRY4 \count_reg[28]_i_2 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO({\count_reg[28]_i_2_n_1 ,\count_reg[28]_i_2_n_2 ,\count_reg[28]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[28:25]),
        .S(sel0[28:25]));
  CARRY4 \count_reg[28]_i_20 
       (.CI(\<const0> ),
        .CO({\count_reg[28]_i_20_n_0 ,\count_reg[28]_i_20_n_1 ,\count_reg[28]_i_20_n_2 ,\count_reg[28]_i_20_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\count[28]_i_30_n_0 ,\count[28]_i_31_n_0 ,\count[28]_i_32_n_0 ,\count[28]_i_33_n_0 }));
  CARRY4 \count_reg[28]_i_25 
       (.CI(\<const0> ),
        .CO({\count_reg[28]_i_25_n_0 ,\count_reg[28]_i_25_n_1 ,\count_reg[28]_i_25_n_2 ,\count_reg[28]_i_25_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\count[28]_i_34_n_0 ,\count[28]_i_35_n_0 ,\count[28]_i_36_n_0 ,\count[28]_i_37_n_0 }));
  CARRY4 \count_reg[28]_i_4 
       (.CI(\count_reg[28]_i_11_n_0 ),
        .CO({data1,\count_reg[28]_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,\count[28]_i_12_n_0 ,\count[28]_i_13_n_0 }));
  CARRY4 \count_reg[28]_i_5 
       (.CI(\count_reg[28]_i_14_n_0 ),
        .CO({data2,\count_reg[28]_i_5_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,\count[28]_i_15_n_0 ,\count[28]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[2]),
        .Q(sel0[2]),
        .R(\count[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[3]),
        .Q(sel0[3]),
        .R(\count[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[4]),
        .Q(sel0[4]),
        .R(\count[28]_i_1_n_0 ));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\<const0> ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(sel0[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[4:1]),
        .S(sel0[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[5]),
        .Q(sel0[5]),
        .R(\count[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[6]),
        .Q(sel0[6]),
        .R(\count[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[7]),
        .Q(sel0[7]),
        .R(\count[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[8]),
        .Q(sel0[8]),
        .R(\count[28]_i_1_n_0 ));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[8:5]),
        .S(sel0[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[9]),
        .Q(sel0[9]),
        .R(\count[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    direction_motor_i_1
       (.I0(direction_saved[1]),
        .I1(state[1]),
        .I2(direction_saved[0]),
        .I3(state[0]),
        .I4(direction_motor),
        .O(direction_motor_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    direction_motor_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(direction_motor_i_1_n_0),
        .Q(direction_motor),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \direction_saved_reg[0] 
       (.C(clk),
        .CE(rotation_duration_saved),
        .D(direction[0]),
        .Q(direction_saved[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \direction_saved_reg[1] 
       (.C(clk),
        .CE(rotation_duration_saved),
        .D(direction[1]),
        .Q(direction_saved[1]),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h2)) 
    init_i_1
       (.I0(start),
        .I1(start_del),
        .O(init_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    init_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(init_i_1_n_0),
        .Q(init),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h1)) 
    \rotation_duration_saved[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(rotation_duration_saved));
  FDRE #(
    .INIT(1'b0)) 
    \rotation_duration_saved_reg[0] 
       (.C(clk),
        .CE(rotation_duration_saved),
        .D(rotation_duration[0]),
        .Q(\rotation_duration_saved_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rotation_duration_saved_reg[1] 
       (.C(clk),
        .CE(rotation_duration_saved),
        .D(rotation_duration[1]),
        .Q(\rotation_duration_saved_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    start_del_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(start),
        .Q(start_del),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0000FFFF11F011F0)) 
    \state[0]_i_1 
       (.I0(\count[28]_i_3_n_0 ),
        .I1(sel0[28]),
        .I2(init),
        .I3(state[1]),
        .I4(\state[1]_i_2_n_0 ),
        .I5(state[0]),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[1]_i_2 
       (.I0(data2),
        .I1(state[1]),
        .I2(data1),
        .O(\state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(\<const0> ));
  stepmotor stepmotor_inst0
       (.clk(clk),
        .direction(direction_motor),
        .phases(phases),
        .speed({\<const1> ,\<const1> }),
        .stop(stop_motor));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    stop_motor_i_1
       (.I0(state[0]),
        .O(stop_motor_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stop_motor_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(stop_motor_i_1_n_0),
        .Q(stop_motor),
        .R(\<const0> ));
endmodule

