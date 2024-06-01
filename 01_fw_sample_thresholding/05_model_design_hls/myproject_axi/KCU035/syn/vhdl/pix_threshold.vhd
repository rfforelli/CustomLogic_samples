-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pix_threshold is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    StreamIn_V_Data_V_dout : IN STD_LOGIC_VECTOR (127 downto 0);
    StreamIn_V_Data_V_empty_n : IN STD_LOGIC;
    StreamIn_V_Data_V_read : OUT STD_LOGIC;
    StreamIn_V_User_V_dout : IN STD_LOGIC_VECTOR (3 downto 0);
    StreamIn_V_User_V_empty_n : IN STD_LOGIC;
    StreamIn_V_User_V_read : OUT STD_LOGIC;
    StreamOut_V_Data_V_din : OUT STD_LOGIC_VECTOR (127 downto 0);
    StreamOut_V_Data_V_full_n : IN STD_LOGIC;
    StreamOut_V_Data_V_write : OUT STD_LOGIC;
    StreamOut_V_User_V_din : OUT STD_LOGIC_VECTOR (3 downto 0);
    StreamOut_V_User_V_full_n : IN STD_LOGIC;
    StreamOut_V_User_V_write : OUT STD_LOGIC );
end;


architecture behav of pix_threshold is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv14_0 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000000";
    constant ap_const_lv14_2800 : STD_LOGIC_VECTOR (13 downto 0) := "10100000000000";
    constant ap_const_lv14_1 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000001";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_1B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011011";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_2F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101111";
    constant ap_const_lv32_2B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101011";
    constant ap_const_lv32_30 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_3B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111011";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv32_4F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001001111";
    constant ap_const_lv32_4B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001001011";
    constant ap_const_lv32_50 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001010000";
    constant ap_const_lv32_5F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001011111";
    constant ap_const_lv32_5B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001011011";
    constant ap_const_lv32_60 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001100000";
    constant ap_const_lv32_6F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001101111";
    constant ap_const_lv32_6B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001101011";
    constant ap_const_lv32_70 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001110000";
    constant ap_const_lv32_7F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001111111";
    constant ap_const_lv32_7B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001111011";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal StreamIn_V_Data_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal tmp_reg_468 : STD_LOGIC_VECTOR (0 downto 0);
    signal StreamIn_V_User_V_blk_n : STD_LOGIC;
    signal StreamOut_V_Data_V_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal tmp_reg_468_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal StreamOut_V_User_V_blk_n : STD_LOGIC;
    signal i_reg_166 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_fu_177_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal StreamIn_V_Data_V0_status : STD_LOGIC;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal StreamOut_V_Data_V1_status : STD_LOGIC;
    signal ap_block_state4_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal i_2_fu_183_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal tmp_User_V_reg_477 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_8_fu_197_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_8_reg_482 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp_fu_211_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_reg_487 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_1_reg_492 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp3_fu_237_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp3_reg_497 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_2_reg_502 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp6_fu_263_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp6_reg_507 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_3_reg_512 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp9_fu_289_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp9_reg_517 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_4_reg_522 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp1_fu_315_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp1_reg_527 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_5_reg_532 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp2_fu_341_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp2_reg_537 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_6_reg_542 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp4_fu_367_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp4_reg_547 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_7_reg_552 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp5_fu_393_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp5_reg_557 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal StreamIn_V_Data_V0_update : STD_LOGIC;
    signal StreamOut_V_Data_V1_update : STD_LOGIC;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp_9_fu_201_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_10_fu_227_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_11_fu_253_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_12_fu_279_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_13_fu_305_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_14_fu_331_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_15_fu_357_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_16_fu_383_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_V_7_trunc_fu_441_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_V_6_trunc_fu_435_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_V_5_trunc_fu_429_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_V_4_trunc_fu_423_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_V_3_trunc_fu_417_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_V_2_trunc_fu_411_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_V_1_trunc_fu_405_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_V_0_trunc_fu_399_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


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


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_reg_166_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_fu_177_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                i_reg_166 <= i_2_fu_183_p2;
            elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_reg_166 <= ap_const_lv14_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_reg_468 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp1_reg_527 <= icmp1_fu_315_p2;
                icmp2_reg_537 <= icmp2_fu_341_p2;
                icmp3_reg_497 <= icmp3_fu_237_p2;
                icmp4_reg_547 <= icmp4_fu_367_p2;
                icmp5_reg_557 <= icmp5_fu_393_p2;
                icmp6_reg_507 <= icmp6_fu_263_p2;
                icmp9_reg_517 <= icmp9_fu_289_p2;
                icmp_reg_487 <= icmp_fu_211_p2;
                p_Result_1_reg_492 <= StreamIn_V_Data_V_dout(31 downto 16);
                p_Result_2_reg_502 <= StreamIn_V_Data_V_dout(47 downto 32);
                p_Result_3_reg_512 <= StreamIn_V_Data_V_dout(63 downto 48);
                p_Result_4_reg_522 <= StreamIn_V_Data_V_dout(79 downto 64);
                p_Result_5_reg_532 <= StreamIn_V_Data_V_dout(95 downto 80);
                p_Result_6_reg_542 <= StreamIn_V_Data_V_dout(111 downto 96);
                p_Result_7_reg_552 <= StreamIn_V_Data_V_dout(127 downto 112);
                tmp_8_reg_482 <= tmp_8_fu_197_p1;
                tmp_User_V_reg_477 <= StreamIn_V_User_V_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_reg_468 <= tmp_fu_177_p2;
                tmp_reg_468_pp0_iter1_reg <= tmp_reg_468;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, tmp_fu_177_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((tmp_fu_177_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) and not(((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) or ((tmp_fu_177_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    StreamIn_V_Data_V0_status <= (StreamIn_V_User_V_empty_n and StreamIn_V_Data_V_empty_n);

    StreamIn_V_Data_V0_update_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_reg_468, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_reg_468 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            StreamIn_V_Data_V0_update <= ap_const_logic_1;
        else 
            StreamIn_V_Data_V0_update <= ap_const_logic_0;
        end if; 
    end process;


    StreamIn_V_Data_V_blk_n_assign_proc : process(StreamIn_V_Data_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, tmp_reg_468)
    begin
        if (((tmp_reg_468 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            StreamIn_V_Data_V_blk_n <= StreamIn_V_Data_V_empty_n;
        else 
            StreamIn_V_Data_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    StreamIn_V_Data_V_read <= StreamIn_V_Data_V0_update;

    StreamIn_V_User_V_blk_n_assign_proc : process(StreamIn_V_User_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, tmp_reg_468)
    begin
        if (((tmp_reg_468 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            StreamIn_V_User_V_blk_n <= StreamIn_V_User_V_empty_n;
        else 
            StreamIn_V_User_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    StreamIn_V_User_V_read <= StreamIn_V_Data_V0_update;
    StreamOut_V_Data_V1_status <= (StreamOut_V_User_V_full_n and StreamOut_V_Data_V_full_n);

    StreamOut_V_Data_V1_update_assign_proc : process(ap_enable_reg_pp0_iter2, tmp_reg_468_pp0_iter1_reg, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_reg_468_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            StreamOut_V_Data_V1_update <= ap_const_logic_1;
        else 
            StreamOut_V_Data_V1_update <= ap_const_logic_0;
        end if; 
    end process;


    StreamOut_V_Data_V_blk_n_assign_proc : process(StreamOut_V_Data_V_full_n, ap_block_pp0_stage0, ap_enable_reg_pp0_iter2, tmp_reg_468_pp0_iter1_reg)
    begin
        if (((tmp_reg_468_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            StreamOut_V_Data_V_blk_n <= StreamOut_V_Data_V_full_n;
        else 
            StreamOut_V_Data_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    StreamOut_V_Data_V_din <= (((((((tmp_V_7_trunc_fu_441_p3 & tmp_V_6_trunc_fu_435_p3) & tmp_V_5_trunc_fu_429_p3) & tmp_V_4_trunc_fu_423_p3) & tmp_V_3_trunc_fu_417_p3) & tmp_V_2_trunc_fu_411_p3) & tmp_V_1_trunc_fu_405_p3) & tmp_V_0_trunc_fu_399_p3);
    StreamOut_V_Data_V_write <= StreamOut_V_Data_V1_update;

    StreamOut_V_User_V_blk_n_assign_proc : process(StreamOut_V_User_V_full_n, ap_block_pp0_stage0, ap_enable_reg_pp0_iter2, tmp_reg_468_pp0_iter1_reg)
    begin
        if (((tmp_reg_468_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            StreamOut_V_User_V_blk_n <= StreamOut_V_User_V_full_n;
        else 
            StreamOut_V_User_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    StreamOut_V_User_V_din <= tmp_User_V_reg_477;
    StreamOut_V_User_V_write <= StreamOut_V_Data_V1_update;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state5 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter1, tmp_reg_468, ap_enable_reg_pp0_iter2, tmp_reg_468_pp0_iter1_reg, StreamIn_V_Data_V0_status, StreamOut_V_Data_V1_status)
    begin
                ap_block_pp0_stage0_01001 <= (((tmp_reg_468_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_logic_0 = StreamOut_V_Data_V1_status) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((tmp_reg_468 = ap_const_lv1_0) and (ap_const_logic_0 = StreamIn_V_Data_V0_status) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, tmp_reg_468, ap_enable_reg_pp0_iter2, tmp_reg_468_pp0_iter1_reg, StreamIn_V_Data_V0_status, StreamOut_V_Data_V1_status)
    begin
                ap_block_pp0_stage0_11001 <= (((tmp_reg_468_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_logic_0 = StreamOut_V_Data_V1_status) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((tmp_reg_468 = ap_const_lv1_0) and (ap_const_logic_0 = StreamIn_V_Data_V0_status) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, tmp_reg_468, ap_enable_reg_pp0_iter2, tmp_reg_468_pp0_iter1_reg, StreamIn_V_Data_V0_status, StreamOut_V_Data_V1_status)
    begin
                ap_block_pp0_stage0_subdone <= (((tmp_reg_468_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_logic_0 = StreamOut_V_Data_V1_status) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((tmp_reg_468 = ap_const_lv1_0) and (ap_const_logic_0 = StreamIn_V_Data_V0_status) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter1_assign_proc : process(tmp_reg_468, StreamIn_V_Data_V0_status)
    begin
                ap_block_state3_pp0_stage0_iter1 <= ((tmp_reg_468 = ap_const_lv1_0) and (ap_const_logic_0 = StreamIn_V_Data_V0_status));
    end process;


    ap_block_state4_pp0_stage0_iter2_assign_proc : process(tmp_reg_468_pp0_iter1_reg, StreamOut_V_Data_V1_status)
    begin
                ap_block_state4_pp0_stage0_iter2 <= ((tmp_reg_468_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_logic_0 = StreamOut_V_Data_V1_status));
    end process;


    ap_condition_pp0_exit_iter0_state2_assign_proc : process(tmp_fu_177_p2)
    begin
        if ((tmp_fu_177_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;
    i_2_fu_183_p2 <= std_logic_vector(unsigned(i_reg_166) + unsigned(ap_const_lv14_1));
    icmp1_fu_315_p2 <= "0" when (tmp_13_fu_305_p4 = ap_const_lv5_0) else "1";
    icmp2_fu_341_p2 <= "0" when (tmp_14_fu_331_p4 = ap_const_lv5_0) else "1";
    icmp3_fu_237_p2 <= "0" when (tmp_10_fu_227_p4 = ap_const_lv5_0) else "1";
    icmp4_fu_367_p2 <= "0" when (tmp_15_fu_357_p4 = ap_const_lv5_0) else "1";
    icmp5_fu_393_p2 <= "0" when (tmp_16_fu_383_p4 = ap_const_lv5_0) else "1";
    icmp6_fu_263_p2 <= "0" when (tmp_11_fu_253_p4 = ap_const_lv5_0) else "1";
    icmp9_fu_289_p2 <= "0" when (tmp_12_fu_279_p4 = ap_const_lv5_0) else "1";
    icmp_fu_211_p2 <= "0" when (tmp_9_fu_201_p4 = ap_const_lv5_0) else "1";

    internal_ap_ready_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

    tmp_10_fu_227_p4 <= StreamIn_V_Data_V_dout(31 downto 27);
    tmp_11_fu_253_p4 <= StreamIn_V_Data_V_dout(47 downto 43);
    tmp_12_fu_279_p4 <= StreamIn_V_Data_V_dout(63 downto 59);
    tmp_13_fu_305_p4 <= StreamIn_V_Data_V_dout(79 downto 75);
    tmp_14_fu_331_p4 <= StreamIn_V_Data_V_dout(95 downto 91);
    tmp_15_fu_357_p4 <= StreamIn_V_Data_V_dout(111 downto 107);
    tmp_16_fu_383_p4 <= StreamIn_V_Data_V_dout(127 downto 123);
    tmp_8_fu_197_p1 <= StreamIn_V_Data_V_dout(16 - 1 downto 0);
    tmp_9_fu_201_p4 <= StreamIn_V_Data_V_dout(15 downto 11);
    tmp_V_0_trunc_fu_399_p3 <= 
        tmp_8_reg_482 when (icmp_reg_487(0) = '1') else 
        ap_const_lv16_0;
    tmp_V_1_trunc_fu_405_p3 <= 
        p_Result_1_reg_492 when (icmp3_reg_497(0) = '1') else 
        ap_const_lv16_0;
    tmp_V_2_trunc_fu_411_p3 <= 
        p_Result_2_reg_502 when (icmp6_reg_507(0) = '1') else 
        ap_const_lv16_0;
    tmp_V_3_trunc_fu_417_p3 <= 
        p_Result_3_reg_512 when (icmp9_reg_517(0) = '1') else 
        ap_const_lv16_0;
    tmp_V_4_trunc_fu_423_p3 <= 
        p_Result_4_reg_522 when (icmp1_reg_527(0) = '1') else 
        ap_const_lv16_0;
    tmp_V_5_trunc_fu_429_p3 <= 
        p_Result_5_reg_532 when (icmp2_reg_537(0) = '1') else 
        ap_const_lv16_0;
    tmp_V_6_trunc_fu_435_p3 <= 
        p_Result_6_reg_542 when (icmp4_reg_547(0) = '1') else 
        ap_const_lv16_0;
    tmp_V_7_trunc_fu_441_p3 <= 
        p_Result_7_reg_552 when (icmp5_reg_557(0) = '1') else 
        ap_const_lv16_0;
    tmp_fu_177_p2 <= "1" when (i_reg_166 = ap_const_lv14_2800) else "0";
end behav;