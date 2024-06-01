// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "send_output.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic send_output::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic send_output::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> send_output::ap_ST_fsm_state1 = "1";
const sc_lv<3> send_output::ap_ST_fsm_pp0_stage0 = "10";
const sc_lv<3> send_output::ap_ST_fsm_state4 = "100";
const sc_lv<32> send_output::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool send_output::ap_const_boolean_1 = true;
const sc_lv<32> send_output::ap_const_lv32_1 = "1";
const bool send_output::ap_const_boolean_0 = false;
const sc_lv<1> send_output::ap_const_lv1_0 = "0";
const sc_lv<1> send_output::ap_const_lv1_1 = "1";
const sc_lv<14> send_output::ap_const_lv14_0 = "00000000000000";
const sc_lv<14> send_output::ap_const_lv14_2800 = "10100000000000";
const sc_lv<14> send_output::ap_const_lv14_1 = "1";
const sc_lv<32> send_output::ap_const_lv32_2 = "10";

send_output::send_output(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_StreamIn_V_Data_V0_status);
    sensitive << ( StreamIn_V_Data_V_empty_n );
    sensitive << ( StreamIn_V_User_V_empty_n );

    SC_METHOD(thread_StreamIn_V_Data_V0_update);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( tmp_reg_127 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_StreamIn_V_Data_V_blk_n);
    sensitive << ( StreamIn_V_Data_V_empty_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( tmp_reg_127 );

    SC_METHOD(thread_StreamIn_V_Data_V_read);
    sensitive << ( StreamIn_V_Data_V0_update );

    SC_METHOD(thread_StreamIn_V_User_V_blk_n);
    sensitive << ( StreamIn_V_User_V_empty_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( tmp_reg_127 );

    SC_METHOD(thread_StreamIn_V_User_V_read);
    sensitive << ( StreamIn_V_Data_V0_update );

    SC_METHOD(thread_VideoOut_TDATA);
    sensitive << ( StreamIn_V_Data_V_dout );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( tmp_reg_127 );
    sensitive << ( ap_block_pp0_stage0_01001 );

    SC_METHOD(thread_VideoOut_TDATA_blk_n);
    sensitive << ( VideoOut_TREADY );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( tmp_reg_127 );

    SC_METHOD(thread_VideoOut_TUSER);
    sensitive << ( StreamIn_V_User_V_dout );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( tmp_reg_127 );
    sensitive << ( ap_block_pp0_stage0_01001 );

    SC_METHOD(thread_VideoOut_TVALID);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( tmp_reg_127 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_01001);
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( tmp_reg_127 );
    sensitive << ( StreamIn_V_Data_V0_status );

    SC_METHOD(thread_ap_block_pp0_stage0_11001);
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( tmp_reg_127 );
    sensitive << ( StreamIn_V_Data_V0_status );
    sensitive << ( ap_block_state3_io );

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( tmp_reg_127 );
    sensitive << ( StreamIn_V_Data_V0_status );
    sensitive << ( ap_block_state3_io );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state3_io);
    sensitive << ( VideoOut_TREADY );
    sensitive << ( tmp_reg_127 );

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter1);
    sensitive << ( tmp_reg_127 );
    sensitive << ( StreamIn_V_Data_V0_status );

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state2);
    sensitive << ( tmp_fu_105_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_i_1_fu_111_p2);
    sensitive << ( i_reg_94 );

    SC_METHOD(thread_tmp_fu_105_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( i_reg_94 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( tmp_fu_105_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0_subdone );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "001";
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "send_output_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, StreamIn_V_Data_V_dout, "(port)StreamIn_V_Data_V_dout");
    sc_trace(mVcdFile, StreamIn_V_Data_V_empty_n, "(port)StreamIn_V_Data_V_empty_n");
    sc_trace(mVcdFile, StreamIn_V_Data_V_read, "(port)StreamIn_V_Data_V_read");
    sc_trace(mVcdFile, StreamIn_V_User_V_dout, "(port)StreamIn_V_User_V_dout");
    sc_trace(mVcdFile, StreamIn_V_User_V_empty_n, "(port)StreamIn_V_User_V_empty_n");
    sc_trace(mVcdFile, StreamIn_V_User_V_read, "(port)StreamIn_V_User_V_read");
    sc_trace(mVcdFile, VideoOut_TDATA, "(port)VideoOut_TDATA");
    sc_trace(mVcdFile, VideoOut_TVALID, "(port)VideoOut_TVALID");
    sc_trace(mVcdFile, VideoOut_TREADY, "(port)VideoOut_TREADY");
    sc_trace(mVcdFile, VideoOut_TUSER, "(port)VideoOut_TUSER");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, StreamIn_V_Data_V_blk_n, "StreamIn_V_Data_V_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, tmp_reg_127, "tmp_reg_127");
    sc_trace(mVcdFile, StreamIn_V_User_V_blk_n, "StreamIn_V_User_V_blk_n");
    sc_trace(mVcdFile, VideoOut_TDATA_blk_n, "VideoOut_TDATA_blk_n");
    sc_trace(mVcdFile, i_reg_94, "i_reg_94");
    sc_trace(mVcdFile, tmp_fu_105_p2, "tmp_fu_105_p2");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter0, "ap_block_state2_pp0_stage0_iter0");
    sc_trace(mVcdFile, StreamIn_V_Data_V0_status, "StreamIn_V_Data_V0_status");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter1, "ap_block_state3_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_state3_io, "ap_block_state3_io");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, i_1_fu_111_p2, "i_1_fu_111_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state2, "ap_condition_pp0_exit_iter0_state2");
    sc_trace(mVcdFile, StreamIn_V_Data_V0_update, "StreamIn_V_Data_V0_update");
    sc_trace(mVcdFile, ap_block_pp0_stage0_01001, "ap_block_pp0_stage0_01001");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
}

