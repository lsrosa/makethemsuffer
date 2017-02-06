# (C) 1992-2014 Altera Corporation. All rights reserved.                         
# Your use of Altera Corporation's design tools, logic functions and other       
# software and tools, and its AMPP partner logic functions, and any output       
# files any of the foregoing (including device programming or simulation         
# files), and any associated documentation or information are expressly subject  
# to the terms and conditions of the Altera Program License Subscription         
# Agreement, Altera MegaCore Function License Agreement, or other applicable     
# license agreement, including, without limitation, that your use is for the     
# sole purpose of programming logic devices manufactured by Altera and sold by   
# Altera or its authorized distributors.  Please refer to the applicable         
# agreement for further details.                                                 
    

#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3

  post_message -type extra_info "-------------------------------------------------------------------------"
  post_message -type extra_info "Applying CPLDHost Timing Constraints"
  post_message -type extra_info "-------------------------------------------------------------------------"

  ##############################
  # Constants
  ##############################

  # These constraints are for FPGA-centric constraining of the FPGA.
  # Refer to AN 433 and Quartus II TimeQuest Timing Analyzer Cookbook

  # This interface's setup and hold time
  set Tsu 4.0
  set Th  1.0

  # This interface's Minimum and Maximum clock-to-output delay
  set Tco_min 2.0
  set Tco_max 15.0

  ##############################
  # Clocks
  ##############################
  # clock period is 100 MHz
  create_clock -period 100Mhz -name {clk_clk} [get_ports {clk_clk}]

#derive_pll_clocks -create_base_clocks

  # clock period is 25 MHz
  set cpld_host_clk_period 40.0
  set clk_rise [expr $cpld_host_clk_period/2]
  set clk_fall $cpld_host_clk_period

  # the real clock
  create_clock -period "$cpld_host_clk_period ns" -name {cpld_host_clk} [get_ports {cpld_host_clock_clk}]

  # create the virtual input clock for analysis
  create_clock -period "$cpld_host_clk_period ns" -name {vir_cpld_host_clk_in} -waveform "$clk_rise $clk_fall"

  # create the virtual output clock for analysis
  create_clock -period "$cpld_host_clk_period ns" -name {vir_cpld_host_clk_out}

  ##############################
  # Output Constraints
  ##############################

  # Max output delay
  set OUT_DELAY_MAX [expr $cpld_host_clk_period - $Tco_max]

  # Min output delay
  set OUT_DELAY_MIN [expr $Tco_min]

  set_output_delay -clock [get_clocks vir_cpld_host_clk_out] -max $OUT_DELAY_MAX [get_ports {cpld_host_cpldHostOut_*}]
  set_output_delay -clock [get_clocks vir_cpld_host_clk_out] -max $OUT_DELAY_MAX [get_ports {cpld_host_cpldHostInOut_*}]

  set_output_delay -clock [get_clocks vir_cpld_host_clk_out] -min $OUT_DELAY_MIN [get_ports {cpld_host_cpldHostOut_*}]
  set_output_delay -clock [get_clocks vir_cpld_host_clk_out] -min $OUT_DELAY_MIN [get_ports {cpld_host_cpldHostInOut_*}]

  set_false_path -setup -rise_from [get_clocks cpld_host_clk] -fall_to [get_clocks vir_cpld_host_clk_out]
  set_false_path -setup -fall_from [get_clocks cpld_host_clk] -rise_to [get_clocks vir_cpld_host_clk_out]

  set_false_path -hold  -rise_from [get_clocks cpld_host_clk] -rise_to [get_clocks vir_cpld_host_clk_out]
  set_false_path -hold  -fall_from [get_clocks cpld_host_clk] -fall_to [get_clocks vir_cpld_host_clk_out]

  # OE is by design a false path
  # set_false_path -from cpld_host_cpldHostIn_oe -to {cpld_host_cpldHostInOut_data[*]}

  ##############################
  # Input Constraints
  ##############################

  # Max input delay, adjusted for center-aligned data on the virtual clock
  set IN_DELAY_MAX [expr $cpld_host_clk_period- $Tsu - $cpld_host_clk_period/2]

  # Min input delay, adjusted for center-aligned data on the virtual clock
  set IN_DELAY_MIN [expr $Th - $cpld_host_clk_period/2]

  set_input_delay -clock [get_clocks vir_cpld_host_clk_in] -max $IN_DELAY_MAX [get_ports {cpld_host_cpldHostIn_*}]
  set_input_delay -clock [get_clocks vir_cpld_host_clk_in] -max $IN_DELAY_MAX [get_ports {cpld_host_cpldHostInOut_*}]

  set_input_delay -clock [get_clocks vir_cpld_host_clk_in] -min $IN_DELAY_MIN [get_ports {cpld_host_cpldHostIn_*}]
  set_input_delay -clock [get_clocks vir_cpld_host_clk_in] -min $IN_DELAY_MIN [get_ports {cpld_host_cpldHostInOut_*}]

  set_false_path -setup -fall_from [get_clocks vir_cpld_host_clk_in] -rise_to [get_clocks cpld_host_clk]
  set_false_path -setup -rise_from [get_clocks vir_cpld_host_clk_in] -fall_to [get_clocks cpld_host_clk]

  set_false_path -hold  -rise_from [get_clocks vir_cpld_host_clk_in] -rise_to [get_clocks cpld_host_clk]
  set_false_path -hold  -fall_from [get_clocks vir_cpld_host_clk_in] -fall_to [get_clocks cpld_host_clk]

