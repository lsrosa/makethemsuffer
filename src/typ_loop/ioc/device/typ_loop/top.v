// (C) 1992-2014 Altera Corporation. All rights reserved.                         
// Your use of Altera Corporation's design tools, logic functions and other       
// software and tools, and its AMPP partner logic functions, and any output       
// files any of the foregoing (including device programming or simulation         
// files), and any associated documentation or information are expressly subject  
// to the terms and conditions of the Altera Program License Subscription         
// Agreement, Altera MegaCore Function License Agreement, or other applicable     
// license agreement, including, without limitation, that your use is for the     
// sole purpose of programming logic devices manufactured by Altera and sold by   
// Altera or its authorized distributors.  Please refer to the applicable         
// agreement for further details.                                                 
    


module top(

   //////// CLOCK //////////
   input config_clk,  // 100MHz clock
   input Mem0_RefClk, // 100MHz clock

   //////// PCIe //////////
   input        pcie_refclk,
   input        perstl0_n,  // Reset to embedded PCIe
   input  [7:0] hip_serial_rx_in,
   output [7:0] hip_serial_tx_out,

   //////// DDR3 //////////
   output        Mem0_Reset_n,
   output [15:0] Mem0_Addr,
   output [2:0]  Mem0_Bank,
   output        Mem0_Cas_n,
   output [0:0]  Mem0_Cke,
   output        Mem0_Ck,
   output        Mem0_Ck_n,
   output [0:0]  Mem0_Cs_n,
   output [7:0]  Mem0_Dm,
   inout [63:0]  Mem0_Dq,
   inout  [7:0]  Mem0_Dqs,
   inout  [7:0]  Mem0_Dqs_n,
   output [0:0]  Mem0_Odt,
   output        Mem0_Ras_n,
   output        Mem0_We_n,
   input         Mem0_Rzq,

`ifdef DDR3B
   //////// DDR3 //////////
   output        Mem1_Reset_n,
   output [15:0] Mem1_Addr,
   output [2:0]  Mem1_Bank,
   output        Mem1_Cas_n,
   output [0:0]  Mem1_Cke,
   output        Mem1_Ck,
   output        Mem1_Ck_n,
   output [0:0]  Mem1_Cs_n,
   output [7:0]  Mem1_Dm,
   inout [63:0]  Mem1_Dq,
   inout  [7:0]  Mem1_Dqs,
   inout  [7:0]  Mem1_Dqs_n,
   output [0:0]  Mem1_Odt,
   output        Mem1_Ras_n,
   output        Mem1_We_n,
   //input         Mem1_Rzq,
`endif

`ifdef CPLD
   // CPLD Host
   input          cpld_host_clock_clk,
   input          cpld_host_cpldHostIn_oe,
   input          cpld_host_cpldHostIn_rd_n,
   input          cpld_host_cpldHostIn_wr_n,
   output [1:0]   cpld_host_cpldHostOut_flags,
   output         cpld_host_cpldHostOut_rd_ready_n,
   output         cpld_host_cpldHostOut_wr_ready_n,
   inout [7:0]    cpld_host_cpldHostInOut_data,
`endif

   //////// LED //////////
   output [3:0] leds
);

//=======================================================
//  PARAMETER declarations
//=======================================================

//=======================================================
//  REG/WIRE declarations
//=======================================================
wire resetn;
wire npor;

//=======================================================
//  Reset logic
//=======================================================
assign resetn = perstl0_n;

//=======================================================
//  System instantiation
//=======================================================