send_output::~send_output() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void send_output::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()))) {
            ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state2.read() ^ ap_const_logic_1);
        } else if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
            ap_enable_reg_pp0_iter1 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_fu_105_p2.read()))) {
        i_reg_94 = i_1_fu_111_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        i_reg_94 = ap_const_lv14_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        tmp_reg_127 = tmp_fu_105_p2.read();
    }
}

void send_output::thread_StreamIn_V_Data_V0_status() {
    StreamIn_V_Data_V0_status = (StreamIn_V_Data_V_empty_n.read() & StreamIn_V_User_V_empty_n.read());
}

void send_output::thread_StreamIn_V_Data_V0_update() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(tmp_reg_127.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        StreamIn_V_Data_V0_update = ap_const_logic_1;
    } else {
        StreamIn_V_Data_V0_update = ap_const_logic_0;
    }
}

void send_output::thread_StreamIn_V_Data_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(tmp_reg_127.read(), ap_const_lv1_0))) {
        StreamIn_V_Data_V_blk_n = StreamIn_V_Data_V_empty_n.read();
    } else {
        StreamIn_V_Data_V_blk_n = ap_const_logic_1;
    }
}

void send_output::thread_StreamIn_V_Data_V_read() {
    StreamIn_V_Data_V_read = StreamIn_V_Data_V0_update.read();
}

void send_output::thread_StreamIn_V_User_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(tmp_reg_127.read(), ap_const_lv1_0))) {
        StreamIn_V_User_V_blk_n = StreamIn_V_User_V_empty_n.read();
    } else {
        StreamIn_V_User_V_blk_n = ap_const_logic_1;
    }
}

void send_output::thread_StreamIn_V_User_V_read() {
    StreamIn_V_User_V_read = StreamIn_V_Data_V0_update.read();
}

void send_output::thread_VideoOut_TDATA() {
    VideoOut_TDATA = StreamIn_V_Data_V_dout.read();
}

void send_output::thread_VideoOut_TDATA_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(tmp_reg_127.read(), ap_const_lv1_0))) {
        VideoOut_TDATA_blk_n = VideoOut_TREADY.read();
    } else {
        VideoOut_TDATA_blk_n = ap_const_logic_1;
    }
}

void send_output::thread_VideoOut_TUSER() {
    VideoOut_TUSER = StreamIn_V_User_V_dout.read();
}

void send_output::thread_VideoOut_TVALID() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(tmp_reg_127.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        VideoOut_TVALID = ap_const_logic_1;
    } else {
        VideoOut_TVALID = ap_const_logic_0;
    }
}

void send_output::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[1];
}

void send_output::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void send_output::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[2];
}

void send_output::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void send_output::thread_ap_block_pp0_stage0_01001() {
    ap_block_pp0_stage0_01001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(tmp_reg_127.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, StreamIn_V_Data_V0_status.read()));
}

void send_output::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && ((esl_seteq<1,1,1>(tmp_reg_127.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, StreamIn_V_Data_V0_status.read())) || 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state3_io.read())));
}

void send_output::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && ((esl_seteq<1,1,1>(tmp_reg_127.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, StreamIn_V_Data_V0_status.read())) || 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state3_io.read())));
}

void send_output::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void send_output::thread_ap_block_state2_pp0_stage0_iter0() {
    ap_block_state2_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void send_output::thread_ap_block_state3_io() {
    ap_block_state3_io = (esl_seteq<1,1,1>(tmp_reg_127.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, VideoOut_TREADY.read()));
}

void send_output::thread_ap_block_state3_pp0_stage0_iter1() {
    ap_block_state3_pp0_stage0_iter1 = (esl_seteq<1,1,1>(tmp_reg_127.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, StreamIn_V_Data_V0_status.read()));
}

void send_output::thread_ap_condition_pp0_exit_iter0_state2() {
    if (esl_seteq<1,1,1>(tmp_fu_105_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_0;
    }
}

void send_output::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void send_output::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void send_output::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void send_output::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void send_output::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void send_output::thread_i_1_fu_111_p2() {
    i_1_fu_111_p2 = (!i_reg_94.read().is_01() || !ap_const_lv14_1.is_01())? sc_lv<14>(): (sc_biguint<14>(i_reg_94.read()) + sc_biguint<14>(ap_const_lv14_1));
}

void send_output::thread_tmp_fu_105_p2() {
    tmp_fu_105_p2 = (!i_reg_94.read().is_01() || !ap_const_lv14_2800.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_94.read() == ap_const_lv14_2800);
}

void send_output::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(tmp_fu_105_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(tmp_fu_105_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

}
