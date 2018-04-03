-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity digitrec is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    input_V : IN STD_LOGIC_VECTOR (48 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (3 downto 0) );
end;


architecture behav of digitrec is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "digitrec,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=5.842000,HLS_SYN_LAT=1191794,HLS_SYN_TPT=none,HLS_SYN_MEM=97,HLS_SYN_DSP=0,HLS_SYN_FF=354,HLS_SYN_LUT=882}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (7 downto 0) := "00001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (7 downto 0) := "00100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv6_32 : STD_LOGIC_VECTOR (5 downto 0) := "110010";
    constant ap_const_lv4_A : STD_LOGIC_VECTOR (3 downto 0) := "1010";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv11_708 : STD_LOGIC_VECTOR (10 downto 0) := "11100001000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv15_708 : STD_LOGIC_VECTOR (14 downto 0) := "000011100001000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal training_data_V_address0 : STD_LOGIC_VECTOR (14 downto 0);
    signal training_data_V_ce0 : STD_LOGIC;
    signal training_data_V_q0 : STD_LOGIC_VECTOR (47 downto 0);
    signal i_2_fu_177_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_2_reg_283 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_8_fu_199_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_reg_288 : STD_LOGIC_VECTOR (6 downto 0);
    signal exitcond1_fu_171_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal k_1_fu_211_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal i4_cast3_fu_231_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal i4_cast3_reg_301 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal i_3_fu_241_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_3_reg_309 : STD_LOGIC_VECTOR (10 downto 0);
    signal j_2_fu_253_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal j_2_reg_317 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal next_mul_fu_259_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal next_mul_reg_322 : STD_LOGIC_VECTOR (14 downto 0);
    signal exitcond_fu_247_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal training_instance_V_reg_332 : STD_LOGIC_VECTOR (47 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal knn_set_V_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal knn_set_V_ce0 : STD_LOGIC;
    signal knn_set_V_we0 : STD_LOGIC;
    signal knn_set_V_d0 : STD_LOGIC_VECTOR (5 downto 0);
    signal knn_set_V_q0 : STD_LOGIC_VECTOR (5 downto 0);
    signal knn_set_V_ce1 : STD_LOGIC;
    signal knn_set_V_we1 : STD_LOGIC;
    signal grp_knn_vote_fu_156_ap_start : STD_LOGIC;
    signal grp_knn_vote_fu_156_ap_done : STD_LOGIC;
    signal grp_knn_vote_fu_156_ap_idle : STD_LOGIC;
    signal grp_knn_vote_fu_156_ap_ready : STD_LOGIC;
    signal grp_knn_vote_fu_156_knn_set_V_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_knn_vote_fu_156_knn_set_V_ce0 : STD_LOGIC;
    signal grp_knn_vote_fu_156_ap_return : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_update_knn_fu_161_ap_start : STD_LOGIC;
    signal grp_update_knn_fu_161_ap_done : STD_LOGIC;
    signal grp_update_knn_fu_161_ap_idle : STD_LOGIC;
    signal grp_update_knn_fu_161_ap_ready : STD_LOGIC;
    signal grp_update_knn_fu_161_min_distances_V_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_update_knn_fu_161_min_distances_V_ce0 : STD_LOGIC;
    signal grp_update_knn_fu_161_min_distances_V_we0 : STD_LOGIC;
    signal grp_update_knn_fu_161_min_distances_V_d0 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_update_knn_fu_161_min_distances_V_address1 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_update_knn_fu_161_min_distances_V_ce1 : STD_LOGIC;
    signal grp_update_knn_fu_161_min_distances_V_we1 : STD_LOGIC;
    signal grp_update_knn_fu_161_min_distances_V_d1 : STD_LOGIC_VECTOR (5 downto 0);
    signal i_reg_100 : STD_LOGIC_VECTOR (3 downto 0);
    signal exitcond3_fu_205_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal k_reg_111 : STD_LOGIC_VECTOR (2 downto 0);
    signal i4_reg_122 : STD_LOGIC_VECTOR (10 downto 0);
    signal j_reg_133 : STD_LOGIC_VECTOR (3 downto 0);
    signal exitcond2_fu_235_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal phi_mul_reg_145 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_reg_grp_knn_vote_fu_156_ap_start : STD_LOGIC := '0';
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal ap_reg_grp_update_knn_fu_161_ap_start : STD_LOGIC := '0';
    signal tmp_9_cast_fu_226_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_6_fu_270_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_7_fu_187_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_cast_fu_183_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_shl_cast_fu_195_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_cast_6_fu_217_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_9_fu_221_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_5_fu_265_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);

    component knn_vote IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        knn_set_V_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
        knn_set_V_ce0 : OUT STD_LOGIC;
        knn_set_V_q0 : IN STD_LOGIC_VECTOR (5 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (3 downto 0) );
    end component;


    component update_knn IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        test_inst_V : IN STD_LOGIC_VECTOR (48 downto 0);
        train_inst_V : IN STD_LOGIC_VECTOR (47 downto 0);
        min_distances_V_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
        min_distances_V_ce0 : OUT STD_LOGIC;
        min_distances_V_we0 : OUT STD_LOGIC;
        min_distances_V_d0 : OUT STD_LOGIC_VECTOR (5 downto 0);
        min_distances_V_q0 : IN STD_LOGIC_VECTOR (5 downto 0);
        min_distances_V_address1 : OUT STD_LOGIC_VECTOR (5 downto 0);
        min_distances_V_ce1 : OUT STD_LOGIC;
        min_distances_V_we1 : OUT STD_LOGIC;
        min_distances_V_d1 : OUT STD_LOGIC_VECTOR (5 downto 0);
        min_distances_V_offset : IN STD_LOGIC_VECTOR (3 downto 0) );
    end component;


    component digitrec_trainingbkb IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (14 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (47 downto 0) );
    end component;


    component digitrec_knn_set_V IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (5 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (5 downto 0);
        address1 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce1 : IN STD_LOGIC;
        we1 : IN STD_LOGIC;
        d1 : IN STD_LOGIC_VECTOR (5 downto 0) );
    end component;



