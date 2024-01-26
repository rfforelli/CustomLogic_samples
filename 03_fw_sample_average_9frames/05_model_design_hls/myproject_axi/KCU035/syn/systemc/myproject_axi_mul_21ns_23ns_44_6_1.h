// ==============================================================
// File generated on Tue Jan 23 17:37:10 CST 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __myproject_axi_mul_21ns_23ns_44_6_1__HH__
#define __myproject_axi_mul_21ns_23ns_44_6_1__HH__
#include "ACMP_mul_uu.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(myproject_axi_mul_21ns_23ns_44_6_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_mul_uu<ID, 6, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_mul_uu_U;

    SC_CTOR(myproject_axi_mul_21ns_23ns_44_6_1):  ACMP_mul_uu_U ("ACMP_mul_uu_U") {
        ACMP_mul_uu_U.clk(clk);
        ACMP_mul_uu_U.reset(reset);
        ACMP_mul_uu_U.ce(ce);
        ACMP_mul_uu_U.din0(din0);
        ACMP_mul_uu_U.din1(din1);
        ACMP_mul_uu_U.dout(dout);

    }

};

#endif //
