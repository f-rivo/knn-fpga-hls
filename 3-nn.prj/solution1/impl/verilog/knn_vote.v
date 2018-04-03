// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module knn_vote (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        knn_set_V_address0,
        knn_set_V_ce0,
        knn_set_V_q0,
        ap_return
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] knn_set_V_address0;
output   knn_set_V_ce0;
input  [5:0] knn_set_V_q0;
output  [3:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg knn_set_V_ce0;
reg[3:0] ap_return;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] digit_recognized_cas_fu_100_p1;
reg   [31:0] digit_recognized_cas_reg_199;
wire    ap_CS_fsm_state2;
wire   [3:0] i_fu_110_p2;
reg   [3:0] i_reg_207;
wire   [5:0] tmp_4_fu_128_p2;
reg   [5:0] tmp_4_reg_212;
wire   [0:0] exitcond7_fu_104_p2;
wire   [1:0] j_1_fu_144_p2;
reg   [1:0] j_1_reg_220;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond_fu_138_p2;
wire   [31:0] sum_distances_1_min_s_fu_174_p3;
wire   [31:0] i_0_digit_recognized_fu_182_p3;
wire   [7:0] sum_distances_fu_193_p2;
wire    ap_CS_fsm_state4;
reg   [31:0] min_sum_distances_reg_42;
reg   [31:0] val_assign_reg_54;
reg   [3:0] digit_recognized_reg_66;
reg   [7:0] min_sum_distances_1_reg_77;
reg   [1:0] j_reg_89;
wire  signed [63:0] tmp_5_cast_fu_159_p1;
wire   [5:0] tmp_fu_120_p3;
wire   [5:0] tmp_cast_fu_116_p1;
wire   [5:0] tmp_2_cast_fu_150_p1;
wire   [5:0] tmp_5_fu_154_p2;
wire   [31:0] min_sum_distances_1_s_fu_164_p1;
wire   [0:0] tmp_1_fu_168_p2;
wire   [7:0] tmp_3_cast_fu_189_p1;
wire   [3:0] tmp_6_fu_134_p1;
reg   [3:0] ap_return_preg;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_return_preg = 4'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 4'd0;
    end else begin
        if (((exitcond7_fu_104_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_return_preg <= tmp_6_fu_134_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_138_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        digit_recognized_reg_66 <= i_reg_207;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        digit_recognized_reg_66 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond7_fu_104_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_89 <= 2'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        j_reg_89 <= j_1_reg_220;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond7_fu_104_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        min_sum_distances_1_reg_77 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        min_sum_distances_1_reg_77 <= sum_distances_fu_193_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_138_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        min_sum_distances_reg_42 <= sum_distances_1_min_s_fu_174_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        min_sum_distances_reg_42 <= 32'd150;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        digit_recognized_cas_reg_199[3 : 0] <= digit_recognized_cas_fu_100_p1[3 : 0];
        i_reg_207 <= i_fu_110_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_1_reg_220 <= j_1_fu_144_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond7_fu_104_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_4_reg_212 <= tmp_4_fu_128_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_138_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        val_assign_reg_54 <= i_0_digit_recognized_fu_182_p3;
    end
end

always @ (*) begin
    if ((((exitcond7_fu_104_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((exitcond7_fu_104_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond7_fu_104_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_return = tmp_6_fu_134_p1;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        knn_set_V_ce0 = 1'b1;
    end else begin
        knn_set_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond7_fu_104_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond_fu_138_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
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

assign digit_recognized_cas_fu_100_p1 = digit_recognized_reg_66;

assign exitcond7_fu_104_p2 = ((digit_recognized_reg_66 == 4'd10) ? 1'b1 : 1'b0);

assign exitcond_fu_138_p2 = ((j_reg_89 == 2'd3) ? 1'b1 : 1'b0);

assign i_0_digit_recognized_fu_182_p3 = ((tmp_1_fu_168_p2[0:0] === 1'b1) ? digit_recognized_cas_reg_199 : val_assign_reg_54);

assign i_fu_110_p2 = (digit_recognized_reg_66 + 4'd1);

assign j_1_fu_144_p2 = (j_reg_89 + 2'd1);

assign knn_set_V_address0 = tmp_5_cast_fu_159_p1;

assign min_sum_distances_1_s_fu_164_p1 = min_sum_distances_1_reg_77;

assign sum_distances_1_min_s_fu_174_p3 = ((tmp_1_fu_168_p2[0:0] === 1'b1) ? min_sum_distances_1_s_fu_164_p1 : min_sum_distances_reg_42);

assign sum_distances_fu_193_p2 = (min_sum_distances_1_reg_77 + tmp_3_cast_fu_189_p1);

assign tmp_1_fu_168_p2 = (($signed(min_sum_distances_1_s_fu_164_p1) < $signed(min_sum_distances_reg_42)) ? 1'b1 : 1'b0);

assign tmp_2_cast_fu_150_p1 = j_reg_89;

assign tmp_3_cast_fu_189_p1 = knn_set_V_q0;

assign tmp_4_fu_128_p2 = (tmp_fu_120_p3 - tmp_cast_fu_116_p1);

assign tmp_5_cast_fu_159_p1 = $signed(tmp_5_fu_154_p2);

assign tmp_5_fu_154_p2 = (tmp_4_reg_212 + tmp_2_cast_fu_150_p1);

assign tmp_6_fu_134_p1 = val_assign_reg_54[3:0];

assign tmp_cast_fu_116_p1 = digit_recognized_reg_66;

assign tmp_fu_120_p3 = {{digit_recognized_reg_66}, {2'd0}};

always @ (posedge ap_clk) begin
    digit_recognized_cas_reg_199[31:4] <= 28'b0000000000000000000000000000;
end

endmodule //knn_vote
