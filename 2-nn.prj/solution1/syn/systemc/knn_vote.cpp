// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "knn_vote.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic knn_vote::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic knn_vote::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> knn_vote::ap_ST_fsm_state1 = "1";
const sc_lv<4> knn_vote::ap_ST_fsm_state2 = "10";
const sc_lv<4> knn_vote::ap_ST_fsm_state3 = "100";
const sc_lv<4> knn_vote::ap_ST_fsm_state4 = "1000";
const sc_lv<32> knn_vote::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> knn_vote::ap_const_lv32_1 = "1";
const sc_lv<1> knn_vote::ap_const_lv1_0 = "0";
const sc_lv<32> knn_vote::ap_const_lv32_2 = "10";
const sc_lv<1> knn_vote::ap_const_lv1_1 = "1";
const sc_lv<32> knn_vote::ap_const_lv32_3 = "11";
const sc_lv<32> knn_vote::ap_const_lv32_64 = "1100100";
const sc_lv<4> knn_vote::ap_const_lv4_0 = "0000";
const sc_lv<7> knn_vote::ap_const_lv7_0 = "0000000";
const sc_lv<2> knn_vote::ap_const_lv2_0 = "00";
const sc_lv<4> knn_vote::ap_const_lv4_A = "1010";
const sc_lv<4> knn_vote::ap_const_lv4_1 = "1";
const sc_lv<2> knn_vote::ap_const_lv2_2 = "10";
const sc_lv<2> knn_vote::ap_const_lv2_1 = "1";
const bool knn_vote::ap_const_boolean_1 = true;

