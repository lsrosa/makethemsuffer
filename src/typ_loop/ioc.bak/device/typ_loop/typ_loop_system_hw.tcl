package require -exact qsys 14.0
set_module_property NAME typ_loop_system
set_module_property VERSION 14.0
set_module_property INTERNAL false
set_module_property GROUP Accelerators
set_module_property DISPLAY_NAME typ_loop_system
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true

add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL typ_loop_system
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file acl_work_group_dispatcher.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_work_group_dispatcher.v TOP_LEVEL_FILE
add_fileset_file acl_id_iterator.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_id_iterator.v TOP_LEVEL_FILE
add_fileset_file acl_work_item_iterator.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_work_item_iterator.v TOP_LEVEL_FILE
add_fileset_file acl_multistage_adder.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_multistage_adder.v TOP_LEVEL_FILE
add_fileset_file acl_start_signal_chain_element.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_start_signal_chain_element.v TOP_LEVEL_FILE
add_fileset_file acl_finish_signal_chain_element.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_finish_signal_chain_element.v TOP_LEVEL_FILE
add_fileset_file acl_task_copy_finish_detector.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_task_copy_finish_detector.v TOP_LEVEL_FILE
add_fileset_file acl_kernel_finish_detector.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_kernel_finish_detector.v TOP_LEVEL_FILE
add_fileset_file acl_multistage_accumulator.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_multistage_accumulator.v TOP_LEVEL_FILE
add_fileset_file acl_fifo.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_fifo.v TOP_LEVEL_FILE
add_fileset_file acl_shift_register.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_shift_register.v TOP_LEVEL_FILE
add_fileset_file acl_arb2.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_arb2.v TOP_LEVEL_FILE
add_fileset_file acl_arb_intf.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_arb_intf.v TOP_LEVEL_FILE
add_fileset_file acl_avm_to_ic.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_avm_to_ic.v TOP_LEVEL_FILE
add_fileset_file acl_ic_intf.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_intf.v TOP_LEVEL_FILE
add_fileset_file acl_ic_master_endpoint.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_master_endpoint.v TOP_LEVEL_FILE
add_fileset_file acl_ic_slave_endpoint.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_slave_endpoint.v TOP_LEVEL_FILE
add_fileset_file acl_ic_slave_rrp.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_slave_rrp.v TOP_LEVEL_FILE
add_fileset_file acl_ic_slave_wrp.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_slave_wrp.v TOP_LEVEL_FILE
add_fileset_file acl_ic_rrp_reg.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_rrp_reg.v TOP_LEVEL_FILE
add_fileset_file acl_ic_wrp_reg.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_wrp_reg.v TOP_LEVEL_FILE
add_fileset_file acl_ic_to_avm.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_to_avm.v TOP_LEVEL_FILE
add_fileset_file acl_ll_fifo.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ll_fifo.v TOP_LEVEL_FILE
add_fileset_file acl_atomics_nostall.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_atomics_nostall.v TOP_LEVEL_FILE
add_fileset_file acl_atomics_arb_stall.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_atomics_arb_stall.v TOP_LEVEL_FILE
add_fileset_file acl_printf_counter.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_printf_counter.v TOP_LEVEL_FILE


add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL typ_loop_system
add_fileset_file acl_work_group_dispatcher.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_work_group_dispatcher.v TOP_LEVEL_FILE
add_fileset_file acl_id_iterator.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_id_iterator.v TOP_LEVEL_FILE
add_fileset_file acl_work_item_iterator.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_work_item_iterator.v TOP_LEVEL_FILE
add_fileset_file acl_multistage_adder.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_multistage_adder.v TOP_LEVEL_FILE
add_fileset_file acl_start_signal_chain_element.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_start_signal_chain_element.v TOP_LEVEL_FILE
add_fileset_file acl_finish_signal_chain_element.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_finish_signal_chain_element.v TOP_LEVEL_FILE
add_fileset_file acl_task_copy_finish_detector.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_task_copy_finish_detector.v TOP_LEVEL_FILE
add_fileset_file acl_kernel_finish_detector.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_kernel_finish_detector.v TOP_LEVEL_FILE
add_fileset_file acl_multistage_accumulator.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_multistage_accumulator.v TOP_LEVEL_FILE
add_fileset_file acl_fifo.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_fifo.v TOP_LEVEL_FILE
add_fileset_file acl_shift_register.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_shift_register.v TOP_LEVEL_FILE
add_fileset_file acl_arb2.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_arb2.v TOP_LEVEL_FILE
add_fileset_file acl_arb_intf.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_arb_intf.v TOP_LEVEL_FILE
add_fileset_file acl_avm_to_ic.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_avm_to_ic.v TOP_LEVEL_FILE
add_fileset_file acl_ic_intf.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_intf.v TOP_LEVEL_FILE
add_fileset_file acl_ic_master_endpoint.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_master_endpoint.v TOP_LEVEL_FILE
add_fileset_file acl_ic_slave_endpoint.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_slave_endpoint.v TOP_LEVEL_FILE
add_fileset_file acl_ic_slave_rrp.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_slave_rrp.v TOP_LEVEL_FILE
add_fileset_file acl_ic_slave_wrp.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_slave_wrp.v TOP_LEVEL_FILE
add_fileset_file acl_ic_rrp_reg.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_rrp_reg.v TOP_LEVEL_FILE
add_fileset_file acl_ic_wrp_reg.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_wrp_reg.v TOP_LEVEL_FILE
add_fileset_file acl_ic_to_avm.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_to_avm.v TOP_LEVEL_FILE
add_fileset_file acl_ll_fifo.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ll_fifo.v TOP_LEVEL_FILE
add_fileset_file acl_atomics_nostall.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_atomics_nostall.v TOP_LEVEL_FILE
add_fileset_file acl_atomics_arb_stall.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_atomics_arb_stall.v TOP_LEVEL_FILE
add_fileset_file acl_printf_counter.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_printf_counter.v TOP_LEVEL_FILE
