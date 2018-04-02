//////////////////////////////////////////////////////////////////////////////////
// Company: Bilkent University
// Engineer: Naisila Puka
// 
// Create Date: 12/17/2017 04:27:18 PM
// Design Name: 
// Module Name: top_constraint
// Project Name: Game Of Codes
// Target Devices: BASYS-3 AND FPGA BETIBOARD
// Description: constraints file of the project
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
#------------------------------------------------------------
#---------------------- Clock signal ------------------------
#------------------------------------------------------------
set_property PACKAGE_PIN W5 [get_ports clk_in]  	 	 	 	  
set_property IOSTANDARD LVCMOS33 [get_ports clk_in] 
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk_in] 

# Switches 
set_property PACKAGE_PIN V17 [get_ports {restart}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {restart}]
 	
#------------------------------------------------------------
#---------------------- Stepper motor -----------------------
#------------------------------------------------------------	

#4 phases
#step motor: Bb
set_property PACKAGE_PIN P18 [get_ports {phases[0]}]	 	 	 	 
 	set_property IOSTANDARD  LVCMOS33 [get_ports {phases[0]}] 
#step motor: Ab
set_property PACKAGE_PIN N17 [get_ports {phases[1]}] 	 	 	 	 	 
 	set_property IOSTANDARD  LVCMOS33 [get_ports {phases[1]}] 
#step motor: B
set_property PACKAGE_PIN M18 [get_ports {phases[2]}] 	 	 	 	 	 
 	set_property IOSTANDARD  LVCMOS33 [get_ports {phases[2]}] 
#step motor: A
set_property PACKAGE_PIN K17 [get_ports {phases[3]}] 	 	 	 	 	 
 	set_property IOSTANDARD  LVCMOS33 [get_ports {phases[3]}] 
 	
#------------------------------------------------------------
 #-------------------- 7 segment display ---------------------
 #------------------------------------------------------------
 set_property PACKAGE_PIN W7 [get_ports {a}]                          
      set_property IOSTANDARD LVCMOS33 [get_ports {a}] 
 set_property PACKAGE_PIN W6 [get_ports {b}]                          
      set_property IOSTANDARD LVCMOS33 [get_ports {b}] 
 set_property PACKAGE_PIN U8 [get_ports {c}]                          
      set_property IOSTANDARD LVCMOS33 [get_ports {c}] 
 set_property PACKAGE_PIN V8 [get_ports {d}]                          
      set_property IOSTANDARD LVCMOS33 [get_ports {d}] 
 set_property PACKAGE_PIN U5 [get_ports {e}]                          
      set_property IOSTANDARD LVCMOS33 [get_ports {e}] 
 set_property PACKAGE_PIN V5 [get_ports {f}]                          
      set_property IOSTANDARD LVCMOS33 [get_ports {f}] 
 set_property PACKAGE_PIN U7 [get_ports {g}]                          
      set_property IOSTANDARD LVCMOS33 [get_ports {g}] 
 set_property PACKAGE_PIN V7 [get_ports dp]                       
      set_property IOSTANDARD LVCMOS33 [get_ports dp] 
     
 set_property PACKAGE_PIN U2 [get_ports {an[0]}]                          
      set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}] 
 set_property PACKAGE_PIN U4 [get_ports {an[1]}]                          
      set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}] 
 set_property PACKAGE_PIN V4 [get_ports {an[2]}]                          
      set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}] 
 set_property PACKAGE_PIN W4 [get_ports {an[3]}]                          
      set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}] 
      
 #------------------------------------------------------------
  #---------------------- keyboard matrix ---------------------
  #------------------------------------------------------------    
  set_property PACKAGE_PIN A15 [get_ports {keyb_row[0]}]                          
       set_property IOSTANDARD  LVCMOS33 [get_ports {keyb_row[0]}] 
  set_property PACKAGE_PIN A17 [get_ports {keyb_row[1]}]                          
       set_property IOSTANDARD  LVCMOS33 [get_ports {keyb_row[1]}] 
  set_property PACKAGE_PIN C15 [get_ports {keyb_row[2]}]                          
       set_property IOSTANDARD  LVCMOS33 [get_ports {keyb_row[2]}] 
  set_property PACKAGE_PIN C16 [get_ports {keyb_row[3]}]                          
       set_property IOSTANDARD  LVCMOS33 [get_ports {keyb_row[3]}] 
  
  set_property PACKAGE_PIN A14 [get_ports {keyb_col[0]}]                          
       set_property IOSTANDARD  LVCMOS33 [get_ports {keyb_col[0]}] 
  set_property PACKAGE_PIN A16 [get_ports {keyb_col[1]}]                          
       set_property IOSTANDARD  LVCMOS33 [get_ports {keyb_col[1]}] 
  set_property PACKAGE_PIN B15 [get_ports {keyb_col[2]}]                          
       set_property IOSTANDARD  LVCMOS33 [get_ports {keyb_col[2]}] 
  set_property PACKAGE_PIN B16 [get_ports {keyb_col[3]}]                          
       set_property IOSTANDARD  LVCMOS33 [get_ports {keyb_col[3]}] 
       
       
