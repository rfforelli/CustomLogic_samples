-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:gtwizard_ultrascale:1.7
-- IP Revision: 5

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT gth_cxp_low
  PORT (
    gtwiz_userclk_tx_active_in : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    gtwiz_userclk_rx_active_in : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    gtwiz_reset_tx_done_in : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    gtwiz_reset_rx_done_in : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    gtwiz_userdata_tx_in : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    gtwiz_userdata_rx_out : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    cplllockdetclk_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    cpllpd_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    cpllreset_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    drpaddr_in : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    drpclk_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    drpdi_in : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    drpen_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    drpwe_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gthrxn_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gthrxp_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gtrefclk0_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gtrxreset_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gttxreset_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    rx8b10ben_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    rxbufreset_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    rxcommadeten_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    rxmcommaalignen_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    rxpcommaalignen_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    rxpcsreset_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    rxprogdivreset_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    rxslide_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    rxuserrdy_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    rxusrclk_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    rxusrclk2_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    tx8b10ben_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    txctrl0_in : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    txctrl1_in : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    txctrl2_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    txprogdivreset_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    txuserrdy_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    txusrclk_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    txusrclk2_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    cpllfbclklost_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    cplllock_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    cpllrefclklost_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    drpdo_out : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    drprdy_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    gthtxn_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    gthtxp_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    gtpowergood_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rxbufstatus_out : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    rxbyteisaligned_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rxbyterealign_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rxcdrlock_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rxclkcorcnt_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    rxcommadet_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rxctrl0_out : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    rxctrl1_out : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    rxctrl2_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rxctrl3_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rxoutclk_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rxpmaresetdone_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rxresetdone_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    txoutclk_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    txpmaresetdone_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    txresetdone_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : gth_cxp_low
  PORT MAP (
    gtwiz_userclk_tx_active_in => gtwiz_userclk_tx_active_in,
    gtwiz_userclk_rx_active_in => gtwiz_userclk_rx_active_in,
    gtwiz_reset_tx_done_in => gtwiz_reset_tx_done_in,
    gtwiz_reset_rx_done_in => gtwiz_reset_rx_done_in,
    gtwiz_userdata_tx_in => gtwiz_userdata_tx_in,
    gtwiz_userdata_rx_out => gtwiz_userdata_rx_out,
    cplllockdetclk_in => cplllockdetclk_in,
    cpllpd_in => cpllpd_in,
    cpllreset_in => cpllreset_in,
    drpaddr_in => drpaddr_in,
    drpclk_in => drpclk_in,
    drpdi_in => drpdi_in,
    drpen_in => drpen_in,
    drpwe_in => drpwe_in,
    gthrxn_in => gthrxn_in,
    gthrxp_in => gthrxp_in,
    gtrefclk0_in => gtrefclk0_in,
    gtrxreset_in => gtrxreset_in,
    gttxreset_in => gttxreset_in,
    rx8b10ben_in => rx8b10ben_in,
    rxbufreset_in => rxbufreset_in,
    rxcommadeten_in => rxcommadeten_in,
    rxmcommaalignen_in => rxmcommaalignen_in,
    rxpcommaalignen_in => rxpcommaalignen_in,
    rxpcsreset_in => rxpcsreset_in,
    rxprogdivreset_in => rxprogdivreset_in,
    rxslide_in => rxslide_in,
    rxuserrdy_in => rxuserrdy_in,
    rxusrclk_in => rxusrclk_in,
    rxusrclk2_in => rxusrclk2_in,
    tx8b10ben_in => tx8b10ben_in,
    txctrl0_in => txctrl0_in,
    txctrl1_in => txctrl1_in,
    txctrl2_in => txctrl2_in,
    txprogdivreset_in => txprogdivreset_in,
    txuserrdy_in => txuserrdy_in,
    txusrclk_in => txusrclk_in,
    txusrclk2_in => txusrclk2_in,
    cpllfbclklost_out => cpllfbclklost_out,
    cplllock_out => cplllock_out,
    cpllrefclklost_out => cpllrefclklost_out,
    drpdo_out => drpdo_out,
    drprdy_out => drprdy_out,
    gthtxn_out => gthtxn_out,
    gthtxp_out => gthtxp_out,
    gtpowergood_out => gtpowergood_out,
    rxbufstatus_out => rxbufstatus_out,
    rxbyteisaligned_out => rxbyteisaligned_out,
    rxbyterealign_out => rxbyterealign_out,
    rxcdrlock_out => rxcdrlock_out,
    rxclkcorcnt_out => rxclkcorcnt_out,
    rxcommadet_out => rxcommadet_out,
    rxctrl0_out => rxctrl0_out,
    rxctrl1_out => rxctrl1_out,
    rxctrl2_out => rxctrl2_out,
    rxctrl3_out => rxctrl3_out,
    rxoutclk_out => rxoutclk_out,
    rxpmaresetdone_out => rxpmaresetdone_out,
    rxresetdone_out => rxresetdone_out,
    txoutclk_out => txoutclk_out,
    txpmaresetdone_out => txpmaresetdone_out,
    txresetdone_out => txresetdone_out
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file gth_cxp_low.vhd when simulating
-- the core, gth_cxp_low. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