knn_vote::knn_vote(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond7_fu_106_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond7_fu_106_p2 );

    SC_METHOD(thread_ap_return);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond7_fu_106_p2 );
    sensitive << ( tmp_6_fu_130_p1 );
    sensitive << ( ap_return_preg );

    SC_METHOD(thread_digit_recognized_cas_fu_102_p1);
    sensitive << ( digit_recognized_reg_68 );

    SC_METHOD(thread_exitcond7_fu_106_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( digit_recognized_reg_68 );

    SC_METHOD(thread_exitcond_fu_134_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( j_reg_91 );

    SC_METHOD(thread_i_0_digit_recognized_fu_178_p3);
    sensitive << ( digit_recognized_cas_reg_195 );
    sensitive << ( val_assign_reg_56 );
    sensitive << ( tmp_1_fu_164_p2 );

    SC_METHOD(thread_i_fu_112_p2);
    sensitive << ( digit_recognized_reg_68 );

    SC_METHOD(thread_j_1_fu_140_p2);
    sensitive << ( j_reg_91 );

    SC_METHOD(thread_knn_set_V_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_5_cast_fu_155_p1 );

    SC_METHOD(thread_knn_set_V_ce0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_min_sum_distances_1_s_fu_160_p1);
    sensitive << ( min_sum_distances_1_reg_79 );

    SC_METHOD(thread_sum_distances_1_min_s_fu_170_p3);
    sensitive << ( min_sum_distances_reg_44 );
    sensitive << ( min_sum_distances_1_s_fu_160_p1 );
    sensitive << ( tmp_1_fu_164_p2 );

    SC_METHOD(thread_sum_distances_fu_189_p2);
    sensitive << ( min_sum_distances_1_reg_79 );
    sensitive << ( tmp_3_cast_fu_185_p1 );

    SC_METHOD(thread_tmp_1_fu_164_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( exitcond_fu_134_p2 );
    sensitive << ( min_sum_distances_reg_44 );
    sensitive << ( min_sum_distances_1_s_fu_160_p1 );

    SC_METHOD(thread_tmp_2_cast_fu_146_p1);
    sensitive << ( j_reg_91 );

    SC_METHOD(thread_tmp_3_cast_fu_185_p1);
    sensitive << ( knn_set_V_q0 );

    SC_METHOD(thread_tmp_4_cast_fu_126_p1);
    sensitive << ( tmp_fu_118_p3 );

    SC_METHOD(thread_tmp_5_cast_fu_155_p1);
    sensitive << ( tmp_5_fu_150_p2 );

    SC_METHOD(thread_tmp_5_fu_150_p2);
    sensitive << ( tmp_4_cast_reg_208 );
    sensitive << ( tmp_2_cast_fu_146_p1 );

    SC_METHOD(thread_tmp_6_fu_130_p1);
    sensitive << ( val_assign_reg_56 );

    SC_METHOD(thread_tmp_fu_118_p3);
    sensitive << ( digit_recognized_reg_68 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond7_fu_106_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( exitcond_fu_134_p2 );

    ap_CS_fsm = "0001";
    ap_return_preg = "0000";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "knn_vote_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, knn_set_V_address0, "(port)knn_set_V_address0");
    sc_trace(mVcdFile, knn_set_V_ce0, "(port)knn_set_V_ce0");
    sc_trace(mVcdFile, knn_set_V_q0, "(port)knn_set_V_q0");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, digit_recognized_cas_fu_102_p1, "digit_recognized_cas_fu_102_p1");
    sc_trace(mVcdFile, digit_recognized_cas_reg_195, "digit_recognized_cas_reg_195");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, i_fu_112_p2, "i_fu_112_p2");
    sc_trace(mVcdFile, i_reg_203, "i_reg_203");
    sc_trace(mVcdFile, tmp_4_cast_fu_126_p1, "tmp_4_cast_fu_126_p1");
    sc_trace(mVcdFile, tmp_4_cast_reg_208, "tmp_4_cast_reg_208");
    sc_trace(mVcdFile, exitcond7_fu_106_p2, "exitcond7_fu_106_p2");
    sc_trace(mVcdFile, j_1_fu_140_p2, "j_1_fu_140_p2");
    sc_trace(mVcdFile, j_1_reg_216, "j_1_reg_216");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, exitcond_fu_134_p2, "exitcond_fu_134_p2");
    sc_trace(mVcdFile, sum_distances_1_min_s_fu_170_p3, "sum_distances_1_min_s_fu_170_p3");
    sc_trace(mVcdFile, i_0_digit_recognized_fu_178_p3, "i_0_digit_recognized_fu_178_p3");
    sc_trace(mVcdFile, sum_distances_fu_189_p2, "sum_distances_fu_189_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, min_sum_distances_reg_44, "min_sum_distances_reg_44");
    sc_trace(mVcdFile, val_assign_reg_56, "val_assign_reg_56");
    sc_trace(mVcdFile, digit_recognized_reg_68, "digit_recognized_reg_68");
    sc_trace(mVcdFile, min_sum_distances_1_reg_79, "min_sum_distances_1_reg_79");
    sc_trace(mVcdFile, j_reg_91, "j_reg_91");
    sc_trace(mVcdFile, tmp_5_cast_fu_155_p1, "tmp_5_cast_fu_155_p1");
    sc_trace(mVcdFile, tmp_fu_118_p3, "tmp_fu_118_p3");
    sc_trace(mVcdFile, tmp_2_cast_fu_146_p1, "tmp_2_cast_fu_146_p1");
    sc_trace(mVcdFile, tmp_5_fu_150_p2, "tmp_5_fu_150_p2");
    sc_trace(mVcdFile, min_sum_distances_1_s_fu_160_p1, "min_sum_distances_1_s_fu_160_p1");
    sc_trace(mVcdFile, tmp_1_fu_164_p2, "tmp_1_fu_164_p2");
    sc_trace(mVcdFile, tmp_3_cast_fu_185_p1, "tmp_3_cast_fu_185_p1");
    sc_trace(mVcdFile, tmp_6_fu_130_p1, "tmp_6_fu_130_p1");
    sc_trace(mVcdFile, ap_return_preg, "ap_return_preg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

knn_vote::~knn_vote() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void knn_vote::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_preg = ap_const_lv4_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
             esl_seteq<1,1,1>(exitcond7_fu_106_p2.read(), ap_const_lv1_1))) {
            ap_return_preg = tmp_6_fu_130_p1.read();
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_134_p2.read(), ap_const_lv1_1))) {
        digit_recognized_reg_68 = i_reg_203.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        digit_recognized_reg_68 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond7_fu_106_p2.read(), ap_const_lv1_0))) {
        j_reg_91 = ap_const_lv2_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        j_reg_91 = j_1_reg_216.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond7_fu_106_p2.read(), ap_const_lv1_0))) {
        min_sum_distances_1_reg_79 = ap_const_lv7_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        min_sum_distances_1_reg_79 = sum_distances_fu_189_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_134_p2.read(), ap_const_lv1_1))) {
        min_sum_distances_reg_44 = sum_distances_1_min_s_fu_170_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        min_sum_distances_reg_44 = ap_const_lv32_64;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        digit_recognized_cas_reg_195 = digit_recognized_cas_fu_102_p1.read();
        i_reg_203 = i_fu_112_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        j_1_reg_216 = j_1_fu_140_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond7_fu_106_p2.read(), ap_const_lv1_0))) {
        tmp_4_cast_reg_208 = tmp_4_cast_fu_126_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(exitcond_fu_134_p2.read(), ap_const_lv1_1))) {
        val_assign_reg_56 = i_0_digit_recognized_fu_178_p3.read();
    }
}

void knn_vote::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void knn_vote::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void knn_vote::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void knn_vote::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void knn_vote::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(exitcond7_fu_106_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void knn_vote::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void knn_vote::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond7_fu_106_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void knn_vote::thread_ap_return() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond7_fu_106_p2.read(), ap_const_lv1_1))) {
        ap_return = tmp_6_fu_130_p1.read();
    } else {
        ap_return = ap_return_preg.read();
    }
}

