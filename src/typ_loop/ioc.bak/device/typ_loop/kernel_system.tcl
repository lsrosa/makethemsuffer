package require -exact qsys 12.1
set_validation_property AUTOMATIC_VALIDATION false

add_instance clk_1x altera_clock_bridge
set_instance_parameter_value clk_1x "EXPLICIT_CLOCK_RATE" "0"
set_instance_parameter_value clk_1x "NUM_CLOCK_OUTPUTS" "1"
add_interface clock_reset clock sink
set_interface_property clock_reset EXPORT_OF clk_1x.in_clk

add_instance clk_2x altera_clock_bridge
set_instance_parameter_value clk_2x "EXPLICIT_CLOCK_RATE" "0"
set_instance_parameter_value clk_2x "NUM_CLOCK_OUTPUTS" "1"
add_interface clock_reset2x clock sink
set_interface_property clock_reset2x EXPORT_OF clk_2x.in_clk

add_instance clk_snoop altera_clock_bridge
set_instance_parameter_value clk_snoop "EXPLICIT_CLOCK_RATE" "0"
set_instance_parameter_value clk_snoop "NUM_CLOCK_OUTPUTS" "1"
add_interface cc_snoop_clk clock sink
set_interface_property cc_snoop_clk EXPORT_OF clk_snoop.in_clk

add_instance reset altera_reset_bridge
set_instance_parameter_value reset "ACTIVE_LOW_RESET" "1"
set_instance_parameter_value reset "SYNCHRONOUS_EDGES" "deassert"
set_instance_parameter_value reset "NUM_RESET_OUTPUTS" "1"
add_interface clock_reset_reset reset sink
set_interface_property clock_reset_reset EXPORT_OF reset.in_reset
add_connection clk_1x.out_clk reset.clk

add_instance kernel_mem0 altera_avalon_mm_bridge
set_instance_parameter_value kernel_mem0 "DATA_WIDTH" "512"
set_instance_parameter_value kernel_mem0 "SYMBOL_WIDTH" "8"
set_instance_parameter_value kernel_mem0 "ADDRESS_WIDTH" "32"
set_instance_parameter_value kernel_mem0 "USE_AUTO_ADDRESS_WIDTH" "0"
set_instance_parameter_value kernel_mem0 "ADDRESS_UNITS" "SYMBOLS"
set_instance_parameter_value kernel_mem0 "MAX_BURST_SIZE" "16"
set_instance_parameter_value kernel_mem0 "MAX_PENDING_RESPONSES" "64"
set_instance_parameter_value kernel_mem0 "LINEWRAPBURSTS" "0"
set_instance_parameter_value kernel_mem0 "PIPELINE_COMMAND" "1"
set_instance_parameter_value kernel_mem0 "PIPELINE_RESPONSE" "1"
add_connection clk_1x.out_clk kernel_mem0.clk
add_connection reset.out_reset kernel_mem0.reset
add_interface kernel_mem0 avalon slave
set_interface_property kernel_mem0 EXPORT_OF kernel_mem0.m0

add_instance kernel_mem1 altera_avalon_mm_bridge
set_instance_parameter_value kernel_mem1 "DATA_WIDTH" "512"
set_instance_parameter_value kernel_mem1 "SYMBOL_WIDTH" "8"
set_instance_parameter_value kernel_mem1 "ADDRESS_WIDTH" "32"
set_instance_parameter_value kernel_mem1 "USE_AUTO_ADDRESS_WIDTH" "0"
set_instance_parameter_value kernel_mem1 "ADDRESS_UNITS" "SYMBOLS"
set_instance_parameter_value kernel_mem1 "MAX_BURST_SIZE" "16"
set_instance_parameter_value kernel_mem1 "MAX_PENDING_RESPONSES" "64"
set_instance_parameter_value kernel_mem1 "LINEWRAPBURSTS" "0"
set_instance_parameter_value kernel_mem1 "PIPELINE_COMMAND" "1"
set_instance_parameter_value kernel_mem1 "PIPELINE_RESPONSE" "1"
add_connection clk_1x.out_clk kernel_mem1.clk
add_connection reset.out_reset kernel_mem1.reset
add_interface kernel_mem1 avalon slave
set_interface_property kernel_mem1 EXPORT_OF kernel_mem1.m0

add_instance kernel_irq altera_irq_bridge
set_instance_parameter_value kernel_irq "IRQ_WIDTH" "1"
set_instance_parameter_value kernel_irq "IRQ_N" "0"
add_interface kernel_irq irq sender
set_interface_property kernel_irq EXPORT_OF kernel_irq.sender0_irq
add_connection clk_1x.out_clk kernel_irq.clk
add_connection reset.out_reset kernel_irq.clk_reset

add_instance kernel_cra altera_avalon_mm_bridge
set_instance_parameter_value kernel_cra "DATA_WIDTH" "64"
set_instance_parameter_value kernel_cra "SYMBOL_WIDTH" "8"
set_instance_parameter_value kernel_cra "ADDRESS_WIDTH" "30"
set_instance_parameter_value kernel_cra "USE_AUTO_ADDRESS_WIDTH" "0"
set_instance_parameter_value kernel_cra "ADDRESS_UNITS" "SYMBOLS"
set_instance_parameter_value kernel_cra "MAX_BURST_SIZE" "1"
set_instance_parameter_value kernel_cra "MAX_PENDING_RESPONSES" "1"
set_instance_parameter_value kernel_cra "LINEWRAPBURSTS" "0"
set_instance_parameter_value kernel_cra "PIPELINE_COMMAND" "0"
set_instance_parameter_value kernel_cra "PIPELINE_RESPONSE" "0"
add_connection clk_1x.out_clk kernel_cra.clk
add_connection reset.out_reset kernel_cra.reset
add_interface avs_kernel_cra avalon slave
set_interface_property kernel_cra EXPORT_OF kernel_cra.s0


add_instance acl_internal_snoop altera_avalon_st_adapter
set_instance_parameter_value acl_internal_snoop "inBitsPerSymbol" "33"
set_instance_parameter_value acl_internal_snoop "inUsePackets" "0"
set_instance_parameter_value acl_internal_snoop "inDataWidth" "33"
set_instance_parameter_value acl_internal_snoop "inMaxChannel" "0"
set_instance_parameter_value acl_internal_snoop "inChannelWidth" "0"
set_instance_parameter_value acl_internal_snoop "inErrorWidth" "0"
set_instance_parameter_value acl_internal_snoop "inErrorDescriptor" ""
set_instance_parameter_value acl_internal_snoop "inUseEmptyPort" "0"
set_instance_parameter_value acl_internal_snoop "inUseValid" "1"
set_instance_parameter_value acl_internal_snoop "inUseReady" "1"
set_instance_parameter_value acl_internal_snoop "inReadyLatency" "0"
set_instance_parameter_value acl_internal_snoop "outDataWidth" "33"
set_instance_parameter_value acl_internal_snoop "outMaxChannel" "0"
set_instance_parameter_value acl_internal_snoop "outChannelWidth" "0"
set_instance_parameter_value acl_internal_snoop "outErrorWidth" "0"
set_instance_parameter_value acl_internal_snoop "outErrorDescriptor" ""
set_instance_parameter_value acl_internal_snoop "outUseEmptyPort" "0"
set_instance_parameter_value acl_internal_snoop "outUseValid" "1"
set_instance_parameter_value acl_internal_snoop "outUseReady" "1"
set_instance_parameter_value acl_internal_snoop "outReadyLatency" "0"
add_connection clk_snoop.out_clk acl_internal_snoop.in_clk_0
add_connection reset.out_reset acl_internal_snoop.in_rst_0
add_interface cc_snoop avalon_streaming sink
set_interface_property cc_snoop EXPORT_OF acl_internal_snoop.in_0


save_system kernel_system.qsys
