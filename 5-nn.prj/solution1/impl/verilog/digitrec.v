// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="digitrec,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=5.842000,HLS_SYN_LAT=1191794,HLS_SYN_TPT=none,HLS_SYN_MEM=97,HLS_SYN_DSP=0,HLS_SYN_FF=354,HLS_SYN_LUT=882}" *)

module digitrec (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_V,
        ap_return
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [48:0] input_V;
output  [3:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [14:0] training_data_V_address0;
reg    training_data_V_ce0;
wire   [47:0] training_data_V_q0;
wire   [3:0] i_2_fu_177_p2;
reg   [3:0] i_2_reg_283;
wire    ap_CS_fsm_state2;
wire   [6:0] tmp_8_fu_199_p2;
reg   [6:0] tmp_8_reg_288;
wire   [0:0] exitcond1_fu_171_p2;
wire   [2:0] k_1_fu_211_p2;
wire    ap_CS_fsm_state3;
wire   [14:0] i4_cast3_fu_231_p1;
reg   [14:0] i4_cast3_reg_301;
wire    ap_CS_fsm_state4;
wire   [10:0] i_3_fu_241_p2;
reg   [10:0] i_3_reg_309;
wire   [3:0] j_2_fu_253_p2;
reg   [3:0] j_2_reg_317;
wire    ap_CS_fsm_state5;
wire   [14:0] next_mul_fu_259_p2;
reg   [14:0] next_mul_reg_322;
wire   [0:0] exitcond_fu_247_p2;
reg   [47:0] training_instance_V_reg_332;
wire    ap_CS_fsm_state6;
reg   [5:0] knn_set_V_address0;
reg    knn_set_V_ce0;
reg    knn_set_V_we0;
reg   [5:0] knn_set_V_d0;
wire   [5:0] knn_set_V_q0;
reg    knn_set_V_ce1;
reg    knn_set_V_we1;
wire    grp_knn_vote_fu_156_ap_start;
wire    grp_knn_vote_fu_156_ap_done;
wire    grp_knn_vote_fu_156_ap_idle;
wire    grp_knn_vote_fu_156_ap_ready;
wire   [5:0] grp_knn_vote_fu_156_knn_set_V_address0;
wire    grp_knn_vote_fu_156_knn_set_V_ce0;
wire   [3:0] grp_knn_vote_fu_156_ap_return;
wire    grp_update_knn_fu_161_ap_start;
wire    grp_update_knn_fu_161_ap_done;
wire    grp_update_knn_fu_161_ap_idle;
wire    grp_update_knn_fu_161_ap_ready;
wire   [5:0] grp_update_knn_fu_161_min_distances_V_address0;
wire    grp_update_knn_fu_161_min_distances_V_ce0;
wire    grp_update_knn_fu_161_min_distances_V_we0;
wire   [5:0] grp_update_knn_fu_161_min_distances_V_d0;
wire   [5:0] grp_update_knn_fu_161_min_distances_V_address1;
wire    grp_update_knn_fu_161_min_distances_V_ce1;
wire    grp_update_knn_fu_161_min_distances_V_we1;
wire   [5:0] grp_update_knn_fu_161_min_distances_V_d1;
reg   [3:0] i_reg_100;
wire   [0:0] exitcond3_fu_205_p2;
reg   [2:0] k_reg_111;
reg   [10:0] i4_reg_122;
reg   [3:0] j_reg_133;
wire   [0:0] exitcond2_fu_235_p2;
wire    ap_CS_fsm_state7;
reg   [14:0] phi_mul_reg_145;
reg    ap_reg_grp_knn_vote_fu_156_ap_start;
wire    ap_CS_fsm_state8;
reg    ap_reg_grp_update_knn_fu_161_ap_start;
wire   [63:0] tmp_9_cast_fu_226_p1;
wire   [63:0] tmp_6_fu_270_p1;
wire   [5:0] tmp_7_fu_187_p3;
wire   [6:0] tmp_cast_fu_183_p1;
wire   [6:0] p_shl_cast_fu_195_p1;
wire   [6:0] tmp_cast_6_fu_217_p1;
wire   [6:0] tmp_9_fu_221_p2;
wire   [14:0] tmp_5_fu_265_p2;
reg   [7:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_reg_grp_knn_vote_fu_156_ap_start = 1'b0;
#0 ap_reg_grp_update_knn_fu_161_ap_start = 1'b0;
end

digitrec_trainingbkb #(
    .DataWidth( 48 ),
    .AddressRange( 18000 ),
    .AddressWidth( 15 ))
training_data_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(training_data_V_address0),
    .ce0(training_data_V_ce0),
    .q0(training_data_V_q0)
);

digitrec_knn_set_V #(
    .DataWidth( 6 ),
    .AddressRange( 50 ),
    .AddressWidth( 6 ))
