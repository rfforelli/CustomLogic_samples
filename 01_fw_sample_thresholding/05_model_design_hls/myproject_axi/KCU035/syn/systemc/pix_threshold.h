// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _pix_threshold_HH_
#define _pix_threshold_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct pix_threshold : public sc_module {
    // Port declarations 22
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<128> > StreamIn_V_Data_V_dout;
    sc_in< sc_logic > StreamIn_V_Data_V_empty_n;
    sc_out< sc_logic > StreamIn_V_Data_V_read;
    sc_in< sc_lv<4> > StreamIn_V_User_V_dout;
    sc_in< sc_logic > StreamIn_V_User_V_empty_n;
    sc_out< sc_logic > StreamIn_V_User_V_read;
    sc_out< sc_lv<128> > StreamOut_V_Data_V_din;
    sc_in< sc_logic > StreamOut_V_Data_V_full_n;
    sc_out< sc_logic > StreamOut_V_Data_V_write;
    sc_out< sc_lv<4> > StreamOut_V_User_V_din;
    sc_in< sc_logic > StreamOut_V_User_V_full_n;
    sc_out< sc_logic > StreamOut_V_User_V_write;


    // Module declarations
    pix_threshold(sc_module_name name);
    SC_HAS_PROCESS(pix_threshold);

    ~pix_threshold();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > StreamIn_V_Data_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > tmp_reg_468;
    sc_signal< sc_logic > StreamIn_V_User_V_blk_n;
    sc_signal< sc_logic > StreamOut_V_Data_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<1> > tmp_reg_468_pp0_iter1_reg;
    sc_signal< sc_logic > StreamOut_V_User_V_blk_n;
    sc_signal< sc_lv<14> > i_reg_166;
    sc_signal< sc_lv<1> > tmp_fu_177_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< sc_logic > StreamIn_V_Data_V0_status;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< sc_logic > StreamOut_V_Data_V1_status;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<14> > i_2_fu_183_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<4> > tmp_User_V_reg_477;
    sc_signal< sc_lv<16> > tmp_8_fu_197_p1;
    sc_signal< sc_lv<16> > tmp_8_reg_482;
    sc_signal< sc_lv<1> > icmp_fu_211_p2;
    sc_signal< sc_lv<1> > icmp_reg_487;
    sc_signal< sc_lv<16> > p_Result_1_reg_492;
    sc_signal< sc_lv<1> > icmp3_fu_237_p2;
    sc_signal< sc_lv<1> > icmp3_reg_497;
    sc_signal< sc_lv<16> > p_Result_2_reg_502;
    sc_signal< sc_lv<1> > icmp6_fu_263_p2;
    sc_signal< sc_lv<1> > icmp6_reg_507;
    sc_signal< sc_lv<16> > p_Result_3_reg_512;
    sc_signal< sc_lv<1> > icmp9_fu_289_p2;
    sc_signal< sc_lv<1> > icmp9_reg_517;
    sc_signal< sc_lv<16> > p_Result_4_reg_522;
    sc_signal< sc_lv<1> > icmp1_fu_315_p2;
    sc_signal< sc_lv<1> > icmp1_reg_527;
    sc_signal< sc_lv<16> > p_Result_5_reg_532;
    sc_signal< sc_lv<1> > icmp2_fu_341_p2;
    sc_signal< sc_lv<1> > icmp2_reg_537;
    sc_signal< sc_lv<16> > p_Result_6_reg_542;
    sc_signal< sc_lv<1> > icmp4_fu_367_p2;
    sc_signal< sc_lv<1> > icmp4_reg_547;
    sc_signal< sc_lv<16> > p_Result_7_reg_552;
    sc_signal< sc_lv<1> > icmp5_fu_393_p2;
    sc_signal< sc_lv<1> > icmp5_reg_557;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > StreamIn_V_Data_V0_update;
    sc_signal< sc_logic > StreamOut_V_Data_V1_update;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<5> > tmp_9_fu_201_p4;
    sc_signal< sc_lv<5> > tmp_10_fu_227_p4;
    sc_signal< sc_lv<5> > tmp_11_fu_253_p4;
    sc_signal< sc_lv<5> > tmp_12_fu_279_p4;
    sc_signal< sc_lv<5> > tmp_13_fu_305_p4;
    sc_signal< sc_lv<5> > tmp_14_fu_331_p4;
    sc_signal< sc_lv<5> > tmp_15_fu_357_p4;
    sc_signal< sc_lv<5> > tmp_16_fu_383_p4;
    sc_signal< sc_lv<16> > tmp_V_7_trunc_fu_441_p3;
    sc_signal< sc_lv<16> > tmp_V_6_trunc_fu_435_p3;
    sc_signal< sc_lv<16> > tmp_V_5_trunc_fu_429_p3;
    sc_signal< sc_lv<16> > tmp_V_4_trunc_fu_423_p3;
    sc_signal< sc_lv<16> > tmp_V_3_trunc_fu_417_p3;
    sc_signal< sc_lv<16> > tmp_V_2_trunc_fu_411_p3;
    sc_signal< sc_lv<16> > tmp_V_1_trunc_fu_405_p3;
    sc_signal< sc_lv<16> > tmp_V_0_trunc_fu_399_p3;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state5;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<14> ap_const_lv14_0;
    static const sc_lv<14> ap_const_lv14_2800;
    static const sc_lv<14> ap_const_lv14_1;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_2F;
    static const sc_lv<32> ap_const_lv32_2B;
    static const sc_lv<32> ap_const_lv32_30;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<32> ap_const_lv32_3B;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<32> ap_const_lv32_4F;
    static const sc_lv<32> ap_const_lv32_4B;
    static const sc_lv<32> ap_const_lv32_50;
    static const sc_lv<32> ap_const_lv32_5F;
    static const sc_lv<32> ap_const_lv32_5B;
    static const sc_lv<32> ap_const_lv32_60;
    static const sc_lv<32> ap_const_lv32_6F;
    static const sc_lv<32> ap_const_lv32_6B;
    static const sc_lv<32> ap_const_lv32_70;
    static const sc_lv<32> ap_const_lv32_7F;
    static const sc_lv<32> ap_const_lv32_7B;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_StreamIn_V_Data_V0_status();
    void thread_StreamIn_V_Data_V0_update();
    void thread_StreamIn_V_Data_V_blk_n();
    void thread_StreamIn_V_Data_V_read();
    void thread_StreamIn_V_User_V_blk_n();
    void thread_StreamIn_V_User_V_read();
    void thread_StreamOut_V_Data_V1_status();
    void thread_StreamOut_V_Data_V1_update();
    void thread_StreamOut_V_Data_V_blk_n();
    void thread_StreamOut_V_Data_V_din();
    void thread_StreamOut_V_Data_V_write();
    void thread_StreamOut_V_User_V_blk_n();
    void thread_StreamOut_V_User_V_din();
    void thread_StreamOut_V_User_V_write();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_i_2_fu_183_p2();
    void thread_icmp1_fu_315_p2();
    void thread_icmp2_fu_341_p2();
    void thread_icmp3_fu_237_p2();
    void thread_icmp4_fu_367_p2();
    void thread_icmp5_fu_393_p2();
    void thread_icmp6_fu_263_p2();
    void thread_icmp9_fu_289_p2();
    void thread_icmp_fu_211_p2();
    void thread_internal_ap_ready();
    void thread_real_start();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp_10_fu_227_p4();
    void thread_tmp_11_fu_253_p4();
    void thread_tmp_12_fu_279_p4();
    void thread_tmp_13_fu_305_p4();
    void thread_tmp_14_fu_331_p4();
    void thread_tmp_15_fu_357_p4();
    void thread_tmp_16_fu_383_p4();
    void thread_tmp_8_fu_197_p1();
    void thread_tmp_9_fu_201_p4();
    void thread_tmp_V_0_trunc_fu_399_p3();
    void thread_tmp_V_1_trunc_fu_405_p3();
    void thread_tmp_V_2_trunc_fu_411_p3();
    void thread_tmp_V_3_trunc_fu_417_p3();
    void thread_tmp_V_4_trunc_fu_423_p3();
    void thread_tmp_V_5_trunc_fu_429_p3();
    void thread_tmp_V_6_trunc_fu_435_p3();
    void thread_tmp_V_7_trunc_fu_441_p3();
    void thread_tmp_fu_177_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif