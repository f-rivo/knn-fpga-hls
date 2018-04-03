-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity update_knn is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    test_inst_V : IN STD_LOGIC_VECTOR (48 downto 0);
    train_inst_V : IN STD_LOGIC_VECTOR (47 downto 0);
    min_distances_V_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    min_distances_V_ce0 : OUT STD_LOGIC;
    min_distances_V_we0 : OUT STD_LOGIC;
    min_distances_V_d0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    min_distances_V_q0 : IN STD_LOGIC_VECTOR (5 downto 0);
    min_distances_V_address1 : OUT STD_LOGIC_VECTOR (4 downto 0);
    min_distances_V_ce1 : OUT STD_LOGIC;
    min_distances_V_we1 : OUT STD_LOGIC;
    min_distances_V_d1 : OUT STD_LOGIC_VECTOR (5 downto 0);
    min_distances_V_offset : IN STD_LOGIC_VECTOR (3 downto 0) );
end;


architecture behav of update_knn is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv6_31 : STD_LOGIC_VECTOR (5 downto 0) := "110001";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_1_fu_138_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_1_reg_246 : STD_LOGIC_VECTOR (5 downto 0);
    signal r_V_fu_148_p2 : STD_LOGIC_VECTOR (48 downto 0);
    signal r_V_reg_252 : STD_LOGIC_VECTOR (48 downto 0);
    signal i_fu_164_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal dist_V_fu_181_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal exitcond_fu_158_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal min_distances_V_addr_reg_280 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_4_fu_192_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal min_distance_last_el_1_reg_285 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal tmp_6_fu_216_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_reg_291 : STD_LOGIC_VECTOR (0 downto 0);
    signal min_distances_V_addr_1_reg_295 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_120_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal min_distance_last_el_reg_86 : STD_LOGIC_VECTOR (5 downto 0);
    signal bvh_d_index_reg_97 : STD_LOGIC_VECTOR (5 downto 0);
    signal i1_reg_108 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_2_cast_fu_207_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_3_cast_fu_231_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal temp_min_distance_la_fu_40 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_9_fu_241_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_130_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal min_distances_V_offs_1_fu_126_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal train_inst_V_cast_fu_144_p1 : STD_LOGIC_VECTOR (48 downto 0);
    signal index_assign_cast2_fu_154_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_5_fu_170_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_cast_fu_177_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_5_cast_fu_198_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_2_fu_202_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_8_cast_fu_222_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_3_fu_226_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    bvh_d_index_reg_97_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_158_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                bvh_d_index_reg_97 <= i_fu_164_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                bvh_d_index_reg_97 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    i1_reg_108_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_158_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i1_reg_108 <= ap_const_lv2_2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                i1_reg_108 <= grp_fu_120_p2;
            end if; 
        end if;
    end process;

    min_distance_last_el_reg_86_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_158_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                min_distance_last_el_reg_86 <= dist_V_fu_181_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                min_distance_last_el_reg_86 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    temp_min_distance_la_fu_40_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_6_fu_216_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                temp_min_distance_la_fu_40 <= min_distances_V_q0;
            elsif (((exitcond_fu_158_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                temp_min_distance_la_fu_40 <= min_distance_last_el_reg_86;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                min_distance_last_el_1_reg_285 <= min_distances_V_q0;
                tmp_6_reg_291 <= tmp_6_fu_216_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_6_fu_216_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                min_distances_V_addr_1_reg_295 <= tmp_3_cast_fu_231_p1(5 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_4_fu_192_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                min_distances_V_addr_reg_280 <= tmp_2_cast_fu_207_p1(5 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                r_V_reg_252 <= r_V_fu_148_p2;
                tmp_1_reg_246 <= tmp_1_fu_138_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond_fu_158_p2, ap_CS_fsm_state3, tmp_4_fu_192_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((exitcond_fu_158_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((tmp_4_fu_192_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state3, tmp_4_fu_192_p2)
    begin
        if ((((tmp_4_fu_192_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state3, tmp_4_fu_192_p2)
    begin
        if (((tmp_4_fu_192_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    dist_V_fu_181_p2 <= std_logic_vector(unsigned(min_distance_last_el_reg_86) + unsigned(tmp_1_cast_fu_177_p1));
    exitcond_fu_158_p2 <= "1" when (bvh_d_index_reg_97 = ap_const_lv6_31) else "0";
    grp_fu_120_p2 <= std_logic_vector(unsigned(i1_reg_108) + unsigned(ap_const_lv2_3));
    i_fu_164_p2 <= std_logic_vector(unsigned(bvh_d_index_reg_97) + unsigned(ap_const_lv6_1));
    index_assign_cast2_fu_154_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(bvh_d_index_reg_97),32));

    min_distances_V_address0_assign_proc : process(min_distances_V_addr_reg_280, ap_CS_fsm_state3, ap_CS_fsm_state4, tmp_6_fu_216_p2, ap_CS_fsm_state5, tmp_2_cast_fu_207_p1, tmp_3_cast_fu_231_p1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or ((tmp_6_fu_216_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            min_distances_V_address0 <= min_distances_V_addr_reg_280;
        elsif (((tmp_6_fu_216_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            min_distances_V_address0 <= tmp_3_cast_fu_231_p1(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            min_distances_V_address0 <= tmp_2_cast_fu_207_p1(5 - 1 downto 0);
        else 
            min_distances_V_address0 <= "XXXXX";
        end if; 
    end process;

    min_distances_V_address1 <= min_distances_V_addr_1_reg_295;

    min_distances_V_ce0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state4, tmp_6_fu_216_p2, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state3) or ((tmp_6_fu_216_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((tmp_6_fu_216_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            min_distances_V_ce0 <= ap_const_logic_1;
        else 
            min_distances_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    min_distances_V_ce1_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            min_distances_V_ce1 <= ap_const_logic_1;
        else 
            min_distances_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    min_distances_V_d0_assign_proc : process(min_distances_V_q0, ap_CS_fsm_state4, tmp_6_fu_216_p2, ap_CS_fsm_state5, temp_min_distance_la_fu_40)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            min_distances_V_d0 <= min_distances_V_q0;
        elsif (((tmp_6_fu_216_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            min_distances_V_d0 <= temp_min_distance_la_fu_40;
        else 
            min_distances_V_d0 <= "XXXXXX";
        end if; 
    end process;

    min_distances_V_d1 <= min_distance_last_el_1_reg_285;
    min_distances_V_offs_1_fu_126_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(min_distances_V_offset),6));

    min_distances_V_we0_assign_proc : process(ap_CS_fsm_state4, tmp_6_fu_216_p2, tmp_6_reg_291, ap_CS_fsm_state5, tmp_9_fu_241_p2)
    begin
        if ((((tmp_9_fu_241_p2 = ap_const_lv1_1) and (tmp_6_reg_291 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((tmp_6_fu_216_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            min_distances_V_we0 <= ap_const_logic_1;
        else 
            min_distances_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    min_distances_V_we1_assign_proc : process(tmp_6_reg_291, ap_CS_fsm_state5, tmp_9_fu_241_p2)
    begin
        if (((tmp_9_fu_241_p2 = ap_const_lv1_1) and (tmp_6_reg_291 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            min_distances_V_we1 <= ap_const_logic_1;
        else 
            min_distances_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

    r_V_fu_148_p2 <= (train_inst_V_cast_fu_144_p1 xor test_inst_V);
    tmp_1_cast_fu_177_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_5_fu_170_p3),6));
    tmp_1_fu_138_p2 <= std_logic_vector(unsigned(tmp_fu_130_p3) - unsigned(min_distances_V_offs_1_fu_126_p1));
        tmp_2_cast_fu_207_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_2_fu_202_p2),64));

    tmp_2_fu_202_p2 <= std_logic_vector(unsigned(tmp_1_reg_246) + unsigned(tmp_5_cast_fu_198_p1));
        tmp_3_cast_fu_231_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_3_fu_226_p2),64));

    tmp_3_fu_226_p2 <= std_logic_vector(unsigned(tmp_1_reg_246) + unsigned(tmp_8_cast_fu_222_p1));
    tmp_4_fu_192_p2 <= "1" when (i1_reg_108 = ap_const_lv2_0) else "0";
    tmp_5_cast_fu_198_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i1_reg_108),6));
    tmp_5_fu_170_p3 <= r_V_reg_252(to_integer(unsigned(index_assign_cast2_fu_154_p1)) downto to_integer(unsigned(index_assign_cast2_fu_154_p1))) when (to_integer(unsigned(index_assign_cast2_fu_154_p1))>= 0 and to_integer(unsigned(index_assign_cast2_fu_154_p1))<=48) else "-";
    tmp_6_fu_216_p2 <= "1" when (unsigned(temp_min_distance_la_fu_40) < unsigned(min_distances_V_q0)) else "0";
    tmp_8_cast_fu_222_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_fu_120_p2),6));
    tmp_9_fu_241_p2 <= "1" when (unsigned(min_distance_last_el_1_reg_285) < unsigned(min_distances_V_q0)) else "0";
    tmp_fu_130_p3 <= (min_distances_V_offset & ap_const_lv2_0);
    train_inst_V_cast_fu_144_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(train_inst_V),49));
end behav;