knn_set_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(knn_set_V_address0),
    .ce0(knn_set_V_ce0),
    .we0(knn_set_V_we0),
    .d0(knn_set_V_d0),
    .q0(knn_set_V_q0),
    .address1(grp_update_knn_fu_161_min_distances_V_address1),
    .ce1(knn_set_V_ce1),
    .we1(knn_set_V_we1),
    .d1(grp_update_knn_fu_161_min_distances_V_d1)
);

knn_vote grp_knn_vote_fu_156(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_knn_vote_fu_156_ap_start),
    .ap_done(grp_knn_vote_fu_156_ap_done),
    .ap_idle(grp_knn_vote_fu_156_ap_idle),
    .ap_ready(grp_knn_vote_fu_156_ap_ready),
    .knn_set_V_address0(grp_knn_vote_fu_156_knn_set_V_address0),
    .knn_set_V_ce0(grp_knn_vote_fu_156_knn_set_V_ce0),
    .knn_set_V_q0(knn_set_V_q0),
    .ap_return(grp_knn_vote_fu_156_ap_return)
);

update_knn grp_update_knn_fu_161(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_update_knn_fu_161_ap_start),
    .ap_done(grp_update_knn_fu_161_ap_done),
    .ap_idle(grp_update_knn_fu_161_ap_idle),
    .ap_ready(grp_update_knn_fu_161_ap_ready),
    .test_inst_V(input_V),
    .train_inst_V(training_instance_V_reg_332),
    .min_distances_V_address0(grp_update_knn_fu_161_min_distances_V_address0),
    .min_distances_V_ce0(grp_update_knn_fu_161_min_distances_V_ce0),
    .min_distances_V_we0(grp_update_knn_fu_161_min_distances_V_we0),
    .min_distances_V_d0(grp_update_knn_fu_161_min_distances_V_d0),
    .min_distances_V_q0(knn_set_V_q0),
    .min_distances_V_address1(grp_update_knn_fu_161_min_distances_V_address1),
    .min_distances_V_ce1(grp_update_knn_fu_161_min_distances_V_ce1),
    .min_distances_V_we1(grp_update_knn_fu_161_min_distances_V_we1),
    .min_distances_V_d1(grp_update_knn_fu_161_min_distances_V_d1),
    .min_distances_V_offset(j_reg_133)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_knn_vote_fu_156_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state4) & (exitcond2_fu_235_p2 == 1'd1))) begin
            ap_reg_grp_knn_vote_fu_156_ap_start <= 1'b1;
        end else if ((grp_knn_vote_fu_156_ap_ready == 1'b1)) begin
            ap_reg_grp_knn_vote_fu_156_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_update_knn_fu_161_ap_start <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_reg_grp_update_knn_fu_161_ap_start <= 1'b1;
        end else if ((grp_update_knn_fu_161_ap_ready == 1'b1)) begin
            ap_reg_grp_update_knn_fu_161_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_171_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i4_reg_122 <= 11'd0;
    end else if (((exitcond_fu_247_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        i4_reg_122 <= i_3_reg_309;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond3_fu_205_p2 == 1'd1))) begin
        i_reg_100 <= i_2_reg_283;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_100 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (grp_update_knn_fu_161_ap_done == 1'b1))) begin
        j_reg_133 <= j_2_reg_317;
    end else if (((exitcond2_fu_235_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        j_reg_133 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_171_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        k_reg_111 <= 3'd0;
    end else if (((exitcond3_fu_205_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        k_reg_111 <= k_1_fu_211_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (grp_update_knn_fu_161_ap_done == 1'b1))) begin
        phi_mul_reg_145 <= next_mul_reg_322;
    end else if (((exitcond2_fu_235_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        phi_mul_reg_145 <= 15'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i4_cast3_reg_301[10 : 0] <= i4_cast3_fu_231_p1[10 : 0];
        i_3_reg_309 <= i_3_fu_241_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_2_reg_283 <= i_2_fu_177_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        j_2_reg_317 <= j_2_fu_253_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_247_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        next_mul_reg_322 <= next_mul_fu_259_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_171_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_8_reg_288 <= tmp_8_fu_199_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        training_instance_V_reg_332 <= training_data_V_q0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) & (grp_knn_vote_fu_156_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) & (grp_knn_vote_fu_156_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        knn_set_V_address0 = tmp_9_cast_fu_226_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        knn_set_V_address0 = grp_update_knn_fu_161_min_distances_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        knn_set_V_address0 = grp_knn_vote_fu_156_knn_set_V_address0;
    end else begin
        knn_set_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        knn_set_V_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        knn_set_V_ce0 = grp_update_knn_fu_161_min_distances_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        knn_set_V_ce0 = grp_knn_vote_fu_156_knn_set_V_ce0;
    end else begin
        knn_set_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        knn_set_V_ce1 = grp_update_knn_fu_161_min_distances_V_ce1;
    end else begin
        knn_set_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        knn_set_V_d0 = 6'd50;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        knn_set_V_d0 = grp_update_knn_fu_161_min_distances_V_d0;
    end else begin
        knn_set_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((exitcond3_fu_205_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        knn_set_V_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        knn_set_V_we0 = grp_update_knn_fu_161_min_distances_V_we0;
    end else begin
        knn_set_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        knn_set_V_we1 = grp_update_knn_fu_161_min_distances_V_we1;
    end else begin
        knn_set_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_V_ce0 = 1'b1;
    end else begin
        training_data_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond1_fu_171_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond3_fu_205_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((exitcond2_fu_235_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((exitcond_fu_247_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (grp_update_knn_fu_161_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_knn_vote_fu_156_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_return = grp_knn_vote_fu_156_ap_return;

assign exitcond1_fu_171_p2 = ((i_reg_100 == 4'd10) ? 1'b1 : 1'b0);

assign exitcond2_fu_235_p2 = ((i4_reg_122 == 11'd1800) ? 1'b1 : 1'b0);

assign exitcond3_fu_205_p2 = ((k_reg_111 == 3'd5) ? 1'b1 : 1'b0);

assign exitcond_fu_247_p2 = ((j_reg_133 == 4'd10) ? 1'b1 : 1'b0);

assign grp_knn_vote_fu_156_ap_start = ap_reg_grp_knn_vote_fu_156_ap_start;

assign grp_update_knn_fu_161_ap_start = ap_reg_grp_update_knn_fu_161_ap_start;

assign i4_cast3_fu_231_p1 = i4_reg_122;

assign i_2_fu_177_p2 = (i_reg_100 + 4'd1);

assign i_3_fu_241_p2 = (i4_reg_122 + 11'd1);

assign j_2_fu_253_p2 = (j_reg_133 + 4'd1);

assign k_1_fu_211_p2 = (k_reg_111 + 3'd1);

assign next_mul_fu_259_p2 = (phi_mul_reg_145 + 15'd1800);

assign p_shl_cast_fu_195_p1 = tmp_7_fu_187_p3;

assign tmp_5_fu_265_p2 = (i4_cast3_reg_301 + phi_mul_reg_145);

assign tmp_6_fu_270_p1 = tmp_5_fu_265_p2;

assign tmp_7_fu_187_p3 = {{i_reg_100}, {2'd0}};

assign tmp_8_fu_199_p2 = (tmp_cast_fu_183_p1 + p_shl_cast_fu_195_p1);

assign tmp_9_cast_fu_226_p1 = tmp_9_fu_221_p2;

assign tmp_9_fu_221_p2 = (tmp_8_reg_288 + tmp_cast_6_fu_217_p1);

assign tmp_cast_6_fu_217_p1 = k_reg_111;

assign tmp_cast_fu_183_p1 = i_reg_100;

assign training_data_V_address0 = tmp_6_fu_270_p1;

always @ (posedge ap_clk) begin
    i4_cast3_reg_301[14:11] <= 4'b0000;
end

endmodule //digitrec
