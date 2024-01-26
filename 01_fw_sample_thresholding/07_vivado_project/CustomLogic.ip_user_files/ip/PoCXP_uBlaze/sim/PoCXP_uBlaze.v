// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:microblaze_mcs:3.0
// IP Revision: 10

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module PoCXP_uBlaze (
  Clk,
  Reset,
  INTC_IRQ,
  INTC_Interrupt,
  GPIO1_tri_o,
  GPIO2_tri_i,
  GPIO2_tri_o,
  GPIO3_tri_i,
  GPIO3_tri_o
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.Clk, FREQ_HZ 250000000, PHASE 0.000, INSERT_VIP 0, ASSOCIATED_ASYNC_RESET Reset, BOARD.ASSOCIATED_PARAM CLK_BOARD_INTERFACE" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.Clk CLK" *)
input wire Clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.Reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0, BOARD.ASSOCIATED_PARAM RESET_BOARD_INTERFACE" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.Reset RST" *)
input wire Reset;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTC_IRQ, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTC_IRQ INTERRUPT" *)
output wire INTC_IRQ;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTC_Interrupt, SENSITIVITY EDGE_RISING, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTC_Interrupt INTERRUPT" *)
input wire [0 : 0] INTC_Interrupt;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GPIO1, C_USE_GPO1 1, C_GPO1_SIZE 5, C_GPO1_INIT 0x00000000, C_USE_GPI1 0, C_GPI1_SIZE 32, C_GPI1_INTERRUPT 0, BOARD.ASSOCIATED_PARAM GPIO1_BOARD_INTERFACE" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO1 TRI_O" *)
output wire [4 : 0] GPIO1_tri_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO2 TRI_I" *)
input wire [31 : 0] GPIO2_tri_i;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GPIO2, C_USE_GPO2 1, C_GPO2_SIZE 32, C_GPO2_INIT 0x00000000, C_USE_GPI2 1, C_GPI2_SIZE 32, C_GPI2_INTERRUPT 0, BOARD.ASSOCIATED_PARAM GPIO2_BOARD_INTERFACE" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO2 TRI_O" *)
output wire [31 : 0] GPIO2_tri_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO3 TRI_I" *)
input wire [3 : 0] GPIO3_tri_i;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GPIO3, C_USE_GPO3 1, C_GPO3_SIZE 4, C_GPO3_INIT 0x0000000F, C_USE_GPI3 1, C_GPI3_SIZE 4, C_GPI3_INTERRUPT 0, BOARD.ASSOCIATED_PARAM GPIO3_BOARD_INTERFACE" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO3 TRI_O" *)
output wire [3 : 0] GPIO3_tri_o;

  bd_5b11 inst (
    .Clk(Clk),
    .Reset(Reset),
    .INTC_IRQ(INTC_IRQ),
    .INTC_Interrupt(INTC_Interrupt),
    .GPIO1_tri_o(GPIO1_tri_o),
    .GPIO2_tri_i(GPIO2_tri_i),
    .GPIO2_tri_o(GPIO2_tri_o),
    .GPIO3_tri_i(GPIO3_tri_i),
    .GPIO3_tri_o(GPIO3_tri_o)
  );
endmodule
