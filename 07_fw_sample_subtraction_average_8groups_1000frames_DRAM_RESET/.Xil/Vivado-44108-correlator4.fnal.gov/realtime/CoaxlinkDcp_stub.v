// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module CoaxlinkDcp(dma_rst_n, dma_clk, dma_testmode, 
  dma_s_axis_rq_tlast, dma_s_axis_rq_tdata, dma_s_axis_rq_tuser, dma_s_axis_rq_tkeep, 
  dma_s_axis_rq_tready, dma_s_axis_rq_tvalid, dma_m_axis_rc_tdata, dma_m_axis_rc_tuser, 
  dma_m_axis_rc_tlast, dma_m_axis_rc_tkeep, dma_m_axis_rc_tvalid, dma_m_axis_rc_tready, 
  dma_m_axis_cq_tdata, dma_m_axis_cq_tuser, dma_m_axis_cq_tlast, dma_m_axis_cq_tkeep, 
  dma_m_axis_cq_tvalid, dma_m_axis_cq_tready, dma_s_axis_cc_tdata, dma_s_axis_cc_tuser, 
  dma_s_axis_cc_tlast, dma_s_axis_cc_tkeep, dma_s_axis_cc_tvalid, dma_s_axis_cc_tready, 
  dma_mgmt_mst_en, dma_mgmt_msi_en, dma_mgmt_msi_vec_mask_capable, dma_mgmt_msi_mask, 
  dma_mgmt_msi_pending, dma_mgmt_msix_en, dma_mgmt_msix_table_offset, 
  dma_mgmt_msix_pba_offset, dma_mgmt_msix_function_mask, dma_mgmt_max_payload_size, 
  dma_mgmt_max_rd_req_size, dma_mgmt_clk_period_in_ns, dma_mgmt_pcie_version, 
  dma_mgmt_user_version, dma_mgmt_cfg_id, dma_mgmt_interrupt, dma_user_interrupt, 
  dma_cfg_interrupt_int, dma_cfg_interrupt_pending, dma_cfg_interrupt_sent, 
  dma_cfg_interrupt_msi_int, dma_cfg_interrupt_msi_sent, dma_mgmt_ch_infinite, 
  dma_mgmt_cd_infinite, dma_mgmt_ch_credits, dma_mgmt_cd_credits, 
  dma_mgmt_cpl_timeout_disable, dma_mgmt_cpl_timeout_value, dma_err_cpl_timeout, 
  dma_cpl_tag_active, dma_err_cpl_to_closed_tag, dma_err_pkt_header, dma_err_pkt_poison, 
  dma_mst_ready, dma_mst_req, dma_mst_type, dma_mst_data, dma_mst_be, dma_mst_addr, 
  dma_mst_msgcode, dma_mst_rd_data, dma_mst_status, dma_mst_done, dma_c2s0_cfg_constants, 
  dma_c2s0_desc_req, dma_c2s0_desc_ready, dma_c2s0_desc_ptr, dma_c2s0_desc_data, 
  dma_c2s0_desc_abort, dma_c2s0_desc_abort_ack, dma_c2s0_desc_rst_n, dma_c2s0_desc_done, 
  dma_c2s0_desc_done_channel, dma_c2s0_desc_done_status, dma_c2s0_cmd_rst_n, 
  dma_c2s0_cmd_req, dma_c2s0_cmd_ready, dma_c2s0_cmd_first_chain, 
  dma_c2s0_cmd_last_chain, dma_c2s0_cmd_addr, dma_c2s0_cmd_bcount, 
  dma_c2s0_cmd_user_control, dma_c2s0_cmd_abort, dma_c2s0_cmd_abort_ack, 
  dma_c2s0_data_req, dma_c2s0_data_ready, dma_c2s0_data_req_remain, 
  dma_c2s0_data_req_last_desc, dma_c2s0_data_addr, dma_c2s0_data_bcount, 
  dma_c2s0_data_stop, dma_c2s0_data_stop_bcount, dma_c2s0_data_en, dma_c2s0_data_remain, 
  dma_c2s0_data_valid, dma_c2s0_data_first_req, dma_c2s0_data_last_req, 
  dma_c2s0_data_first_desc, dma_c2s0_data_last_desc, dma_c2s0_data_first_chain, 
  dma_c2s0_data_last_chain, dma_c2s0_data_sop, dma_c2s0_data_eop, dma_c2s0_data_data, 
  dma_c2s0_data_user_status, dma_targ_wr_req, dma_targ_wr_core_ready, 
  dma_targ_wr_user_ready, dma_targ_wr_cs, dma_targ_wr_start, dma_targ_wr_addr, 
  dma_targ_wr_count, dma_targ_wr_en, dma_targ_wr_data, dma_targ_wr_be, dma_targ_rd_req, 
  dma_targ_rd_core_ready, dma_targ_rd_user_ready, dma_targ_rd_cs, dma_targ_rd_start, 
  dma_targ_rd_addr, dma_targ_rd_first_be, dma_targ_rd_last_be, dma_targ_rd_count, 
  dma_targ_rd_en, dma_targ_rd_data, dma_reg_wr_addr, dma_reg_wr_en, dma_reg_wr_be, 
  dma_reg_wr_data, dma_reg_rd_addr, dma_reg_rd_be, dma_reg_rd_data, cxp_sys_clk, cxp_sys_rst, 
  cxp_tport_dl_clk, cxp_tport_dl_data, cxp_tport_dl_k, cxp_tport_dl_ce, 
  cxp_tport_dl_DispErr, cxp_tport_dl_NotInTable, cxp_tport_dl_rate, cxp_tport_dl_rate_ch, 
  cxp_tport_dl_lock, cxp_tport_dl_relock_req, cxp_tport_dl_reconf_state_busy, cxp_ul_clk, 
  cxp_ul_rst, cxp_ul_tx, cxp_ul_ce, cxp_ul_trig_req, cxp_ul_trig_delay, cxp_ul_trig_rising, 
  cxp_ul_trig_ack, cxp_ul_trig_ce, cxp_dl_trig_evt, cxp_dl_trig_rising, cxp_dl_trig_delay, 
  cxp_dl_trig_2_0_evt, cxp_dl_trig_2_0_delay, cxp_dl_trig_2_0_linktriggern, 
  cxp_ul_gpio_req, cxp_ul_gpio_data, cxp_ul_gpio_ack, cxp_dl_gpio_evt, cxp_dl_gpio_data, 
  cxp_lnk_gids, cxp_axis_aclk, cxp_axis_aresetn, cxp_axis_tvalid, cxp_axis_tready, 
  cxp_axis_tdata, cxp_axis_tkeep, cxp_axis_tlast, cxp_axis_tid, cxp_axis_tuser, 
  cxp_axi_fifo_rd_ef, cxp_S_AXI_ADDR_BASE, cxp_s_axil_awvalid, cxp_s_axil_awready, 
  cxp_s_axil_awaddr, cxp_s_axil_awprot, cxp_s_axil_wvalid, cxp_s_axil_wready, 
  cxp_s_axil_wdata, cxp_s_axil_wstrb, cxp_s_axil_bvalid, cxp_s_axil_bready, 
  cxp_s_axil_bresp, cxp_s_axil_arvalid, cxp_s_axil_arready, cxp_s_axil_araddr, 
  cxp_s_axil_arprot, cxp_s_axil_rvalid, cxp_s_axil_rready, cxp_s_axil_rdata, 
  cxp_s_axil_rresp, cxp_hbt_valid, cxp_hbt_host_id, cxp_hbt_timestamp, cxp_evt_ack, 
  cxp_evt_tag_ack, cxp_evt_fifo_rd_en, cxp_evt_start, cxp_evt_fifo_out, cxp_evt_fifo_empty, 
  cxp_int, cxp_stat_err_tag, cxp_stat_err_sts_tag, cxp_stat_err_ovf, cxp_stat_err_crc, 
  cxp_stat_err_sz, cxp_sdpk_pff_pkt_crc_err, cxp_connection_tp_en, cxp_missed_dpktend, 
  cxp_tp);
  input dma_rst_n;
  input dma_clk;
  input dma_testmode;
  output dma_s_axis_rq_tlast;
  output [255:0]dma_s_axis_rq_tdata;
  output [59:0]dma_s_axis_rq_tuser;
  output [7:0]dma_s_axis_rq_tkeep;
  input dma_s_axis_rq_tready;
  output dma_s_axis_rq_tvalid;
  input [255:0]dma_m_axis_rc_tdata;
  input [74:0]dma_m_axis_rc_tuser;
  input dma_m_axis_rc_tlast;
  input [7:0]dma_m_axis_rc_tkeep;
  input dma_m_axis_rc_tvalid;
  output dma_m_axis_rc_tready;
  input [255:0]dma_m_axis_cq_tdata;
  input [84:0]dma_m_axis_cq_tuser;
  input dma_m_axis_cq_tlast;
  input [7:0]dma_m_axis_cq_tkeep;
  input dma_m_axis_cq_tvalid;
  output dma_m_axis_cq_tready;
  output [255:0]dma_s_axis_cc_tdata;
  output [32:0]dma_s_axis_cc_tuser;
  output dma_s_axis_cc_tlast;
  output [7:0]dma_s_axis_cc_tkeep;
  output dma_s_axis_cc_tvalid;
  input dma_s_axis_cc_tready;
  input dma_mgmt_mst_en;
  input dma_mgmt_msi_en;
  input dma_mgmt_msi_vec_mask_capable;
  input [31:0]dma_mgmt_msi_mask;
  output [31:0]dma_mgmt_msi_pending;
  input dma_mgmt_msix_en;
  input [31:0]dma_mgmt_msix_table_offset;
  input [31:0]dma_mgmt_msix_pba_offset;
  input dma_mgmt_msix_function_mask;
  input [2:0]dma_mgmt_max_payload_size;
  input [2:0]dma_mgmt_max_rd_req_size;
  input [7:0]dma_mgmt_clk_period_in_ns;
  input [31:0]dma_mgmt_pcie_version;
  input [31:0]dma_mgmt_user_version;
  input [15:0]dma_mgmt_cfg_id;
  input [31:0]dma_mgmt_interrupt;
  input dma_user_interrupt;
  output dma_cfg_interrupt_int;
  output [3:0]dma_cfg_interrupt_pending;
  input dma_cfg_interrupt_sent;
  output dma_cfg_interrupt_msi_int;
  input dma_cfg_interrupt_msi_sent;
  input dma_mgmt_ch_infinite;
  input dma_mgmt_cd_infinite;
  input [7:0]dma_mgmt_ch_credits;
  input [11:0]dma_mgmt_cd_credits;
  input dma_mgmt_cpl_timeout_disable;
  input [3:0]dma_mgmt_cpl_timeout_value;
  output dma_err_cpl_timeout;
  output dma_cpl_tag_active;
  output dma_err_cpl_to_closed_tag;
  output [127:0]dma_err_pkt_header;
  output dma_err_pkt_poison;
  output dma_mst_ready;
  input dma_mst_req;
  input [6:0]dma_mst_type;
  input [31:0]dma_mst_data;
  input [3:0]dma_mst_be;
  input [63:0]dma_mst_addr;
  input [7:0]dma_mst_msgcode;
  output [31:0]dma_mst_rd_data;
  output [2:0]dma_mst_status;
  output dma_mst_done;
  input [63:0]dma_c2s0_cfg_constants;
  input dma_c2s0_desc_req;
  output dma_c2s0_desc_ready;
  input [31:0]dma_c2s0_desc_ptr;
  input [255:0]dma_c2s0_desc_data;
  input dma_c2s0_desc_abort;
  output dma_c2s0_desc_abort_ack;
  input dma_c2s0_desc_rst_n;
  output dma_c2s0_desc_done;
  output [7:0]dma_c2s0_desc_done_channel;
  output [159:0]dma_c2s0_desc_done_status;
  output dma_c2s0_cmd_rst_n;
  output dma_c2s0_cmd_req;
  input dma_c2s0_cmd_ready;
  output dma_c2s0_cmd_first_chain;
  output dma_c2s0_cmd_last_chain;
  output [63:0]dma_c2s0_cmd_addr;
  output [31:0]dma_c2s0_cmd_bcount;
  output [63:0]dma_c2s0_cmd_user_control;
  output dma_c2s0_cmd_abort;
  input dma_c2s0_cmd_abort_ack;
  output dma_c2s0_data_req;
  input dma_c2s0_data_ready;
  output [4:0]dma_c2s0_data_req_remain;
  output dma_c2s0_data_req_last_desc;
  output [63:0]dma_c2s0_data_addr;
  output [9:0]dma_c2s0_data_bcount;
  input dma_c2s0_data_stop;
  input [9:0]dma_c2s0_data_stop_bcount;
  output dma_c2s0_data_en;
  output [4:0]dma_c2s0_data_remain;
  output [5:0]dma_c2s0_data_valid;
  output dma_c2s0_data_first_req;
  output dma_c2s0_data_last_req;
  output dma_c2s0_data_first_desc;
  output dma_c2s0_data_last_desc;
  output dma_c2s0_data_first_chain;
  output dma_c2s0_data_last_chain;
  input dma_c2s0_data_sop;
  input dma_c2s0_data_eop;
  input [255:0]dma_c2s0_data_data;
  input [63:0]dma_c2s0_data_user_status;
  output dma_targ_wr_req;
  output dma_targ_wr_core_ready;
  input dma_targ_wr_user_ready;
  output [5:0]dma_targ_wr_cs;
  output dma_targ_wr_start;
  output [31:0]dma_targ_wr_addr;
  output [12:0]dma_targ_wr_count;
  output dma_targ_wr_en;
  output [255:0]dma_targ_wr_data;
  output [31:0]dma_targ_wr_be;
  output dma_targ_rd_req;
  output dma_targ_rd_core_ready;
  input dma_targ_rd_user_ready;
  output [5:0]dma_targ_rd_cs;
  output dma_targ_rd_start;
  output [31:0]dma_targ_rd_addr;
  output [31:0]dma_targ_rd_first_be;
  output [31:0]dma_targ_rd_last_be;
  output [12:0]dma_targ_rd_count;
  output dma_targ_rd_en;
  input [255:0]dma_targ_rd_data;
  output [10:0]dma_reg_wr_addr;
  output dma_reg_wr_en;
  output [31:0]dma_reg_wr_be;
  output [255:0]dma_reg_wr_data;
  output [10:0]dma_reg_rd_addr;
  output [31:0]dma_reg_rd_be;
  input [255:0]dma_reg_rd_data;
  input cxp_sys_clk;
  input cxp_sys_rst;
  input [3:0]cxp_tport_dl_clk;
  input [127:0]cxp_tport_dl_data;
  input [15:0]cxp_tport_dl_k;
  input [3:0]cxp_tport_dl_ce;
  input [15:0]cxp_tport_dl_DispErr;
  input [15:0]cxp_tport_dl_NotInTable;
  output [11:0]cxp_tport_dl_rate;
  output [3:0]cxp_tport_dl_rate_ch;
  input [3:0]cxp_tport_dl_lock;
  output [3:0]cxp_tport_dl_relock_req;
  input [3:0]cxp_tport_dl_reconf_state_busy;
  input cxp_ul_clk;
  input cxp_ul_rst;
  output [3:0]cxp_ul_tx;
  output [3:0]cxp_ul_ce;
  input [3:0]cxp_ul_trig_req;
  input [31:0]cxp_ul_trig_delay;
  input [3:0]cxp_ul_trig_rising;
  output [3:0]cxp_ul_trig_ack;
  output [3:0]cxp_ul_trig_ce;
  output [3:0]cxp_dl_trig_evt;
  output [3:0]cxp_dl_trig_rising;
  output [31:0]cxp_dl_trig_delay;
  output [3:0]cxp_dl_trig_2_0_evt;
  output [31:0]cxp_dl_trig_2_0_delay;
  output [31:0]cxp_dl_trig_2_0_linktriggern;
  input [3:0]cxp_ul_gpio_req;
  input [31:0]cxp_ul_gpio_data;
  output [3:0]cxp_ul_gpio_ack;
  output [3:0]cxp_dl_gpio_evt;
  output [31:0]cxp_dl_gpio_data;
  output [31:0]cxp_lnk_gids;
  input cxp_axis_aclk;
  input cxp_axis_aresetn;
  output cxp_axis_tvalid;
  input cxp_axis_tready;
  output [127:0]cxp_axis_tdata;
  output [15:0]cxp_axis_tkeep;
  output cxp_axis_tlast;
  output [9:0]cxp_axis_tid;
  output [5:0]cxp_axis_tuser;
  output cxp_axi_fifo_rd_ef;
  input [31:0]cxp_S_AXI_ADDR_BASE;
  input cxp_s_axil_awvalid;
  output cxp_s_axil_awready;
  input [31:0]cxp_s_axil_awaddr;
  input [2:0]cxp_s_axil_awprot;
  input cxp_s_axil_wvalid;
  output cxp_s_axil_wready;
  input [31:0]cxp_s_axil_wdata;
  input [3:0]cxp_s_axil_wstrb;
  output cxp_s_axil_bvalid;
  input cxp_s_axil_bready;
  output [1:0]cxp_s_axil_bresp;
  input cxp_s_axil_arvalid;
  output cxp_s_axil_arready;
  input [31:0]cxp_s_axil_araddr;
  input [2:0]cxp_s_axil_arprot;
  output cxp_s_axil_rvalid;
  input cxp_s_axil_rready;
  output [31:0]cxp_s_axil_rdata;
  output [1:0]cxp_s_axil_rresp;
  output cxp_hbt_valid;
  output [31:0]cxp_hbt_host_id;
  output [63:0]cxp_hbt_timestamp;
  input cxp_evt_ack;
  input [7:0]cxp_evt_tag_ack;
  input cxp_evt_fifo_rd_en;
  output cxp_evt_start;
  output [31:0]cxp_evt_fifo_out;
  output cxp_evt_fifo_empty;
  output cxp_int;
  output cxp_stat_err_tag;
  output [19:0]cxp_stat_err_sts_tag;
  output cxp_stat_err_ovf;
  output cxp_stat_err_crc;
  output cxp_stat_err_sz;
  output [3:0]cxp_sdpk_pff_pkt_crc_err;
  output [3:0]cxp_connection_tp_en;
  output [3:0]cxp_missed_dpktend;
  output [7:0]cxp_tp;
endmodule