void knn_vote::thread_digit_recognized_cas_fu_102_p1() {
    digit_recognized_cas_fu_102_p1 = esl_zext<32,4>(digit_recognized_reg_68.read());
}

void knn_vote::thread_exitcond7_fu_106_p2() {
    exitcond7_fu_106_p2 = (!digit_recognized_reg_68.read().is_01() || !ap_const_lv4_A.is_01())? sc_lv<1>(): sc_lv<1>(digit_recognized_reg_68.read() == ap_const_lv4_A);
}

void knn_vote::thread_exitcond_fu_134_p2() {
    exitcond_fu_134_p2 = (!j_reg_91.read().is_01() || !ap_const_lv2_2.is_01())? sc_lv<1>(): sc_lv<1>(j_reg_91.read() == ap_const_lv2_2);
}

void knn_vote::thread_i_0_digit_recognized_fu_178_p3() {
    i_0_digit_recognized_fu_178_p3 = (!tmp_1_fu_164_p2.read()[0].is_01())? sc_lv<32>(): ((tmp_1_fu_164_p2.read()[0].to_bool())? digit_recognized_cas_reg_195.read(): val_assign_reg_56.read());
}

void knn_vote::thread_i_fu_112_p2() {
    i_fu_112_p2 = (!digit_recognized_reg_68.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(digit_recognized_reg_68.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void knn_vote::thread_j_1_fu_140_p2() {
    j_1_fu_140_p2 = (!j_reg_91.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(j_reg_91.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void knn_vote::thread_knn_set_V_address0() {
    knn_set_V_address0 =  (sc_lv<5>) (tmp_5_cast_fu_155_p1.read());
}

void knn_vote::thread_knn_set_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        knn_set_V_ce0 = ap_const_logic_1;
    } else {
        knn_set_V_ce0 = ap_const_logic_0;
    }
}

void knn_vote::thread_min_sum_distances_1_s_fu_160_p1() {
    min_sum_distances_1_s_fu_160_p1 = esl_zext<32,7>(min_sum_distances_1_reg_79.read());
}

void knn_vote::thread_sum_distances_1_min_s_fu_170_p3() {
    sum_distances_1_min_s_fu_170_p3 = (!tmp_1_fu_164_p2.read()[0].is_01())? sc_lv<32>(): ((tmp_1_fu_164_p2.read()[0].to_bool())? min_sum_distances_1_s_fu_160_p1.read(): min_sum_distances_reg_44.read());
}

void knn_vote::thread_sum_distances_fu_189_p2() {
    sum_distances_fu_189_p2 = (!min_sum_distances_1_reg_79.read().is_01() || !tmp_3_cast_fu_185_p1.read().is_01())? sc_lv<7>(): (sc_biguint<7>(min_sum_distances_1_reg_79.read()) + sc_biguint<7>(tmp_3_cast_fu_185_p1.read()));
}

void knn_vote::thread_tmp_1_fu_164_p2() {
    tmp_1_fu_164_p2 = (!min_sum_distances_1_s_fu_160_p1.read().is_01() || !min_sum_distances_reg_44.read().is_01())? sc_lv<1>(): (sc_bigint<32>(min_sum_distances_1_s_fu_160_p1.read()) < sc_bigint<32>(min_sum_distances_reg_44.read()));
}

void knn_vote::thread_tmp_2_cast_fu_146_p1() {
    tmp_2_cast_fu_146_p1 = esl_zext<6,2>(j_reg_91.read());
}

void knn_vote::thread_tmp_3_cast_fu_185_p1() {
    tmp_3_cast_fu_185_p1 = esl_zext<7,6>(knn_set_V_q0.read());
}

void knn_vote::thread_tmp_4_cast_fu_126_p1() {
    tmp_4_cast_fu_126_p1 = esl_zext<6,5>(tmp_fu_118_p3.read());
}

void knn_vote::thread_tmp_5_cast_fu_155_p1() {
    tmp_5_cast_fu_155_p1 = esl_zext<64,6>(tmp_5_fu_150_p2.read());
}

void knn_vote::thread_tmp_5_fu_150_p2() {
    tmp_5_fu_150_p2 = (!tmp_4_cast_reg_208.read().is_01() || !tmp_2_cast_fu_146_p1.read().is_01())? sc_lv<6>(): (sc_biguint<6>(tmp_4_cast_reg_208.read()) + sc_biguint<6>(tmp_2_cast_fu_146_p1.read()));
}

void knn_vote::thread_tmp_6_fu_130_p1() {
    tmp_6_fu_130_p1 = val_assign_reg_56.read().range(4-1, 0);
}

void knn_vote::thread_tmp_fu_118_p3() {
    tmp_fu_118_p3 = esl_concat<4,1>(digit_recognized_reg_68.read(), ap_const_lv1_0);
}

void knn_vote::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond7_fu_106_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(exitcond_fu_134_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        default : 
            ap_NS_fsm = "XXXX";
            break;
    }
}

}

