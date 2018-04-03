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
        knn_set_0_V_address0,
        knn_set_0_V_ce0,
        knn_set_0_V_q0,
        ap_return
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] knn_set_0_V_address0;
output   knn_set_0_V_ce0;
input  [4:0] knn_set_0_V_q0;
output  [3:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg knn_set_0_V_ce0;
reg[3:0] ap_return;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] digit_recognized_cas_fu_65_p1;
reg   [31:0] digit_recognized_cas_reg_119;
wire    ap_CS_fsm_state2;
wire   [3:0] i_fu_75_p2;
reg   [3:0] i_reg_127;
wire   [0:0] exitcond7_fu_69_p2;
wire   [31:0] sum_distances_1_min_s_fu_104_p3;
wire    ap_CS_fsm_state3;
wire   [31:0] i_0_digit_recognized_fu_112_p3;
reg   [31:0] min_sum_distances_reg_30;
reg   [31:0] val_assign_reg_42;
reg   [3:0] digit_recognized_reg_54;
wire   [63:0] tmp_s_fu_81_p1;
wire  signed [5:0] extLd_fu_90_p1;
wire   [31:0] tmp_3_fu_94_p1;
wire   [0:0] tmp_1_fu_98_p2;
wire   [3:0] tmp_fu_86_p1;
reg   [3:0] ap_return_preg;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
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
        if (((exitcond7_fu_69_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_return_preg <= tmp_fu_86_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        digit_recognized_reg_54 <= i_reg_127;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        digit_recognized_reg_54 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        min_sum_distances_reg_30 <= sum_distances_1_min_s_fu_104_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        min_sum_distances_reg_30 <= 32'd50;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        digit_recognized_cas_reg_119[3 : 0] <= digit_recognized_cas_fu_65_p1[3 : 0];
        i_reg_127 <= i_fu_75_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        val_assign_reg_42 <= i_0_digit_recognized_fu_112_p3;
    end
end

always @ (*) begin
    if ((((exitcond7_fu_69_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((exitcond7_fu_69_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond7_fu_69_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_return = tmp_fu_86_p1;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        knn_set_0_V_ce0 = 1'b1;
    end else begin
        knn_set_0_V_ce0 = 1'b0;
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
            if (((exitcond7_fu_69_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign digit_recognized_cas_fu_65_p1 = digit_recognized_reg_54;

assign exitcond7_fu_69_p2 = ((digit_recognized_reg_54 == 4'd10) ? 1'b1 : 1'b0);

assign extLd_fu_90_p1 = $signed(knn_set_0_V_q0);

assign i_0_digit_recognized_fu_112_p3 = ((tmp_1_fu_98_p2[0:0] === 1'b1) ? digit_recognized_cas_reg_119 : val_assign_reg_42);

assign i_fu_75_p2 = (digit_recognized_reg_54 + 4'd1);

assign knn_set_0_V_address0 = tmp_s_fu_81_p1;

assign sum_distances_1_min_s_fu_104_p3 = ((tmp_1_fu_98_p2[0:0] === 1'b1) ? tmp_3_fu_94_p1 : min_sum_distances_reg_30);

assign tmp_1_fu_98_p2 = (($signed(tmp_3_fu_94_p1) < $signed(min_sum_distances_reg_30)) ? 1'b1 : 1'b0);

assign tmp_3_fu_94_p1 = $unsigned(extLd_fu_90_p1);

assign tmp_fu_86_p1 = val_assign_reg_42[3:0];

assign tmp_s_fu_81_p1 = digit_recognized_reg_54;

always @ (posedge ap_clk) begin
    digit_recognized_cas_reg_119[31:4] <= 28'b0000000000000000000000000000;
end

endmodule //knn_vote
