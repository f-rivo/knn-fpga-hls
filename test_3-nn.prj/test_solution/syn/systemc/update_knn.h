// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _update_knn_HH_
#define _update_knn_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "digitrec_mux_42_1bkb.h"
#include "digitrec_mux_124_cud.h"

namespace ap_rtl {

struct update_knn : public sc_module {
    // Port declarations 30
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_lv<49> > test_inst_V;
    sc_in< sc_lv<48> > train_inst_V;
    sc_in< sc_lv<6> > min_distances_V_read;
    sc_in< sc_lv<6> > min_distances_V12_read;
    sc_in< sc_lv<6> > min_distances_V2_read;
    sc_in< sc_lv<6> > min_distances_V3_read;
    sc_in< sc_lv<6> > min_distances_V14_read;
    sc_in< sc_lv<6> > min_distances_V15_read;
    sc_in< sc_lv<6> > min_distances_V16_read;
    sc_in< sc_lv<6> > min_distances_V17_read;
    sc_in< sc_lv<6> > min_distances_V28_read;
    sc_in< sc_lv<6> > min_distances_V29_read;
    sc_in< sc_lv<6> > min_distances_V210_read;
    sc_in< sc_lv<6> > min_distances_V211_read;
    sc_in< sc_lv<4> > min_distances_V_offset;
    sc_out< sc_lv<6> > ap_return_0;
    sc_out< sc_lv<6> > ap_return_1;
    sc_out< sc_lv<6> > ap_return_2;
    sc_out< sc_lv<6> > ap_return_3;
    sc_out< sc_lv<6> > ap_return_4;
    sc_out< sc_lv<6> > ap_return_5;
    sc_out< sc_lv<6> > ap_return_6;
    sc_out< sc_lv<6> > ap_return_7;
    sc_out< sc_lv<6> > ap_return_8;
    sc_out< sc_lv<6> > ap_return_9;
    sc_out< sc_lv<6> > ap_return_10;
    sc_out< sc_lv<6> > ap_return_11;
    sc_in< sc_logic > ap_ce;
    sc_signal< sc_lv<1> > ap_var_for_const0;
    sc_signal< sc_lv<1> > ap_var_for_const1;


    // Module declarations
    update_knn(sc_module_name name);
    SC_HAS_PROCESS(update_knn);

    ~update_knn();

    sc_trace_file* mVcdFile;

