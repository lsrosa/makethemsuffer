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
# Create Generated Clock
#**************************************************************
derive_pll_clocks

#**************************************************************
# Set Clock Uncertainty
#**************************************************************
derive_clock_uncertainty

#**************************************************************
# Set Clock Groups
#**************************************************************
set_clock_groups -asynchronous \
-group { \
   config_clk \
} -group { \
   Mem0_RefClk \
} -group { \
   Mem1_RefClk \
} -group { \
   pcie_refclk \
   [get_clocks {system_inst|board|pcie|*}] \
} -group { \
   [get_clocks {system_inst|board|acl_kernel_clk|kernel_pll|*}] \
} -group { \
   altera_reserved_tck \
} -group { \
    Mem0_Ck \
    Mem0_Ck_n \
    Mem0_Dqs[0]_IN \
    Mem0_Dqs[0]_OUT \
    Mem0_Dqs[1]_IN \
    Mem0_Dqs[1]_OUT \
    Mem0_Dqs[2]_IN \
    Mem0_Dqs[2]_OUT \
    Mem0_Dqs[3]_IN \
    Mem0_Dqs[3]_OUT \
    Mem0_Dqs[4]_IN \
    Mem0_Dqs[4]_OUT \
    Mem0_Dqs[5]_IN \
    Mem0_Dqs[5]_OUT \
    Mem0_Dqs[6]_IN \
    Mem0_Dqs[6]_OUT \
    Mem0_Dqs[7]_IN \
    Mem0_Dqs[7]_OUT \
    Mem0_Dqs_n[0]_OUT \
    Mem0_Dqs_n[1]_OUT \
    Mem0_Dqs_n[2]_OUT \
    Mem0_Dqs_n[3]_OUT \
    Mem0_Dqs_n[4]_OUT \
    Mem0_Dqs_n[5]_OUT \
    Mem0_Dqs_n[6]_OUT \
    Mem0_Dqs_n[7]_OUT \
    [get_clocks {system_inst|board|ddr3a|*}] \
} -group { \
    Mem1_Ck \
    Mem1_Ck_n \
    Mem1_Dqs[0]_IN \
    Mem1_Dqs[0]_OUT \
    Mem1_Dqs[1]_IN \
    Mem1_Dqs[1]_OUT \
    Mem1_Dqs[2]_IN \
    Mem1_Dqs[2]_OUT \
    Mem1_Dqs[3]_IN \
    Mem1_Dqs[3]_OUT \
    Mem1_Dqs[4]_IN \
    Mem1_Dqs[4]_OUT \
    Mem1_Dqs[5]_IN \
    Mem1_Dqs[5]_OUT \
    Mem1_Dqs[6]_IN \
    Mem1_Dqs[6]_OUT \
    Mem1_Dqs[7]_IN \
    Mem1_Dqs[7]_OUT \
    Mem1_Dqs_n[0]_OUT \
    Mem1_Dqs_n[1]_OUT \
    Mem1_Dqs_n[2]_OUT \
    Mem1_Dqs_n[3]_OUT \
    Mem1_Dqs_n[4]_OUT \
    Mem1_Dqs_n[5]_OUT \
    Mem1_Dqs_n[6]_OUT \
    Mem1_Dqs_n[7]_OUT \
    [get_clocks {system_inst|board|ddr3b|*}] \
}

#**************************************************************
# Set False Path
#**************************************************************

# Cut path to pcie npor - this signal is asynchronous
set_false_path -from system:system_inst|system_board:board|sw_reset:por_reset_counter|sw_reset_n_out -to system:system_inst|system_board:board|altpcie_sv_hip_avmm_hwtcl:pcie*

# Make the kernel reset multicycle
set_multicycle_path -to * -setup 2 -from {system:system_inst|system_board:board|system_board_kernel_interface:kernel_interface|altera_reset_controller:reset_controller_sw|altera_reset_synchronizer:alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out}
set_multicycle_path -to * -hold 1 -from {system:system_inst|system_board:board|system_board_kernel_interface:kernel_interface|altera_reset_controller:reset_controller_sw|altera_reset_synchronizer:alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out}

#Relax Kernel constraints - only do this during base revision compiles
if {! [string equal $::TimeQuestInfo(nameofexecutable) "quartus_map"]} {
# Case 196028 can't call get_current_revision in parallel map

if { [get_current_revision] eq "base" } {

  post_message -type critical_warning "Compiling with slowed OpenCL Kernel clock.  This is to help achieve timing closure for board bringup."

  if {! [string equal $::TimeQuestInfo(nameofexecutable) "quartus_sta"]} {
    set kernel_keepers [get_keepers system_inst\|kernel_system\|*] 
    set_max_delay 5 -from $kernel_keepers -to $kernel_keepers
  }
}

}