system system_inst
(
   // Global signals
   .global_reset_reset_n( resetn ),  // No hard reset !!!
   .config_clk_clk( config_clk ),
   .ddr3a_pll_ref_clk( Mem0_RefClk ),
   //.ddr3b_pll_ref_clk( Mem0_RefClk ),

   // PCIe pins
   .pcie_npor_pin_perst(perstl0_n),
   .pcie_npor_npor(npor),
   .pcie_npor_out_reset_n(npor),
   .pcie_refclk_clk( pcie_refclk ),
   .pcie_rx_in0( hip_serial_rx_in[0] ),
   .pcie_rx_in1( hip_serial_rx_in[1] ),
   .pcie_rx_in2( hip_serial_rx_in[2] ),
   .pcie_rx_in3( hip_serial_rx_in[3] ),
   .pcie_rx_in4( hip_serial_rx_in[4] ),
   .pcie_rx_in5( hip_serial_rx_in[5] ),
   .pcie_rx_in6( hip_serial_rx_in[6] ),
   .pcie_rx_in7( hip_serial_rx_in[7] ),
   .pcie_tx_out0( hip_serial_tx_out[0] ),
   .pcie_tx_out1( hip_serial_tx_out[1] ),
   .pcie_tx_out2( hip_serial_tx_out[2] ),
   .pcie_tx_out3( hip_serial_tx_out[3] ),
   .pcie_tx_out4( hip_serial_tx_out[4] ),
   .pcie_tx_out5( hip_serial_tx_out[5] ),
   .pcie_tx_out6( hip_serial_tx_out[6] ),
   .pcie_tx_out7( hip_serial_tx_out[7] ),

   // DDR3 pins
   .ddr3a_mem_reset_n( Mem0_Reset_n ),
   .ddr3a_mem_a( Mem0_Addr ),
   .ddr3a_mem_ba( Mem0_Bank ),
   .ddr3a_mem_cas_n( Mem0_Cas_n ),
   .ddr3a_mem_ck( Mem0_Ck ),
   .ddr3a_mem_ck_n( Mem0_Ck_n ),
   .ddr3a_mem_cke( Mem0_Cke ),
   .ddr3a_mem_cs_n( Mem0_Cs_n ),
   .ddr3a_mem_dm( Mem0_Dm ),
   .ddr3a_mem_dq( Mem0_Dq ),
   .ddr3a_mem_dqs_n( Mem0_Dqs_n ),
   .ddr3a_mem_dqs( Mem0_Dqs ),
   .ddr3a_mem_oct_rzqin( Mem0_Rzq ),
   .ddr3a_mem_odt( Mem0_Odt ),
   .ddr3a_mem_ras_n( Mem0_Ras_n ),
   .ddr3a_mem_we_n( Mem0_We_n ),

`ifdef DDR3B
   // DDR3 pins
   .ddr3b_mem_reset_n( Mem1_Reset_n ),
   .ddr3b_mem_a( Mem1_Addr ),
   .ddr3b_mem_ba( Mem1_Bank ),
   .ddr3b_mem_cas_n( Mem1_Cas_n ),
   .ddr3b_mem_ck( Mem1_Ck ),
   .ddr3b_mem_ck_n( Mem1_Ck_n ),
   .ddr3b_mem_cke( Mem1_Cke ),
   .ddr3b_mem_cs_n( Mem1_Cs_n ),
   .ddr3b_mem_dm( Mem1_Dm ),
   .ddr3b_mem_dq( Mem1_Dq ),
   .ddr3b_mem_dqs_n( Mem1_Dqs_n ),
   .ddr3b_mem_dqs( Mem1_Dqs ),
   //.ddr3b_mem_oct_rzqin( Mem1_Rzq ),
   .ddr3b_mem_odt( Mem1_Odt ),
   .ddr3b_mem_ras_n( Mem1_Ras_n ),
   .ddr3b_mem_we_n( Mem1_We_n ),
`endif

   // CPLD access to flash
`ifdef CPLD
   .cpld_host_clock_clk(cpld_host_clock_clk),
   .cpld_host_cpld_oe(cpld_host_cpldHostIn_oe),
   .cpld_host_cpld_rd_n(cpld_host_cpldHostIn_rd_n),
   .cpld_host_cpld_wr_n(cpld_host_cpldHostIn_wr_n),
   .cpld_host_cpld_flags(cpld_host_cpldHostOut_flags),
   .cpld_host_cpld_rd_ready(cpld_host_cpldHostOut_rd_ready_n),
   .cpld_host_cpld_wr_ready(cpld_host_cpldHostOut_wr_ready_n),
   .cpld_host_cpld_inoutdata(cpld_host_cpldHostInOut_data),
`endif

   // PCIE Transceiver Reconfig
   .reconfig_to_xcvr_reconfig_to_xcvr({10 {24'h0, 2'b11, 44'h0}}),
   .reconfig_from_xcvr_reconfig_from_xcvr(),

   .kernel_pll_refclk_clk( Mem0_RefClk )
);

assign leds[3:0] = 4'b0101;

endmodule