begin
    training_data_V_U : component digitrec_trainingbkb
    generic map (
        DataWidth => 48,
        AddressRange => 18000,
        AddressWidth => 15)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => training_data_V_address0,
        ce0 => training_data_V_ce0,
        q0 => training_data_V_q0);

    knn_set_V_U : component digitrec_knn_set_V
    generic map (
        DataWidth => 6,
        AddressRange => 50,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => knn_set_V_address0,
        ce0 => knn_set_V_ce0,
        we0 => knn_set_V_we0,
        d0 => knn_set_V_d0,
        q0 => knn_set_V_q0,
        address1 => grp_update_knn_fu_161_min_distances_V_address1,
        ce1 => knn_set_V_ce1,
        we1 => knn_set_V_we1,
        d1 => grp_update_knn_fu_161_min_distances_V_d1);

    grp_knn_vote_fu_156 : component knn_vote
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_knn_vote_fu_156_ap_start,
        ap_done => grp_knn_vote_fu_156_ap_done,
        ap_idle => grp_knn_vote_fu_156_ap_idle,
        ap_ready => grp_knn_vote_fu_156_ap_ready,
        knn_set_V_address0 => grp_knn_vote_fu_156_knn_set_V_address0,
        knn_set_V_ce0 => grp_knn_vote_fu_156_knn_set_V_ce0,
        knn_set_V_q0 => knn_set_V_q0,
        ap_return => grp_knn_vote_fu_156_ap_return);

    grp_update_knn_fu_161 : component update_knn
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_update_knn_fu_161_ap_start,
        ap_done => grp_update_knn_fu_161_ap_done,
        ap_idle => grp_update_knn_fu_161_ap_idle,
        ap_ready => grp_update_knn_fu_161_ap_ready,
        test_inst_V => input_V,
        train_inst_V => training_instance_V_reg_332,
        min_distances_V_address0 => grp_update_knn_fu_161_min_distances_V_address0,
        min_distances_V_ce0 => grp_update_knn_fu_161_min_distances_V_ce0,
        min_distances_V_we0 => grp_update_knn_fu_161_min_distances_V_we0,
        min_distances_V_d0 => grp_update_knn_fu_161_min_distances_V_d0,
        min_distances_V_q0 => knn_set_V_q0,
        min_distances_V_address1 => grp_update_knn_fu_161_min_distances_V_address1,
        min_distances_V_ce1 => grp_update_knn_fu_161_min_distances_V_ce1,
        min_distances_V_we1 => grp_update_knn_fu_161_min_distances_V_we1,
        min_distances_V_d1 => grp_update_knn_fu_161_min_distances_V_d1,
        min_distances_V_offset => j_reg_133);





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


    ap_reg_grp_knn_vote_fu_156_ap_start_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_grp_knn_vote_fu_156_ap_start <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond2_fu_235_p2 = ap_const_lv1_1))) then 
                    ap_reg_grp_knn_vote_fu_156_ap_start <= ap_const_logic_1;
                elsif ((grp_knn_vote_fu_156_ap_ready = ap_const_logic_1)) then 
                    ap_reg_grp_knn_vote_fu_156_ap_start <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_reg_grp_update_knn_fu_161_ap_start_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_grp_update_knn_fu_161_ap_start <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    ap_reg_grp_update_knn_fu_161_ap_start <= ap_const_logic_1;
                elsif ((grp_update_knn_fu_161_ap_ready = ap_const_logic_1)) then 
                    ap_reg_grp_update_knn_fu_161_ap_start <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i4_reg_122_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_171_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i4_reg_122 <= ap_const_lv11_0;
            elsif (((exitcond_fu_247_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                i4_reg_122 <= i_3_reg_309;
            end if; 
        end if;
    end process;

    i_reg_100_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond3_fu_205_p2 = ap_const_lv1_1))) then 
                i_reg_100 <= i_2_reg_283;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_reg_100 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    j_reg_133_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state7) and (grp_update_knn_fu_161_ap_done = ap_const_logic_1))) then 
                j_reg_133 <= j_2_reg_317;
            elsif (((exitcond2_fu_235_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                j_reg_133 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    k_reg_111_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_171_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                k_reg_111 <= ap_const_lv3_0;
            elsif (((exitcond3_fu_205_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                k_reg_111 <= k_1_fu_211_p2;
            end if; 
        end if;
    end process;

    phi_mul_reg_145_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state7) and (grp_update_knn_fu_161_ap_done = ap_const_logic_1))) then 
                phi_mul_reg_145 <= next_mul_reg_322;
            elsif (((exitcond2_fu_235_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                phi_mul_reg_145 <= ap_const_lv15_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                    i4_cast3_reg_301(10 downto 0) <= i4_cast3_fu_231_p1(10 downto 0);
                i_3_reg_309 <= i_3_fu_241_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_2_reg_283 <= i_2_fu_177_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                j_2_reg_317 <= j_2_fu_253_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_247_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                next_mul_reg_322 <= next_mul_fu_259_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_171_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                tmp_8_reg_288 <= tmp_8_fu_199_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                training_instance_V_reg_332 <= training_data_V_q0;
            end if;
        end if;
    end process;
    i4_cast3_reg_301(14 downto 11) <= "0000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond1_fu_171_p2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, exitcond_fu_247_p2, grp_knn_vote_fu_156_ap_done, grp_update_knn_fu_161_ap_done, exitcond3_fu_205_p2, exitcond2_fu_235_p2, ap_CS_fsm_state7, ap_CS_fsm_state8)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((exitcond1_fu_171_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond3_fu_205_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if (((exitcond2_fu_235_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state5 => 
                if (((exitcond_fu_247_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (grp_update_knn_fu_161_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state8 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state8) and (grp_knn_vote_fu_156_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);

    ap_done_assign_proc : process(grp_knn_vote_fu_156_ap_done, ap_CS_fsm_state8)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state8) and (grp_knn_vote_fu_156_ap_done = ap_const_logic_1))) then 
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


    ap_ready_assign_proc : process(grp_knn_vote_fu_156_ap_done, ap_CS_fsm_state8)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state8) and (grp_knn_vote_fu_156_ap_done = ap_const_logic_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= grp_knn_vote_fu_156_ap_return;
    exitcond1_fu_171_p2 <= "1" when (i_reg_100 = ap_const_lv4_A) else "0";
    exitcond2_fu_235_p2 <= "1" when (i4_reg_122 = ap_const_lv11_708) else "0";
    exitcond3_fu_205_p2 <= "1" when (k_reg_111 = ap_const_lv3_5) else "0";
    exitcond_fu_247_p2 <= "1" when (j_reg_133 = ap_const_lv4_A) else "0";
    grp_knn_vote_fu_156_ap_start <= ap_reg_grp_knn_vote_fu_156_ap_start;
    grp_update_knn_fu_161_ap_start <= ap_reg_grp_update_knn_fu_161_ap_start;
    i4_cast3_fu_231_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i4_reg_122),15));
    i_2_fu_177_p2 <= std_logic_vector(unsigned(i_reg_100) + unsigned(ap_const_lv4_1));
    i_3_fu_241_p2 <= std_logic_vector(unsigned(i4_reg_122) + unsigned(ap_const_lv11_1));
    j_2_fu_253_p2 <= std_logic_vector(unsigned(j_reg_133) + unsigned(ap_const_lv4_1));
    k_1_fu_211_p2 <= std_logic_vector(unsigned(k_reg_111) + unsigned(ap_const_lv3_1));

    knn_set_V_address0_assign_proc : process(ap_CS_fsm_state3, grp_knn_vote_fu_156_knn_set_V_address0, grp_update_knn_fu_161_min_distances_V_address0, ap_CS_fsm_state7, ap_CS_fsm_state8, tmp_9_cast_fu_226_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            knn_set_V_address0 <= tmp_9_cast_fu_226_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            knn_set_V_address0 <= grp_update_knn_fu_161_min_distances_V_address0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            knn_set_V_address0 <= grp_knn_vote_fu_156_knn_set_V_address0;
        else 
            knn_set_V_address0 <= "XXXXXX";
        end if; 
    end process;


    knn_set_V_ce0_assign_proc : process(ap_CS_fsm_state3, grp_knn_vote_fu_156_knn_set_V_ce0, grp_update_knn_fu_161_min_distances_V_ce0, ap_CS_fsm_state7, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            knn_set_V_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            knn_set_V_ce0 <= grp_update_knn_fu_161_min_distances_V_ce0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            knn_set_V_ce0 <= grp_knn_vote_fu_156_knn_set_V_ce0;
        else 
            knn_set_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    knn_set_V_ce1_assign_proc : process(grp_update_knn_fu_161_min_distances_V_ce1, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            knn_set_V_ce1 <= grp_update_knn_fu_161_min_distances_V_ce1;
        else 
            knn_set_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    knn_set_V_d0_assign_proc : process(ap_CS_fsm_state3, grp_update_knn_fu_161_min_distances_V_d0, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            knn_set_V_d0 <= ap_const_lv6_32;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            knn_set_V_d0 <= grp_update_knn_fu_161_min_distances_V_d0;
        else 
            knn_set_V_d0 <= "XXXXXX";
        end if; 
    end process;


    knn_set_V_we0_assign_proc : process(ap_CS_fsm_state3, grp_update_knn_fu_161_min_distances_V_we0, exitcond3_fu_205_p2, ap_CS_fsm_state7)
    begin
        if (((exitcond3_fu_205_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            knn_set_V_we0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            knn_set_V_we0 <= grp_update_knn_fu_161_min_distances_V_we0;
        else 
            knn_set_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    knn_set_V_we1_assign_proc : process(grp_update_knn_fu_161_min_distances_V_we1, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            knn_set_V_we1 <= grp_update_knn_fu_161_min_distances_V_we1;
        else 
            knn_set_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

    next_mul_fu_259_p2 <= std_logic_vector(unsigned(phi_mul_reg_145) + unsigned(ap_const_lv15_708));
    p_shl_cast_fu_195_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_7_fu_187_p3),7));
    tmp_5_fu_265_p2 <= std_logic_vector(unsigned(i4_cast3_reg_301) + unsigned(phi_mul_reg_145));
    tmp_6_fu_270_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_5_fu_265_p2),64));
    tmp_7_fu_187_p3 <= (i_reg_100 & ap_const_lv2_0);
    tmp_8_fu_199_p2 <= std_logic_vector(unsigned(tmp_cast_fu_183_p1) + unsigned(p_shl_cast_fu_195_p1));
    tmp_9_cast_fu_226_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_9_fu_221_p2),64));
    tmp_9_fu_221_p2 <= std_logic_vector(unsigned(tmp_8_reg_288) + unsigned(tmp_cast_6_fu_217_p1));
    tmp_cast_6_fu_217_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(k_reg_111),7));
    tmp_cast_fu_183_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_100),7));
    training_data_V_address0 <= tmp_6_fu_270_p1(15 - 1 downto 0);

    training_data_V_ce0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            training_data_V_ce0 <= ap_const_logic_1;
        else 
            training_data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

end behav;