    digitrec_mux_42_1bkb<1,1,1,1,1,1,2,1>* digitrec_mux_42_1bkb_U1;
    digitrec_mux_42_1bkb<1,1,1,1,1,1,2,1>* digitrec_mux_42_1bkb_U2;
    digitrec_mux_42_1bkb<1,1,1,1,1,1,2,1>* digitrec_mux_42_1bkb_U3;
    digitrec_mux_42_1bkb<1,1,1,1,1,1,2,1>* digitrec_mux_42_1bkb_U4;
    digitrec_mux_42_1bkb<1,1,1,1,1,1,2,1>* digitrec_mux_42_1bkb_U5;
    digitrec_mux_42_1bkb<1,1,1,1,1,1,2,1>* digitrec_mux_42_1bkb_U6;
    digitrec_mux_42_1bkb<1,1,1,1,1,1,2,1>* digitrec_mux_42_1bkb_U7;
    digitrec_mux_42_1bkb<1,1,1,1,1,1,2,1>* digitrec_mux_42_1bkb_U8;
    digitrec_mux_124_cud<1,1,6,6,6,6,6,6,6,6,6,6,6,6,4,6>* digitrec_mux_124_cud_U9;
    digitrec_mux_124_cud<1,1,6,6,6,6,6,6,6,6,6,6,6,6,4,6>* digitrec_mux_124_cud_U10;
    digitrec_mux_124_cud<1,1,6,6,6,6,6,6,6,6,6,6,6,6,4,6>* digitrec_mux_124_cud_U11;
    digitrec_mux_42_1bkb<1,1,1,1,1,1,2,1>* digitrec_mux_42_1bkb_U12;
    digitrec_mux_42_1bkb<1,1,1,1,1,1,2,1>* digitrec_mux_42_1bkb_U13;
    digitrec_mux_42_1bkb<1,1,1,1,1,1,2,1>* digitrec_mux_42_1bkb_U14;
    digitrec_mux_42_1bkb<1,1,1,1,1,1,2,1>* digitrec_mux_42_1bkb_U15;
    sc_signal< sc_lv<6> > min_distances_V211_r_reg_1901;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<6> > ap_reg_pp0_iter1_min_distances_V211_r_reg_1901;
    sc_signal< sc_lv<6> > min_distances_V210_r_reg_1909;
    sc_signal< sc_lv<6> > ap_reg_pp0_iter1_min_distances_V210_r_reg_1909;
    sc_signal< sc_lv<6> > min_distances_V29_re_reg_1917;
    sc_signal< sc_lv<6> > ap_reg_pp0_iter1_min_distances_V29_re_reg_1917;
    sc_signal< sc_lv<6> > min_distances_V28_re_reg_1925;
    sc_signal< sc_lv<6> > ap_reg_pp0_iter1_min_distances_V28_re_reg_1925;
    sc_signal< sc_lv<6> > min_distances_V17_re_reg_1933;
    sc_signal< sc_lv<6> > ap_reg_pp0_iter1_min_distances_V17_re_reg_1933;
    sc_signal< sc_lv<6> > min_distances_V16_re_reg_1941;
    sc_signal< sc_lv<6> > ap_reg_pp0_iter1_min_distances_V16_re_reg_1941;
    sc_signal< sc_lv<6> > min_distances_V15_re_reg_1949;
    sc_signal< sc_lv<6> > ap_reg_pp0_iter1_min_distances_V15_re_reg_1949;
    sc_signal< sc_lv<6> > min_distances_V14_re_reg_1957;
    sc_signal< sc_lv<6> > ap_reg_pp0_iter1_min_distances_V14_re_reg_1957;
    sc_signal< sc_lv<6> > min_distances_V3_rea_reg_1965;
    sc_signal< sc_lv<6> > min_distances_V2_rea_reg_1976;
    sc_signal< sc_lv<6> > min_distances_V12_re_reg_1987;
    sc_signal< sc_lv<6> > min_distances_V_read_2_reg_1998;
    sc_signal< sc_lv<1> > tmp_7_fu_576_p2;
    sc_signal< sc_lv<1> > tmp_7_reg_2009;
    sc_signal< sc_lv<5> > tmp51_fu_1360_p2;
    sc_signal< sc_lv<5> > tmp51_reg_2017;
    sc_signal< sc_lv<4> > tmp75_fu_1450_p2;
    sc_signal< sc_lv<4> > tmp75_reg_2022;
    sc_signal< sc_lv<4> > tmp86_fu_1550_p2;
    sc_signal< sc_lv<4> > tmp86_reg_2027;
    sc_signal< sc_lv<6> > min_distances_V3_fu_1590_p2;
    sc_signal< sc_lv<6> > tmp_8_fu_1603_p14;
    sc_signal< sc_lv<6> > tmp_9_fu_1634_p14;
    sc_signal< sc_lv<1> > grp_fu_464_p6;
    sc_signal< sc_lv<1> > tmp_fu_1621_p2;
    sc_signal< sc_lv<1> > tmp_5_fu_1652_p2;
    sc_signal< sc_lv<1> > tmp_6_fu_1683_p2;
    sc_signal< sc_lv<1> > grp_fu_477_p6;
    sc_signal< sc_lv<1> > grp_fu_490_p6;
    sc_signal< sc_lv<1> > grp_fu_503_p6;
    sc_signal< sc_lv<1> > grp_fu_516_p6;
    sc_signal< sc_lv<1> > grp_fu_529_p6;
    sc_signal< sc_lv<1> > grp_fu_542_p6;
    sc_signal< sc_lv<1> > grp_fu_555_p6;
    sc_signal< sc_lv<6> > phitmp_fu_1745_p3;
    sc_signal< sc_lv<6> > phitmp4_fu_1752_p3;
    sc_signal< sc_lv<6> > phitmp5_fu_1759_p3;
    sc_signal< sc_lv<6> > phitmp6_fu_1766_p3;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter0_write_flag15_3_reg_262;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter1_write_flag15_3_reg_262;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter2_write_flag15_3_reg_262;
    sc_signal< sc_lv<6> > ap_phi_reg_pp0_iter0_min_distances_V14_3_reg_278;
    sc_signal< sc_lv<6> > ap_phi_reg_pp0_iter1_min_distances_V14_3_reg_278;
    sc_signal< sc_lv<6> > ap_phi_reg_pp0_iter2_min_distances_V14_3_reg_278;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter0_write_flag18_3_reg_291;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter1_write_flag18_3_reg_291;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter2_write_flag18_3_reg_291;
    sc_signal< sc_lv<6> > ap_phi_reg_pp0_iter0_write_flag12_1_reg_307;
    sc_signal< sc_lv<6> > ap_phi_reg_pp0_iter1_write_flag12_1_reg_307;
    sc_signal< sc_lv<6> > ap_phi_reg_pp0_iter2_write_flag12_1_reg_307;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter0_write_flag21_3_reg_320;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter1_write_flag21_3_reg_320;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter2_write_flag21_3_reg_320;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter0_write_flag24_3_reg_336;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter1_write_flag24_3_reg_336;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter2_write_flag24_3_reg_336;
    sc_signal< sc_lv<6> > ap_phi_reg_pp0_iter0_write_flag8_1_reg_352;
    sc_signal< sc_lv<6> > ap_phi_reg_pp0_iter1_write_flag8_1_reg_352;
    sc_signal< sc_lv<6> > ap_phi_reg_pp0_iter2_write_flag8_1_reg_352;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter0_write_flag27_4_reg_365;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter1_write_flag27_4_reg_365;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter2_write_flag27_4_reg_365;
    sc_signal< sc_lv<6> > ap_phi_reg_pp0_iter0_min_distances_V28_4_reg_380;
    sc_signal< sc_lv<6> > ap_phi_reg_pp0_iter1_min_distances_V28_4_reg_380;
    sc_signal< sc_lv<6> > ap_phi_reg_pp0_iter2_min_distances_V28_4_reg_380;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter0_write_flag31_4_reg_393;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter1_write_flag31_4_reg_393;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter2_write_flag31_4_reg_393;
    sc_signal< sc_lv<6> > ap_phi_reg_pp0_iter0_write_flag4_1_reg_408;
    sc_signal< sc_lv<6> > ap_phi_reg_pp0_iter1_write_flag4_1_reg_408;
    sc_signal< sc_lv<6> > ap_phi_reg_pp0_iter2_write_flag4_1_reg_408;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter0_write_flag36_4_reg_421;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter1_write_flag36_4_reg_421;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter2_write_flag36_4_reg_421;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter0_write_flag40_4_reg_436;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter1_write_flag40_4_reg_436;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter2_write_flag40_4_reg_436;
    sc_signal< sc_lv<6> > ap_phi_reg_pp0_iter0_write_flag_1_reg_451;
    sc_signal< sc_lv<6> > ap_phi_reg_pp0_iter1_write_flag_1_reg_451;
    sc_signal< sc_lv<6> > ap_phi_reg_pp0_iter2_write_flag_1_reg_451;
    sc_signal< sc_lv<2> > newIndex_cast_fu_1556_p3;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<2> > tmp_56_fu_572_p1;
    sc_signal< sc_lv<49> > train_inst_V_cast_fu_568_p1;
    sc_signal< sc_lv<49> > r_V_fu_582_p2;
    sc_signal< sc_lv<1> > tmp_57_fu_588_p1;
    sc_signal< sc_lv<1> > tmp_58_fu_596_p3;
    sc_signal< sc_lv<1> > tmp_59_fu_608_p3;
    sc_signal< sc_lv<1> > tmp_60_fu_620_p3;
    sc_signal< sc_lv<1> > tmp_61_fu_632_p3;
    sc_signal< sc_lv<1> > tmp_62_fu_644_p3;
    sc_signal< sc_lv<1> > tmp_63_fu_656_p3;
    sc_signal< sc_lv<1> > tmp_64_fu_668_p3;
    sc_signal< sc_lv<1> > tmp_65_fu_680_p3;
    sc_signal< sc_lv<1> > tmp_66_fu_692_p3;
    sc_signal< sc_lv<1> > tmp_67_fu_704_p3;
    sc_signal< sc_lv<1> > tmp_68_fu_716_p3;
    sc_signal< sc_lv<1> > tmp_69_fu_728_p3;
    sc_signal< sc_lv<1> > tmp_70_fu_740_p3;
    sc_signal< sc_lv<1> > tmp_71_fu_752_p3;
    sc_signal< sc_lv<1> > tmp_72_fu_764_p3;
    sc_signal< sc_lv<1> > tmp_73_fu_776_p3;
    sc_signal< sc_lv<1> > tmp_74_fu_788_p3;
    sc_signal< sc_lv<1> > tmp_75_fu_800_p3;
    sc_signal< sc_lv<1> > tmp_76_fu_812_p3;
    sc_signal< sc_lv<1> > tmp_77_fu_824_p3;
    sc_signal< sc_lv<1> > tmp_78_fu_836_p3;
    sc_signal< sc_lv<1> > tmp_79_fu_848_p3;
    sc_signal< sc_lv<1> > tmp_80_fu_860_p3;
    sc_signal< sc_lv<1> > tmp_81_fu_872_p3;
    sc_signal< sc_lv<1> > tmp_82_fu_884_p3;
    sc_signal< sc_lv<1> > tmp_83_fu_896_p3;
    sc_signal< sc_lv<1> > tmp_84_fu_908_p3;
    sc_signal< sc_lv<1> > tmp_85_fu_920_p3;
    sc_signal< sc_lv<1> > tmp_86_fu_932_p3;
    sc_signal< sc_lv<1> > tmp_87_fu_944_p3;
    sc_signal< sc_lv<1> > tmp_88_fu_956_p3;
    sc_signal< sc_lv<1> > tmp_89_fu_968_p3;
    sc_signal< sc_lv<1> > tmp_90_fu_980_p3;
    sc_signal< sc_lv<1> > tmp_91_fu_992_p3;
    sc_signal< sc_lv<1> > tmp_92_fu_1004_p3;
    sc_signal< sc_lv<1> > tmp_93_fu_1016_p3;
    sc_signal< sc_lv<1> > tmp_94_fu_1028_p3;
    sc_signal< sc_lv<1> > tmp_95_fu_1040_p3;
    sc_signal< sc_lv<1> > tmp_96_fu_1052_p3;
    sc_signal< sc_lv<1> > tmp_97_fu_1064_p3;
    sc_signal< sc_lv<1> > tmp_98_fu_1076_p3;
    sc_signal< sc_lv<1> > tmp_99_fu_1088_p3;
    sc_signal< sc_lv<1> > tmp_100_fu_1100_p3;
    sc_signal< sc_lv<1> > tmp_101_fu_1112_p3;
    sc_signal< sc_lv<1> > tmp_102_fu_1124_p3;
    sc_signal< sc_lv<1> > tmp_103_fu_1136_p3;
    sc_signal< sc_lv<1> > tmp_104_fu_1148_p3;
    sc_signal< sc_lv<1> > tmp_105_fu_1160_p3;
    sc_signal< sc_lv<2> > tmp_1_46_cast_fu_1156_p1;
    sc_signal< sc_lv<2> > tmp_1_44_cast_fu_1132_p1;
    sc_signal< sc_lv<2> > tmp48_fu_1172_p2;
    sc_signal< sc_lv<2> > tmp_1_45_cast_fu_1144_p1;
    sc_signal< sc_lv<2> > tmp49_fu_1178_p2;
    sc_signal< sc_lv<2> > tmp_1_43_cast_fu_1120_p1;
    sc_signal< sc_lv<2> > tmp_1_42_cast_fu_1108_p1;
    sc_signal< sc_lv<2> > tmp50_fu_1188_p2;
    sc_signal< sc_lv<2> > tmp_1_41_cast_fu_1096_p1;
    sc_signal< sc_lv<2> > tmp54_fu_1194_p2;
    sc_signal< sc_lv<3> > tmp56_cast_fu_1200_p1;
    sc_signal< sc_lv<3> > tmp54_cast_fu_1184_p1;
    sc_signal< sc_lv<3> > tmp53_fu_1204_p2;
    sc_signal< sc_lv<2> > tmp_1_37_cast_fu_1048_p1;
    sc_signal< sc_lv<2> > tmp_1_36_cast_fu_1036_p1;
    sc_signal< sc_lv<2> > tmp55_fu_1214_p2;
    sc_signal< sc_lv<2> > tmp_1_35_cast_fu_1024_p1;
    sc_signal< sc_lv<2> > tmp56_fu_1220_p2;
    sc_signal< sc_lv<2> > tmp_1_40_cast_fu_1084_p1;
    sc_signal< sc_lv<2> > tmp_1_39_cast_fu_1072_p1;
    sc_signal< sc_lv<2> > tmp57_fu_1230_p2;
    sc_signal< sc_lv<2> > tmp_1_38_cast_fu_1060_p1;
    sc_signal< sc_lv<2> > tmp59_fu_1236_p2;
    sc_signal< sc_lv<3> > tmp61_cast_fu_1242_p1;
    sc_signal< sc_lv<3> > tmp59_cast_fu_1226_p1;
    sc_signal< sc_lv<3> > tmp58_fu_1246_p2;
    sc_signal< sc_lv<4> > tmp58_cast_fu_1252_p1;
    sc_signal< sc_lv<4> > tmp53_cast_fu_1210_p1;
    sc_signal< sc_lv<4> > tmp52_fu_1256_p2;
    sc_signal< sc_lv<2> > tmp_1_25_cast_fu_904_p1;
    sc_signal< sc_lv<2> > tmp_1_24_cast_fu_892_p1;
    sc_signal< sc_lv<2> > tmp60_fu_1266_p2;
    sc_signal< sc_lv<2> > tmp_1_23_cast_fu_880_p1;
    sc_signal< sc_lv<2> > tmp61_fu_1272_p2;
    sc_signal< sc_lv<2> > tmp_1_28_cast_fu_940_p1;
    sc_signal< sc_lv<2> > tmp_1_27_cast_fu_928_p1;
    sc_signal< sc_lv<2> > tmp62_fu_1282_p2;
    sc_signal< sc_lv<2> > tmp_1_26_cast_fu_916_p1;
    sc_signal< sc_lv<2> > tmp65_fu_1288_p2;
    sc_signal< sc_lv<3> > tmp67_cast_fu_1294_p1;
    sc_signal< sc_lv<3> > tmp65_cast_fu_1278_p1;
    sc_signal< sc_lv<3> > tmp64_fu_1298_p2;
    sc_signal< sc_lv<2> > tmp_1_31_cast_fu_976_p1;
    sc_signal< sc_lv<2> > tmp_1_30_cast_fu_964_p1;
    sc_signal< sc_lv<2> > tmp66_fu_1308_p2;
    sc_signal< sc_lv<2> > tmp_1_29_cast_fu_952_p1;
    sc_signal< sc_lv<2> > tmp67_fu_1314_p2;
    sc_signal< sc_lv<2> > tmp_1_34_cast_fu_1012_p1;
    sc_signal< sc_lv<2> > tmp_1_33_cast_fu_1000_p1;
    sc_signal< sc_lv<2> > tmp68_fu_1324_p2;
    sc_signal< sc_lv<2> > tmp_1_32_cast_fu_988_p1;
    sc_signal< sc_lv<2> > tmp70_fu_1330_p2;
    sc_signal< sc_lv<3> > tmp72_cast_fu_1336_p1;
    sc_signal< sc_lv<3> > tmp70_cast_fu_1320_p1;
    sc_signal< sc_lv<3> > tmp69_fu_1340_p2;
    sc_signal< sc_lv<4> > tmp69_cast_fu_1346_p1;
    sc_signal< sc_lv<4> > tmp64_cast_fu_1304_p1;
    sc_signal< sc_lv<4> > tmp63_fu_1350_p2;
    sc_signal< sc_lv<5> > tmp63_cast_fu_1356_p1;
    sc_signal< sc_lv<5> > tmp52_cast_fu_1262_p1;
    sc_signal< sc_lv<2> > tmp_1_2_cast_fu_616_p1;
    sc_signal< sc_lv<2> > tmp_1_1_cast_fu_604_p1;
    sc_signal< sc_lv<2> > tmp71_fu_1366_p2;
    sc_signal< sc_lv<2> > tmp_1_cast_fu_592_p1;
    sc_signal< sc_lv<2> > tmp72_fu_1372_p2;
    sc_signal< sc_lv<2> > tmp_1_5_cast_fu_652_p1;
    sc_signal< sc_lv<2> > tmp_1_4_cast_fu_640_p1;
    sc_signal< sc_lv<2> > tmp73_fu_1382_p2;
    sc_signal< sc_lv<2> > tmp_1_3_cast_fu_628_p1;
    sc_signal< sc_lv<2> > tmp77_fu_1388_p2;
    sc_signal< sc_lv<3> > tmp79_cast_fu_1394_p1;
    sc_signal< sc_lv<3> > tmp77_cast_fu_1378_p1;
    sc_signal< sc_lv<3> > tmp76_fu_1398_p2;
    sc_signal< sc_lv<2> > tmp_1_8_cast_fu_688_p1;
    sc_signal< sc_lv<2> > tmp_1_7_cast_fu_676_p1;
    sc_signal< sc_lv<2> > tmp78_fu_1408_p2;
    sc_signal< sc_lv<2> > tmp_1_6_cast_fu_664_p1;
    sc_signal< sc_lv<2> > tmp79_fu_1414_p2;
    sc_signal< sc_lv<2> > tmp_1_10_cast_fu_724_p1;
    sc_signal< sc_lv<2> > tmp_1_cast_5_fu_712_p1;
    sc_signal< sc_lv<2> > tmp80_fu_1424_p2;
    sc_signal< sc_lv<2> > tmp_1_9_cast_fu_700_p1;
    sc_signal< sc_lv<2> > tmp82_fu_1430_p2;
    sc_signal< sc_lv<3> > tmp84_cast_fu_1436_p1;
    sc_signal< sc_lv<3> > tmp82_cast_fu_1420_p1;
    sc_signal< sc_lv<3> > tmp81_fu_1440_p2;
    sc_signal< sc_lv<4> > tmp81_cast_fu_1446_p1;
    sc_signal< sc_lv<4> > tmp76_cast_fu_1404_p1;
    sc_signal< sc_lv<2> > tmp_1_13_cast_fu_760_p1;
    sc_signal< sc_lv<2> > tmp_1_12_cast_fu_748_p1;
    sc_signal< sc_lv<2> > tmp83_fu_1456_p2;
    sc_signal< sc_lv<2> > tmp_1_11_cast_fu_736_p1;
    sc_signal< sc_lv<2> > tmp84_fu_1462_p2;
    sc_signal< sc_lv<2> > tmp_1_16_cast_fu_796_p1;
    sc_signal< sc_lv<2> > tmp_1_15_cast_fu_784_p1;
    sc_signal< sc_lv<2> > tmp85_fu_1472_p2;
    sc_signal< sc_lv<2> > tmp_1_14_cast_fu_772_p1;
    sc_signal< sc_lv<2> > tmp88_fu_1478_p2;
    sc_signal< sc_lv<3> > tmp90_cast_fu_1484_p1;
    sc_signal< sc_lv<3> > tmp88_cast_fu_1468_p1;
    sc_signal< sc_lv<3> > tmp87_fu_1488_p2;
    sc_signal< sc_lv<2> > tmp_1_19_cast_fu_832_p1;
    sc_signal< sc_lv<2> > tmp_1_18_cast_fu_820_p1;
    sc_signal< sc_lv<2> > tmp89_fu_1498_p2;
    sc_signal< sc_lv<2> > tmp_1_17_cast_fu_808_p1;
    sc_signal< sc_lv<2> > tmp90_fu_1504_p2;
    sc_signal< sc_lv<2> > tmp_1_20_cast_fu_844_p1;
    sc_signal< sc_lv<2> > tmp_1_22_cast_fu_868_p1;
    sc_signal< sc_lv<2> > tmp91_fu_1514_p2;
    sc_signal< sc_lv<2> > tmp_1_21_cast_fu_856_p1;
    sc_signal< sc_lv<2> > tmp_1_47_cast_fu_1168_p1;
    sc_signal< sc_lv<2> > tmp93_fu_1524_p2;
    sc_signal< sc_lv<3> > tmp97_cast_fu_1530_p1;
    sc_signal< sc_lv<3> > tmp96_cast_fu_1520_p1;
    sc_signal< sc_lv<3> > tmp94_fu_1534_p2;
    sc_signal< sc_lv<3> > tmp93_cast_fu_1510_p1;
    sc_signal< sc_lv<3> > tmp92_fu_1540_p2;
    sc_signal< sc_lv<4> > tmp92_cast_fu_1546_p1;
    sc_signal< sc_lv<4> > tmp87_cast_fu_1494_p1;
    sc_signal< sc_lv<5> > tmp86_cast_fu_1577_p1;
    sc_signal< sc_lv<5> > tmp75_cast_fu_1574_p1;
    sc_signal< sc_lv<5> > tmp74_fu_1580_p2;
    sc_signal< sc_lv<6> > tmp74_cast_fu_1586_p1;
    sc_signal< sc_lv<6> > tmp51_cast_fu_1571_p1;
    sc_signal< sc_lv<4> > tmp_8_fu_1603_p13;
    sc_signal< sc_lv<4> > tmp_9_fu_1634_p13;
    sc_signal< sc_lv<4> > tmp_s_fu_1665_p13;
    sc_signal< sc_lv<6> > tmp_s_fu_1665_p14;
    sc_signal< sc_lv<1> > write_flag_fu_1689_p6;
    sc_signal< sc_lv<1> > write_flag4_fu_1703_p6;
    sc_signal< sc_lv<1> > write_flag8_fu_1717_p6;
    sc_signal< sc_lv<1> > write_flag11_fu_1731_p6;
    sc_signal< sc_lv<6> > mrv_sel_fu_1773_p3;
    sc_signal< sc_lv<6> > mrv_sel6_fu_1780_p3;
    sc_signal< sc_lv<6> > mrv_sel7_fu_1787_p3;
    sc_signal< sc_lv<6> > mrv_sel8_fu_1794_p3;
    sc_signal< sc_lv<6> > mrv_sel9_fu_1801_p3;
    sc_signal< sc_lv<6> > mrv_sel1_fu_1808_p3;
    sc_signal< sc_lv<6> > mrv_sel2_fu_1815_p3;
    sc_signal< sc_lv<6> > mrv_sel3_fu_1822_p3;
    sc_signal< sc_logic > ap_ce_reg;
    sc_signal< sc_lv<49> > test_inst_V_int_reg;
    sc_signal< sc_lv<48> > train_inst_V_int_reg;
    sc_signal< sc_lv<6> > min_distances_V_read_int_reg;
    sc_signal< sc_lv<6> > min_distances_V12_read_int_reg;
    sc_signal< sc_lv<6> > min_distances_V2_read_int_reg;
    sc_signal< sc_lv<6> > min_distances_V3_read_int_reg;
    sc_signal< sc_lv<6> > min_distances_V14_read_int_reg;
    sc_signal< sc_lv<6> > min_distances_V15_read_int_reg;
    sc_signal< sc_lv<6> > min_distances_V16_read_int_reg;
    sc_signal< sc_lv<6> > min_distances_V17_read_int_reg;
    sc_signal< sc_lv<6> > min_distances_V28_read_int_reg;
    sc_signal< sc_lv<6> > min_distances_V29_read_int_reg;
    sc_signal< sc_lv<6> > min_distances_V210_read_int_reg;
    sc_signal< sc_lv<6> > min_distances_V211_read_int_reg;
    sc_signal< sc_lv<4> > min_distances_V_offset_int_reg;
    sc_signal< sc_lv<6> > ap_return_0_int_reg;
    sc_signal< sc_lv<6> > ap_return_1_int_reg;
    sc_signal< sc_lv<6> > ap_return_2_int_reg;
    sc_signal< sc_lv<6> > ap_return_3_int_reg;
    sc_signal< sc_lv<6> > ap_return_4_int_reg;
    sc_signal< sc_lv<6> > ap_return_5_int_reg;
    sc_signal< sc_lv<6> > ap_return_6_int_reg;
    sc_signal< sc_lv<6> > ap_return_7_int_reg;
    sc_signal< sc_lv<6> > ap_return_8_int_reg;
    sc_signal< sc_lv<6> > ap_return_9_int_reg;
    sc_signal< sc_lv<6> > ap_return_10_int_reg;
    sc_signal< sc_lv<6> > ap_return_11_int_reg;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const bool ap_const_boolean_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<32> ap_const_lv32_22;
    static const sc_lv<32> ap_const_lv32_23;
    static const sc_lv<32> ap_const_lv32_24;
    static const sc_lv<32> ap_const_lv32_25;
    static const sc_lv<32> ap_const_lv32_26;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_29;
    static const sc_lv<32> ap_const_lv32_2A;
    static const sc_lv<32> ap_const_lv32_2B;
    static const sc_lv<32> ap_const_lv32_2C;
    static const sc_lv<32> ap_const_lv32_2D;
    static const sc_lv<32> ap_const_lv32_2E;
    static const sc_lv<32> ap_const_lv32_2F;
    static const sc_lv<32> ap_const_lv32_30;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<4> ap_const_lv4_4;
    static const sc_lv<4> ap_const_lv4_5;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_9;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state2_pp0_stage0_iter1();
    void thread_ap_block_state3_pp0_stage0_iter2();
    void thread_ap_phi_reg_pp0_iter0_min_distances_V14_3_reg_278();
    void thread_ap_phi_reg_pp0_iter0_min_distances_V28_4_reg_380();
    void thread_ap_phi_reg_pp0_iter0_write_flag12_1_reg_307();
    void thread_ap_phi_reg_pp0_iter0_write_flag15_3_reg_262();
    void thread_ap_phi_reg_pp0_iter0_write_flag18_3_reg_291();
    void thread_ap_phi_reg_pp0_iter0_write_flag21_3_reg_320();
    void thread_ap_phi_reg_pp0_iter0_write_flag24_3_reg_336();
    void thread_ap_phi_reg_pp0_iter0_write_flag27_4_reg_365();
    void thread_ap_phi_reg_pp0_iter0_write_flag31_4_reg_393();
    void thread_ap_phi_reg_pp0_iter0_write_flag36_4_reg_421();
    void thread_ap_phi_reg_pp0_iter0_write_flag40_4_reg_436();
    void thread_ap_phi_reg_pp0_iter0_write_flag4_1_reg_408();
    void thread_ap_phi_reg_pp0_iter0_write_flag8_1_reg_352();
    void thread_ap_phi_reg_pp0_iter0_write_flag_1_reg_451();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_10();
    void thread_ap_return_11();
    void thread_ap_return_2();
    void thread_ap_return_3();
    void thread_ap_return_4();
    void thread_ap_return_5();
    void thread_ap_return_6();
    void thread_ap_return_7();
    void thread_ap_return_8();
    void thread_ap_return_9();
    void thread_min_distances_V3_fu_1590_p2();
    void thread_mrv_sel1_fu_1808_p3();
    void thread_mrv_sel2_fu_1815_p3();
    void thread_mrv_sel3_fu_1822_p3();
    void thread_mrv_sel6_fu_1780_p3();
    void thread_mrv_sel7_fu_1787_p3();
    void thread_mrv_sel8_fu_1794_p3();
    void thread_mrv_sel9_fu_1801_p3();
    void thread_mrv_sel_fu_1773_p3();
    void thread_newIndex_cast_fu_1556_p3();
    void thread_phitmp4_fu_1752_p3();
    void thread_phitmp5_fu_1759_p3();
    void thread_phitmp6_fu_1766_p3();
    void thread_phitmp_fu_1745_p3();
    void thread_r_V_fu_582_p2();
    void thread_tmp48_fu_1172_p2();
    void thread_tmp49_fu_1178_p2();
    void thread_tmp50_fu_1188_p2();
    void thread_tmp51_cast_fu_1571_p1();
    void thread_tmp51_fu_1360_p2();
    void thread_tmp52_cast_fu_1262_p1();
    void thread_tmp52_fu_1256_p2();
    void thread_tmp53_cast_fu_1210_p1();
    void thread_tmp53_fu_1204_p2();
    void thread_tmp54_cast_fu_1184_p1();
    void thread_tmp54_fu_1194_p2();
    void thread_tmp55_fu_1214_p2();
    void thread_tmp56_cast_fu_1200_p1();
    void thread_tmp56_fu_1220_p2();
    void thread_tmp57_fu_1230_p2();
    void thread_tmp58_cast_fu_1252_p1();
    void thread_tmp58_fu_1246_p2();
    void thread_tmp59_cast_fu_1226_p1();
    void thread_tmp59_fu_1236_p2();
    void thread_tmp60_fu_1266_p2();
    void thread_tmp61_cast_fu_1242_p1();
    void thread_tmp61_fu_1272_p2();
    void thread_tmp62_fu_1282_p2();
    void thread_tmp63_cast_fu_1356_p1();
    void thread_tmp63_fu_1350_p2();
    void thread_tmp64_cast_fu_1304_p1();
    void thread_tmp64_fu_1298_p2();
    void thread_tmp65_cast_fu_1278_p1();
    void thread_tmp65_fu_1288_p2();
    void thread_tmp66_fu_1308_p2();
    void thread_tmp67_cast_fu_1294_p1();
    void thread_tmp67_fu_1314_p2();
    void thread_tmp68_fu_1324_p2();
    void thread_tmp69_cast_fu_1346_p1();
    void thread_tmp69_fu_1340_p2();
    void thread_tmp70_cast_fu_1320_p1();
    void thread_tmp70_fu_1330_p2();
    void thread_tmp71_fu_1366_p2();
    void thread_tmp72_cast_fu_1336_p1();
    void thread_tmp72_fu_1372_p2();
    void thread_tmp73_fu_1382_p2();
    void thread_tmp74_cast_fu_1586_p1();
    void thread_tmp74_fu_1580_p2();
    void thread_tmp75_cast_fu_1574_p1();
    void thread_tmp75_fu_1450_p2();
    void thread_tmp76_cast_fu_1404_p1();
    void thread_tmp76_fu_1398_p2();
    void thread_tmp77_cast_fu_1378_p1();
    void thread_tmp77_fu_1388_p2();
    void thread_tmp78_fu_1408_p2();
    void thread_tmp79_cast_fu_1394_p1();
    void thread_tmp79_fu_1414_p2();
    void thread_tmp80_fu_1424_p2();
    void thread_tmp81_cast_fu_1446_p1();
    void thread_tmp81_fu_1440_p2();
    void thread_tmp82_cast_fu_1420_p1();
    void thread_tmp82_fu_1430_p2();
    void thread_tmp83_fu_1456_p2();
    void thread_tmp84_cast_fu_1436_p1();
    void thread_tmp84_fu_1462_p2();
    void thread_tmp85_fu_1472_p2();
    void thread_tmp86_cast_fu_1577_p1();
    void thread_tmp86_fu_1550_p2();
    void thread_tmp87_cast_fu_1494_p1();
    void thread_tmp87_fu_1488_p2();
    void thread_tmp88_cast_fu_1468_p1();
    void thread_tmp88_fu_1478_p2();
    void thread_tmp89_fu_1498_p2();
    void thread_tmp90_cast_fu_1484_p1();
    void thread_tmp90_fu_1504_p2();
    void thread_tmp91_fu_1514_p2();
    void thread_tmp92_cast_fu_1546_p1();
    void thread_tmp92_fu_1540_p2();
    void thread_tmp93_cast_fu_1510_p1();
    void thread_tmp93_fu_1524_p2();
    void thread_tmp94_fu_1534_p2();
    void thread_tmp96_cast_fu_1520_p1();
    void thread_tmp97_cast_fu_1530_p1();
    void thread_tmp_100_fu_1100_p3();
    void thread_tmp_101_fu_1112_p3();
    void thread_tmp_102_fu_1124_p3();
    void thread_tmp_103_fu_1136_p3();
    void thread_tmp_104_fu_1148_p3();
    void thread_tmp_105_fu_1160_p3();
    void thread_tmp_1_10_cast_fu_724_p1();
    void thread_tmp_1_11_cast_fu_736_p1();
    void thread_tmp_1_12_cast_fu_748_p1();
    void thread_tmp_1_13_cast_fu_760_p1();
    void thread_tmp_1_14_cast_fu_772_p1();
    void thread_tmp_1_15_cast_fu_784_p1();
    void thread_tmp_1_16_cast_fu_796_p1();
    void thread_tmp_1_17_cast_fu_808_p1();
    void thread_tmp_1_18_cast_fu_820_p1();
    void thread_tmp_1_19_cast_fu_832_p1();
    void thread_tmp_1_1_cast_fu_604_p1();
    void thread_tmp_1_20_cast_fu_844_p1();
    void thread_tmp_1_21_cast_fu_856_p1();
    void thread_tmp_1_22_cast_fu_868_p1();
    void thread_tmp_1_23_cast_fu_880_p1();
    void thread_tmp_1_24_cast_fu_892_p1();
    void thread_tmp_1_25_cast_fu_904_p1();
    void thread_tmp_1_26_cast_fu_916_p1();
    void thread_tmp_1_27_cast_fu_928_p1();
    void thread_tmp_1_28_cast_fu_940_p1();
    void thread_tmp_1_29_cast_fu_952_p1();
    void thread_tmp_1_2_cast_fu_616_p1();
    void thread_tmp_1_30_cast_fu_964_p1();
    void thread_tmp_1_31_cast_fu_976_p1();
    void thread_tmp_1_32_cast_fu_988_p1();
    void thread_tmp_1_33_cast_fu_1000_p1();
    void thread_tmp_1_34_cast_fu_1012_p1();
    void thread_tmp_1_35_cast_fu_1024_p1();
    void thread_tmp_1_36_cast_fu_1036_p1();
    void thread_tmp_1_37_cast_fu_1048_p1();
    void thread_tmp_1_38_cast_fu_1060_p1();
    void thread_tmp_1_39_cast_fu_1072_p1();
    void thread_tmp_1_3_cast_fu_628_p1();
    void thread_tmp_1_40_cast_fu_1084_p1();
    void thread_tmp_1_41_cast_fu_1096_p1();
    void thread_tmp_1_42_cast_fu_1108_p1();
    void thread_tmp_1_43_cast_fu_1120_p1();
    void thread_tmp_1_44_cast_fu_1132_p1();
    void thread_tmp_1_45_cast_fu_1144_p1();
    void thread_tmp_1_46_cast_fu_1156_p1();
    void thread_tmp_1_47_cast_fu_1168_p1();
    void thread_tmp_1_4_cast_fu_640_p1();
    void thread_tmp_1_5_cast_fu_652_p1();
    void thread_tmp_1_6_cast_fu_664_p1();
    void thread_tmp_1_7_cast_fu_676_p1();
    void thread_tmp_1_8_cast_fu_688_p1();
    void thread_tmp_1_9_cast_fu_700_p1();
    void thread_tmp_1_cast_5_fu_712_p1();
    void thread_tmp_1_cast_fu_592_p1();
    void thread_tmp_56_fu_572_p1();
    void thread_tmp_57_fu_588_p1();
    void thread_tmp_58_fu_596_p3();
    void thread_tmp_59_fu_608_p3();
    void thread_tmp_5_fu_1652_p2();
    void thread_tmp_60_fu_620_p3();
    void thread_tmp_61_fu_632_p3();
    void thread_tmp_62_fu_644_p3();
    void thread_tmp_63_fu_656_p3();
    void thread_tmp_64_fu_668_p3();
    void thread_tmp_65_fu_680_p3();
    void thread_tmp_66_fu_692_p3();
    void thread_tmp_67_fu_704_p3();
    void thread_tmp_68_fu_716_p3();
    void thread_tmp_69_fu_728_p3();
    void thread_tmp_6_fu_1683_p2();
    void thread_tmp_70_fu_740_p3();
    void thread_tmp_71_fu_752_p3();
    void thread_tmp_72_fu_764_p3();
    void thread_tmp_73_fu_776_p3();
    void thread_tmp_74_fu_788_p3();
    void thread_tmp_75_fu_800_p3();
    void thread_tmp_76_fu_812_p3();
    void thread_tmp_77_fu_824_p3();
    void thread_tmp_78_fu_836_p3();
    void thread_tmp_79_fu_848_p3();
    void thread_tmp_7_fu_576_p2();
    void thread_tmp_80_fu_860_p3();
    void thread_tmp_81_fu_872_p3();
    void thread_tmp_82_fu_884_p3();
    void thread_tmp_83_fu_896_p3();
    void thread_tmp_84_fu_908_p3();
    void thread_tmp_85_fu_920_p3();
    void thread_tmp_86_fu_932_p3();
    void thread_tmp_87_fu_944_p3();
    void thread_tmp_88_fu_956_p3();
    void thread_tmp_89_fu_968_p3();
    void thread_tmp_8_fu_1603_p13();
    void thread_tmp_90_fu_980_p3();
    void thread_tmp_91_fu_992_p3();
    void thread_tmp_92_fu_1004_p3();
    void thread_tmp_93_fu_1016_p3();
    void thread_tmp_94_fu_1028_p3();
    void thread_tmp_95_fu_1040_p3();
    void thread_tmp_96_fu_1052_p3();
    void thread_tmp_97_fu_1064_p3();
    void thread_tmp_98_fu_1076_p3();
    void thread_tmp_99_fu_1088_p3();
    void thread_tmp_9_fu_1634_p13();
    void thread_tmp_fu_1621_p2();
    void thread_tmp_s_fu_1665_p13();
    void thread_train_inst_V_cast_fu_568_p1();
};

}

using namespace ap_rtl;

#endif
