-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "01/21/2019 15:37:42"

-- 
-- Device: Altera EPM570T144I5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	interlock IS
    PORT (
	clk : IN std_logic;
	d1 : IN std_logic_vector(5 DOWNTO 0);
	d2 : IN std_logic_vector(5 DOWNTO 0);
	d3 : IN std_logic_vector(5 DOWNTO 0);
	d4 : IN std_logic_vector(5 DOWNTO 0);
	d5 : IN std_logic_vector(5 DOWNTO 0);
	d6 : IN std_logic_vector(5 DOWNTO 0);
	d7 : IN std_logic_vector(5 DOWNTO 0);
	d8 : IN std_logic_vector(5 DOWNTO 0);
	s1 : BUFFER std_logic_vector(5 DOWNTO 0);
	s2 : BUFFER std_logic_vector(5 DOWNTO 0);
	s3 : BUFFER std_logic_vector(5 DOWNTO 0);
	s4 : BUFFER std_logic_vector(5 DOWNTO 0);
	s5 : BUFFER std_logic_vector(5 DOWNTO 0);
	s6 : BUFFER std_logic_vector(5 DOWNTO 0);
	s7 : BUFFER std_logic_vector(5 DOWNTO 0);
	s8 : BUFFER std_logic_vector(5 DOWNTO 0)
	);
END interlock;

-- Design Ports Information


ARCHITECTURE structure OF interlock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_d1 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_d2 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_d3 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_d4 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_d5 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_d6 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_d7 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_d8 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_s1 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_s2 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_s3 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_s4 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_s5 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_s6 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_s7 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_s8 : std_logic_vector(5 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux41~68_combout\ : std_logic;
SIGNAL \Mux37~2\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux41~40_combout\ : std_logic;
SIGNAL \Mux41~38_combout\ : std_logic;
SIGNAL \Mux41~72_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux38~0\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux41~73_combout\ : std_logic;
SIGNAL \Mux41~74_combout\ : std_logic;
SIGNAL \Mux41~70_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux39~2\ : std_logic;
SIGNAL \Mux41~75\ : std_logic;
SIGNAL \Mux41~76_combout\ : std_logic;
SIGNAL \Mux41~71_combout\ : std_logic;
SIGNAL \Mux41~62\ : std_logic;
SIGNAL \Mux41~63_combout\ : std_logic;
SIGNAL \Mux41~58\ : std_logic;
SIGNAL \Mux41~67\ : std_logic;
SIGNAL \Mux41~59\ : std_logic;
SIGNAL \Mux41~60\ : std_logic;
SIGNAL \Mux41~61_combout\ : std_logic;
SIGNAL \Mux41~64_combout\ : std_logic;
SIGNAL \Mux41~65_combout\ : std_logic;
SIGNAL \Mux41~66_combout\ : std_logic;
SIGNAL \Mux40~0\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux36~1\ : std_logic;
SIGNAL \Mux41~55_combout\ : std_logic;
SIGNAL \Mux41~54_combout\ : std_logic;
SIGNAL \Mux41~53_combout\ : std_logic;
SIGNAL \Mux41~56_combout\ : std_logic;
SIGNAL \Mux41~77\ : std_logic;
SIGNAL \Mux41~78_combout\ : std_logic;
SIGNAL \Mux41~69_combout\ : std_logic;
SIGNAL \Mux41~50_combout\ : std_logic;
SIGNAL \Mux41~49_combout\ : std_logic;
SIGNAL \Mux41~51_combout\ : std_logic;
SIGNAL \Mux41~52_combout\ : std_logic;
SIGNAL \Mux41~45_combout\ : std_logic;
SIGNAL \Mux41~46_combout\ : std_logic;
SIGNAL \Mux41~47_combout\ : std_logic;
SIGNAL \Mux41~48_combout\ : std_logic;
SIGNAL \Mux41~57_combout\ : std_logic;
SIGNAL \s1[0]~reg0_regout\ : std_logic;
SIGNAL \s1[1]~reg0_regout\ : std_logic;
SIGNAL \s1[2]~reg0_regout\ : std_logic;
SIGNAL \s1[3]~reg0_regout\ : std_logic;
SIGNAL \s1[4]~reg0_regout\ : std_logic;
SIGNAL \s1[5]~reg0_regout\ : std_logic;
SIGNAL \Mux79~1_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Mux83~73_combout\ : std_logic;
SIGNAL \Mux83~74_combout\ : std_logic;
SIGNAL \Mux83~70_combout\ : std_logic;
SIGNAL \Mux83~40_combout\ : std_logic;
SIGNAL \Mux83~38_combout\ : std_logic;
SIGNAL \Mux83~72_combout\ : std_logic;
SIGNAL \Mux81~0_combout\ : std_logic;
SIGNAL \Mux83~75\ : std_logic;
SIGNAL \Mux83~76_combout\ : std_logic;
SIGNAL \Mux83~71_combout\ : std_logic;
SIGNAL \Mux46~1_combout\ : std_logic;
SIGNAL \Mux46~2_combout\ : std_logic;
SIGNAL \Mux79~0_combout\ : std_logic;
SIGNAL \Mux80~0\ : std_logic;
SIGNAL \Mux83~62\ : std_logic;
SIGNAL \Mux83~63_combout\ : std_logic;
SIGNAL \Mux83~67\ : std_logic;
SIGNAL \Mux83~59\ : std_logic;
SIGNAL \Mux83~60\ : std_logic;
SIGNAL \Mux83~58\ : std_logic;
SIGNAL \Mux83~61_combout\ : std_logic;
SIGNAL \Mux83~64_combout\ : std_logic;
SIGNAL \Mux83~65_combout\ : std_logic;
SIGNAL \Mux83~66_combout\ : std_logic;
SIGNAL \Mux82~0\ : std_logic;
SIGNAL \Mux52~1_combout\ : std_logic;
SIGNAL \Mux83~68_combout\ : std_logic;
SIGNAL \Mux79~2\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux81~1_combout\ : std_logic;
SIGNAL \Mux81~2\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \Mux78~0_combout\ : std_logic;
SIGNAL \Mux78~1\ : std_logic;
SIGNAL \Mux83~53_combout\ : std_logic;
SIGNAL \Mux83~55_combout\ : std_logic;
SIGNAL \Mux83~54_combout\ : std_logic;
SIGNAL \Mux83~56_combout\ : std_logic;
SIGNAL \Mux83~45_combout\ : std_logic;
SIGNAL \Mux83~46_combout\ : std_logic;
SIGNAL \Mux83~47_combout\ : std_logic;
SIGNAL \Mux83~48_combout\ : std_logic;
SIGNAL \Mux83~77\ : std_logic;
SIGNAL \Mux83~78_combout\ : std_logic;
SIGNAL \Mux83~69_combout\ : std_logic;
SIGNAL \Mux83~49_combout\ : std_logic;
SIGNAL \Mux83~50_combout\ : std_logic;
SIGNAL \Mux83~51_combout\ : std_logic;
SIGNAL \Mux83~52_combout\ : std_logic;
SIGNAL \Mux83~57_combout\ : std_logic;
SIGNAL \s2[0]~reg0_regout\ : std_logic;
SIGNAL \s2[1]~reg0_regout\ : std_logic;
SIGNAL \s2[2]~reg0_regout\ : std_logic;
SIGNAL \s2[3]~reg0_regout\ : std_logic;
SIGNAL \s2[4]~reg0_regout\ : std_logic;
SIGNAL \s2[5]~reg0_regout\ : std_logic;
SIGNAL \Mux121~1_combout\ : std_logic;
SIGNAL \Mux84~0_combout\ : std_logic;
SIGNAL \Mux125~40_combout\ : std_logic;
SIGNAL \Mux125~38_combout\ : std_logic;
SIGNAL \Mux125~72_combout\ : std_logic;
SIGNAL \Mux125~73_combout\ : std_logic;
SIGNAL \Mux125~74_combout\ : std_logic;
SIGNAL \Mux125~70_combout\ : std_logic;
SIGNAL \Mux123~0_combout\ : std_logic;
SIGNAL \Mux123~1_combout\ : std_logic;
SIGNAL \Mux84~1_combout\ : std_logic;
SIGNAL \Mux85~0_combout\ : std_logic;
SIGNAL \Mux123~2\ : std_logic;
SIGNAL \Mux94~0_combout\ : std_logic;
SIGNAL \Mux94~1_combout\ : std_logic;
SIGNAL \Mux125~68_combout\ : std_logic;
SIGNAL \Mux121~2\ : std_logic;
SIGNAL \Mux125~59\ : std_logic;
SIGNAL \Mux125~75\ : std_logic;
SIGNAL \Mux125~76_combout\ : std_logic;
SIGNAL \Mux125~71_combout\ : std_logic;
SIGNAL \Mux88~1_combout\ : std_logic;
SIGNAL \Mux88~2_combout\ : std_logic;
SIGNAL \Mux121~0_combout\ : std_logic;
SIGNAL \Mux122~0\ : std_logic;
SIGNAL \Mux125~62\ : std_logic;
SIGNAL \Mux125~63_combout\ : std_logic;
SIGNAL \Mux125~58\ : std_logic;
SIGNAL \Mux125~60\ : std_logic;
SIGNAL \Mux125~61_combout\ : std_logic;
SIGNAL \Mux125~64_combout\ : std_logic;
SIGNAL \Mux125~65_combout\ : std_logic;
SIGNAL \Mux125~66_combout\ : std_logic;
SIGNAL \Mux125~67\ : std_logic;
SIGNAL \Mux84~2_combout\ : std_logic;
SIGNAL \Mux124~0\ : std_logic;
SIGNAL \Mux88~0_combout\ : std_logic;
SIGNAL \Mux120~0_combout\ : std_logic;
SIGNAL \Mux120~1\ : std_logic;
SIGNAL \Mux125~49_combout\ : std_logic;
SIGNAL \Mux125~50_combout\ : std_logic;
SIGNAL \Mux125~51_combout\ : std_logic;
SIGNAL \Mux125~77\ : std_logic;
SIGNAL \Mux125~78_combout\ : std_logic;
SIGNAL \Mux125~69_combout\ : std_logic;
SIGNAL \Mux125~52_combout\ : std_logic;
SIGNAL \Mux125~45_combout\ : std_logic;
SIGNAL \Mux125~46_combout\ : std_logic;
SIGNAL \Mux125~47_combout\ : std_logic;
SIGNAL \Mux125~48_combout\ : std_logic;
SIGNAL \Mux125~54_combout\ : std_logic;
SIGNAL \Mux125~53_combout\ : std_logic;
SIGNAL \Mux125~55_combout\ : std_logic;
SIGNAL \Mux125~56_combout\ : std_logic;
SIGNAL \Mux125~57_combout\ : std_logic;
SIGNAL \s3[0]~reg0_regout\ : std_logic;
SIGNAL \s3[1]~reg0_regout\ : std_logic;
SIGNAL \s3[2]~reg0_regout\ : std_logic;
SIGNAL \s3[3]~reg0_regout\ : std_logic;
SIGNAL \s3[4]~reg0_regout\ : std_logic;
SIGNAL \s3[5]~reg0_regout\ : std_logic;
SIGNAL \Mux126~1_combout\ : std_logic;
SIGNAL \Mux136~0_combout\ : std_logic;
SIGNAL \Mux136~1_combout\ : std_logic;
SIGNAL \Mux167~68_combout\ : std_logic;
SIGNAL \Mux163~1_combout\ : std_logic;
SIGNAL \Mux163~2\ : std_logic;
SIGNAL \Mux167~73_combout\ : std_logic;
SIGNAL \Mux167~74_combout\ : std_logic;
SIGNAL \Mux167~70_combout\ : std_logic;
SIGNAL \Mux167~40_combout\ : std_logic;
SIGNAL \Mux167~38_combout\ : std_logic;
SIGNAL \Mux167~72_combout\ : std_logic;
SIGNAL \Mux165~0_combout\ : std_logic;
SIGNAL \Mux167~75\ : std_logic;
SIGNAL \Mux167~76_combout\ : std_logic;
SIGNAL \Mux167~71_combout\ : std_logic;
SIGNAL \Mux130~1_combout\ : std_logic;
SIGNAL \Mux130~2_combout\ : std_logic;
SIGNAL \Mux163~0_combout\ : std_logic;
SIGNAL \Mux164~0\ : std_logic;
SIGNAL \Mux167~62\ : std_logic;
SIGNAL \Mux167~63_combout\ : std_logic;
SIGNAL \Mux167~67\ : std_logic;
SIGNAL \Mux167~59\ : std_logic;
SIGNAL \Mux167~60\ : std_logic;
SIGNAL \Mux167~58\ : std_logic;
SIGNAL \Mux167~61_combout\ : std_logic;
SIGNAL \Mux167~64_combout\ : std_logic;
SIGNAL \Mux167~65_combout\ : std_logic;
SIGNAL \Mux167~66_combout\ : std_logic;
SIGNAL \Mux166~0\ : std_logic;
SIGNAL \Mux127~0_combout\ : std_logic;
SIGNAL \Mux165~1_combout\ : std_logic;
SIGNAL \Mux165~2\ : std_logic;
SIGNAL \Mux130~0_combout\ : std_logic;
SIGNAL \Mux126~2_combout\ : std_logic;
SIGNAL \Mux162~0_combout\ : std_logic;
SIGNAL \Mux162~1\ : std_logic;
SIGNAL \Mux126~0_combout\ : std_logic;
SIGNAL \Mux167~54_combout\ : std_logic;
SIGNAL \Mux167~55_combout\ : std_logic;
SIGNAL \Mux167~53_combout\ : std_logic;
SIGNAL \Mux167~56_combout\ : std_logic;
SIGNAL \Mux167~46_combout\ : std_logic;
SIGNAL \Mux167~47_combout\ : std_logic;
SIGNAL \Mux167~45_combout\ : std_logic;
SIGNAL \Mux167~48_combout\ : std_logic;
SIGNAL \Mux167~50_combout\ : std_logic;
SIGNAL \Mux167~49_combout\ : std_logic;
SIGNAL \Mux167~51_combout\ : std_logic;
SIGNAL \Mux167~77\ : std_logic;
SIGNAL \Mux167~78_combout\ : std_logic;
SIGNAL \Mux167~69_combout\ : std_logic;
SIGNAL \Mux167~52_combout\ : std_logic;
SIGNAL \Mux167~57_combout\ : std_logic;
SIGNAL \s4[0]~reg0_regout\ : std_logic;
SIGNAL \s4[1]~reg0_regout\ : std_logic;
SIGNAL \s4[2]~reg0_regout\ : std_logic;
SIGNAL \s4[3]~reg0_regout\ : std_logic;
SIGNAL \s4[4]~reg0_regout\ : std_logic;
SIGNAL \s4[5]~reg0_regout\ : std_logic;
SIGNAL \Mux205~1_combout\ : std_logic;
SIGNAL \Mux209~68_combout\ : std_logic;
SIGNAL \Mux178~0_combout\ : std_logic;
SIGNAL \Mux168~2_combout\ : std_logic;
SIGNAL \Mux209~73_combout\ : std_logic;
SIGNAL \Mux209~74_combout\ : std_logic;
SIGNAL \Mux209~70_combout\ : std_logic;
SIGNAL \Mux209~40_combout\ : std_logic;
SIGNAL \Mux209~38_combout\ : std_logic;
SIGNAL \Mux209~72_combout\ : std_logic;
SIGNAL \Mux207~0_combout\ : std_logic;
SIGNAL \Mux207~1_combout\ : std_logic;
SIGNAL \Mux169~0_combout\ : std_logic;
SIGNAL \Mux207~2\ : std_logic;
SIGNAL \Mux209~75\ : std_logic;
SIGNAL \Mux209~76_combout\ : std_logic;
SIGNAL \Mux209~71_combout\ : std_logic;
SIGNAL \Mux205~0_combout\ : std_logic;
SIGNAL \Mux172~0_combout\ : std_logic;
SIGNAL \Mux172~1_combout\ : std_logic;
SIGNAL \Mux172~2_combout\ : std_logic;
SIGNAL \Mux206~0\ : std_logic;
SIGNAL \Mux209~62\ : std_logic;
SIGNAL \Mux209~63_combout\ : std_logic;
SIGNAL \Mux209~58\ : std_logic;
SIGNAL \Mux209~67\ : std_logic;
SIGNAL \Mux209~59\ : std_logic;
SIGNAL \Mux209~60\ : std_logic;
SIGNAL \Mux209~61_combout\ : std_logic;
SIGNAL \Mux209~64_combout\ : std_logic;
SIGNAL \Mux209~65_combout\ : std_logic;
SIGNAL \Mux209~66_combout\ : std_logic;
SIGNAL \Mux208~0\ : std_logic;
SIGNAL \Mux178~1_combout\ : std_logic;
SIGNAL \Mux205~2\ : std_logic;
SIGNAL \Mux168~0_combout\ : std_logic;
SIGNAL \Mux204~0_combout\ : std_logic;
SIGNAL \Mux204~1\ : std_logic;
SIGNAL \Mux168~1_combout\ : std_logic;
SIGNAL \Mux209~53_combout\ : std_logic;
SIGNAL \Mux209~55_combout\ : std_logic;
SIGNAL \Mux209~54_combout\ : std_logic;
SIGNAL \Mux209~56_combout\ : std_logic;
SIGNAL \Mux209~49_combout\ : std_logic;
SIGNAL \Mux209~50_combout\ : std_logic;
SIGNAL \Mux209~51_combout\ : std_logic;
SIGNAL \Mux209~77\ : std_logic;
SIGNAL \Mux209~78_combout\ : std_logic;
SIGNAL \Mux209~69_combout\ : std_logic;
SIGNAL \Mux209~52_combout\ : std_logic;
SIGNAL \Mux209~45_combout\ : std_logic;
SIGNAL \Mux209~46_combout\ : std_logic;
SIGNAL \Mux209~47_combout\ : std_logic;
SIGNAL \Mux209~48_combout\ : std_logic;
SIGNAL \Mux209~57_combout\ : std_logic;
SIGNAL \s5[0]~reg0_regout\ : std_logic;
SIGNAL \s5[1]~reg0_regout\ : std_logic;
SIGNAL \s5[2]~reg0_regout\ : std_logic;
SIGNAL \s5[3]~reg0_regout\ : std_logic;
SIGNAL \s5[4]~reg0_regout\ : std_logic;
SIGNAL \s5[5]~reg0_regout\ : std_logic;
SIGNAL \Mux210~1_combout\ : std_logic;
SIGNAL \Mux210~2_combout\ : std_logic;
SIGNAL \Mux250~0\ : std_logic;
SIGNAL \Mux214~0_combout\ : std_logic;
SIGNAL \Mux214~1_combout\ : std_logic;
SIGNAL \Mux214~2_combout\ : std_logic;
SIGNAL \Mux247~0_combout\ : std_logic;
SIGNAL \Mux251~40_combout\ : std_logic;
SIGNAL \Mux251~38_combout\ : std_logic;
SIGNAL \Mux251~72_combout\ : std_logic;
SIGNAL \Mux248~0\ : std_logic;
SIGNAL \Mux251~59\ : std_logic;
SIGNAL \Mux251~55_combout\ : std_logic;
SIGNAL \Mux251~53_combout\ : std_logic;
SIGNAL \Mux251~54_combout\ : std_logic;
SIGNAL \Mux251~56_combout\ : std_logic;
SIGNAL \Mux251~45_combout\ : std_logic;
SIGNAL \Mux251~46_combout\ : std_logic;
SIGNAL \Mux251~47_combout\ : std_logic;
SIGNAL \Mux251~48_combout\ : std_logic;
SIGNAL \Mux251~77\ : std_logic;
SIGNAL \Mux251~78_combout\ : std_logic;
SIGNAL \Mux251~69_combout\ : std_logic;
SIGNAL \Mux251~49_combout\ : std_logic;
SIGNAL \Mux251~50_combout\ : std_logic;
SIGNAL \Mux251~51_combout\ : std_logic;
SIGNAL \Mux251~52_combout\ : std_logic;
SIGNAL \Mux251~57_combout\ : std_logic;
SIGNAL \Mux251~67\ : std_logic;
SIGNAL \Mux220~0_combout\ : std_logic;
SIGNAL \Mux220~1_combout\ : std_logic;
SIGNAL \Mux247~1_combout\ : std_logic;
SIGNAL \Mux251~68_combout\ : std_logic;
SIGNAL \Mux247~2\ : std_logic;
SIGNAL \Mux210~0_combout\ : std_logic;
SIGNAL \Mux246~0_combout\ : std_logic;
SIGNAL \Mux246~1\ : std_logic;
SIGNAL \Mux211~0_combout\ : std_logic;
SIGNAL \Mux249~1_combout\ : std_logic;
SIGNAL \Mux249~2\ : std_logic;
SIGNAL \Mux251~73_combout\ : std_logic;
SIGNAL \Mux251~74_combout\ : std_logic;
SIGNAL \Mux251~70_combout\ : std_logic;
SIGNAL \Mux249~0_combout\ : std_logic;
SIGNAL \Mux251~75\ : std_logic;
SIGNAL \Mux251~76_combout\ : std_logic;
SIGNAL \Mux251~71_combout\ : std_logic;
SIGNAL \Mux251~62\ : std_logic;
SIGNAL \Mux251~63_combout\ : std_logic;
SIGNAL \Mux251~58\ : std_logic;
SIGNAL \Mux251~60\ : std_logic;
SIGNAL \Mux251~61_combout\ : std_logic;
SIGNAL \Mux251~64_combout\ : std_logic;
SIGNAL \Mux251~65_combout\ : std_logic;
SIGNAL \Mux251~66_combout\ : std_logic;
SIGNAL \s6[0]~reg0_regout\ : std_logic;
SIGNAL \s6[1]~reg0_regout\ : std_logic;
SIGNAL \s6[2]~reg0_regout\ : std_logic;
SIGNAL \s6[3]~reg0_regout\ : std_logic;
SIGNAL \s6[4]~reg0_regout\ : std_logic;
SIGNAL \s6[5]~reg0_regout\ : std_logic;
SIGNAL \Mux262~0_combout\ : std_logic;
SIGNAL \Mux256~0_combout\ : std_logic;
SIGNAL \Mux262~1_combout\ : std_logic;
SIGNAL \Mux289~1_combout\ : std_logic;
SIGNAL \Mux293~68_combout\ : std_logic;
SIGNAL \Mux289~2\ : std_logic;
SIGNAL \Mux293~59\ : std_logic;
SIGNAL \Mux293~40_combout\ : std_logic;
SIGNAL \Mux293~38_combout\ : std_logic;
SIGNAL \Mux293~72_combout\ : std_logic;
SIGNAL \Mux293~73_combout\ : std_logic;
SIGNAL \Mux293~74_combout\ : std_logic;
SIGNAL \Mux293~70_combout\ : std_logic;
SIGNAL \Mux291~0_combout\ : std_logic;
SIGNAL \Mux293~75\ : std_logic;
SIGNAL \Mux293~76_combout\ : std_logic;
SIGNAL \Mux293~71_combout\ : std_logic;
SIGNAL \Mux289~0_combout\ : std_logic;
SIGNAL \Mux256~1_combout\ : std_logic;
SIGNAL \Mux256~2_combout\ : std_logic;
SIGNAL \Mux290~0\ : std_logic;
SIGNAL \Mux293~62\ : std_logic;
SIGNAL \Mux293~63_combout\ : std_logic;
SIGNAL \Mux293~60\ : std_logic;
SIGNAL \Mux293~58\ : std_logic;
SIGNAL \Mux293~61_combout\ : std_logic;
SIGNAL \Mux293~64_combout\ : std_logic;
SIGNAL \Mux293~65_combout\ : std_logic;
SIGNAL \Mux293~66_combout\ : std_logic;
SIGNAL \Mux293~67\ : std_logic;
SIGNAL \Mux252~2_combout\ : std_logic;
SIGNAL \Mux292~0\ : std_logic;
SIGNAL \Mux253~0_combout\ : std_logic;
SIGNAL \Mux291~1_combout\ : std_logic;
SIGNAL \Mux291~2\ : std_logic;
SIGNAL \Mux252~0_combout\ : std_logic;
SIGNAL \Mux288~0_combout\ : std_logic;
SIGNAL \Mux288~1\ : std_logic;
SIGNAL \Mux252~1_combout\ : std_logic;
SIGNAL \Mux293~55_combout\ : std_logic;
SIGNAL \Mux293~54_combout\ : std_logic;
SIGNAL \Mux293~53_combout\ : std_logic;
SIGNAL \Mux293~56_combout\ : std_logic;
SIGNAL \Mux293~49_combout\ : std_logic;
SIGNAL \Mux293~50_combout\ : std_logic;
SIGNAL \Mux293~51_combout\ : std_logic;
SIGNAL \Mux293~77\ : std_logic;
SIGNAL \Mux293~78_combout\ : std_logic;
SIGNAL \Mux293~69_combout\ : std_logic;
SIGNAL \Mux293~52_combout\ : std_logic;
SIGNAL \Mux293~46_combout\ : std_logic;
SIGNAL \Mux293~47_combout\ : std_logic;
SIGNAL \Mux293~45_combout\ : std_logic;
SIGNAL \Mux293~48_combout\ : std_logic;
SIGNAL \Mux293~57_combout\ : std_logic;
SIGNAL \s7[0]~reg0_regout\ : std_logic;
SIGNAL \s7[1]~reg0_regout\ : std_logic;
SIGNAL \s7[2]~reg0_regout\ : std_logic;
SIGNAL \s7[3]~reg0_regout\ : std_logic;
SIGNAL \s7[4]~reg0_regout\ : std_logic;
SIGNAL \s7[5]~reg0_regout\ : std_logic;
SIGNAL \Mux335~68_combout\ : std_logic;
SIGNAL \Mux331~1_combout\ : std_logic;
SIGNAL \Mux304~0_combout\ : std_logic;
SIGNAL \Mux304~1_combout\ : std_logic;
SIGNAL \Mux331~2\ : std_logic;
SIGNAL \Mux298~1_combout\ : std_logic;
SIGNAL \Mux298~2_combout\ : std_logic;
SIGNAL \Mux331~0_combout\ : std_logic;
SIGNAL \Mux335~40_combout\ : std_logic;
SIGNAL \Mux335~38_combout\ : std_logic;
SIGNAL \Mux335~72_combout\ : std_logic;
SIGNAL \Mux332~0\ : std_logic;
SIGNAL \Mux294~1_combout\ : std_logic;
SIGNAL \Mux335~53_combout\ : std_logic;
SIGNAL \Mux335~55_combout\ : std_logic;
SIGNAL \Mux294~0_combout\ : std_logic;
SIGNAL \Mux335~54_combout\ : std_logic;
SIGNAL \Mux335~56_combout\ : std_logic;
SIGNAL \Mux335~45_combout\ : std_logic;
SIGNAL \Mux335~46_combout\ : std_logic;
SIGNAL \Mux335~47_combout\ : std_logic;
SIGNAL \Mux335~48_combout\ : std_logic;
SIGNAL \Mux294~2_combout\ : std_logic;
SIGNAL \Mux334~0\ : std_logic;
SIGNAL \Mux335~77\ : std_logic;
SIGNAL \Mux335~78_combout\ : std_logic;
SIGNAL \Mux335~69_combout\ : std_logic;
SIGNAL \Mux335~49_combout\ : std_logic;
SIGNAL \Mux335~50_combout\ : std_logic;
SIGNAL \Mux335~51_combout\ : std_logic;
SIGNAL \Mux335~52_combout\ : std_logic;
SIGNAL \Mux335~57_combout\ : std_logic;
SIGNAL \Mux335~67\ : std_logic;
SIGNAL \Mux335~59\ : std_logic;
SIGNAL \Mux295~0_combout\ : std_logic;
SIGNAL \Mux333~1_combout\ : std_logic;
SIGNAL \Mux333~2\ : std_logic;
SIGNAL \Mux298~0_combout\ : std_logic;
SIGNAL \Mux330~0_combout\ : std_logic;
SIGNAL \Mux330~1\ : std_logic;
SIGNAL \Mux335~73_combout\ : std_logic;
SIGNAL \Mux335~74_combout\ : std_logic;
SIGNAL \Mux335~70_combout\ : std_logic;
SIGNAL \Mux333~0_combout\ : std_logic;
SIGNAL \Mux335~75\ : std_logic;
SIGNAL \Mux335~76_combout\ : std_logic;
SIGNAL \Mux335~71_combout\ : std_logic;
SIGNAL \Mux335~62\ : std_logic;
SIGNAL \Mux335~63_combout\ : std_logic;
SIGNAL \Mux335~58\ : std_logic;
SIGNAL \Mux335~60\ : std_logic;
SIGNAL \Mux335~61_combout\ : std_logic;
SIGNAL \Mux335~64_combout\ : std_logic;
SIGNAL \Mux335~65_combout\ : std_logic;
SIGNAL \Mux335~66_combout\ : std_logic;
SIGNAL \s8[0]~reg0_regout\ : std_logic;
SIGNAL \s8[1]~reg0_regout\ : std_logic;
SIGNAL \s8[2]~reg0_regout\ : std_logic;
SIGNAL \s8[3]~reg0_regout\ : std_logic;
SIGNAL \s8[4]~reg0_regout\ : std_logic;
SIGNAL \s8[5]~reg0_regout\ : std_logic;
SIGNAL last_s1 : std_logic_vector(5 DOWNTO 0);
SIGNAL \d1~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL last_s2 : std_logic_vector(5 DOWNTO 0);
SIGNAL \d2~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL last_s3 : std_logic_vector(5 DOWNTO 0);
SIGNAL \d3~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL last_s4 : std_logic_vector(5 DOWNTO 0);
SIGNAL \d4~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \d5~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL last_s5 : std_logic_vector(5 DOWNTO 0);
SIGNAL \d6~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL last_s6 : std_logic_vector(5 DOWNTO 0);
SIGNAL \d7~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL last_s7 : std_logic_vector(5 DOWNTO 0);
SIGNAL \d8~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL last_s8 : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_d1 <= d1;
ww_d2 <= d2;
ww_d3 <= d3;
ww_d4 <= d4;
ww_d5 <= d5;
ww_d6 <= d6;
ww_d7 <= d7;
ww_d8 <= d8;
s1 <= ww_s1;
s2 <= ww_s2;
s3 <= ww_s3;
s4 <= ww_s4;
s5 <= ww_s5;
s6 <= ww_s6;
s7 <= ww_s7;
s8 <= ww_s8;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d1(0),
	combout => \d1~combout\(0));

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d1(1),
	combout => \d1~combout\(1));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d1(5),
	combout => \d1~combout\(5));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d1(4),
	combout => \d1~combout\(4));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d1(3),
	combout => \d1~combout\(3));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d1(2),
	combout => \d1~combout\(2));

-- Location: LC_X10_Y4_N4
\Mux37~1\ : maxii_lcell
-- Equation(s):
-- \Mux37~1_combout\ = (!\d1~combout\(1) & (!\d1~combout\(3) & (!\d1~combout\(0) & !\d1~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d1~combout\(1),
	datab => \d1~combout\(3),
	datac => \d1~combout\(0),
	datad => \d1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux37~1_combout\);

-- Location: LC_X10_Y2_N1
\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (((!last_s1(1) & !last_s1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s1(1),
	datad => last_s1(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X10_Y2_N6
\Mux10~0\ : maxii_lcell
-- Equation(s):
-- \Mux10~0_combout\ = (!last_s1(5) & (((!last_s1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s1(5),
	datac => last_s1(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~0_combout\);

-- Location: LC_X10_Y2_N2
\Mux10~1\ : maxii_lcell
-- Equation(s):
-- \Mux10~1_combout\ = (last_s1(0)) # (((!last_s1(4)) # (!\Mux10~0_combout\)) # (!\Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s1(0),
	datab => \Mux4~0_combout\,
	datac => \Mux10~0_combout\,
	datad => last_s1(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~1_combout\);

-- Location: LC_X10_Y4_N6
\Mux41~68\ : maxii_lcell
-- Equation(s):
-- \Mux41~68_combout\ = (((!\Mux36~0_combout\)) # (!\d1~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d1~combout\(5),
	datad => \Mux36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~68_combout\);

-- Location: LC_X10_Y4_N3
\s1[4]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux37~2\ = (\d1~combout\(4) & ((\Mux37~1_combout\ & ((\Mux41~68_combout\))) # (!\Mux37~1_combout\ & (!\Mux10~1_combout\))))
-- \s1[4]~reg0_regout\ = DFFEAS(\Mux37~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux37~1_combout\,
	datab => \Mux10~1_combout\,
	datac => \Mux41~68_combout\,
	datad => \d1~combout\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux37~2\,
	regout => \s1[4]~reg0_regout\);

-- Location: LC_X11_Y3_N2
\last_s1[4]\ : maxii_lcell
-- Equation(s):
-- \Mux41~59\ = (last_s1(2) & (!last_s1(3) & ((!\d1~combout\(4)) # (!last_s1[4])))) # (!last_s1(2) & (last_s1(3) $ (((last_s1[4] & \d1~combout\(4))))))
-- last_s1(4) = DFFEAS(\Mux41~59\, GLOBAL(\clk~combout\), VCC, , , \Mux37~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1666",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s1(2),
	datab => last_s1(3),
	datac => \Mux37~2\,
	datad => \d1~combout\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~59\,
	regout => last_s1(4));

-- Location: LC_X11_Y3_N5
\Mux4~1\ : maxii_lcell
-- Equation(s):
-- \Mux4~1_combout\ = ((!last_s1(4) & ((!last_s1(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => last_s1(4),
	datad => last_s1(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~1_combout\);

-- Location: LC_X10_Y2_N5
\Mux4~2\ : maxii_lcell
-- Equation(s):
-- \Mux4~2_combout\ = (last_s1(3) & (\Mux4~0_combout\ & (\Mux4~1_combout\ & !last_s1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s1(3),
	datab => \Mux4~0_combout\,
	datac => \Mux4~1_combout\,
	datad => last_s1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~2_combout\);

-- Location: LC_X11_Y1_N8
\Mux41~40\ : maxii_lcell
-- Equation(s):
-- \Mux41~40_combout\ = (last_s1(5) & ((last_s1(4)) # ((!\d1~combout\(5))))) # (!last_s1(5) & (((!\d1~combout\(4))) # (!last_s1(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9bdf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s1(5),
	datab => last_s1(4),
	datac => \d1~combout\(5),
	datad => \d1~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~40_combout\);

-- Location: LC_X11_Y1_N9
\Mux41~38\ : maxii_lcell
-- Equation(s):
-- \Mux41~38_combout\ = ((last_s1(3)) # ((\Mux41~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => last_s1(3),
	datad => \Mux41~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~38_combout\);

-- Location: LC_X11_Y1_N0
\Mux41~72\ : maxii_lcell
-- Equation(s):
-- \Mux41~72_combout\ = (last_s1(2)) # ((\Mux41~38_combout\) # ((last_s1(0)) # (last_s1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s1(2),
	datab => \Mux41~38_combout\,
	datac => last_s1(0),
	datad => last_s1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~72_combout\);

-- Location: LC_X12_Y3_N6
\Mux37~0\ : maxii_lcell
-- Equation(s):
-- \Mux37~0_combout\ = (!\d1~combout\(0) & (!\d1~combout\(1) & ((!\d1~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d1~combout\(0),
	datab => \d1~combout\(1),
	datad => \d1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux37~0_combout\);

-- Location: LC_X11_Y1_N6
\s1[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux38~0\ = (\d1~combout\(3) & ((\Mux37~0_combout\ & ((\Mux41~72_combout\))) # (!\Mux37~0_combout\ & (\Mux4~2_combout\))))
-- \s1[3]~reg0_regout\ = DFFEAS(\Mux38~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c088",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux4~2_combout\,
	datab => \d1~combout\(3),
	datac => \Mux41~72_combout\,
	datad => \Mux37~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux38~0\,
	regout => \s1[3]~reg0_regout\);

-- Location: LC_X10_Y3_N0
\last_s1[3]\ : maxii_lcell
-- Equation(s):
-- \Mux41~62\ = (last_s1(2) & ((last_s1(4)) # ((!last_s1[3] & !last_s1(5))))) # (!last_s1(2) & ((last_s1[3] & ((last_s1(4)) # (!last_s1(5)))) # (!last_s1[3] & ((last_s1(5))))))
-- last_s1(3) = DFFEAS(\Mux41~62\, GLOBAL(\clk~combout\), VCC, , , \Mux38~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdda",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s1(2),
	datab => last_s1(4),
	datac => \Mux38~0\,
	datad => last_s1(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~62\,
	regout => last_s1(3));

-- Location: LC_X11_Y1_N7
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = ((!last_s1(3) & (!last_s1(4) & !last_s1(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => last_s1(3),
	datac => last_s1(4),
	datad => last_s1(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X10_Y3_N3
\Mux0~1\ : maxii_lcell
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & (!last_s1(2) & (last_s1(1) & !last_s1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => last_s1(2),
	datac => last_s1(1),
	datad => last_s1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1_combout\);

-- Location: LC_X11_Y1_N1
\Mux41~73\ : maxii_lcell
-- Equation(s):
-- \Mux41~73_combout\ = (last_s1(4) & ((last_s1(5)) # ((!\d1~combout\(4))))) # (!last_s1(4) & (last_s1(5) $ ((\d1~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9ade",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s1(5),
	datab => last_s1(4),
	datac => \d1~combout\(5),
	datad => \d1~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~73_combout\);

-- Location: LC_X11_Y1_N2
\Mux41~74\ : maxii_lcell
-- Equation(s):
-- \Mux41~74_combout\ = (last_s1(3) & ((last_s1(4)) # (\d1~combout\(5) $ (\Mux41~73_combout\)))) # (!last_s1(3) & ((\Mux41~73_combout\) # ((!last_s1(4) & !\d1~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfc9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s1(4),
	datab => last_s1(3),
	datac => \d1~combout\(5),
	datad => \Mux41~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~74_combout\);

-- Location: LC_X11_Y1_N3
\Mux41~70\ : maxii_lcell
-- Equation(s):
-- \Mux41~70_combout\ = (last_s1(2)) # ((last_s1(1)) # ((last_s1(0)) # (\Mux41~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s1(2),
	datab => last_s1(1),
	datac => last_s1(0),
	datad => \Mux41~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~70_combout\);

-- Location: LC_X11_Y1_N5
\Mux39~0\ : maxii_lcell
-- Equation(s):
-- \Mux39~0_combout\ = ((\d1~combout\(3) & ((\Mux41~70_combout\))) # (!\d1~combout\(3) & (\Mux41~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d1~combout\(3),
	datac => \Mux41~72_combout\,
	datad => \Mux41~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux39~0_combout\);

-- Location: LC_X10_Y4_N5
\Mux39~1\ : maxii_lcell
-- Equation(s):
-- \Mux39~1_combout\ = (!\d1~combout\(0) & (((!\d1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d1~combout\(0),
	datac => \d1~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux39~1_combout\);

-- Location: LC_X10_Y3_N9
\Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux0~0_combout\ & (last_s1(2) & (!last_s1(1) & !last_s1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => last_s1(2),
	datac => last_s1(1),
	datad => last_s1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X10_Y3_N5
\s1[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux39~2\ = (\d1~combout\(2) & ((\Mux39~1_combout\ & ((\Mux39~0_combout\))) # (!\Mux39~1_combout\ & (\Mux1~0_combout\))))
-- \s1[2]~reg0_regout\ = DFFEAS(\Mux39~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e040",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux39~1_combout\,
	datab => \Mux1~0_combout\,
	datac => \d1~combout\(2),
	datad => \Mux39~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux39~2\,
	regout => \s1[2]~reg0_regout\);

-- Location: LC_X10_Y3_N7
\last_s1[2]\ : maxii_lcell
-- Equation(s):
-- \Mux41~75\ = ((last_s1(5) & ((last_s1[2]) # (!\d1~combout\(5)))) # (!last_s1(5) & (!last_s1[2])))
-- last_s1(2) = DFFEAS(\Mux41~75\, GLOBAL(\clk~combout\), VCC, , , \Mux39~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3cf",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => last_s1(5),
	datac => \Mux39~2\,
	datad => \d1~combout\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~75\,
	regout => last_s1(2));

-- Location: LC_X10_Y3_N8
\Mux41~76\ : maxii_lcell
-- Equation(s):
-- \Mux41~76_combout\ = (last_s1(4) & ((last_s1(5)) # ((!\Mux41~75\) # (!\d1~combout\(4))))) # (!last_s1(4) & (((\Mux41~75\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s1(5),
	datab => last_s1(4),
	datac => \d1~combout\(4),
	datad => \Mux41~75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~76_combout\);

-- Location: LC_X10_Y3_N6
\Mux41~71\ : maxii_lcell
-- Equation(s):
-- \Mux41~71_combout\ = (last_s1(1)) # ((last_s1(0)) # ((last_s1(3)) # (\Mux41~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s1(1),
	datab => last_s1(0),
	datac => last_s1(3),
	datad => \Mux41~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~71_combout\);

-- Location: LC_X11_Y3_N1
\Mux41~63\ : maxii_lcell
-- Equation(s):
-- \Mux41~63_combout\ = (last_s1(0) & (((last_s1(4))))) # (!last_s1(0) & ((last_s1(1) & ((last_s1(4)))) # (!last_s1(1) & (\Mux41~62\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~62\,
	datab => last_s1(0),
	datac => last_s1(1),
	datad => last_s1(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~63_combout\);

-- Location: LC_X11_Y3_N4
\last_s1[5]\ : maxii_lcell
-- Equation(s):
-- \Mux41~58\ = ((\d1~combout\(5)) # ((last_s1[5] & \d1~combout\(4))))
-- last_s1(5) = DFFEAS(\Mux41~58\, GLOBAL(\clk~combout\), VCC, , , \Mux36~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \d1~combout\(5),
	datac => \Mux36~1\,
	datad => \d1~combout\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~58\,
	regout => last_s1(5));

-- Location: LC_X12_Y3_N7
\s1[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux41~67\ = (\d1~combout\(0) & ((\d1~combout\(1) & (\Mux41~57_combout\)) # (!\d1~combout\(1) & ((\Mux41~66_combout\)))))
-- \s1[0]~reg0_regout\ = DFFEAS(\Mux41~67\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a280",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d1~combout\(0),
	datab => \d1~combout\(1),
	datac => \Mux41~57_combout\,
	datad => \Mux41~66_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~67\,
	regout => \s1[0]~reg0_regout\);

-- Location: LC_X12_Y3_N1
\last_s1[0]\ : maxii_lcell
-- Equation(s):
-- \Mux41~60\ = ((!last_s1(1) & (!last_s1[0] & \Mux41~59\)))
-- last_s1(0) = DFFEAS(\Mux41~60\, GLOBAL(\clk~combout\), VCC, , , \Mux41~67\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => last_s1(1),
	datac => \Mux41~67\,
	datad => \Mux41~59\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~60\,
	regout => last_s1(0));

-- Location: LC_X11_Y3_N9
\Mux41~61\ : maxii_lcell
-- Equation(s):
-- \Mux41~61_combout\ = (\Mux41~58\ & (\d1~combout\(4))) # (!\Mux41~58\ & (((!\d1~combout\(4) & !\Mux4~1_combout\)) # (!\Mux41~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "89dd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~58\,
	datab => \d1~combout\(4),
	datac => \Mux4~1_combout\,
	datad => \Mux41~60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~61_combout\);

-- Location: LC_X11_Y3_N0
\Mux41~64\ : maxii_lcell
-- Equation(s):
-- \Mux41~64_combout\ = (\d1~combout\(5) & ((\Mux41~63_combout\ & (last_s1(4))) # (!\Mux41~63_combout\ & ((!\Mux41~61_combout\) # (!last_s1(4)))))) # (!\d1~combout\(5) & (((\Mux41~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d7a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d1~combout\(5),
	datab => \Mux41~63_combout\,
	datac => last_s1(4),
	datad => \Mux41~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~64_combout\);

-- Location: LC_X12_Y3_N8
\Mux41~65\ : maxii_lcell
-- Equation(s):
-- \Mux41~65_combout\ = ((\d1~combout\(3) & ((\Mux41~64_combout\))) # (!\d1~combout\(3) & (\Mux41~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux41~71_combout\,
	datac => \d1~combout\(3),
	datad => \Mux41~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~65_combout\);

-- Location: LC_X12_Y3_N9
\Mux41~66\ : maxii_lcell
-- Equation(s):
-- \Mux41~66_combout\ = ((\d1~combout\(2) & ((\Mux41~65_combout\))) # (!\d1~combout\(2) & (\Mux39~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d1~combout\(2),
	datac => \Mux39~0_combout\,
	datad => \Mux41~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~66_combout\);

-- Location: LC_X12_Y3_N0
\s1[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux40~0\ = (\d1~combout\(1) & ((\d1~combout\(0) & (\Mux0~1_combout\)) # (!\d1~combout\(0) & ((\Mux41~66_combout\)))))
-- \s1[1]~reg0_regout\ = DFFEAS(\Mux40~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c480",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d1~combout\(0),
	datab => \d1~combout\(1),
	datac => \Mux0~1_combout\,
	datad => \Mux41~66_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux40~0\,
	regout => \s1[1]~reg0_regout\);

-- Location: LC_X11_Y3_N3
\last_s1[1]\ : maxii_lcell
-- Equation(s):
-- \Mux41~77\ = ((last_s1(5) & ((last_s1[1]) # (!\d1~combout\(5)))) # (!last_s1(5) & (!last_s1[1])))
-- last_s1(1) = DFFEAS(\Mux41~77\, GLOBAL(\clk~combout\), VCC, , , \Mux40~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3cf",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => last_s1(5),
	datac => \Mux40~0\,
	datad => \d1~combout\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~77\,
	regout => last_s1(1));

-- Location: LC_X10_Y2_N4
\Mux0~2\ : maxii_lcell
-- Equation(s):
-- \Mux0~2_combout\ = (((!last_s1(3) & !last_s1(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s1(3),
	datad => last_s1(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~2_combout\);

-- Location: LC_X10_Y2_N3
\Mux36~0\ : maxii_lcell
-- Equation(s):
-- \Mux36~0_combout\ = (!last_s1(0) & (last_s1(5) & (\Mux0~2_combout\ & \Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s1(0),
	datab => last_s1(5),
	datac => \Mux0~2_combout\,
	datad => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux36~0_combout\);

-- Location: LC_X10_Y4_N2
\s1[5]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux36~1\ = (\d1~combout\(5) & ((\Mux36~0_combout\) # ((!\d1~combout\(4) & \Mux37~1_combout\))))
-- \s1[5]~reg0_regout\ = DFFEAS(\Mux36~1\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d1~combout\(4),
	datab => \Mux36~0_combout\,
	datac => \Mux37~1_combout\,
	datad => \d1~combout\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux36~1\,
	regout => \s1[5]~reg0_regout\);

-- Location: LC_X11_Y1_N4
\Mux41~55\ : maxii_lcell
-- Equation(s):
-- \Mux41~55_combout\ = ((last_s1(2) $ (last_s1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s1(2),
	datad => last_s1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~55_combout\);

-- Location: LC_X10_Y2_N9
\Mux41~54\ : maxii_lcell
-- Equation(s):
-- \Mux41~54_combout\ = (\Mux0~2_combout\ & (last_s1(5) & ((!\Mux4~0_combout\) # (!\d1~combout\(5))))) # (!\Mux0~2_combout\ & ((last_s1(5)) # ((!\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4cdd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => last_s1(5),
	datac => \d1~combout\(5),
	datad => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~54_combout\);

-- Location: LC_X10_Y2_N7
\Mux41~53\ : maxii_lcell
-- Equation(s):
-- \Mux41~53_combout\ = (last_s1(0)) # ((last_s1(4) & ((last_s1(3)) # (!\d1~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s1(0),
	datab => \d1~combout\(4),
	datac => last_s1(3),
	datad => last_s1(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~53_combout\);

-- Location: LC_X10_Y2_N8
\Mux41~56\ : maxii_lcell
-- Equation(s):
-- \Mux41~56_combout\ = (\Mux41~54_combout\) # ((\Mux41~53_combout\) # ((!\Mux41~55_combout\ & \Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~55_combout\,
	datab => \Mux41~54_combout\,
	datac => \Mux0~0_combout\,
	datad => \Mux41~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~56_combout\);

-- Location: LC_X11_Y3_N6
\Mux41~78\ : maxii_lcell
-- Equation(s):
-- \Mux41~78_combout\ = (\Mux41~77\ & ((last_s1(5)) # ((!\d1~combout\(4)) # (!last_s1(4))))) # (!\Mux41~77\ & (((last_s1(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~77\,
	datab => last_s1(5),
	datac => last_s1(4),
	datad => \d1~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~78_combout\);

-- Location: LC_X12_Y3_N3
\Mux41~69\ : maxii_lcell
-- Equation(s):
-- \Mux41~69_combout\ = (last_s1(2)) # ((last_s1(3)) # ((\Mux41~78_combout\) # (last_s1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s1(2),
	datab => last_s1(3),
	datac => \Mux41~78_combout\,
	datad => last_s1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~69_combout\);

-- Location: LC_X10_Y3_N1
\Mux41~50\ : maxii_lcell
-- Equation(s):
-- \Mux41~50_combout\ = (last_s1(5) & ((last_s1(4)) # ((!\d1~combout\(5))))) # (!last_s1(5) & (last_s1(4) & (!\d1~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8cae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s1(5),
	datab => last_s1(4),
	datac => \d1~combout\(4),
	datad => \d1~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~50_combout\);

-- Location: LC_X10_Y3_N4
\Mux41~49\ : maxii_lcell
-- Equation(s):
-- \Mux41~49_combout\ = (last_s1(1) & ((last_s1(4)) # ((last_s1(3)) # (last_s1(5))))) # (!last_s1(1) & (last_s1(3) $ (((!last_s1(4) & !last_s1(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fae9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s1(1),
	datab => last_s1(4),
	datac => last_s1(3),
	datad => last_s1(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~49_combout\);

-- Location: LC_X10_Y3_N2
\Mux41~51\ : maxii_lcell
-- Equation(s):
-- \Mux41~51_combout\ = (last_s1(2)) # ((\Mux41~50_combout\) # ((\Mux41~49_combout\) # (last_s1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s1(2),
	datab => \Mux41~50_combout\,
	datac => \Mux41~49_combout\,
	datad => last_s1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~51_combout\);

-- Location: LC_X12_Y3_N4
\Mux41~52\ : maxii_lcell
-- Equation(s):
-- \Mux41~52_combout\ = (\d1~combout\(3) & (((\Mux41~51_combout\) # (\d1~combout\(2))))) # (!\d1~combout\(3) & (\Mux41~69_combout\ & ((!\d1~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~69_combout\,
	datab => \d1~combout\(3),
	datac => \Mux41~51_combout\,
	datad => \d1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~52_combout\);

-- Location: LC_X10_Y2_N0
\Mux41~45\ : maxii_lcell
-- Equation(s):
-- \Mux41~45_combout\ = (last_s1(5) & ((last_s1(4)) # ((!\d1~combout\(5)) # (!\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bf00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s1(4),
	datab => \Mux4~0_combout\,
	datac => \d1~combout\(5),
	datad => last_s1(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~45_combout\);

-- Location: LC_X11_Y3_N7
\Mux41~46\ : maxii_lcell
-- Equation(s):
-- \Mux41~46_combout\ = (last_s1(4) & ((last_s1(2)) # ((last_s1(1)) # (!\d1~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s1(2),
	datab => \d1~combout\(4),
	datac => last_s1(1),
	datad => last_s1(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~46_combout\);

-- Location: LC_X11_Y3_N8
\Mux41~47\ : maxii_lcell
-- Equation(s):
-- \Mux41~47_combout\ = (\Mux41~46_combout\) # ((\Mux4~1_combout\ & (last_s1(2) $ (!last_s1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff90",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s1(2),
	datab => last_s1(1),
	datac => \Mux4~1_combout\,
	datad => \Mux41~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~47_combout\);

-- Location: LC_X12_Y3_N2
\Mux41~48\ : maxii_lcell
-- Equation(s):
-- \Mux41~48_combout\ = (\Mux41~45_combout\) # ((last_s1(3)) # ((\Mux41~47_combout\) # (last_s1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~45_combout\,
	datab => last_s1(3),
	datac => \Mux41~47_combout\,
	datad => last_s1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~48_combout\);

-- Location: LC_X12_Y3_N5
\Mux41~57\ : maxii_lcell
-- Equation(s):
-- \Mux41~57_combout\ = (\d1~combout\(2) & ((\Mux41~52_combout\ & (\Mux41~56_combout\)) # (!\Mux41~52_combout\ & ((\Mux41~48_combout\))))) # (!\d1~combout\(2) & (((\Mux41~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bcb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~56_combout\,
	datab => \d1~combout\(2),
	datac => \Mux41~52_combout\,
	datad => \Mux41~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~57_combout\);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d2[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d2(0),
	combout => \d2~combout\(0));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d2[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d2(2),
	combout => \d2~combout\(2));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d2[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d2(5),
	combout => \d2~combout\(5));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d2[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d2(4),
	combout => \d2~combout\(4));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d2[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d2(3),
	combout => \d2~combout\(3));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d2[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d2(1),
	combout => \d2~combout\(1));

-- Location: LC_X3_Y5_N4
\Mux79~1\ : maxii_lcell
-- Equation(s):
-- \Mux79~1_combout\ = (!\d2~combout\(0) & (!\d2~combout\(3) & (!\d2~combout\(2) & !\d2~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d2~combout\(0),
	datab => \d2~combout\(3),
	datac => \d2~combout\(2),
	datad => \d2~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux79~1_combout\);

-- Location: LC_X1_Y4_N6
\Mux52~0\ : maxii_lcell
-- Equation(s):
-- \Mux52~0_combout\ = (((!last_s2(5) & !last_s2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s2(5),
	datad => last_s2(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux52~0_combout\);

-- Location: LC_X1_Y4_N1
\Mux42~1\ : maxii_lcell
-- Equation(s):
-- \Mux42~1_combout\ = (last_s2(1) & (\Mux42~0_combout\ & (!last_s2(2) & !last_s2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s2(1),
	datab => \Mux42~0_combout\,
	datac => last_s2(2),
	datad => last_s2(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux42~1_combout\);

-- Location: LC_X5_Y5_N5
\Mux83~73\ : maxii_lcell
-- Equation(s):
-- \Mux83~73_combout\ = (last_s2(4) & (((last_s2(5))) # (!\d2~combout\(4)))) # (!last_s2(4) & ((last_s2(5) $ (\d2~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a7f2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s2(4),
	datab => \d2~combout\(4),
	datac => last_s2(5),
	datad => \d2~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~73_combout\);

-- Location: LC_X5_Y5_N6
\Mux83~74\ : maxii_lcell
-- Equation(s):
-- \Mux83~74_combout\ = (last_s2(3) & ((last_s2(4)) # (\d2~combout\(5) $ (\Mux83~73_combout\)))) # (!last_s2(3) & ((\Mux83~73_combout\) # ((!last_s2(4) & !\d2~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfe1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s2(4),
	datab => \d2~combout\(5),
	datac => last_s2(3),
	datad => \Mux83~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~74_combout\);

-- Location: LC_X5_Y5_N7
\Mux83~70\ : maxii_lcell
-- Equation(s):
-- \Mux83~70_combout\ = (last_s2(0)) # ((last_s2(2)) # ((last_s2(1)) # (\Mux83~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s2(0),
	datab => last_s2(2),
	datac => last_s2(1),
	datad => \Mux83~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~70_combout\);

-- Location: LC_X5_Y5_N3
\Mux83~40\ : maxii_lcell
-- Equation(s):
-- \Mux83~40_combout\ = (last_s2(4) & (((last_s2(5))) # (!\d2~combout\(4)))) # (!last_s2(4) & (((!\d2~combout\(5)) # (!last_s2(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a7f7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s2(4),
	datab => \d2~combout\(4),
	datac => last_s2(5),
	datad => \d2~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~40_combout\);

-- Location: LC_X5_Y5_N0
\Mux83~38\ : maxii_lcell
-- Equation(s):
-- \Mux83~38_combout\ = (((last_s2(3)) # (\Mux83~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s2(3),
	datad => \Mux83~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~38_combout\);

-- Location: LC_X5_Y5_N1
\Mux83~72\ : maxii_lcell
-- Equation(s):
-- \Mux83~72_combout\ = (last_s2(1)) # ((last_s2(2)) # ((last_s2(0)) # (\Mux83~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s2(1),
	datab => last_s2(2),
	datac => last_s2(0),
	datad => \Mux83~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~72_combout\);

-- Location: LC_X5_Y5_N2
\Mux81~0\ : maxii_lcell
-- Equation(s):
-- \Mux81~0_combout\ = ((\d2~combout\(3) & (\Mux83~70_combout\)) # (!\d2~combout\(3) & ((\Mux83~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d2~combout\(3),
	datac => \Mux83~70_combout\,
	datad => \Mux83~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux81~0_combout\);

-- Location: LC_X6_Y5_N1
\last_s2[2]\ : maxii_lcell
-- Equation(s):
-- \Mux83~75\ = (last_s2(5) & (((last_s2[2]) # (!\d2~combout\(5))))) # (!last_s2(5) & (((!last_s2[2]))))
-- last_s2(2) = DFFEAS(\Mux83~75\, GLOBAL(\clk~combout\), VCC, , , \Mux81~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5af",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s2(5),
	datac => \Mux81~2\,
	datad => \d2~combout\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~75\,
	regout => last_s2(2));

-- Location: LC_X6_Y5_N2
\Mux83~76\ : maxii_lcell
-- Equation(s):
-- \Mux83~76_combout\ = (last_s2(4) & (((last_s2(5)) # (!\Mux83~75\)) # (!\d2~combout\(4)))) # (!last_s2(4) & (((\Mux83~75\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d2~combout\(4),
	datab => last_s2(4),
	datac => last_s2(5),
	datad => \Mux83~75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~76_combout\);

-- Location: LC_X6_Y5_N5
\Mux83~71\ : maxii_lcell
-- Equation(s):
-- \Mux83~71_combout\ = (last_s2(3)) # ((\Mux83~76_combout\) # ((last_s2(0)) # (last_s2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s2(3),
	datab => \Mux83~76_combout\,
	datac => last_s2(0),
	datad => last_s2(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~71_combout\);

-- Location: LC_X6_Y5_N9
\Mux46~1\ : maxii_lcell
-- Equation(s):
-- \Mux46~1_combout\ = (((!last_s2(5) & !last_s2(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s2(5),
	datad => last_s2(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux46~1_combout\);

-- Location: LC_X5_Y5_N4
\Mux46~2\ : maxii_lcell
-- Equation(s):
-- \Mux46~2_combout\ = (last_s2(3) & (\Mux46~0_combout\ & (!last_s2(0) & \Mux46~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s2(3),
	datab => \Mux46~0_combout\,
	datac => last_s2(0),
	datad => \Mux46~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux46~2_combout\);

-- Location: LC_X2_Y5_N9
\Mux79~0\ : maxii_lcell
-- Equation(s):
-- \Mux79~0_combout\ = ((!\d2~combout\(1) & (!\d2~combout\(2) & !\d2~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d2~combout\(1),
	datac => \d2~combout\(2),
	datad => \d2~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux79~0_combout\);

-- Location: LC_X5_Y5_N9
\s2[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux80~0\ = (\d2~combout\(3) & ((\Mux79~0_combout\ & ((\Mux83~72_combout\))) # (!\Mux79~0_combout\ & (\Mux46~2_combout\))))
-- \s2[3]~reg0_regout\ = DFFEAS(\Mux80~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux46~2_combout\,
	datab => \Mux83~72_combout\,
	datac => \Mux79~0_combout\,
	datad => \d2~combout\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux80~0\,
	regout => \s2[3]~reg0_regout\);

-- Location: LC_X6_Y5_N3
\last_s2[3]\ : maxii_lcell
-- Equation(s):
-- \Mux83~62\ = (last_s2(5) & ((last_s2(4)) # ((!last_s2(2) & !last_s2[3])))) # (!last_s2(5) & ((last_s2(2) & ((last_s2(4)) # (!last_s2[3]))) # (!last_s2(2) & (last_s2[3]))))
-- last_s2(3) = DFFEAS(\Mux83~62\, GLOBAL(\clk~combout\), VCC, , , \Mux80~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe16",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s2(5),
	datab => last_s2(2),
	datac => \Mux80~0\,
	datad => last_s2(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~62\,
	regout => last_s2(3));

-- Location: LC_X6_Y5_N4
\Mux83~63\ : maxii_lcell
-- Equation(s):
-- \Mux83~63_combout\ = (last_s2(0) & (((last_s2(4))))) # (!last_s2(0) & ((last_s2(1) & ((last_s2(4)))) # (!last_s2(1) & (\Mux83~62\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux83~62\,
	datab => last_s2(4),
	datac => last_s2(0),
	datad => last_s2(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~63_combout\);

-- Location: LC_X1_Y5_N0
\s2[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux83~67\ = (\d2~combout\(0) & ((\d2~combout\(1) & (\Mux83~57_combout\)) # (!\d2~combout\(1) & ((\Mux83~66_combout\)))))
-- \s2[0]~reg0_regout\ = DFFEAS(\Mux83~67\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a80",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d2~combout\(0),
	datab => \Mux83~57_combout\,
	datac => \d2~combout\(1),
	datad => \Mux83~66_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~67\,
	regout => \s2[0]~reg0_regout\);

-- Location: LC_X1_Y5_N5
\last_s2[4]\ : maxii_lcell
-- Equation(s):
-- \Mux83~59\ = (last_s2(2) & (!last_s2(3) & ((!last_s2[4]) # (!\d2~combout\(4))))) # (!last_s2(2) & (last_s2(3) $ (((\d2~combout\(4) & last_s2[4])))))
-- last_s2(4) = DFFEAS(\Mux83~59\, GLOBAL(\clk~combout\), VCC, , , \Mux79~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "156a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s2(2),
	datab => \d2~combout\(4),
	datac => \Mux79~2\,
	datad => last_s2(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~59\,
	regout => last_s2(4));

-- Location: LC_X1_Y5_N6
\last_s2[0]\ : maxii_lcell
-- Equation(s):
-- \Mux83~60\ = (!last_s2(1) & (((!last_s2[0] & \Mux83~59\))))
-- last_s2(0) = DFFEAS(\Mux83~60\, GLOBAL(\clk~combout\), VCC, , , \Mux83~67\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s2(1),
	datac => \Mux83~67\,
	datad => \Mux83~59\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~60\,
	regout => last_s2(0));

-- Location: LC_X6_Y5_N6
\last_s2[5]\ : maxii_lcell
-- Equation(s):
-- \Mux83~58\ = (\d2~combout\(5)) # (((last_s2[5] & \d2~combout\(4))))
-- last_s2(5) = DFFEAS(\Mux83~58\, GLOBAL(\clk~combout\), VCC, , , \Mux78~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faaa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d2~combout\(5),
	datac => \Mux78~1\,
	datad => \d2~combout\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~58\,
	regout => last_s2(5));

-- Location: LC_X6_Y5_N7
\Mux83~61\ : maxii_lcell
-- Equation(s):
-- \Mux83~61_combout\ = (\Mux83~58\ & (\d2~combout\(4))) # (!\Mux83~58\ & (((!\d2~combout\(4) & !\Mux46~1_combout\)) # (!\Mux83~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa37",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d2~combout\(4),
	datab => \Mux83~60\,
	datac => \Mux46~1_combout\,
	datad => \Mux83~58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~61_combout\);

-- Location: LC_X6_Y5_N8
\Mux83~64\ : maxii_lcell
-- Equation(s):
-- \Mux83~64_combout\ = (\d2~combout\(5) & ((\Mux83~63_combout\ & (last_s2(4))) # (!\Mux83~63_combout\ & ((!\Mux83~61_combout\) # (!last_s2(4)))))) # (!\d2~combout\(5) & (((\Mux83~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9fd0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux83~63_combout\,
	datab => last_s2(4),
	datac => \d2~combout\(5),
	datad => \Mux83~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~64_combout\);

-- Location: LC_X6_Y5_N0
\Mux83~65\ : maxii_lcell
-- Equation(s):
-- \Mux83~65_combout\ = ((\d2~combout\(3) & ((\Mux83~64_combout\))) # (!\d2~combout\(3) & (\Mux83~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d2~combout\(3),
	datac => \Mux83~71_combout\,
	datad => \Mux83~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~65_combout\);

-- Location: LC_X1_Y5_N3
\Mux83~66\ : maxii_lcell
-- Equation(s):
-- \Mux83~66_combout\ = (\d2~combout\(2) & (((\Mux83~65_combout\)))) # (!\d2~combout\(2) & (((\Mux81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d2~combout\(2),
	datac => \Mux81~0_combout\,
	datad => \Mux83~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~66_combout\);

-- Location: LC_X1_Y5_N4
\s2[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux82~0\ = (\d2~combout\(1) & ((\d2~combout\(0) & (\Mux42~1_combout\)) # (!\d2~combout\(0) & ((\Mux83~66_combout\)))))
-- \s2[1]~reg0_regout\ = DFFEAS(\Mux82~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a80",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d2~combout\(1),
	datab => \Mux42~1_combout\,
	datac => \d2~combout\(0),
	datad => \Mux83~66_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux82~0\,
	regout => \s2[1]~reg0_regout\);

-- Location: LC_X1_Y5_N9
\last_s2[1]\ : maxii_lcell
-- Equation(s):
-- \Mux83~77\ = ((last_s2(5) & ((last_s2[1]) # (!\d2~combout\(5)))) # (!last_s2(5) & (!last_s2[1])))
-- last_s2(1) = DFFEAS(\Mux83~77\, GLOBAL(\clk~combout\), VCC, , , \Mux82~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3cf",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => last_s2(5),
	datac => \Mux82~0\,
	datad => \d2~combout\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~77\,
	regout => last_s2(1));

-- Location: LC_X1_Y4_N2
\Mux52~1\ : maxii_lcell
-- Equation(s):
-- \Mux52~1_combout\ = ((last_s2(0)) # ((!\Mux46~0_combout\) # (!last_s2(4)))) # (!\Mux52~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~0_combout\,
	datab => last_s2(0),
	datac => last_s2(4),
	datad => \Mux46~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux52~1_combout\);

-- Location: LC_X1_Y4_N7
\Mux83~68\ : maxii_lcell
-- Equation(s):
-- \Mux83~68_combout\ = (((!\Mux78~0_combout\)) # (!\d2~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d2~combout\(5),
	datac => \Mux78~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~68_combout\);

-- Location: LC_X1_Y4_N4
\s2[4]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux79~2\ = (\d2~combout\(4) & ((\Mux79~1_combout\ & ((\Mux83~68_combout\))) # (!\Mux79~1_combout\ & (!\Mux52~1_combout\))))
-- \s2[4]~reg0_regout\ = DFFEAS(\Mux79~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux79~1_combout\,
	datab => \Mux52~1_combout\,
	datac => \Mux83~68_combout\,
	datad => \d2~combout\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux79~2\,
	regout => \s2[4]~reg0_regout\);

-- Location: LC_X2_Y4_N5
\Mux42~0\ : maxii_lcell
-- Equation(s):
-- \Mux42~0_combout\ = ((!last_s2(5) & (!last_s2(4) & !last_s2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => last_s2(5),
	datac => last_s2(4),
	datad => last_s2(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux42~0_combout\);

-- Location: LC_X2_Y4_N0
\Mux43~0\ : maxii_lcell
-- Equation(s):
-- \Mux43~0_combout\ = (\Mux42~0_combout\ & (!last_s2(0) & (!last_s2(1) & last_s2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux42~0_combout\,
	datab => last_s2(0),
	datac => last_s2(1),
	datad => last_s2(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux43~0_combout\);

-- Location: LC_X3_Y6_N2
\Mux81~1\ : maxii_lcell
-- Equation(s):
-- \Mux81~1_combout\ = (((!\d2~combout\(1) & !\d2~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \d2~combout\(1),
	datad => \d2~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux81~1_combout\);

-- Location: LC_X5_Y5_N8
\s2[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux81~2\ = (\d2~combout\(2) & ((\Mux81~1_combout\ & ((\Mux81~0_combout\))) # (!\Mux81~1_combout\ & (\Mux43~0_combout\))))
-- \s2[2]~reg0_regout\ = DFFEAS(\Mux81~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux43~0_combout\,
	datab => \d2~combout\(2),
	datac => \Mux81~1_combout\,
	datad => \Mux81~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux81~2\,
	regout => \s2[2]~reg0_regout\);

-- Location: LC_X2_Y4_N7
\Mux46~0\ : maxii_lcell
-- Equation(s):
-- \Mux46~0_combout\ = (!last_s2(2) & (((!last_s2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s2(2),
	datac => last_s2(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux46~0_combout\);

-- Location: LC_X1_Y4_N9
\Mux42~2\ : maxii_lcell
-- Equation(s):
-- \Mux42~2_combout\ = (((!last_s2(4) & !last_s2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s2(4),
	datad => last_s2(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux42~2_combout\);

-- Location: LC_X1_Y4_N5
\Mux78~0\ : maxii_lcell
-- Equation(s):
-- \Mux78~0_combout\ = (\Mux46~0_combout\ & (!last_s2(0) & (last_s2(5) & \Mux42~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~0_combout\,
	datab => last_s2(0),
	datac => last_s2(5),
	datad => \Mux42~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux78~0_combout\);

-- Location: LC_X2_Y6_N9
\s2[5]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux78~1\ = (\d2~combout\(5) & ((\Mux78~0_combout\) # ((!\d2~combout\(4) & \Mux79~1_combout\))))
-- \s2[5]~reg0_regout\ = DFFEAS(\Mux78~1\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux78~0_combout\,
	datab => \d2~combout\(4),
	datac => \d2~combout\(5),
	datad => \Mux79~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux78~1\,
	regout => \s2[5]~reg0_regout\);

-- Location: LC_X1_Y4_N3
\Mux83~53\ : maxii_lcell
-- Equation(s):
-- \Mux83~53_combout\ = (last_s2(0)) # ((last_s2(4) & ((last_s2(3)) # (!\d2~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s2(3),
	datab => \d2~combout\(4),
	datac => last_s2(4),
	datad => last_s2(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~53_combout\);

-- Location: LC_X2_Y5_N1
\Mux83~55\ : maxii_lcell
-- Equation(s):
-- \Mux83~55_combout\ = ((last_s2(1) $ (last_s2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s2(1),
	datad => last_s2(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~55_combout\);

-- Location: LC_X1_Y4_N0
\Mux83~54\ : maxii_lcell
-- Equation(s):
-- \Mux83~54_combout\ = (\Mux46~0_combout\ & (last_s2(5) & ((!\Mux42~2_combout\) # (!\d2~combout\(5))))) # (!\Mux46~0_combout\ & (((last_s2(5)) # (!\Mux42~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~0_combout\,
	datab => \d2~combout\(5),
	datac => last_s2(5),
	datad => \Mux42~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~54_combout\);

-- Location: LC_X1_Y4_N8
\Mux83~56\ : maxii_lcell
-- Equation(s):
-- \Mux83~56_combout\ = (\Mux83~53_combout\) # ((\Mux83~54_combout\) # ((\Mux42~0_combout\ & !\Mux83~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux83~53_combout\,
	datab => \Mux42~0_combout\,
	datac => \Mux83~55_combout\,
	datad => \Mux83~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~56_combout\);

-- Location: LC_X2_Y4_N4
\Mux83~45\ : maxii_lcell
-- Equation(s):
-- \Mux83~45_combout\ = (last_s2(5) & (((last_s2(4)) # (!\d2~combout\(5))) # (!\Mux46~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c4cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~0_combout\,
	datab => last_s2(5),
	datac => last_s2(4),
	datad => \d2~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~45_combout\);

-- Location: LC_X2_Y4_N6
\Mux83~46\ : maxii_lcell
-- Equation(s):
-- \Mux83~46_combout\ = (last_s2(4) & ((last_s2(2)) # ((last_s2(1)) # (!\d2~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s2(2),
	datab => last_s2(4),
	datac => last_s2(1),
	datad => \d2~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~46_combout\);

-- Location: LC_X2_Y4_N9
\Mux83~47\ : maxii_lcell
-- Equation(s):
-- \Mux83~47_combout\ = (\Mux83~46_combout\) # ((\Mux46~1_combout\ & (last_s2(2) $ (!last_s2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f9f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s2(2),
	datab => last_s2(1),
	datac => \Mux83~46_combout\,
	datad => \Mux46~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~47_combout\);

-- Location: LC_X2_Y4_N2
\Mux83~48\ : maxii_lcell
-- Equation(s):
-- \Mux83~48_combout\ = (\Mux83~45_combout\) # ((\Mux83~47_combout\) # ((last_s2(0)) # (last_s2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux83~45_combout\,
	datab => \Mux83~47_combout\,
	datac => last_s2(0),
	datad => last_s2(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~48_combout\);

-- Location: LC_X1_Y5_N7
\Mux83~78\ : maxii_lcell
-- Equation(s):
-- \Mux83~78_combout\ = (last_s2(4) & (((last_s2(5)) # (!\Mux83~77\)) # (!\d2~combout\(4)))) # (!last_s2(4) & (((\Mux83~77\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s2(4),
	datab => \d2~combout\(4),
	datac => last_s2(5),
	datad => \Mux83~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~78_combout\);

-- Location: LC_X1_Y5_N8
\Mux83~69\ : maxii_lcell
-- Equation(s):
-- \Mux83~69_combout\ = (last_s2(2)) # ((\Mux83~78_combout\) # ((last_s2(0)) # (last_s2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s2(2),
	datab => \Mux83~78_combout\,
	datac => last_s2(0),
	datad => last_s2(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~69_combout\);

-- Location: LC_X2_Y4_N1
\Mux83~49\ : maxii_lcell
-- Equation(s):
-- \Mux83~49_combout\ = (last_s2(1) & ((last_s2(3)) # ((last_s2(4)) # (last_s2(5))))) # (!last_s2(1) & (last_s2(3) $ (((!last_s2(4) & !last_s2(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eee9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s2(1),
	datab => last_s2(3),
	datac => last_s2(4),
	datad => last_s2(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~49_combout\);

-- Location: LC_X2_Y4_N3
\Mux83~50\ : maxii_lcell
-- Equation(s):
-- \Mux83~50_combout\ = (last_s2(5) & (((last_s2(4)) # (!\d2~combout\(5))))) # (!last_s2(5) & (!\d2~combout\(4) & (last_s2(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0dc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d2~combout\(4),
	datab => last_s2(5),
	datac => last_s2(4),
	datad => \d2~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~50_combout\);

-- Location: LC_X2_Y4_N8
\Mux83~51\ : maxii_lcell
-- Equation(s):
-- \Mux83~51_combout\ = (last_s2(2)) # ((\Mux83~49_combout\) # ((last_s2(0)) # (\Mux83~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s2(2),
	datab => \Mux83~49_combout\,
	datac => last_s2(0),
	datad => \Mux83~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~51_combout\);

-- Location: LC_X1_Y5_N1
\Mux83~52\ : maxii_lcell
-- Equation(s):
-- \Mux83~52_combout\ = (\d2~combout\(3) & (((\d2~combout\(2)) # (\Mux83~51_combout\)))) # (!\d2~combout\(3) & (\Mux83~69_combout\ & (!\d2~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux83~69_combout\,
	datab => \d2~combout\(3),
	datac => \d2~combout\(2),
	datad => \Mux83~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~52_combout\);

-- Location: LC_X1_Y5_N2
\Mux83~57\ : maxii_lcell
-- Equation(s):
-- \Mux83~57_combout\ = (\d2~combout\(2) & ((\Mux83~52_combout\ & (\Mux83~56_combout\)) # (!\Mux83~52_combout\ & ((\Mux83~48_combout\))))) # (!\d2~combout\(2) & (((\Mux83~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d2~combout\(2),
	datab => \Mux83~56_combout\,
	datac => \Mux83~48_combout\,
	datad => \Mux83~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~57_combout\);

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d3[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d3(1),
	combout => \d3~combout\(1));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d3[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d3(3),
	combout => \d3~combout\(3));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d3[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d3(4),
	combout => \d3~combout\(4));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d3[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d3(5),
	combout => \d3~combout\(5));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d3[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d3(0),
	combout => \d3~combout\(0));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d3[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d3(2),
	combout => \d3~combout\(2));

-- Location: LC_X3_Y6_N5
\Mux121~1\ : maxii_lcell
-- Equation(s):
-- \Mux121~1_combout\ = (!\d3~combout\(1) & (!\d3~combout\(0) & (!\d3~combout\(2) & !\d3~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d3~combout\(1),
	datab => \d3~combout\(0),
	datac => \d3~combout\(2),
	datad => \d3~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux121~1_combout\);

-- Location: LC_X9_Y5_N6
\Mux84~0\ : maxii_lcell
-- Equation(s):
-- \Mux84~0_combout\ = (((!last_s3(4) & !last_s3(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s3(4),
	datad => last_s3(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux84~0_combout\);

-- Location: LC_X10_Y7_N0
\Mux125~40\ : maxii_lcell
-- Equation(s):
-- \Mux125~40_combout\ = (last_s3(4) & (((last_s3(5))) # (!\d3~combout\(4)))) # (!last_s3(4) & (((!last_s3(5)) # (!\d3~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af77",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s3(4),
	datab => \d3~combout\(4),
	datac => \d3~combout\(5),
	datad => last_s3(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~40_combout\);

-- Location: LC_X10_Y7_N1
\Mux125~38\ : maxii_lcell
-- Equation(s):
-- \Mux125~38_combout\ = (((last_s3(3)) # (\Mux125~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s3(3),
	datad => \Mux125~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~38_combout\);

-- Location: LC_X10_Y7_N7
\Mux125~72\ : maxii_lcell
-- Equation(s):
-- \Mux125~72_combout\ = (last_s3(2)) # ((last_s3(0)) # ((last_s3(1)) # (\Mux125~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s3(2),
	datab => last_s3(0),
	datac => last_s3(1),
	datad => \Mux125~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~72_combout\);

-- Location: LC_X10_Y7_N2
\Mux125~73\ : maxii_lcell
-- Equation(s):
-- \Mux125~73_combout\ = (last_s3(4) & (((last_s3(5))) # (!\d3~combout\(4)))) # (!last_s3(4) & ((\d3~combout\(5) $ (last_s3(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af72",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s3(4),
	datab => \d3~combout\(4),
	datac => \d3~combout\(5),
	datad => last_s3(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~73_combout\);

-- Location: LC_X10_Y7_N3
\Mux125~74\ : maxii_lcell
-- Equation(s):
-- \Mux125~74_combout\ = (last_s3(3) & ((last_s3(4)) # (\d3~combout\(5) $ (\Mux125~73_combout\)))) # (!last_s3(3) & ((\Mux125~73_combout\) # ((!last_s3(4) & !\d3~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfe1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s3(4),
	datab => \d3~combout\(5),
	datac => last_s3(3),
	datad => \Mux125~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~74_combout\);

-- Location: LC_X10_Y7_N4
\Mux125~70\ : maxii_lcell
-- Equation(s):
-- \Mux125~70_combout\ = (last_s3(2)) # ((last_s3(0)) # ((last_s3(1)) # (\Mux125~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s3(2),
	datab => last_s3(0),
	datac => last_s3(1),
	datad => \Mux125~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~70_combout\);

-- Location: LC_X10_Y7_N5
\Mux123~0\ : maxii_lcell
-- Equation(s):
-- \Mux123~0_combout\ = (\d3~combout\(3) & (((\Mux125~70_combout\)))) # (!\d3~combout\(3) & (((\Mux125~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d3~combout\(3),
	datac => \Mux125~72_combout\,
	datad => \Mux125~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux123~0_combout\);

-- Location: LC_X3_Y6_N4
\Mux123~1\ : maxii_lcell
-- Equation(s):
-- \Mux123~1_combout\ = (!\d3~combout\(1) & (((!\d3~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d3~combout\(1),
	datad => \d3~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux123~1_combout\);

-- Location: LC_X1_Y7_N9
\Mux84~1\ : maxii_lcell
-- Equation(s):
-- \Mux84~1_combout\ = ((!last_s3(5) & (!last_s3(4) & !last_s3(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => last_s3(5),
	datac => last_s3(4),
	datad => last_s3(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux84~1_combout\);

-- Location: LC_X12_Y7_N9
\Mux85~0\ : maxii_lcell
-- Equation(s):
-- \Mux85~0_combout\ = (\Mux84~1_combout\ & (!last_s3(0) & (!last_s3(1) & last_s3(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux84~1_combout\,
	datab => last_s3(0),
	datac => last_s3(1),
	datad => last_s3(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux85~0_combout\);

-- Location: LC_X12_Y7_N7
\s3[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux123~2\ = (\d3~combout\(2) & ((\Mux123~1_combout\ & (\Mux123~0_combout\)) # (!\Mux123~1_combout\ & ((\Mux85~0_combout\)))))
-- \s3[2]~reg0_regout\ = DFFEAS(\Mux123~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c80",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux123~0_combout\,
	datab => \d3~combout\(2),
	datac => \Mux123~1_combout\,
	datad => \Mux85~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux123~2\,
	regout => \s3[2]~reg0_regout\);

-- Location: LC_X12_Y7_N4
\last_s3[2]\ : maxii_lcell
-- Equation(s):
-- \Mux125~75\ = ((last_s3[2] & ((last_s3(5)))) # (!last_s3[2] & ((!last_s3(5)) # (!\d3~combout\(5)))))
-- last_s3(2) = DFFEAS(\Mux125~75\, GLOBAL(\clk~combout\), VCC, , , \Mux123~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f30f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \d3~combout\(5),
	datac => \Mux123~2\,
	datad => last_s3(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~75\,
	regout => last_s3(2));

-- Location: LC_X9_Y5_N0
\Mux94~0\ : maxii_lcell
-- Equation(s):
-- \Mux94~0_combout\ = (!last_s3(5) & (((!last_s3(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s3(5),
	datad => last_s3(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux94~0_combout\);

-- Location: LC_X9_Y5_N9
\Mux94~1\ : maxii_lcell
-- Equation(s):
-- \Mux94~1_combout\ = (last_s3(0)) # (((!\Mux88~0_combout\) # (!last_s3(4))) # (!\Mux94~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s3(0),
	datab => \Mux94~0_combout\,
	datac => last_s3(4),
	datad => \Mux88~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux94~1_combout\);

-- Location: LC_X9_Y5_N4
\Mux125~68\ : maxii_lcell
-- Equation(s):
-- \Mux125~68_combout\ = (((!\Mux120~0_combout\)) # (!\d3~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d3~combout\(5),
	datad => \Mux120~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~68_combout\);

-- Location: LC_X9_Y5_N5
\s3[4]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux121~2\ = (\d3~combout\(4) & ((\Mux121~1_combout\ & ((\Mux125~68_combout\))) # (!\Mux121~1_combout\ & (!\Mux94~1_combout\))))
-- \s3[4]~reg0_regout\ = DFFEAS(\Mux121~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a202",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d3~combout\(4),
	datab => \Mux94~1_combout\,
	datac => \Mux121~1_combout\,
	datad => \Mux125~68_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux121~2\,
	regout => \s3[4]~reg0_regout\);

-- Location: LC_X9_Y6_N6
\last_s3[4]\ : maxii_lcell
-- Equation(s):
-- \Mux125~59\ = (last_s3(3) & (!last_s3(2) & ((!\d3~combout\(4)) # (!last_s3[4])))) # (!last_s3(3) & (last_s3(2) $ (((last_s3[4] & \d3~combout\(4))))))
-- last_s3(4) = DFFEAS(\Mux125~59\, GLOBAL(\clk~combout\), VCC, , , \Mux121~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1666",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s3(3),
	datab => last_s3(2),
	datac => \Mux121~2\,
	datad => \d3~combout\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~59\,
	regout => last_s3(4));

-- Location: LC_X12_Y7_N2
\Mux125~76\ : maxii_lcell
-- Equation(s):
-- \Mux125~76_combout\ = (\Mux125~75\ & ((last_s3(5)) # ((!last_s3(4)) # (!\d3~combout\(4))))) # (!\Mux125~75\ & (((last_s3(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s3(5),
	datab => \d3~combout\(4),
	datac => \Mux125~75\,
	datad => last_s3(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~76_combout\);

-- Location: LC_X12_Y7_N3
\Mux125~71\ : maxii_lcell
-- Equation(s):
-- \Mux125~71_combout\ = (last_s3(1)) # ((last_s3(0)) # ((last_s3(3)) # (\Mux125~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s3(1),
	datab => last_s3(0),
	datac => last_s3(3),
	datad => \Mux125~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~71_combout\);

-- Location: LC_X7_Y7_N5
\Mux88~1\ : maxii_lcell
-- Equation(s):
-- \Mux88~1_combout\ = ((!last_s3(4) & ((!last_s3(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => last_s3(4),
	datad => last_s3(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux88~1_combout\);

-- Location: LC_X10_Y7_N6
\Mux88~2\ : maxii_lcell
-- Equation(s):
-- \Mux88~2_combout\ = (\Mux88~1_combout\ & (!last_s3(0) & (last_s3(3) & \Mux88~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux88~1_combout\,
	datab => last_s3(0),
	datac => last_s3(3),
	datad => \Mux88~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux88~2_combout\);

-- Location: LC_X3_Y6_N0
\Mux121~0\ : maxii_lcell
-- Equation(s):
-- \Mux121~0_combout\ = (!\d3~combout\(1) & (((!\d3~combout\(2) & !\d3~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d3~combout\(1),
	datac => \d3~combout\(2),
	datad => \d3~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux121~0_combout\);

-- Location: LC_X10_Y7_N8
\s3[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux122~0\ = (\d3~combout\(3) & ((\Mux121~0_combout\ & (\Mux125~72_combout\)) # (!\Mux121~0_combout\ & ((\Mux88~2_combout\)))))
-- \s3[3]~reg0_regout\ = DFFEAS(\Mux122~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d3~combout\(3),
	datab => \Mux125~72_combout\,
	datac => \Mux88~2_combout\,
	datad => \Mux121~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux122~0\,
	regout => \s3[3]~reg0_regout\);

-- Location: LC_X10_Y6_N6
\last_s3[3]\ : maxii_lcell
-- Equation(s):
-- \Mux125~62\ = (last_s3(5) & ((last_s3(4)) # ((!last_s3(2) & !last_s3[3])))) # (!last_s3(5) & ((last_s3(2) & ((last_s3(4)) # (!last_s3[3]))) # (!last_s3(2) & (last_s3[3]))))
-- last_s3(3) = DFFEAS(\Mux125~62\, GLOBAL(\clk~combout\), VCC, , , \Mux122~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe16",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s3(5),
	datab => last_s3(2),
	datac => \Mux122~0\,
	datad => last_s3(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~62\,
	regout => last_s3(3));

-- Location: LC_X10_Y6_N7
\Mux125~63\ : maxii_lcell
-- Equation(s):
-- \Mux125~63_combout\ = (last_s3(1) & (((last_s3(4))))) # (!last_s3(1) & ((last_s3(0) & ((last_s3(4)))) # (!last_s3(0) & (\Mux125~62\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s3(1),
	datab => last_s3(0),
	datac => \Mux125~62\,
	datad => last_s3(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~63_combout\);

-- Location: LC_X9_Y6_N9
\last_s3[5]\ : maxii_lcell
-- Equation(s):
-- \Mux125~58\ = ((\d3~combout\(5)) # ((\d3~combout\(4) & last_s3[5])))
-- last_s3(5) = DFFEAS(\Mux125~58\, GLOBAL(\clk~combout\), VCC, , , \Mux120~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \d3~combout\(4),
	datac => \Mux120~1\,
	datad => \d3~combout\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~58\,
	regout => last_s3(5));

-- Location: LC_X10_Y6_N0
\last_s3[0]\ : maxii_lcell
-- Equation(s):
-- \Mux125~60\ = (!last_s3(1) & (\Mux125~59\ & (!last_s3[0])))
-- last_s3(0) = DFFEAS(\Mux125~60\, GLOBAL(\clk~combout\), VCC, , , \Mux125~67\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0404",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s3(1),
	datab => \Mux125~59\,
	datac => \Mux125~67\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~60\,
	regout => last_s3(0));

-- Location: LC_X10_Y6_N1
\Mux125~61\ : maxii_lcell
-- Equation(s):
-- \Mux125~61_combout\ = (\Mux125~58\ & (((\d3~combout\(4))))) # (!\Mux125~58\ & (((!\Mux88~1_combout\ & !\d3~combout\(4))) # (!\Mux125~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c1cf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux88~1_combout\,
	datab => \d3~combout\(4),
	datac => \Mux125~58\,
	datad => \Mux125~60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~61_combout\);

-- Location: LC_X10_Y6_N2
\Mux125~64\ : maxii_lcell
-- Equation(s):
-- \Mux125~64_combout\ = (\d3~combout\(5) & ((\Mux125~63_combout\ & (last_s3(4))) # (!\Mux125~63_combout\ & ((!\Mux125~61_combout\) # (!last_s3(4)))))) # (!\d3~combout\(5) & (((\Mux125~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9fd0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux125~63_combout\,
	datab => last_s3(4),
	datac => \d3~combout\(5),
	datad => \Mux125~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~64_combout\);

-- Location: LC_X10_Y6_N3
\Mux125~65\ : maxii_lcell
-- Equation(s):
-- \Mux125~65_combout\ = ((\d3~combout\(3) & ((\Mux125~64_combout\))) # (!\d3~combout\(3) & (\Mux125~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux125~71_combout\,
	datac => \d3~combout\(3),
	datad => \Mux125~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~65_combout\);

-- Location: LC_X10_Y6_N8
\Mux125~66\ : maxii_lcell
-- Equation(s):
-- \Mux125~66_combout\ = ((\d3~combout\(2) & ((\Mux125~65_combout\))) # (!\d3~combout\(2) & (\Mux123~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux123~0_combout\,
	datac => \d3~combout\(2),
	datad => \Mux125~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~66_combout\);

-- Location: LC_X10_Y6_N5
\s3[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux125~67\ = (\d3~combout\(0) & ((\d3~combout\(1) & (\Mux125~57_combout\)) # (!\d3~combout\(1) & ((\Mux125~66_combout\)))))
-- \s3[0]~reg0_regout\ = DFFEAS(\Mux125~67\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d3~combout\(1),
	datab => \Mux125~57_combout\,
	datac => \d3~combout\(0),
	datad => \Mux125~66_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~67\,
	regout => \s3[0]~reg0_regout\);

-- Location: LC_X9_Y6_N1
\Mux84~2\ : maxii_lcell
-- Equation(s):
-- \Mux84~2_combout\ = (!last_s3(0) & (last_s3(1) & (\Mux84~1_combout\ & !last_s3(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s3(0),
	datab => last_s3(1),
	datac => \Mux84~1_combout\,
	datad => last_s3(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux84~2_combout\);

-- Location: LC_X9_Y6_N5
\s3[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux124~0\ = (\d3~combout\(1) & ((\d3~combout\(0) & (\Mux84~2_combout\)) # (!\d3~combout\(0) & ((\Mux125~66_combout\)))))
-- \s3[1]~reg0_regout\ = DFFEAS(\Mux124~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a80",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d3~combout\(1),
	datab => \Mux84~2_combout\,
	datac => \d3~combout\(0),
	datad => \Mux125~66_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux124~0\,
	regout => \s3[1]~reg0_regout\);

-- Location: LC_X9_Y6_N0
\last_s3[1]\ : maxii_lcell
-- Equation(s):
-- \Mux125~77\ = (last_s3(4) & (((last_s3[1]) # (!\d3~combout\(4))))) # (!last_s3(4) & (((!last_s3[1]))))
-- last_s3(1) = DFFEAS(\Mux125~77\, GLOBAL(\clk~combout\), VCC, , , \Mux124~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5af",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s3(4),
	datac => \Mux124~0\,
	datad => \d3~combout\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~77\,
	regout => last_s3(1));

-- Location: LC_X12_Y7_N5
\Mux88~0\ : maxii_lcell
-- Equation(s):
-- \Mux88~0_combout\ = (((!last_s3(1) & !last_s3(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s3(1),
	datad => last_s3(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux88~0_combout\);

-- Location: LC_X9_Y5_N3
\Mux120~0\ : maxii_lcell
-- Equation(s):
-- \Mux120~0_combout\ = (\Mux84~0_combout\ & (\Mux88~0_combout\ & (!last_s3(0) & last_s3(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux84~0_combout\,
	datab => \Mux88~0_combout\,
	datac => last_s3(0),
	datad => last_s3(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux120~0_combout\);

-- Location: LC_X9_Y5_N1
\s3[5]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux120~1\ = (\d3~combout\(5) & ((\Mux120~0_combout\) # ((!\d3~combout\(4) & \Mux121~1_combout\))))
-- \s3[5]~reg0_regout\ = DFFEAS(\Mux120~1\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc40",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d3~combout\(4),
	datab => \d3~combout\(5),
	datac => \Mux121~1_combout\,
	datad => \Mux120~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux120~1\,
	regout => \s3[5]~reg0_regout\);

-- Location: LC_X9_Y6_N8
\Mux125~49\ : maxii_lcell
-- Equation(s):
-- \Mux125~49_combout\ = (last_s3(3) & ((last_s3(4)) # ((last_s3(5)) # (last_s3(1))))) # (!last_s3(3) & (last_s3(1) $ (((!last_s3(4) & !last_s3(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fee1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s3(4),
	datab => last_s3(5),
	datac => last_s3(3),
	datad => last_s3(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~49_combout\);

-- Location: LC_X9_Y6_N3
\Mux125~50\ : maxii_lcell
-- Equation(s):
-- \Mux125~50_combout\ = (last_s3(4) & ((last_s3(5)) # ((!\d3~combout\(4))))) # (!last_s3(4) & (last_s3(5) & ((!\d3~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ace",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s3(4),
	datab => last_s3(5),
	datac => \d3~combout\(4),
	datad => \d3~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~50_combout\);

-- Location: LC_X9_Y6_N2
\Mux125~51\ : maxii_lcell
-- Equation(s):
-- \Mux125~51_combout\ = (\Mux125~49_combout\) # ((last_s3(2)) # ((last_s3(0)) # (\Mux125~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux125~49_combout\,
	datab => last_s3(2),
	datac => last_s3(0),
	datad => \Mux125~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~51_combout\);

-- Location: LC_X9_Y6_N7
\Mux125~78\ : maxii_lcell
-- Equation(s):
-- \Mux125~78_combout\ = (\Mux125~77\ & (((last_s3(4)) # (!last_s3(5))) # (!\d3~combout\(5)))) # (!\Mux125~77\ & (((last_s3(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d3~combout\(5),
	datab => last_s3(4),
	datac => \Mux125~77\,
	datad => last_s3(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~78_combout\);

-- Location: LC_X9_Y6_N4
\Mux125~69\ : maxii_lcell
-- Equation(s):
-- \Mux125~69_combout\ = (last_s3(0)) # ((last_s3(3)) # ((\Mux125~78_combout\) # (last_s3(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s3(0),
	datab => last_s3(3),
	datac => \Mux125~78_combout\,
	datad => last_s3(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~69_combout\);

-- Location: LC_X10_Y6_N4
\Mux125~52\ : maxii_lcell
-- Equation(s):
-- \Mux125~52_combout\ = (\d3~combout\(3) & ((\Mux125~51_combout\) # ((\d3~combout\(2))))) # (!\d3~combout\(3) & (((!\d3~combout\(2) & \Mux125~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d3~combout\(3),
	datab => \Mux125~51_combout\,
	datac => \d3~combout\(2),
	datad => \Mux125~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~52_combout\);

-- Location: LC_X12_Y7_N6
\Mux125~45\ : maxii_lcell
-- Equation(s):
-- \Mux125~45_combout\ = (last_s3(5) & ((last_s3(4)) # ((!\d3~combout\(5)) # (!\Mux88~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s3(5),
	datab => last_s3(4),
	datac => \Mux88~0_combout\,
	datad => \d3~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~45_combout\);

-- Location: LC_X12_Y7_N1
\Mux125~46\ : maxii_lcell
-- Equation(s):
-- \Mux125~46_combout\ = (!last_s3(4) & (!last_s3(5) & (last_s3(2) $ (!last_s3(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0021",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s3(2),
	datab => last_s3(4),
	datac => last_s3(1),
	datad => last_s3(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~46_combout\);

-- Location: LC_X12_Y7_N0
\Mux125~47\ : maxii_lcell
-- Equation(s):
-- \Mux125~47_combout\ = (\Mux125~46_combout\) # ((last_s3(4) & ((!\Mux88~0_combout\) # (!\d3~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff4c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d3~combout\(4),
	datab => last_s3(4),
	datac => \Mux88~0_combout\,
	datad => \Mux125~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~47_combout\);

-- Location: LC_X12_Y7_N8
\Mux125~48\ : maxii_lcell
-- Equation(s):
-- \Mux125~48_combout\ = (\Mux125~45_combout\) # ((last_s3(3)) # ((\Mux125~47_combout\) # (last_s3(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux125~45_combout\,
	datab => last_s3(3),
	datac => \Mux125~47_combout\,
	datad => last_s3(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~48_combout\);

-- Location: LC_X9_Y5_N8
\Mux125~54\ : maxii_lcell
-- Equation(s):
-- \Mux125~54_combout\ = (last_s3(5) & (((!\Mux88~0_combout\) # (!\Mux84~0_combout\)) # (!\d3~combout\(5)))) # (!last_s3(5) & (((!\Mux84~0_combout\ & !\Mux88~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s3(5),
	datab => \d3~combout\(5),
	datac => \Mux84~0_combout\,
	datad => \Mux88~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~54_combout\);

-- Location: LC_X9_Y5_N2
\Mux125~53\ : maxii_lcell
-- Equation(s):
-- \Mux125~53_combout\ = (last_s3(0)) # ((last_s3(4) & ((last_s3(3)) # (!\d3~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s3(0),
	datab => \d3~combout\(4),
	datac => last_s3(4),
	datad => last_s3(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~53_combout\);

-- Location: LC_X10_Y7_N9
\Mux125~55\ : maxii_lcell
-- Equation(s):
-- \Mux125~55_combout\ = ((last_s3(1) $ (last_s3(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s3(1),
	datad => last_s3(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~55_combout\);

-- Location: LC_X9_Y5_N7
\Mux125~56\ : maxii_lcell
-- Equation(s):
-- \Mux125~56_combout\ = (\Mux125~54_combout\) # ((\Mux125~53_combout\) # ((\Mux84~1_combout\ & !\Mux125~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eefe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux125~54_combout\,
	datab => \Mux125~53_combout\,
	datac => \Mux84~1_combout\,
	datad => \Mux125~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~56_combout\);

-- Location: LC_X10_Y6_N9
\Mux125~57\ : maxii_lcell
-- Equation(s):
-- \Mux125~57_combout\ = (\Mux125~52_combout\ & (((\Mux125~56_combout\) # (!\d3~combout\(2))))) # (!\Mux125~52_combout\ & (\Mux125~48_combout\ & (\d3~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux125~52_combout\,
	datab => \Mux125~48_combout\,
	datac => \d3~combout\(2),
	datad => \Mux125~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux125~57_combout\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d4[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d4(2),
	combout => \d4~combout\(2));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d4[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d4(4),
	combout => \d4~combout\(4));

-- Location: LC_X6_Y7_N4
\Mux126~1\ : maxii_lcell
-- Equation(s):
-- \Mux126~1_combout\ = (!last_s4(0) & (!last_s4(2) & (\Mux126~0_combout\ & last_s4(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s4(0),
	datab => last_s4(2),
	datac => \Mux126~0_combout\,
	datad => last_s4(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux126~1_combout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d4[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d4(0),
	combout => \d4~combout\(0));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d4[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d4(1),
	combout => \d4~combout\(1));

-- Location: LC_X4_Y7_N2
\Mux136~0\ : maxii_lcell
-- Equation(s):
-- \Mux136~0_combout\ = (((!last_s4(5) & !last_s4(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s4(5),
	datad => last_s4(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux136~0_combout\);

-- Location: LC_X4_Y7_N3
\Mux136~1\ : maxii_lcell
-- Equation(s):
-- \Mux136~1_combout\ = ((last_s4(0)) # ((!\Mux136~0_combout\) # (!\Mux130~0_combout\))) # (!last_s4(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s4(4),
	datab => last_s4(0),
	datac => \Mux130~0_combout\,
	datad => \Mux136~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux136~1_combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d4[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d4(5),
	combout => \d4~combout\(5));

-- Location: LC_X4_Y7_N7
\Mux167~68\ : maxii_lcell
-- Equation(s):
-- \Mux167~68_combout\ = (((!\Mux162~0_combout\)) # (!\d4~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d4~combout\(5),
	datad => \Mux162~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~68_combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d4[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d4(3),
	combout => \d4~combout\(3));

-- Location: LC_X3_Y7_N4
\Mux163~1\ : maxii_lcell
-- Equation(s):
-- \Mux163~1_combout\ = (!\d4~combout\(0) & (!\d4~combout\(2) & (!\d4~combout\(1) & !\d4~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d4~combout\(0),
	datab => \d4~combout\(2),
	datac => \d4~combout\(1),
	datad => \d4~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux163~1_combout\);

-- Location: LC_X4_Y7_N8
\s4[4]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux163~2\ = (\d4~combout\(4) & ((\Mux163~1_combout\ & ((\Mux167~68_combout\))) # (!\Mux163~1_combout\ & (!\Mux136~1_combout\))))
-- \s4[4]~reg0_regout\ = DFFEAS(\Mux163~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c050",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux136~1_combout\,
	datab => \Mux167~68_combout\,
	datac => \d4~combout\(4),
	datad => \Mux163~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux163~2\,
	regout => \s4[4]~reg0_regout\);

-- Location: LC_X5_Y6_N8
\last_s4[4]\ : maxii_lcell
-- Equation(s):
-- \Mux167~59\ = (last_s4(3) & (!last_s4(2) & ((!\d4~combout\(4)) # (!last_s4[4])))) # (!last_s4(3) & (last_s4(2) $ (((last_s4[4] & \d4~combout\(4))))))
-- last_s4(4) = DFFEAS(\Mux167~59\, GLOBAL(\clk~combout\), VCC, , , \Mux163~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1666",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s4(3),
	datab => last_s4(2),
	datac => \Mux163~2\,
	datad => \d4~combout\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~59\,
	regout => last_s4(4));

-- Location: LC_X5_Y7_N2
\Mux167~73\ : maxii_lcell
-- Equation(s):
-- \Mux167~73_combout\ = (last_s4(4) & (((last_s4(5))) # (!\d4~combout\(4)))) # (!last_s4(4) & ((last_s4(5) $ (\d4~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a7f2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s4(4),
	datab => \d4~combout\(4),
	datac => last_s4(5),
	datad => \d4~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~73_combout\);

-- Location: LC_X5_Y7_N3
\Mux167~74\ : maxii_lcell
-- Equation(s):
-- \Mux167~74_combout\ = (\Mux167~73_combout\ & ((last_s4(4)) # ((!\d4~combout\(5)) # (!last_s4(3))))) # (!\Mux167~73_combout\ & (last_s4(3) $ (((!last_s4(4) & !\d4~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bced",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s4(4),
	datab => \Mux167~73_combout\,
	datac => last_s4(3),
	datad => \d4~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~74_combout\);

-- Location: LC_X5_Y7_N5
\Mux167~70\ : maxii_lcell
-- Equation(s):
-- \Mux167~70_combout\ = (last_s4(1)) # ((last_s4(2)) # ((last_s4(0)) # (\Mux167~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s4(1),
	datab => last_s4(2),
	datac => last_s4(0),
	datad => \Mux167~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~70_combout\);

-- Location: LC_X5_Y7_N8
\Mux167~40\ : maxii_lcell
-- Equation(s):
-- \Mux167~40_combout\ = (last_s4(4) & (((last_s4(5))) # (!\d4~combout\(4)))) # (!last_s4(4) & (((!\d4~combout\(5)) # (!last_s4(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a7f7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s4(4),
	datab => \d4~combout\(4),
	datac => last_s4(5),
	datad => \d4~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~40_combout\);

-- Location: LC_X5_Y7_N0
\Mux167~38\ : maxii_lcell
-- Equation(s):
-- \Mux167~38_combout\ = (((last_s4(3)) # (\Mux167~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s4(3),
	datad => \Mux167~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~38_combout\);

-- Location: LC_X5_Y7_N1
\Mux167~72\ : maxii_lcell
-- Equation(s):
-- \Mux167~72_combout\ = (last_s4(1)) # ((last_s4(2)) # ((last_s4(0)) # (\Mux167~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s4(1),
	datab => last_s4(2),
	datac => last_s4(0),
	datad => \Mux167~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~72_combout\);

-- Location: LC_X5_Y7_N9
\Mux165~0\ : maxii_lcell
-- Equation(s):
-- \Mux165~0_combout\ = ((\d4~combout\(3) & (\Mux167~70_combout\)) # (!\d4~combout\(3) & ((\Mux167~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~70_combout\,
	datac => \d4~combout\(3),
	datad => \Mux167~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux165~0_combout\);

-- Location: LC_X5_Y7_N6
\last_s4[2]\ : maxii_lcell
-- Equation(s):
-- \Mux167~75\ = (last_s4(5) & (((last_s4[2]) # (!\d4~combout\(5))))) # (!last_s4(5) & (((!last_s4[2]))))
-- last_s4(2) = DFFEAS(\Mux167~75\, GLOBAL(\clk~combout\), VCC, , , \Mux165~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5af",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s4(5),
	datac => \Mux165~2\,
	datad => \d4~combout\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~75\,
	regout => last_s4(2));

-- Location: LC_X5_Y7_N7
\Mux167~76\ : maxii_lcell
-- Equation(s):
-- \Mux167~76_combout\ = (last_s4(4) & (((last_s4(5)) # (!\Mux167~75\)) # (!\d4~combout\(4)))) # (!last_s4(4) & (((\Mux167~75\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s4(4),
	datab => \d4~combout\(4),
	datac => last_s4(5),
	datad => \Mux167~75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~76_combout\);

-- Location: LC_X4_Y6_N7
\Mux167~71\ : maxii_lcell
-- Equation(s):
-- \Mux167~71_combout\ = (last_s4(0)) # ((last_s4(3)) # ((last_s4(1)) # (\Mux167~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s4(0),
	datab => last_s4(3),
	datac => last_s4(1),
	datad => \Mux167~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~71_combout\);

-- Location: LC_X6_Y7_N6
\Mux130~1\ : maxii_lcell
-- Equation(s):
-- \Mux130~1_combout\ = (((!last_s4(4) & !last_s4(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s4(4),
	datad => last_s4(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux130~1_combout\);

-- Location: LC_X6_Y7_N5
\Mux130~2\ : maxii_lcell
-- Equation(s):
-- \Mux130~2_combout\ = (last_s4(3) & (\Mux130~1_combout\ & (!last_s4(0) & \Mux130~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s4(3),
	datab => \Mux130~1_combout\,
	datac => last_s4(0),
	datad => \Mux130~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux130~2_combout\);

-- Location: LC_X1_Y6_N0
\Mux163~0\ : maxii_lcell
-- Equation(s):
-- \Mux163~0_combout\ = ((!\d4~combout\(1) & (!\d4~combout\(2) & !\d4~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d4~combout\(1),
	datac => \d4~combout\(2),
	datad => \d4~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux163~0_combout\);

-- Location: LC_X3_Y7_N5
\s4[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux164~0\ = (\d4~combout\(3) & ((\Mux163~0_combout\ & ((\Mux167~72_combout\))) # (!\Mux163~0_combout\ & (\Mux130~2_combout\))))
-- \s4[3]~reg0_regout\ = DFFEAS(\Mux164~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux130~2_combout\,
	datab => \d4~combout\(3),
	datac => \Mux163~0_combout\,
	datad => \Mux167~72_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux164~0\,
	regout => \s4[3]~reg0_regout\);

-- Location: LC_X4_Y6_N2
\last_s4[3]\ : maxii_lcell
-- Equation(s):
-- \Mux167~62\ = (last_s4(5) & ((last_s4(4)) # ((!last_s4[3] & !last_s4(2))))) # (!last_s4(5) & ((last_s4[3] & ((last_s4(4)) # (!last_s4(2)))) # (!last_s4[3] & ((last_s4(2))))))
-- last_s4(3) = DFFEAS(\Mux167~62\, GLOBAL(\clk~combout\), VCC, , , \Mux164~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdda",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s4(5),
	datab => last_s4(4),
	datac => \Mux164~0\,
	datad => last_s4(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~62\,
	regout => last_s4(3));

-- Location: LC_X4_Y6_N1
\Mux167~63\ : maxii_lcell
-- Equation(s):
-- \Mux167~63_combout\ = (last_s4(1) & (last_s4(4))) # (!last_s4(1) & ((last_s4(0) & (last_s4(4))) # (!last_s4(0) & ((\Mux167~62\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aba8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s4(4),
	datab => last_s4(1),
	datac => last_s4(0),
	datad => \Mux167~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~63_combout\);

-- Location: LC_X4_Y6_N5
\s4[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux167~67\ = (\d4~combout\(0) & ((\d4~combout\(1) & (\Mux167~57_combout\)) # (!\d4~combout\(1) & ((\Mux167~66_combout\)))))
-- \s4[0]~reg0_regout\ = DFFEAS(\Mux167~67\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c80",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux167~57_combout\,
	datab => \d4~combout\(0),
	datac => \d4~combout\(1),
	datad => \Mux167~66_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~67\,
	regout => \s4[0]~reg0_regout\);

-- Location: LC_X4_Y6_N4
\last_s4[0]\ : maxii_lcell
-- Equation(s):
-- \Mux167~60\ = ((!last_s4(1) & (!last_s4[0] & \Mux167~59\)))
-- last_s4(0) = DFFEAS(\Mux167~60\, GLOBAL(\clk~combout\), VCC, , , \Mux167~67\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => last_s4(1),
	datac => \Mux167~67\,
	datad => \Mux167~59\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~60\,
	regout => last_s4(0));

-- Location: LC_X5_Y6_N6
\last_s4[5]\ : maxii_lcell
-- Equation(s):
-- \Mux167~58\ = ((\d4~combout\(5)) # ((\d4~combout\(4) & last_s4[5])))
-- last_s4(5) = DFFEAS(\Mux167~58\, GLOBAL(\clk~combout\), VCC, , , \Mux162~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d4~combout\(4),
	datac => \Mux162~1\,
	datad => \d4~combout\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~58\,
	regout => last_s4(5));

-- Location: LC_X5_Y6_N0
\Mux167~61\ : maxii_lcell
-- Equation(s):
-- \Mux167~61_combout\ = (\Mux167~58\ & (\d4~combout\(4))) # (!\Mux167~58\ & (((!\d4~combout\(4) & !\Mux130~1_combout\)) # (!\Mux167~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a3a7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d4~combout\(4),
	datab => \Mux167~60\,
	datac => \Mux167~58\,
	datad => \Mux130~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~61_combout\);

-- Location: LC_X4_Y6_N3
\Mux167~64\ : maxii_lcell
-- Equation(s):
-- \Mux167~64_combout\ = (\d4~combout\(5) & ((last_s4(4) & ((\Mux167~63_combout\) # (!\Mux167~61_combout\))) # (!last_s4(4) & (!\Mux167~63_combout\)))) # (!\d4~combout\(5) & (((\Mux167~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9bf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s4(4),
	datab => \Mux167~63_combout\,
	datac => \Mux167~61_combout\,
	datad => \d4~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~64_combout\);

-- Location: LC_X4_Y6_N8
\Mux167~65\ : maxii_lcell
-- Equation(s):
-- \Mux167~65_combout\ = ((\d4~combout\(3) & ((\Mux167~64_combout\))) # (!\d4~combout\(3) & (\Mux167~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d4~combout\(3),
	datac => \Mux167~71_combout\,
	datad => \Mux167~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~65_combout\);

-- Location: LC_X4_Y6_N9
\Mux167~66\ : maxii_lcell
-- Equation(s):
-- \Mux167~66_combout\ = ((\d4~combout\(2) & ((\Mux167~65_combout\))) # (!\d4~combout\(2) & (\Mux165~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d4~combout\(2),
	datac => \Mux165~0_combout\,
	datad => \Mux167~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~66_combout\);

-- Location: LC_X4_Y6_N6
\s4[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux166~0\ = (\d4~combout\(1) & ((\d4~combout\(0) & (\Mux126~1_combout\)) # (!\d4~combout\(0) & ((\Mux167~66_combout\)))))
-- \s4[1]~reg0_regout\ = DFFEAS(\Mux166~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux126~1_combout\,
	datab => \d4~combout\(0),
	datac => \d4~combout\(1),
	datad => \Mux167~66_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux166~0\,
	regout => \s4[1]~reg0_regout\);

-- Location: LC_X4_Y6_N0
\last_s4[1]\ : maxii_lcell
-- Equation(s):
-- \Mux167~77\ = (last_s4(5) & (((last_s4[1]) # (!\d4~combout\(5))))) # (!last_s4(5) & (((!last_s4[1]))))
-- last_s4(1) = DFFEAS(\Mux167~77\, GLOBAL(\clk~combout\), VCC, , , \Mux166~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5af",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s4(5),
	datac => \Mux166~0\,
	datad => \d4~combout\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~77\,
	regout => last_s4(1));

-- Location: LC_X6_Y7_N1
\Mux127~0\ : maxii_lcell
-- Equation(s):
-- \Mux127~0_combout\ = (!last_s4(0) & (last_s4(2) & (\Mux126~0_combout\ & !last_s4(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s4(0),
	datab => last_s4(2),
	datac => \Mux126~0_combout\,
	datad => last_s4(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux127~0_combout\);

-- Location: LC_X3_Y7_N8
\Mux165~1\ : maxii_lcell
-- Equation(s):
-- \Mux165~1_combout\ = (!\d4~combout\(0) & (((!\d4~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d4~combout\(0),
	datac => \d4~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux165~1_combout\);

-- Location: LC_X5_Y7_N4
\s4[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux165~2\ = (\d4~combout\(2) & ((\Mux165~1_combout\ & ((\Mux165~0_combout\))) # (!\Mux165~1_combout\ & (\Mux127~0_combout\))))
-- \s4[2]~reg0_regout\ = DFFEAS(\Mux165~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e020",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux127~0_combout\,
	datab => \Mux165~1_combout\,
	datac => \d4~combout\(2),
	datad => \Mux165~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux165~2\,
	regout => \s4[2]~reg0_regout\);

-- Location: LC_X6_Y7_N2
\Mux130~0\ : maxii_lcell
-- Equation(s):
-- \Mux130~0_combout\ = ((!last_s4(2) & ((!last_s4(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => last_s4(2),
	datad => last_s4(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux130~0_combout\);

-- Location: LC_X4_Y7_N9
\Mux126~2\ : maxii_lcell
-- Equation(s):
-- \Mux126~2_combout\ = (((!last_s4(4) & !last_s4(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s4(4),
	datad => last_s4(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux126~2_combout\);

-- Location: LC_X4_Y7_N6
\Mux162~0\ : maxii_lcell
-- Equation(s):
-- \Mux162~0_combout\ = (\Mux130~0_combout\ & (!last_s4(0) & (last_s4(5) & \Mux126~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux130~0_combout\,
	datab => last_s4(0),
	datac => last_s4(5),
	datad => \Mux126~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux162~0_combout\);

-- Location: LC_X4_Y7_N1
\s4[5]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux162~1\ = (\d4~combout\(5) & ((\Mux162~0_combout\) # ((!\d4~combout\(4) & \Mux163~1_combout\))))
-- \s4[5]~reg0_regout\ = DFFEAS(\Mux162~1\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d4~combout\(4),
	datab => \Mux162~0_combout\,
	datac => \d4~combout\(5),
	datad => \Mux163~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux162~1\,
	regout => \s4[5]~reg0_regout\);

-- Location: LC_X6_Y7_N8
\Mux126~0\ : maxii_lcell
-- Equation(s):
-- \Mux126~0_combout\ = ((!last_s4(3) & (!last_s4(4) & !last_s4(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => last_s4(3),
	datac => last_s4(4),
	datad => last_s4(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux126~0_combout\);

-- Location: LC_X4_Y7_N0
\Mux167~54\ : maxii_lcell
-- Equation(s):
-- \Mux167~54_combout\ = (\Mux130~0_combout\ & (last_s4(5) & ((!\Mux126~2_combout\) # (!\d4~combout\(5))))) # (!\Mux130~0_combout\ & ((last_s4(5)) # ((!\Mux126~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4cdd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux130~0_combout\,
	datab => last_s4(5),
	datac => \d4~combout\(5),
	datad => \Mux126~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~54_combout\);

-- Location: LC_X3_Y7_N9
\Mux167~55\ : maxii_lcell
-- Equation(s):
-- \Mux167~55_combout\ = ((last_s4(1) $ (last_s4(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s4(1),
	datad => last_s4(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~55_combout\);

-- Location: LC_X4_Y7_N4
\Mux167~53\ : maxii_lcell
-- Equation(s):
-- \Mux167~53_combout\ = (last_s4(0)) # ((last_s4(4) & ((last_s4(3)) # (!\d4~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eece",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s4(4),
	datab => last_s4(0),
	datac => \d4~combout\(4),
	datad => last_s4(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~53_combout\);

-- Location: LC_X4_Y7_N5
\Mux167~56\ : maxii_lcell
-- Equation(s):
-- \Mux167~56_combout\ = (\Mux167~54_combout\) # ((\Mux167~53_combout\) # ((\Mux126~0_combout\ & !\Mux167~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~0_combout\,
	datab => \Mux167~54_combout\,
	datac => \Mux167~55_combout\,
	datad => \Mux167~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~56_combout\);

-- Location: LC_X6_Y7_N3
\Mux167~46\ : maxii_lcell
-- Equation(s):
-- \Mux167~46_combout\ = (last_s4(4) & ((last_s4(1)) # ((last_s4(2)) # (!\d4~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s4(4),
	datab => last_s4(1),
	datac => last_s4(2),
	datad => \d4~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~46_combout\);

-- Location: LC_X6_Y7_N7
\Mux167~47\ : maxii_lcell
-- Equation(s):
-- \Mux167~47_combout\ = (\Mux167~46_combout\) # ((\Mux130~1_combout\ & (last_s4(1) $ (!last_s4(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ebaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~46_combout\,
	datab => last_s4(1),
	datac => last_s4(2),
	datad => \Mux130~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~47_combout\);

-- Location: LC_X6_Y7_N9
\Mux167~45\ : maxii_lcell
-- Equation(s):
-- \Mux167~45_combout\ = (last_s4(5) & ((last_s4(4)) # ((!\d4~combout\(5)) # (!\Mux130~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bf00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s4(4),
	datab => \Mux130~0_combout\,
	datac => \d4~combout\(5),
	datad => last_s4(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~45_combout\);

-- Location: LC_X6_Y7_N0
\Mux167~48\ : maxii_lcell
-- Equation(s):
-- \Mux167~48_combout\ = (last_s4(3)) # ((\Mux167~47_combout\) # ((last_s4(0)) # (\Mux167~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s4(3),
	datab => \Mux167~47_combout\,
	datac => last_s4(0),
	datad => \Mux167~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~48_combout\);

-- Location: LC_X5_Y6_N7
\Mux167~50\ : maxii_lcell
-- Equation(s):
-- \Mux167~50_combout\ = (last_s4(4) & (((last_s4(5))) # (!\d4~combout\(4)))) # (!last_s4(4) & (((last_s4(5) & !\d4~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c4f4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d4~combout\(4),
	datab => last_s4(4),
	datac => last_s4(5),
	datad => \d4~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~50_combout\);

-- Location: LC_X5_Y6_N4
\Mux167~49\ : maxii_lcell
-- Equation(s):
-- \Mux167~49_combout\ = (last_s4(3) & ((last_s4(4)) # ((last_s4(5)) # (last_s4(1))))) # (!last_s4(3) & (last_s4(1) $ (((!last_s4(4) & !last_s4(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fea9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s4(3),
	datab => last_s4(4),
	datac => last_s4(5),
	datad => last_s4(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~49_combout\);

-- Location: LC_X5_Y6_N5
\Mux167~51\ : maxii_lcell
-- Equation(s):
-- \Mux167~51_combout\ = (last_s4(0)) # ((last_s4(2)) # ((\Mux167~50_combout\) # (\Mux167~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s4(0),
	datab => last_s4(2),
	datac => \Mux167~50_combout\,
	datad => \Mux167~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~51_combout\);

-- Location: LC_X5_Y6_N9
\Mux167~78\ : maxii_lcell
-- Equation(s):
-- \Mux167~78_combout\ = (\Mux167~77\ & (((last_s4(5)) # (!\d4~combout\(4))) # (!last_s4(4)))) # (!\Mux167~77\ & (last_s4(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6ee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~77\,
	datab => last_s4(4),
	datac => last_s4(5),
	datad => \d4~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~78_combout\);

-- Location: LC_X5_Y6_N2
\Mux167~69\ : maxii_lcell
-- Equation(s):
-- \Mux167~69_combout\ = (last_s4(0)) # ((last_s4(2)) # ((last_s4(3)) # (\Mux167~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s4(0),
	datab => last_s4(2),
	datac => last_s4(3),
	datad => \Mux167~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~69_combout\);

-- Location: LC_X5_Y6_N3
\Mux167~52\ : maxii_lcell
-- Equation(s):
-- \Mux167~52_combout\ = (\d4~combout\(2) & (((\d4~combout\(3))))) # (!\d4~combout\(2) & ((\d4~combout\(3) & (\Mux167~51_combout\)) # (!\d4~combout\(3) & ((\Mux167~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~51_combout\,
	datab => \d4~combout\(2),
	datac => \d4~combout\(3),
	datad => \Mux167~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~52_combout\);

-- Location: LC_X5_Y6_N1
\Mux167~57\ : maxii_lcell
-- Equation(s):
-- \Mux167~57_combout\ = (\d4~combout\(2) & ((\Mux167~52_combout\ & (\Mux167~56_combout\)) # (!\Mux167~52_combout\ & ((\Mux167~48_combout\))))) # (!\d4~combout\(2) & (((\Mux167~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d4~combout\(2),
	datab => \Mux167~56_combout\,
	datac => \Mux167~48_combout\,
	datad => \Mux167~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux167~57_combout\);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d5[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d5(1),
	combout => \d5~combout\(1));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d5[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d5(0),
	combout => \d5~combout\(0));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d5[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d5(2),
	combout => \d5~combout\(2));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d5[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d5(4),
	combout => \d5~combout\(4));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d5[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d5(3),
	combout => \d5~combout\(3));

-- Location: LC_X7_Y4_N4
\Mux205~1\ : maxii_lcell
-- Equation(s):
-- \Mux205~1_combout\ = (!\d5~combout\(0) & (!\d5~combout\(1) & (!\d5~combout\(2) & !\d5~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d5~combout\(0),
	datab => \d5~combout\(1),
	datac => \d5~combout\(2),
	datad => \d5~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux205~1_combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d5[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d5(5),
	combout => \d5~combout\(5));

-- Location: LC_X7_Y4_N8
\Mux209~68\ : maxii_lcell
-- Equation(s):
-- \Mux209~68_combout\ = (((!\d5~combout\(5)) # (!\Mux204~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mux204~0_combout\,
	datad => \d5~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~68_combout\);

-- Location: LC_X10_Y1_N6
\Mux178~0\ : maxii_lcell
-- Equation(s):
-- \Mux178~0_combout\ = (!last_s5(5) & (((!last_s5(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(5),
	datad => last_s5(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux178~0_combout\);

-- Location: LC_X8_Y4_N4
\Mux168~2\ : maxii_lcell
-- Equation(s):
-- \Mux168~2_combout\ = (last_s5(1) & (!last_s5(2) & (!last_s5(0) & \Mux168~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(1),
	datab => last_s5(2),
	datac => last_s5(0),
	datad => \Mux168~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux168~2_combout\);

-- Location: LC_X11_Y2_N8
\Mux209~73\ : maxii_lcell
-- Equation(s):
-- \Mux209~73_combout\ = (last_s5(4) & (((last_s5(5))) # (!\d5~combout\(4)))) # (!last_s5(4) & ((last_s5(5) $ (\d5~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a7f2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(4),
	datab => \d5~combout\(4),
	datac => last_s5(5),
	datad => \d5~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~73_combout\);

-- Location: LC_X11_Y2_N9
\Mux209~74\ : maxii_lcell
-- Equation(s):
-- \Mux209~74_combout\ = (last_s5(3) & ((last_s5(4)) # (\d5~combout\(5) $ (\Mux209~73_combout\)))) # (!last_s5(3) & ((\Mux209~73_combout\) # ((!last_s5(4) & !\d5~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfe1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(4),
	datab => \d5~combout\(5),
	datac => last_s5(3),
	datad => \Mux209~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~74_combout\);

-- Location: LC_X11_Y2_N5
\Mux209~70\ : maxii_lcell
-- Equation(s):
-- \Mux209~70_combout\ = (last_s5(0)) # ((last_s5(1)) # ((last_s5(2)) # (\Mux209~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(0),
	datab => last_s5(1),
	datac => last_s5(2),
	datad => \Mux209~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~70_combout\);

-- Location: LC_X11_Y2_N2
\Mux209~40\ : maxii_lcell
-- Equation(s):
-- \Mux209~40_combout\ = (last_s5(4) & (((last_s5(5))) # (!\d5~combout\(4)))) # (!last_s5(4) & (((!\d5~combout\(5)) # (!last_s5(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a7f7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(4),
	datab => \d5~combout\(4),
	datac => last_s5(5),
	datad => \d5~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~40_combout\);

-- Location: LC_X11_Y2_N3
\Mux209~38\ : maxii_lcell
-- Equation(s):
-- \Mux209~38_combout\ = (((last_s5(3)) # (\Mux209~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s5(3),
	datad => \Mux209~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~38_combout\);

-- Location: LC_X11_Y2_N0
\Mux209~72\ : maxii_lcell
-- Equation(s):
-- \Mux209~72_combout\ = (last_s5(0)) # ((last_s5(1)) # ((last_s5(2)) # (\Mux209~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(0),
	datab => last_s5(1),
	datac => last_s5(2),
	datad => \Mux209~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~72_combout\);

-- Location: LC_X11_Y2_N1
\Mux207~0\ : maxii_lcell
-- Equation(s):
-- \Mux207~0_combout\ = ((\d5~combout\(3) & (\Mux209~70_combout\)) # (!\d5~combout\(3) & ((\Mux209~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d5~combout\(3),
	datac => \Mux209~70_combout\,
	datad => \Mux209~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux207~0_combout\);

-- Location: LC_X7_Y4_N6
\Mux207~1\ : maxii_lcell
-- Equation(s):
-- \Mux207~1_combout\ = ((!\d5~combout\(1) & ((!\d5~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d5~combout\(1),
	datad => \d5~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux207~1_combout\);

-- Location: LC_X8_Y4_N6
\Mux169~0\ : maxii_lcell
-- Equation(s):
-- \Mux169~0_combout\ = (!last_s5(1) & (last_s5(2) & (!last_s5(0) & \Mux168~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(1),
	datab => last_s5(2),
	datac => last_s5(0),
	datad => \Mux168~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux169~0_combout\);

-- Location: LC_X7_Y4_N0
\s5[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux207~2\ = (\d5~combout\(2) & ((\Mux207~1_combout\ & ((\Mux207~0_combout\))) # (!\Mux207~1_combout\ & (\Mux169~0_combout\))))
-- \s5[2]~reg0_regout\ = DFFEAS(\Mux207~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e040",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux207~1_combout\,
	datab => \Mux169~0_combout\,
	datac => \d5~combout\(2),
	datad => \Mux207~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux207~2\,
	regout => \s5[2]~reg0_regout\);

-- Location: LC_X7_Y4_N3
\last_s5[2]\ : maxii_lcell
-- Equation(s):
-- \Mux209~75\ = ((last_s5(5) & ((last_s5[2]) # (!\d5~combout\(5)))) # (!last_s5(5) & (!last_s5[2])))
-- last_s5(2) = DFFEAS(\Mux209~75\, GLOBAL(\clk~combout\), VCC, , , \Mux207~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3cf",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => last_s5(5),
	datac => \Mux207~2\,
	datad => \d5~combout\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~75\,
	regout => last_s5(2));

-- Location: LC_X7_Y4_N2
\Mux209~76\ : maxii_lcell
-- Equation(s):
-- \Mux209~76_combout\ = (last_s5(4) & ((last_s5(5)) # ((!\Mux209~75\) # (!\d5~combout\(4))))) # (!last_s5(4) & (((\Mux209~75\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(4),
	datab => last_s5(5),
	datac => \d5~combout\(4),
	datad => \Mux209~75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~76_combout\);

-- Location: LC_X7_Y4_N9
\Mux209~71\ : maxii_lcell
-- Equation(s):
-- \Mux209~71_combout\ = (last_s5(3)) # ((last_s5(0)) # ((last_s5(1)) # (\Mux209~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(3),
	datab => last_s5(0),
	datac => last_s5(1),
	datad => \Mux209~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~71_combout\);

-- Location: LC_X7_Y4_N5
\Mux205~0\ : maxii_lcell
-- Equation(s):
-- \Mux205~0_combout\ = ((!\d5~combout\(1) & (!\d5~combout\(2) & !\d5~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d5~combout\(1),
	datac => \d5~combout\(2),
	datad => \d5~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux205~0_combout\);

-- Location: LC_X12_Y2_N9
\Mux172~0\ : maxii_lcell
-- Equation(s):
-- \Mux172~0_combout\ = (((!last_s5(1) & !last_s5(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s5(1),
	datad => last_s5(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux172~0_combout\);

-- Location: LC_X11_Y2_N6
\Mux172~1\ : maxii_lcell
-- Equation(s):
-- \Mux172~1_combout\ = (!last_s5(4) & (((!last_s5(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(4),
	datac => last_s5(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux172~1_combout\);

-- Location: LC_X11_Y2_N7
\Mux172~2\ : maxii_lcell
-- Equation(s):
-- \Mux172~2_combout\ = (last_s5(3) & (\Mux172~0_combout\ & (!last_s5(0) & \Mux172~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(3),
	datab => \Mux172~0_combout\,
	datac => last_s5(0),
	datad => \Mux172~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux172~2_combout\);

-- Location: LC_X11_Y2_N4
\s5[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux206~0\ = (\d5~combout\(3) & ((\Mux205~0_combout\ & ((\Mux209~72_combout\))) # (!\Mux205~0_combout\ & (\Mux172~2_combout\))))
-- \s5[3]~reg0_regout\ = DFFEAS(\Mux206~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a820",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d5~combout\(3),
	datab => \Mux205~0_combout\,
	datac => \Mux172~2_combout\,
	datad => \Mux209~72_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux206~0\,
	regout => \s5[3]~reg0_regout\);

-- Location: LC_X10_Y4_N9
\last_s5[3]\ : maxii_lcell
-- Equation(s):
-- \Mux209~62\ = (last_s5(2) & ((last_s5(4)) # ((!last_s5[3] & !last_s5(5))))) # (!last_s5(2) & ((last_s5[3] & ((last_s5(4)) # (!last_s5(5)))) # (!last_s5[3] & ((last_s5(5))))))
-- last_s5(3) = DFFEAS(\Mux209~62\, GLOBAL(\clk~combout\), VCC, , , \Mux206~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdda",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s5(2),
	datab => last_s5(4),
	datac => \Mux206~0\,
	datad => last_s5(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~62\,
	regout => last_s5(3));

-- Location: LC_X9_Y4_N4
\Mux209~63\ : maxii_lcell
-- Equation(s):
-- \Mux209~63_combout\ = (last_s5(0) & (((last_s5(4))))) # (!last_s5(0) & ((last_s5(1) & ((last_s5(4)))) # (!last_s5(1) & (\Mux209~62\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(0),
	datab => last_s5(1),
	datac => \Mux209~62\,
	datad => last_s5(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~63_combout\);

-- Location: LC_X7_Y4_N1
\last_s5[5]\ : maxii_lcell
-- Equation(s):
-- \Mux209~58\ = ((\d5~combout\(5)) # ((\d5~combout\(4) & last_s5[5])))
-- last_s5(5) = DFFEAS(\Mux209~58\, GLOBAL(\clk~combout\), VCC, , , \Mux204~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \d5~combout\(4),
	datac => \Mux204~1\,
	datad => \d5~combout\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~58\,
	regout => last_s5(5));

-- Location: LC_X9_Y4_N0
\s5[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux209~67\ = (\d5~combout\(0) & ((\d5~combout\(1) & (\Mux209~57_combout\)) # (!\d5~combout\(1) & ((\Mux209~66_combout\)))))
-- \s5[0]~reg0_regout\ = DFFEAS(\Mux209~67\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c480",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d5~combout\(1),
	datab => \d5~combout\(0),
	datac => \Mux209~57_combout\,
	datad => \Mux209~66_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~67\,
	regout => \s5[0]~reg0_regout\);

-- Location: LC_X10_Y4_N7
\last_s5[4]\ : maxii_lcell
-- Equation(s):
-- \Mux209~59\ = (last_s5(2) & (!last_s5(3) & ((!\d5~combout\(4)) # (!last_s5[4])))) # (!last_s5(2) & (last_s5(3) $ (((last_s5[4] & \d5~combout\(4))))))
-- last_s5(4) = DFFEAS(\Mux209~59\, GLOBAL(\clk~combout\), VCC, , , \Mux205~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1666",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s5(2),
	datab => last_s5(3),
	datac => \Mux205~2\,
	datad => \d5~combout\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~59\,
	regout => last_s5(4));

-- Location: LC_X9_Y4_N6
\last_s5[0]\ : maxii_lcell
-- Equation(s):
-- \Mux209~60\ = ((!last_s5(1) & (!last_s5[0] & \Mux209~59\)))
-- last_s5(0) = DFFEAS(\Mux209~60\, GLOBAL(\clk~combout\), VCC, , , \Mux209~67\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => last_s5(1),
	datac => \Mux209~67\,
	datad => \Mux209~59\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~60\,
	regout => last_s5(0));

-- Location: LC_X9_Y4_N7
\Mux209~61\ : maxii_lcell
-- Equation(s):
-- \Mux209~61_combout\ = (\Mux209~58\ & (\d5~combout\(4))) # (!\Mux209~58\ & (((!\d5~combout\(4) & !\Mux172~1_combout\)) # (!\Mux209~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "89bb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d5~combout\(4),
	datab => \Mux209~58\,
	datac => \Mux172~1_combout\,
	datad => \Mux209~60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~61_combout\);

-- Location: LC_X9_Y4_N1
\Mux209~64\ : maxii_lcell
-- Equation(s):
-- \Mux209~64_combout\ = (\d5~combout\(5) & ((\Mux209~63_combout\ & ((last_s5(4)))) # (!\Mux209~63_combout\ & ((!last_s5(4)) # (!\Mux209~61_combout\))))) # (!\d5~combout\(5) & (((\Mux209~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc74",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux209~63_combout\,
	datab => \d5~combout\(5),
	datac => \Mux209~61_combout\,
	datad => last_s5(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~64_combout\);

-- Location: LC_X9_Y4_N2
\Mux209~65\ : maxii_lcell
-- Equation(s):
-- \Mux209~65_combout\ = ((\d5~combout\(3) & ((\Mux209~64_combout\))) # (!\d5~combout\(3) & (\Mux209~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux209~71_combout\,
	datac => \d5~combout\(3),
	datad => \Mux209~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~65_combout\);

-- Location: LC_X9_Y4_N3
\Mux209~66\ : maxii_lcell
-- Equation(s):
-- \Mux209~66_combout\ = (\d5~combout\(2) & (((\Mux209~65_combout\)))) # (!\d5~combout\(2) & (((\Mux207~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d5~combout\(2),
	datac => \Mux207~0_combout\,
	datad => \Mux209~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~66_combout\);

-- Location: LC_X9_Y4_N9
\s5[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux208~0\ = (\d5~combout\(1) & ((\d5~combout\(0) & (\Mux168~2_combout\)) # (!\d5~combout\(0) & ((\Mux209~66_combout\)))))
-- \s5[1]~reg0_regout\ = DFFEAS(\Mux208~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a80",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d5~combout\(1),
	datab => \Mux168~2_combout\,
	datac => \d5~combout\(0),
	datad => \Mux209~66_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux208~0\,
	regout => \s5[1]~reg0_regout\);

-- Location: LC_X10_Y1_N0
\last_s5[1]\ : maxii_lcell
-- Equation(s):
-- \Mux209~77\ = ((last_s5[1] & ((last_s5(4)))) # (!last_s5[1] & ((!last_s5(4)) # (!\d5~combout\(4)))))
-- last_s5(1) = DFFEAS(\Mux209~77\, GLOBAL(\clk~combout\), VCC, , , \Mux208~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f30f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \d5~combout\(4),
	datac => \Mux208~0\,
	datad => last_s5(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~77\,
	regout => last_s5(1));

-- Location: LC_X10_Y1_N5
\Mux178~1\ : maxii_lcell
-- Equation(s):
-- \Mux178~1_combout\ = ((last_s5(0)) # ((!last_s5(4)) # (!\Mux172~0_combout\))) # (!\Mux178~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux178~0_combout\,
	datab => last_s5(0),
	datac => \Mux172~0_combout\,
	datad => last_s5(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux178~1_combout\);

-- Location: LC_X9_Y4_N8
\s5[4]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux205~2\ = (\d5~combout\(4) & ((\Mux205~1_combout\ & (\Mux209~68_combout\)) # (!\Mux205~1_combout\ & ((!\Mux178~1_combout\)))))
-- \s5[4]~reg0_regout\ = DFFEAS(\Mux205~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80d0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux205~1_combout\,
	datab => \Mux209~68_combout\,
	datac => \d5~combout\(4),
	datad => \Mux178~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux205~2\,
	regout => \s5[4]~reg0_regout\);

-- Location: LC_X12_Y2_N3
\Mux168~0\ : maxii_lcell
-- Equation(s):
-- \Mux168~0_combout\ = (((!last_s5(4) & !last_s5(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s5(4),
	datad => last_s5(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux168~0_combout\);

-- Location: LC_X12_Y2_N4
\Mux204~0\ : maxii_lcell
-- Equation(s):
-- \Mux204~0_combout\ = (\Mux168~0_combout\ & (\Mux172~0_combout\ & (!last_s5(0) & last_s5(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~0_combout\,
	datab => \Mux172~0_combout\,
	datac => last_s5(0),
	datad => last_s5(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux204~0_combout\);

-- Location: LC_X7_Y4_N7
\s5[5]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux204~1\ = (\d5~combout\(5) & ((\Mux204~0_combout\) # ((\Mux205~1_combout\ & !\d5~combout\(4)))))
-- \s5[5]~reg0_regout\ = DFFEAS(\Mux204~1\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux205~1_combout\,
	datab => \d5~combout\(4),
	datac => \Mux204~0_combout\,
	datad => \d5~combout\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux204~1\,
	regout => \s5[5]~reg0_regout\);

-- Location: LC_X8_Y4_N8
\Mux168~1\ : maxii_lcell
-- Equation(s):
-- \Mux168~1_combout\ = ((!last_s5(3) & (!last_s5(5) & !last_s5(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => last_s5(3),
	datac => last_s5(5),
	datad => last_s5(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux168~1_combout\);

-- Location: LC_X12_Y2_N5
\Mux209~53\ : maxii_lcell
-- Equation(s):
-- \Mux209~53_combout\ = (last_s5(0)) # ((last_s5(4) & ((last_s5(3)) # (!\d5~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(3),
	datab => last_s5(4),
	datac => last_s5(0),
	datad => \d5~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~53_combout\);

-- Location: LC_X8_Y4_N5
\Mux209~55\ : maxii_lcell
-- Equation(s):
-- \Mux209~55_combout\ = (last_s5(2) $ (((last_s5(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => last_s5(2),
	datad => last_s5(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~55_combout\);

-- Location: LC_X12_Y2_N8
\Mux209~54\ : maxii_lcell
-- Equation(s):
-- \Mux209~54_combout\ = (\Mux168~0_combout\ & (last_s5(5) & ((!\Mux172~0_combout\) # (!\d5~combout\(5))))) # (!\Mux168~0_combout\ & (((last_s5(5)) # (!\Mux172~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~0_combout\,
	datab => \d5~combout\(5),
	datac => last_s5(5),
	datad => \Mux172~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~54_combout\);

-- Location: LC_X8_Y4_N2
\Mux209~56\ : maxii_lcell
-- Equation(s):
-- \Mux209~56_combout\ = (\Mux209~53_combout\) # ((\Mux209~54_combout\) # ((\Mux168~1_combout\ & !\Mux209~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \Mux209~53_combout\,
	datac => \Mux209~55_combout\,
	datad => \Mux209~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~56_combout\);

-- Location: LC_X10_Y1_N4
\Mux209~49\ : maxii_lcell
-- Equation(s):
-- \Mux209~49_combout\ = (last_s5(3) & ((last_s5(4)) # ((last_s5(5)) # (last_s5(1))))) # (!last_s5(3) & (last_s5(1) $ (((!last_s5(4) & !last_s5(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fec9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(4),
	datab => last_s5(3),
	datac => last_s5(5),
	datad => last_s5(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~49_combout\);

-- Location: LC_X10_Y1_N7
\Mux209~50\ : maxii_lcell
-- Equation(s):
-- \Mux209~50_combout\ = (last_s5(5) & (((last_s5(4))) # (!\d5~combout\(5)))) # (!last_s5(5) & (((!\d5~combout\(4) & last_s5(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(5),
	datab => \d5~combout\(5),
	datac => \d5~combout\(4),
	datad => last_s5(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~50_combout\);

-- Location: LC_X10_Y1_N8
\Mux209~51\ : maxii_lcell
-- Equation(s):
-- \Mux209~51_combout\ = (last_s5(2)) # ((last_s5(0)) # ((\Mux209~49_combout\) # (\Mux209~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(2),
	datab => last_s5(0),
	datac => \Mux209~49_combout\,
	datad => \Mux209~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~51_combout\);

-- Location: LC_X10_Y1_N9
\Mux209~78\ : maxii_lcell
-- Equation(s):
-- \Mux209~78_combout\ = (\Mux209~77\ & ((last_s5(4)) # ((!last_s5(5)) # (!\d5~combout\(5))))) # (!\Mux209~77\ & (((last_s5(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(4),
	datab => \d5~combout\(5),
	datac => \Mux209~77\,
	datad => last_s5(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~78_combout\);

-- Location: LC_X10_Y1_N1
\Mux209~69\ : maxii_lcell
-- Equation(s):
-- \Mux209~69_combout\ = (last_s5(2)) # ((last_s5(3)) # ((last_s5(0)) # (\Mux209~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(2),
	datab => last_s5(3),
	datac => last_s5(0),
	datad => \Mux209~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~69_combout\);

-- Location: LC_X10_Y1_N2
\Mux209~52\ : maxii_lcell
-- Equation(s):
-- \Mux209~52_combout\ = (\d5~combout\(2) & (((\d5~combout\(3))))) # (!\d5~combout\(2) & ((\d5~combout\(3) & (\Mux209~51_combout\)) # (!\d5~combout\(3) & ((\Mux209~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux209~51_combout\,
	datab => \d5~combout\(2),
	datac => \d5~combout\(3),
	datad => \Mux209~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~52_combout\);

-- Location: LC_X12_Y2_N2
\Mux209~45\ : maxii_lcell
-- Equation(s):
-- \Mux209~45_combout\ = (last_s5(5) & (((last_s5(4)) # (!\Mux172~0_combout\)) # (!\d5~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a2aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(5),
	datab => \d5~combout\(5),
	datac => last_s5(4),
	datad => \Mux172~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~45_combout\);

-- Location: LC_X12_Y2_N6
\Mux209~46\ : maxii_lcell
-- Equation(s):
-- \Mux209~46_combout\ = (!last_s5(4) & (!last_s5(5) & (last_s5(2) $ (!last_s5(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0021",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(2),
	datab => last_s5(4),
	datac => last_s5(1),
	datad => last_s5(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~46_combout\);

-- Location: LC_X12_Y2_N0
\Mux209~47\ : maxii_lcell
-- Equation(s):
-- \Mux209~47_combout\ = (\Mux209~46_combout\) # ((last_s5(4) & ((!\Mux172~0_combout\) # (!\d5~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux209~46_combout\,
	datab => \d5~combout\(4),
	datac => last_s5(4),
	datad => \Mux172~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~47_combout\);

-- Location: LC_X12_Y2_N1
\Mux209~48\ : maxii_lcell
-- Equation(s):
-- \Mux209~48_combout\ = (last_s5(0)) # ((\Mux209~45_combout\) # ((\Mux209~47_combout\) # (last_s5(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(0),
	datab => \Mux209~45_combout\,
	datac => \Mux209~47_combout\,
	datad => last_s5(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~48_combout\);

-- Location: LC_X9_Y4_N5
\Mux209~57\ : maxii_lcell
-- Equation(s):
-- \Mux209~57_combout\ = (\d5~combout\(2) & ((\Mux209~52_combout\ & (\Mux209~56_combout\)) # (!\Mux209~52_combout\ & ((\Mux209~48_combout\))))) # (!\d5~combout\(2) & (((\Mux209~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d5~combout\(2),
	datab => \Mux209~56_combout\,
	datac => \Mux209~52_combout\,
	datad => \Mux209~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux209~57_combout\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d6[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d6(2),
	combout => \d6~combout\(2));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d6[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d6(3),
	combout => \d6~combout\(3));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d6[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d6(4),
	combout => \d6~combout\(4));

-- Location: LC_X6_Y6_N0
\Mux210~1\ : maxii_lcell
-- Equation(s):
-- \Mux210~1_combout\ = ((!last_s6(5) & (!last_s6(3) & !last_s6(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => last_s6(5),
	datac => last_s6(3),
	datad => last_s6(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux210~1_combout\);

-- Location: LC_X7_Y6_N1
\Mux210~2\ : maxii_lcell
-- Equation(s):
-- \Mux210~2_combout\ = (!last_s6(2) & (last_s6(1) & (\Mux210~1_combout\ & !last_s6(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s6(2),
	datab => last_s6(1),
	datac => \Mux210~1_combout\,
	datad => last_s6(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux210~2_combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d6[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d6(0),
	combout => \d6~combout\(0));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d6[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d6(1),
	combout => \d6~combout\(1));

-- Location: LC_X8_Y5_N9
\s6[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux250~0\ = (\d6~combout\(1) & ((\d6~combout\(0) & (\Mux210~2_combout\)) # (!\d6~combout\(0) & ((\Mux251~66_combout\)))))
-- \s6[1]~reg0_regout\ = DFFEAS(\Mux250~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux210~2_combout\,
	datab => \d6~combout\(0),
	datac => \d6~combout\(1),
	datad => \Mux251~66_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux250~0\,
	regout => \s6[1]~reg0_regout\);

-- Location: LC_X8_Y7_N6
\last_s6[1]\ : maxii_lcell
-- Equation(s):
-- \Mux251~77\ = ((last_s6(4) & ((last_s6[1]) # (!\d6~combout\(4)))) # (!last_s6(4) & (!last_s6[1])))
-- last_s6(1) = DFFEAS(\Mux251~77\, GLOBAL(\clk~combout\), VCC, , , \Mux250~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3cf",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => last_s6(4),
	datac => \Mux250~0\,
	datad => \d6~combout\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~77\,
	regout => last_s6(1));

-- Location: LC_X6_Y6_N1
\Mux214~0\ : maxii_lcell
-- Equation(s):
-- \Mux214~0_combout\ = (((!last_s6(2) & !last_s6(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s6(2),
	datad => last_s6(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux214~0_combout\);

-- Location: LC_X8_Y5_N1
\Mux214~1\ : maxii_lcell
-- Equation(s):
-- \Mux214~1_combout\ = (((!last_s6(4) & !last_s6(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s6(4),
	datad => last_s6(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux214~1_combout\);

-- Location: LC_X5_Y4_N6
\Mux214~2\ : maxii_lcell
-- Equation(s):
-- \Mux214~2_combout\ = (\Mux214~0_combout\ & (\Mux214~1_combout\ & (last_s6(3) & !last_s6(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux214~0_combout\,
	datab => \Mux214~1_combout\,
	datac => last_s6(3),
	datad => last_s6(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux214~2_combout\);

-- Location: LC_X5_Y4_N7
\Mux247~0\ : maxii_lcell
-- Equation(s):
-- \Mux247~0_combout\ = ((!\d6~combout\(1) & (!\d6~combout\(2) & !\d6~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d6~combout\(1),
	datac => \d6~combout\(2),
	datad => \d6~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux247~0_combout\);

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d6[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d6(5),
	combout => \d6~combout\(5));

-- Location: LC_X7_Y6_N6
\Mux251~40\ : maxii_lcell
-- Equation(s):
-- \Mux251~40_combout\ = (last_s6(4) & ((last_s6(5)) # ((!\d6~combout\(4))))) # (!last_s6(4) & (((!\d6~combout\(5))) # (!last_s6(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9bdf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s6(4),
	datab => last_s6(5),
	datac => \d6~combout\(4),
	datad => \d6~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~40_combout\);

-- Location: LC_X7_Y6_N7
\Mux251~38\ : maxii_lcell
-- Equation(s):
-- \Mux251~38_combout\ = (((last_s6(3)) # (\Mux251~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s6(3),
	datad => \Mux251~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~38_combout\);

-- Location: LC_X7_Y6_N8
\Mux251~72\ : maxii_lcell
-- Equation(s):
-- \Mux251~72_combout\ = (last_s6(2)) # ((last_s6(1)) # ((last_s6(0)) # (\Mux251~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s6(2),
	datab => last_s6(1),
	datac => last_s6(0),
	datad => \Mux251~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~72_combout\);

-- Location: LC_X5_Y4_N9
\s6[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux248~0\ = (\d6~combout\(3) & ((\Mux247~0_combout\ & ((\Mux251~72_combout\))) # (!\Mux247~0_combout\ & (\Mux214~2_combout\))))
-- \s6[3]~reg0_regout\ = DFFEAS(\Mux248~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e020",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux214~2_combout\,
	datab => \Mux247~0_combout\,
	datac => \d6~combout\(3),
	datad => \Mux251~72_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux248~0\,
	regout => \s6[3]~reg0_regout\);

-- Location: LC_X7_Y5_N7
\last_s6[3]\ : maxii_lcell
-- Equation(s):
-- \Mux251~62\ = (last_s6(2) & ((last_s6(4)) # ((!last_s6(5) & !last_s6[3])))) # (!last_s6(2) & ((last_s6(5) & ((last_s6(4)) # (!last_s6[3]))) # (!last_s6(5) & (last_s6[3]))))
-- last_s6(3) = DFFEAS(\Mux251~62\, GLOBAL(\clk~combout\), VCC, , , \Mux248~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe16",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s6(2),
	datab => last_s6(5),
	datac => \Mux248~0\,
	datad => last_s6(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~62\,
	regout => last_s6(3));

-- Location: LC_X8_Y6_N7
\last_s6[4]\ : maxii_lcell
-- Equation(s):
-- \Mux251~59\ = (last_s6(2) & (!last_s6(3) & ((!last_s6[4]) # (!\d6~combout\(4))))) # (!last_s6(2) & (last_s6(3) $ (((\d6~combout\(4) & last_s6[4])))))
-- last_s6(4) = DFFEAS(\Mux251~59\, GLOBAL(\clk~combout\), VCC, , , \Mux247~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "156a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s6(2),
	datab => \d6~combout\(4),
	datac => \Mux247~2\,
	datad => last_s6(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~59\,
	regout => last_s6(4));

-- Location: LC_X8_Y7_N5
\Mux251~55\ : maxii_lcell
-- Equation(s):
-- \Mux251~55_combout\ = ((last_s6(2) $ (last_s6(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s6(2),
	datad => last_s6(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~55_combout\);

-- Location: LC_X8_Y6_N2
\Mux251~53\ : maxii_lcell
-- Equation(s):
-- \Mux251~53_combout\ = (last_s6(0)) # ((last_s6(4) & ((last_s6(3)) # (!\d6~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s6(0),
	datab => \d6~combout\(4),
	datac => last_s6(4),
	datad => last_s6(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~53_combout\);

-- Location: LC_X8_Y6_N1
\Mux251~54\ : maxii_lcell
-- Equation(s):
-- \Mux251~54_combout\ = (last_s6(5) & (((!\d6~combout\(5)) # (!\Mux214~0_combout\)) # (!\Mux210~0_combout\))) # (!last_s6(5) & (!\Mux210~0_combout\ & (!\Mux214~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2bab",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s6(5),
	datab => \Mux210~0_combout\,
	datac => \Mux214~0_combout\,
	datad => \d6~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~54_combout\);

-- Location: LC_X8_Y6_N6
\Mux251~56\ : maxii_lcell
-- Equation(s):
-- \Mux251~56_combout\ = (\Mux251~53_combout\) # ((\Mux251~54_combout\) # ((!\Mux251~55_combout\ & \Mux210~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux251~55_combout\,
	datab => \Mux251~53_combout\,
	datac => \Mux210~1_combout\,
	datad => \Mux251~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~56_combout\);

-- Location: LC_X6_Y6_N2
\Mux251~45\ : maxii_lcell
-- Equation(s):
-- \Mux251~45_combout\ = (last_s6(5) & (((last_s6(4)) # (!\Mux214~0_combout\)) # (!\d6~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d6~combout\(5),
	datab => last_s6(4),
	datac => last_s6(5),
	datad => \Mux214~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~45_combout\);

-- Location: LC_X6_Y6_N3
\Mux251~46\ : maxii_lcell
-- Equation(s):
-- \Mux251~46_combout\ = (!last_s6(4) & (!last_s6(5) & (last_s6(2) $ (!last_s6(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0201",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s6(2),
	datab => last_s6(4),
	datac => last_s6(5),
	datad => last_s6(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~46_combout\);

-- Location: LC_X6_Y6_N4
\Mux251~47\ : maxii_lcell
-- Equation(s):
-- \Mux251~47_combout\ = (\Mux251~46_combout\) # ((last_s6(4) & ((!\d6~combout\(4)) # (!\Mux214~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s6(4),
	datab => \Mux214~0_combout\,
	datac => \d6~combout\(4),
	datad => \Mux251~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~47_combout\);

-- Location: LC_X6_Y6_N5
\Mux251~48\ : maxii_lcell
-- Equation(s):
-- \Mux251~48_combout\ = (last_s6(0)) # ((\Mux251~45_combout\) # ((last_s6(3)) # (\Mux251~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s6(0),
	datab => \Mux251~45_combout\,
	datac => last_s6(3),
	datad => \Mux251~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~48_combout\);

-- Location: LC_X8_Y7_N8
\Mux251~78\ : maxii_lcell
-- Equation(s):
-- \Mux251~78_combout\ = (last_s6(5) & ((last_s6(4)) # ((!\d6~combout\(5)) # (!\Mux251~77\)))) # (!last_s6(5) & (((\Mux251~77\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s6(5),
	datab => last_s6(4),
	datac => \Mux251~77\,
	datad => \d6~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~78_combout\);

-- Location: LC_X8_Y7_N9
\Mux251~69\ : maxii_lcell
-- Equation(s):
-- \Mux251~69_combout\ = (last_s6(2)) # ((last_s6(0)) # ((last_s6(3)) # (\Mux251~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s6(2),
	datab => last_s6(0),
	datac => last_s6(3),
	datad => \Mux251~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~69_combout\);

-- Location: LC_X8_Y7_N4
\Mux251~49\ : maxii_lcell
-- Equation(s):
-- \Mux251~49_combout\ = (last_s6(3) & ((last_s6(5)) # ((last_s6(4)) # (last_s6(1))))) # (!last_s6(3) & (last_s6(1) $ (((!last_s6(5) & !last_s6(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fea9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s6(3),
	datab => last_s6(5),
	datac => last_s6(4),
	datad => last_s6(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~49_combout\);

-- Location: LC_X8_Y7_N1
\Mux251~50\ : maxii_lcell
-- Equation(s):
-- \Mux251~50_combout\ = (last_s6(5) & (((last_s6(4)) # (!\d6~combout\(5))))) # (!last_s6(5) & (!\d6~combout\(4) & (last_s6(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0dc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d6~combout\(4),
	datab => last_s6(5),
	datac => last_s6(4),
	datad => \d6~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~50_combout\);

-- Location: LC_X8_Y7_N2
\Mux251~51\ : maxii_lcell
-- Equation(s):
-- \Mux251~51_combout\ = (\Mux251~49_combout\) # ((last_s6(0)) # ((last_s6(2)) # (\Mux251~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux251~49_combout\,
	datab => last_s6(0),
	datac => last_s6(2),
	datad => \Mux251~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~51_combout\);

-- Location: LC_X8_Y7_N7
\Mux251~52\ : maxii_lcell
-- Equation(s):
-- \Mux251~52_combout\ = (\d6~combout\(3) & (((\d6~combout\(2)) # (\Mux251~51_combout\)))) # (!\d6~combout\(3) & (\Mux251~69_combout\ & (!\d6~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d6~combout\(3),
	datab => \Mux251~69_combout\,
	datac => \d6~combout\(2),
	datad => \Mux251~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~52_combout\);

-- Location: LC_X8_Y5_N0
\Mux251~57\ : maxii_lcell
-- Equation(s):
-- \Mux251~57_combout\ = (\d6~combout\(2) & ((\Mux251~52_combout\ & (\Mux251~56_combout\)) # (!\Mux251~52_combout\ & ((\Mux251~48_combout\))))) # (!\d6~combout\(2) & (((\Mux251~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d6~combout\(2),
	datab => \Mux251~56_combout\,
	datac => \Mux251~48_combout\,
	datad => \Mux251~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~57_combout\);

-- Location: LC_X8_Y5_N3
\s6[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux251~67\ = (\d6~combout\(0) & ((\d6~combout\(1) & ((\Mux251~57_combout\))) # (!\d6~combout\(1) & (\Mux251~66_combout\))))
-- \s6[0]~reg0_regout\ = DFFEAS(\Mux251~67\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c088",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux251~66_combout\,
	datab => \d6~combout\(0),
	datac => \Mux251~57_combout\,
	datad => \d6~combout\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~67\,
	regout => \s6[0]~reg0_regout\);

-- Location: LC_X8_Y5_N4
\last_s6[0]\ : maxii_lcell
-- Equation(s):
-- \Mux251~60\ = (\Mux251~59\ & (((!last_s6[0] & !last_s6(1)))))
-- last_s6(0) = DFFEAS(\Mux251~60\, GLOBAL(\clk~combout\), VCC, , , \Mux251~67\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux251~59\,
	datac => \Mux251~67\,
	datad => last_s6(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~60\,
	regout => last_s6(0));

-- Location: LC_X8_Y7_N3
\Mux220~0\ : maxii_lcell
-- Equation(s):
-- \Mux220~0_combout\ = (((!last_s6(3) & !last_s6(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s6(3),
	datad => last_s6(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux220~0_combout\);

-- Location: LC_X8_Y6_N8
\Mux220~1\ : maxii_lcell
-- Equation(s):
-- \Mux220~1_combout\ = (last_s6(0)) # (((!\Mux220~0_combout\) # (!\Mux214~0_combout\)) # (!last_s6(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s6(0),
	datab => last_s6(4),
	datac => \Mux214~0_combout\,
	datad => \Mux220~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux220~1_combout\);

-- Location: LC_X5_Y4_N8
\Mux247~1\ : maxii_lcell
-- Equation(s):
-- \Mux247~1_combout\ = (!\d6~combout\(3) & (!\d6~combout\(1) & (!\d6~combout\(2) & !\d6~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d6~combout\(3),
	datab => \d6~combout\(1),
	datac => \d6~combout\(2),
	datad => \d6~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux247~1_combout\);

-- Location: LC_X8_Y6_N9
\Mux251~68\ : maxii_lcell
-- Equation(s):
-- \Mux251~68_combout\ = (((!\d6~combout\(5)) # (!\Mux246~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mux246~0_combout\,
	datad => \d6~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~68_combout\);

-- Location: LC_X8_Y6_N5
\s6[4]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux247~2\ = (\d6~combout\(4) & ((\Mux247~1_combout\ & ((\Mux251~68_combout\))) # (!\Mux247~1_combout\ & (!\Mux220~1_combout\))))
-- \s6[4]~reg0_regout\ = DFFEAS(\Mux247~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c404",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux220~1_combout\,
	datab => \d6~combout\(4),
	datac => \Mux247~1_combout\,
	datad => \Mux251~68_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux247~2\,
	regout => \s6[4]~reg0_regout\);

-- Location: LC_X8_Y6_N0
\Mux210~0\ : maxii_lcell
-- Equation(s):
-- \Mux210~0_combout\ = (((!last_s6(4) & !last_s6(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s6(4),
	datad => last_s6(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux210~0_combout\);

-- Location: LC_X8_Y6_N4
\Mux246~0\ : maxii_lcell
-- Equation(s):
-- \Mux246~0_combout\ = (last_s6(5) & (\Mux210~0_combout\ & (\Mux214~0_combout\ & !last_s6(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s6(5),
	datab => \Mux210~0_combout\,
	datac => \Mux214~0_combout\,
	datad => last_s6(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux246~0_combout\);

-- Location: LC_X8_Y6_N3
\s6[5]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux246~1\ = (\d6~combout\(5) & ((\Mux246~0_combout\) # ((!\d6~combout\(4) & \Mux247~1_combout\))))
-- \s6[5]~reg0_regout\ = DFFEAS(\Mux246~1\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux246~0_combout\,
	datab => \d6~combout\(4),
	datac => \Mux247~1_combout\,
	datad => \d6~combout\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux246~1\,
	regout => \s6[5]~reg0_regout\);

-- Location: LC_X7_Y6_N2
\last_s6[5]\ : maxii_lcell
-- Equation(s):
-- \Mux251~58\ = ((\d6~combout\(5)) # ((\d6~combout\(4) & last_s6[5])))
-- last_s6(5) = DFFEAS(\Mux251~58\, GLOBAL(\clk~combout\), VCC, , , \Mux246~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \d6~combout\(4),
	datac => \Mux246~1\,
	datad => \d6~combout\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~58\,
	regout => last_s6(5));

-- Location: LC_X7_Y6_N9
\Mux211~0\ : maxii_lcell
-- Equation(s):
-- \Mux211~0_combout\ = (last_s6(2) & (!last_s6(1) & (\Mux210~1_combout\ & !last_s6(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s6(2),
	datab => last_s6(1),
	datac => \Mux210~1_combout\,
	datad => last_s6(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux211~0_combout\);

-- Location: LC_X5_Y4_N0
\Mux249~1\ : maxii_lcell
-- Equation(s):
-- \Mux249~1_combout\ = ((!\d6~combout\(1) & ((!\d6~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d6~combout\(1),
	datad => \d6~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux249~1_combout\);

-- Location: LC_X6_Y6_N7
\s6[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux249~2\ = (\d6~combout\(2) & ((\Mux249~1_combout\ & ((\Mux249~0_combout\))) # (!\Mux249~1_combout\ & (\Mux211~0_combout\))))
-- \s6[2]~reg0_regout\ = DFFEAS(\Mux249~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d6~combout\(2),
	datab => \Mux211~0_combout\,
	datac => \Mux249~1_combout\,
	datad => \Mux249~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux249~2\,
	regout => \s6[2]~reg0_regout\);

-- Location: LC_X6_Y6_N9
\last_s6[2]\ : maxii_lcell
-- Equation(s):
-- \Mux251~75\ = ((last_s6(5) & ((last_s6[2]) # (!\d6~combout\(5)))) # (!last_s6(5) & (!last_s6[2])))
-- last_s6(2) = DFFEAS(\Mux251~75\, GLOBAL(\clk~combout\), VCC, , , \Mux249~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3cf",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => last_s6(5),
	datac => \Mux249~2\,
	datad => \d6~combout\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~75\,
	regout => last_s6(2));

-- Location: LC_X7_Y6_N3
\Mux251~73\ : maxii_lcell
-- Equation(s):
-- \Mux251~73_combout\ = (last_s6(4) & ((last_s6(5)) # ((!\d6~combout\(4))))) # (!last_s6(4) & (last_s6(5) $ (((\d6~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9bce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s6(4),
	datab => last_s6(5),
	datac => \d6~combout\(4),
	datad => \d6~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~73_combout\);

-- Location: LC_X7_Y6_N4
\Mux251~74\ : maxii_lcell
-- Equation(s):
-- \Mux251~74_combout\ = (last_s6(3) & ((last_s6(4)) # (\d6~combout\(5) $ (\Mux251~73_combout\)))) # (!last_s6(3) & ((\Mux251~73_combout\) # ((!\d6~combout\(5) & !last_s6(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7a9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s6(3),
	datab => \d6~combout\(5),
	datac => last_s6(4),
	datad => \Mux251~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~74_combout\);

-- Location: LC_X7_Y6_N5
\Mux251~70\ : maxii_lcell
-- Equation(s):
-- \Mux251~70_combout\ = (last_s6(2)) # ((last_s6(1)) # ((\Mux251~74_combout\) # (last_s6(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s6(2),
	datab => last_s6(1),
	datac => \Mux251~74_combout\,
	datad => last_s6(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~70_combout\);

-- Location: LC_X7_Y6_N0
\Mux249~0\ : maxii_lcell
-- Equation(s):
-- \Mux249~0_combout\ = (\d6~combout\(3) & (((\Mux251~70_combout\)))) # (!\d6~combout\(3) & (((\Mux251~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d6~combout\(3),
	datac => \Mux251~70_combout\,
	datad => \Mux251~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux249~0_combout\);

-- Location: LC_X6_Y6_N8
\Mux251~76\ : maxii_lcell
-- Equation(s):
-- \Mux251~76_combout\ = (last_s6(4) & (((last_s6(5)) # (!\Mux251~75\)) # (!\d6~combout\(4)))) # (!last_s6(4) & (((\Mux251~75\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d6~combout\(4),
	datab => last_s6(5),
	datac => last_s6(4),
	datad => \Mux251~75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~76_combout\);

-- Location: LC_X6_Y6_N6
\Mux251~71\ : maxii_lcell
-- Equation(s):
-- \Mux251~71_combout\ = (last_s6(0)) # ((last_s6(1)) # ((last_s6(3)) # (\Mux251~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s6(0),
	datab => last_s6(1),
	datac => last_s6(3),
	datad => \Mux251~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~71_combout\);

-- Location: LC_X8_Y5_N5
\Mux251~63\ : maxii_lcell
-- Equation(s):
-- \Mux251~63_combout\ = (last_s6(0) & (((last_s6(4))))) # (!last_s6(0) & ((last_s6(1) & (last_s6(4))) # (!last_s6(1) & ((\Mux251~62\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s6(0),
	datab => last_s6(1),
	datac => last_s6(4),
	datad => \Mux251~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~63_combout\);

-- Location: LC_X8_Y5_N2
\Mux251~61\ : maxii_lcell
-- Equation(s):
-- \Mux251~61_combout\ = (\Mux251~58\ & (\d6~combout\(4))) # (!\Mux251~58\ & (((!\d6~combout\(4) & !\Mux214~1_combout\)) # (!\Mux251~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a1af",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d6~combout\(4),
	datab => \Mux214~1_combout\,
	datac => \Mux251~58\,
	datad => \Mux251~60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~61_combout\);

-- Location: LC_X8_Y5_N6
\Mux251~64\ : maxii_lcell
-- Equation(s):
-- \Mux251~64_combout\ = (\d6~combout\(5) & ((last_s6(4) & ((\Mux251~63_combout\) # (!\Mux251~61_combout\))) # (!last_s6(4) & (!\Mux251~63_combout\)))) # (!\d6~combout\(5) & (((\Mux251~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b78c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s6(4),
	datab => \d6~combout\(5),
	datac => \Mux251~63_combout\,
	datad => \Mux251~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~64_combout\);

-- Location: LC_X8_Y5_N7
\Mux251~65\ : maxii_lcell
-- Equation(s):
-- \Mux251~65_combout\ = (\d6~combout\(3) & (((\Mux251~64_combout\)))) # (!\d6~combout\(3) & (((\Mux251~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d6~combout\(3),
	datac => \Mux251~71_combout\,
	datad => \Mux251~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~65_combout\);

-- Location: LC_X8_Y5_N8
\Mux251~66\ : maxii_lcell
-- Equation(s):
-- \Mux251~66_combout\ = (\d6~combout\(2) & (((\Mux251~65_combout\)))) # (!\d6~combout\(2) & (((\Mux249~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d6~combout\(2),
	datac => \Mux249~0_combout\,
	datad => \Mux251~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux251~66_combout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d7[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d7(5),
	combout => \d7~combout\(5));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d7[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d7(2),
	combout => \d7~combout\(2));

-- Location: LC_X12_Y4_N6
\Mux262~0\ : maxii_lcell
-- Equation(s):
-- \Mux262~0_combout\ = (((!last_s7(5) & !last_s7(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s7(5),
	datad => last_s7(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux262~0_combout\);

-- Location: LC_X12_Y4_N9
\Mux256~0\ : maxii_lcell
-- Equation(s):
-- \Mux256~0_combout\ = ((!last_s7(1) & ((!last_s7(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => last_s7(1),
	datad => last_s7(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux256~0_combout\);

-- Location: LC_X12_Y4_N7
\Mux262~1\ : maxii_lcell
-- Equation(s):
-- \Mux262~1_combout\ = (((last_s7(0)) # (!last_s7(4))) # (!\Mux256~0_combout\)) # (!\Mux262~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux262~0_combout\,
	datab => \Mux256~0_combout\,
	datac => last_s7(0),
	datad => last_s7(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux262~1_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d7[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d7(3),
	combout => \d7~combout\(3));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d7[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d7(0),
	combout => \d7~combout\(0));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d7[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d7(1),
	combout => \d7~combout\(1));

-- Location: LC_X10_Y5_N7
\Mux289~1\ : maxii_lcell
-- Equation(s):
-- \Mux289~1_combout\ = (!\d7~combout\(2) & (!\d7~combout\(3) & (!\d7~combout\(0) & !\d7~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d7~combout\(2),
	datab => \d7~combout\(3),
	datac => \d7~combout\(0),
	datad => \d7~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux289~1_combout\);

-- Location: LC_X10_Y5_N5
\Mux293~68\ : maxii_lcell
-- Equation(s):
-- \Mux293~68_combout\ = (((!\Mux288~0_combout\) # (!\d7~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \d7~combout\(5),
	datad => \Mux288~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~68_combout\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d7[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d7(4),
	combout => \d7~combout\(4));

-- Location: LC_X10_Y5_N9
\s7[4]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux289~2\ = (\d7~combout\(4) & ((\Mux289~1_combout\ & ((\Mux293~68_combout\))) # (!\Mux289~1_combout\ & (!\Mux262~1_combout\))))
-- \s7[4]~reg0_regout\ = DFFEAS(\Mux289~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux262~1_combout\,
	datab => \Mux289~1_combout\,
	datac => \Mux293~68_combout\,
	datad => \d7~combout\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux289~2\,
	regout => \s7[4]~reg0_regout\);

-- Location: LC_X11_Y5_N0
\last_s7[4]\ : maxii_lcell
-- Equation(s):
-- \Mux293~59\ = (last_s7(3) & (!last_s7(2) & ((!\d7~combout\(4)) # (!last_s7[4])))) # (!last_s7(3) & (last_s7(2) $ (((last_s7[4] & \d7~combout\(4))))))
-- last_s7(4) = DFFEAS(\Mux293~59\, GLOBAL(\clk~combout\), VCC, , , \Mux289~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1666",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s7(3),
	datab => last_s7(2),
	datac => \Mux289~2\,
	datad => \d7~combout\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~59\,
	regout => last_s7(4));

-- Location: LC_X11_Y4_N4
\Mux293~40\ : maxii_lcell
-- Equation(s):
-- \Mux293~40_combout\ = (last_s7(4) & (((last_s7(5)) # (!\d7~combout\(4))))) # (!last_s7(4) & (((!last_s7(5))) # (!\d7~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb5f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s7(4),
	datab => \d7~combout\(5),
	datac => \d7~combout\(4),
	datad => last_s7(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~40_combout\);

-- Location: LC_X11_Y4_N5
\Mux293~38\ : maxii_lcell
-- Equation(s):
-- \Mux293~38_combout\ = ((last_s7(3)) # ((\Mux293~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => last_s7(3),
	datad => \Mux293~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~38_combout\);

-- Location: LC_X11_Y4_N6
\Mux293~72\ : maxii_lcell
-- Equation(s):
-- \Mux293~72_combout\ = (last_s7(2)) # ((last_s7(0)) # ((last_s7(1)) # (\Mux293~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s7(2),
	datab => last_s7(0),
	datac => last_s7(1),
	datad => \Mux293~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~72_combout\);

-- Location: LC_X12_Y5_N1
\Mux293~73\ : maxii_lcell
-- Equation(s):
-- \Mux293~73_combout\ = (last_s7(4) & (((last_s7(5)) # (!\d7~combout\(4))))) # (!last_s7(4) & (\d7~combout\(5) $ ((last_s7(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b4be",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s7(4),
	datab => \d7~combout\(5),
	datac => last_s7(5),
	datad => \d7~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~73_combout\);

-- Location: LC_X12_Y5_N8
\Mux293~74\ : maxii_lcell
-- Equation(s):
-- \Mux293~74_combout\ = (\Mux293~73_combout\ & ((last_s7(4)) # ((!last_s7(3)) # (!\d7~combout\(5))))) # (!\Mux293~73_combout\ & (last_s7(3) $ (((!last_s7(4) & !\d7~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "becd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s7(4),
	datab => \Mux293~73_combout\,
	datac => \d7~combout\(5),
	datad => last_s7(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~74_combout\);

-- Location: LC_X12_Y5_N2
\Mux293~70\ : maxii_lcell
-- Equation(s):
-- \Mux293~70_combout\ = (\Mux293~74_combout\) # ((last_s7(1)) # ((last_s7(0)) # (last_s7(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux293~74_combout\,
	datab => last_s7(1),
	datac => last_s7(0),
	datad => last_s7(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~70_combout\);

-- Location: LC_X12_Y5_N3
\Mux291~0\ : maxii_lcell
-- Equation(s):
-- \Mux291~0_combout\ = (\d7~combout\(3) & (((\Mux293~70_combout\)))) # (!\d7~combout\(3) & (((\Mux293~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d7~combout\(3),
	datac => \Mux293~72_combout\,
	datad => \Mux293~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux291~0_combout\);

-- Location: LC_X12_Y5_N9
\last_s7[2]\ : maxii_lcell
-- Equation(s):
-- \Mux293~75\ = (last_s7(5) & (((last_s7[2])) # (!\d7~combout\(5)))) # (!last_s7(5) & (((!last_s7[2]))))
-- last_s7(2) = DFFEAS(\Mux293~75\, GLOBAL(\clk~combout\), VCC, , , \Mux291~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a7a7",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s7(5),
	datab => \d7~combout\(5),
	datac => \Mux291~2\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~75\,
	regout => last_s7(2));

-- Location: LC_X11_Y4_N8
\Mux293~76\ : maxii_lcell
-- Equation(s):
-- \Mux293~76_combout\ = (last_s7(4) & ((last_s7(5)) # ((!\Mux293~75\) # (!\d7~combout\(4))))) # (!last_s7(4) & (((\Mux293~75\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s7(4),
	datab => last_s7(5),
	datac => \d7~combout\(4),
	datad => \Mux293~75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~76_combout\);

-- Location: LC_X11_Y4_N3
\Mux293~71\ : maxii_lcell
-- Equation(s):
-- \Mux293~71_combout\ = (last_s7(1)) # ((last_s7(3)) # ((last_s7(0)) # (\Mux293~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s7(1),
	datab => last_s7(3),
	datac => last_s7(0),
	datad => \Mux293~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~71_combout\);

-- Location: LC_X10_Y5_N6
\Mux289~0\ : maxii_lcell
-- Equation(s):
-- \Mux289~0_combout\ = (!\d7~combout\(2) & (((!\d7~combout\(0) & !\d7~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d7~combout\(2),
	datac => \d7~combout\(0),
	datad => \d7~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux289~0_combout\);

-- Location: LC_X11_Y4_N2
\Mux256~1\ : maxii_lcell
-- Equation(s):
-- \Mux256~1_combout\ = (((!last_s7(4) & !last_s7(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s7(4),
	datad => last_s7(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux256~1_combout\);

-- Location: LC_X12_Y4_N1
\Mux256~2\ : maxii_lcell
-- Equation(s):
-- \Mux256~2_combout\ = (last_s7(3) & (\Mux256~0_combout\ & (!last_s7(0) & \Mux256~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s7(3),
	datab => \Mux256~0_combout\,
	datac => last_s7(0),
	datad => \Mux256~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux256~2_combout\);

-- Location: LC_X12_Y5_N0
\s7[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux290~0\ = (\d7~combout\(3) & ((\Mux289~0_combout\ & (\Mux293~72_combout\)) # (!\Mux289~0_combout\ & ((\Mux256~2_combout\)))))
-- \s7[3]~reg0_regout\ = DFFEAS(\Mux290~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux293~72_combout\,
	datab => \Mux289~0_combout\,
	datac => \d7~combout\(3),
	datad => \Mux256~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux290~0\,
	regout => \s7[3]~reg0_regout\);

-- Location: LC_X12_Y5_N6
\last_s7[3]\ : maxii_lcell
-- Equation(s):
-- \Mux293~62\ = (last_s7(5) & ((last_s7(4)) # ((!last_s7(2) & !last_s7[3])))) # (!last_s7(5) & ((last_s7(2) & ((last_s7(4)) # (!last_s7[3]))) # (!last_s7(2) & (last_s7[3]))))
-- last_s7(3) = DFFEAS(\Mux293~62\, GLOBAL(\clk~combout\), VCC, , , \Mux290~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe16",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s7(5),
	datab => last_s7(2),
	datac => \Mux290~0\,
	datad => last_s7(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~62\,
	regout => last_s7(3));

-- Location: LC_X12_Y5_N7
\Mux293~63\ : maxii_lcell
-- Equation(s):
-- \Mux293~63_combout\ = (last_s7(1) & (((last_s7(4))))) # (!last_s7(1) & ((last_s7(0) & ((last_s7(4)))) # (!last_s7(0) & (\Mux293~62\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux293~62\,
	datab => last_s7(1),
	datac => last_s7(0),
	datad => last_s7(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~63_combout\);

-- Location: LC_X11_Y5_N6
\last_s7[0]\ : maxii_lcell
-- Equation(s):
-- \Mux293~60\ = ((\Mux293~59\ & (!last_s7[0] & !last_s7(1))))
-- last_s7(0) = DFFEAS(\Mux293~60\, GLOBAL(\clk~combout\), VCC, , , \Mux293~67\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Mux293~59\,
	datac => \Mux293~67\,
	datad => last_s7(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~60\,
	regout => last_s7(0));

-- Location: LC_X11_Y5_N8
\last_s7[5]\ : maxii_lcell
-- Equation(s):
-- \Mux293~58\ = ((\d7~combout\(5)) # ((last_s7[5] & \d7~combout\(4))))
-- last_s7(5) = DFFEAS(\Mux293~58\, GLOBAL(\clk~combout\), VCC, , , \Mux288~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \d7~combout\(5),
	datac => \Mux288~1\,
	datad => \d7~combout\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~58\,
	regout => last_s7(5));

-- Location: LC_X11_Y5_N2
\Mux293~61\ : maxii_lcell
-- Equation(s):
-- \Mux293~61_combout\ = (\Mux293~58\ & (((\d7~combout\(4))))) # (!\Mux293~58\ & (((!\Mux256~1_combout\ & !\d7~combout\(4))) # (!\Mux293~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc1f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux256~1_combout\,
	datab => \d7~combout\(4),
	datac => \Mux293~60\,
	datad => \Mux293~58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~61_combout\);

-- Location: LC_X11_Y5_N3
\Mux293~64\ : maxii_lcell
-- Equation(s):
-- \Mux293~64_combout\ = (\d7~combout\(5) & ((\Mux293~63_combout\ & (last_s7(4))) # (!\Mux293~63_combout\ & ((!\Mux293~61_combout\) # (!last_s7(4)))))) # (!\d7~combout\(5) & (((\Mux293~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b7c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux293~63_combout\,
	datab => \d7~combout\(5),
	datac => last_s7(4),
	datad => \Mux293~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~64_combout\);

-- Location: LC_X11_Y5_N1
\Mux293~65\ : maxii_lcell
-- Equation(s):
-- \Mux293~65_combout\ = ((\d7~combout\(3) & ((\Mux293~64_combout\))) # (!\d7~combout\(3) & (\Mux293~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux293~71_combout\,
	datac => \d7~combout\(3),
	datad => \Mux293~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~65_combout\);

-- Location: LC_X11_Y5_N4
\Mux293~66\ : maxii_lcell
-- Equation(s):
-- \Mux293~66_combout\ = ((\d7~combout\(2) & ((\Mux293~65_combout\))) # (!\d7~combout\(2) & (\Mux291~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d7~combout\(2),
	datac => \Mux291~0_combout\,
	datad => \Mux293~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~66_combout\);

-- Location: LC_X11_Y5_N9
\s7[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux293~67\ = (\d7~combout\(0) & ((\d7~combout\(1) & (\Mux293~57_combout\)) # (!\d7~combout\(1) & ((\Mux293~66_combout\)))))
-- \s7[0]~reg0_regout\ = DFFEAS(\Mux293~67\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux293~57_combout\,
	datab => \d7~combout\(0),
	datac => \Mux293~66_combout\,
	datad => \d7~combout\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~67\,
	regout => \s7[0]~reg0_regout\);

-- Location: LC_X11_Y4_N1
\Mux252~2\ : maxii_lcell
-- Equation(s):
-- \Mux252~2_combout\ = (!last_s7(2) & (!last_s7(0) & (last_s7(1) & \Mux252~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s7(2),
	datab => last_s7(0),
	datac => last_s7(1),
	datad => \Mux252~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux252~2_combout\);

-- Location: LC_X11_Y5_N5
\s7[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux292~0\ = (\d7~combout\(1) & ((\d7~combout\(0) & (\Mux252~2_combout\)) # (!\d7~combout\(0) & ((\Mux293~66_combout\)))))
-- \s7[1]~reg0_regout\ = DFFEAS(\Mux292~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux252~2_combout\,
	datab => \d7~combout\(0),
	datac => \d7~combout\(1),
	datad => \Mux293~66_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux292~0\,
	regout => \s7[1]~reg0_regout\);

-- Location: LC_X11_Y5_N7
\last_s7[1]\ : maxii_lcell
-- Equation(s):
-- \Mux293~77\ = ((last_s7(5) & ((last_s7[1]) # (!\d7~combout\(5)))) # (!last_s7(5) & (!last_s7[1])))
-- last_s7(1) = DFFEAS(\Mux293~77\, GLOBAL(\clk~combout\), VCC, , , \Mux292~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3cf",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => last_s7(5),
	datac => \Mux292~0\,
	datad => \d7~combout\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~77\,
	regout => last_s7(1));

-- Location: LC_X12_Y4_N0
\Mux253~0\ : maxii_lcell
-- Equation(s):
-- \Mux253~0_combout\ = (\Mux252~1_combout\ & (!last_s7(1) & (!last_s7(0) & last_s7(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux252~1_combout\,
	datab => last_s7(1),
	datac => last_s7(0),
	datad => last_s7(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux253~0_combout\);

-- Location: LC_X12_Y5_N5
\Mux291~1\ : maxii_lcell
-- Equation(s):
-- \Mux291~1_combout\ = (!\d7~combout\(1) & (((!\d7~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d7~combout\(1),
	datad => \d7~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux291~1_combout\);

-- Location: LC_X12_Y5_N4
\s7[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux291~2\ = (\d7~combout\(2) & ((\Mux291~1_combout\ & ((\Mux291~0_combout\))) # (!\Mux291~1_combout\ & (\Mux253~0_combout\))))
-- \s7[2]~reg0_regout\ = DFFEAS(\Mux291~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d7~combout\(2),
	datab => \Mux253~0_combout\,
	datac => \Mux291~1_combout\,
	datad => \Mux291~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux291~2\,
	regout => \s7[2]~reg0_regout\);

-- Location: LC_X12_Y4_N3
\Mux252~0\ : maxii_lcell
-- Equation(s):
-- \Mux252~0_combout\ = ((!last_s7(4) & ((!last_s7(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => last_s7(4),
	datad => last_s7(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux252~0_combout\);

-- Location: LC_X12_Y4_N2
\Mux288~0\ : maxii_lcell
-- Equation(s):
-- \Mux288~0_combout\ = (\Mux252~0_combout\ & (!last_s7(0) & (last_s7(5) & \Mux256~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux252~0_combout\,
	datab => last_s7(0),
	datac => last_s7(5),
	datad => \Mux256~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux288~0_combout\);

-- Location: LC_X10_Y5_N8
\s7[5]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux288~1\ = (\d7~combout\(5) & ((\Mux288~0_combout\) # ((\Mux289~1_combout\ & !\d7~combout\(4)))))
-- \s7[5]~reg0_regout\ = DFFEAS(\Mux288~1\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d7~combout\(5),
	datab => \Mux288~0_combout\,
	datac => \Mux289~1_combout\,
	datad => \d7~combout\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux288~1\,
	regout => \s7[5]~reg0_regout\);

-- Location: LC_X12_Y4_N4
\Mux252~1\ : maxii_lcell
-- Equation(s):
-- \Mux252~1_combout\ = ((!last_s7(3) & (!last_s7(5) & !last_s7(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => last_s7(3),
	datac => last_s7(5),
	datad => last_s7(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux252~1_combout\);

-- Location: LC_X11_Y6_N9
\Mux293~55\ : maxii_lcell
-- Equation(s):
-- \Mux293~55_combout\ = last_s7(1) $ ((((last_s7(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s7(1),
	datad => last_s7(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~55_combout\);

-- Location: LC_X12_Y4_N5
\Mux293~54\ : maxii_lcell
-- Equation(s):
-- \Mux293~54_combout\ = (\Mux252~0_combout\ & (last_s7(5) & ((!\d7~combout\(5)) # (!\Mux256~0_combout\)))) # (!\Mux252~0_combout\ & (((last_s7(5))) # (!\Mux256~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "71f1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux252~0_combout\,
	datab => \Mux256~0_combout\,
	datac => last_s7(5),
	datad => \d7~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~54_combout\);

-- Location: LC_X11_Y6_N7
\Mux293~53\ : maxii_lcell
-- Equation(s):
-- \Mux293~53_combout\ = (last_s7(0)) # ((last_s7(4) & ((last_s7(3)) # (!\d7~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s7(4),
	datab => \d7~combout\(4),
	datac => last_s7(0),
	datad => last_s7(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~53_combout\);

-- Location: LC_X11_Y6_N8
\Mux293~56\ : maxii_lcell
-- Equation(s):
-- \Mux293~56_combout\ = (\Mux293~54_combout\) # ((\Mux293~53_combout\) # ((\Mux252~1_combout\ & !\Mux293~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux252~1_combout\,
	datab => \Mux293~55_combout\,
	datac => \Mux293~54_combout\,
	datad => \Mux293~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~56_combout\);

-- Location: LC_X11_Y4_N7
\Mux293~49\ : maxii_lcell
-- Equation(s):
-- \Mux293~49_combout\ = (last_s7(1) & ((last_s7(4)) # ((last_s7(5)) # (last_s7(3))))) # (!last_s7(1) & (last_s7(3) $ (((!last_s7(4) & !last_s7(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fee1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s7(4),
	datab => last_s7(5),
	datac => last_s7(1),
	datad => last_s7(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~49_combout\);

-- Location: LC_X11_Y4_N9
\Mux293~50\ : maxii_lcell
-- Equation(s):
-- \Mux293~50_combout\ = (last_s7(4) & (((last_s7(5)) # (!\d7~combout\(4))))) # (!last_s7(4) & (!\d7~combout\(5) & ((last_s7(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s7(4),
	datab => \d7~combout\(5),
	datac => \d7~combout\(4),
	datad => last_s7(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~50_combout\);

-- Location: LC_X11_Y4_N0
\Mux293~51\ : maxii_lcell
-- Equation(s):
-- \Mux293~51_combout\ = (last_s7(2)) # ((last_s7(0)) # ((\Mux293~49_combout\) # (\Mux293~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s7(2),
	datab => last_s7(0),
	datac => \Mux293~49_combout\,
	datad => \Mux293~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~51_combout\);

-- Location: LC_X11_Y6_N4
\Mux293~78\ : maxii_lcell
-- Equation(s):
-- \Mux293~78_combout\ = (\Mux293~77\ & (((last_s7(5)) # (!last_s7(4))) # (!\d7~combout\(4)))) # (!\Mux293~77\ & (((last_s7(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux293~77\,
	datab => \d7~combout\(4),
	datac => last_s7(5),
	datad => last_s7(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~78_combout\);

-- Location: LC_X11_Y6_N1
\Mux293~69\ : maxii_lcell
-- Equation(s):
-- \Mux293~69_combout\ = (last_s7(0)) # ((last_s7(2)) # ((\Mux293~78_combout\) # (last_s7(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s7(0),
	datab => last_s7(2),
	datac => \Mux293~78_combout\,
	datad => last_s7(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~69_combout\);

-- Location: LC_X11_Y6_N2
\Mux293~52\ : maxii_lcell
-- Equation(s):
-- \Mux293~52_combout\ = (\d7~combout\(2) & (\d7~combout\(3))) # (!\d7~combout\(2) & ((\d7~combout\(3) & (\Mux293~51_combout\)) # (!\d7~combout\(3) & ((\Mux293~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d7~combout\(2),
	datab => \d7~combout\(3),
	datac => \Mux293~51_combout\,
	datad => \Mux293~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~52_combout\);

-- Location: LC_X11_Y6_N6
\Mux293~46\ : maxii_lcell
-- Equation(s):
-- \Mux293~46_combout\ = (last_s7(1) & (((!last_s7(4))))) # (!last_s7(1) & (\d7~combout\(4) & ((last_s7(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s7(1),
	datab => \d7~combout\(4),
	datad => last_s7(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~46_combout\);

-- Location: LC_X11_Y6_N0
\Mux293~47\ : maxii_lcell
-- Equation(s):
-- \Mux293~47_combout\ = (last_s7(4) & (((last_s7(2)) # (!\Mux293~46_combout\)))) # (!last_s7(4) & (!last_s7(5) & (\Mux293~46_combout\ $ (!last_s7(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc0d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s7(5),
	datab => last_s7(4),
	datac => \Mux293~46_combout\,
	datad => last_s7(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~47_combout\);

-- Location: LC_X12_Y4_N8
\Mux293~45\ : maxii_lcell
-- Equation(s):
-- \Mux293~45_combout\ = (last_s7(5) & (((last_s7(4)) # (!\Mux256~0_combout\)) # (!\d7~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d7~combout\(5),
	datab => \Mux256~0_combout\,
	datac => last_s7(5),
	datad => last_s7(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~45_combout\);

-- Location: LC_X11_Y6_N3
\Mux293~48\ : maxii_lcell
-- Equation(s):
-- \Mux293~48_combout\ = (last_s7(0)) # ((last_s7(3)) # ((\Mux293~47_combout\) # (\Mux293~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s7(0),
	datab => last_s7(3),
	datac => \Mux293~47_combout\,
	datad => \Mux293~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~48_combout\);

-- Location: LC_X11_Y6_N5
\Mux293~57\ : maxii_lcell
-- Equation(s):
-- \Mux293~57_combout\ = (\Mux293~52_combout\ & ((\Mux293~56_combout\) # ((!\d7~combout\(2))))) # (!\Mux293~52_combout\ & (((\d7~combout\(2) & \Mux293~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux293~56_combout\,
	datab => \Mux293~52_combout\,
	datac => \d7~combout\(2),
	datad => \Mux293~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux293~57_combout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d8[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d8(1),
	combout => \d8~combout\(1));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d8[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d8(0),
	combout => \d8~combout\(0));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d8[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d8(2),
	combout => \d8~combout\(2));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d8[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d8(4),
	combout => \d8~combout\(4));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d8[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d8(5),
	combout => \d8~combout\(5));

-- Location: LC_X4_Y4_N3
\Mux335~68\ : maxii_lcell
-- Equation(s):
-- \Mux335~68_combout\ = (((!\d8~combout\(5)) # (!\Mux330~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mux330~0_combout\,
	datad => \d8~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~68_combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d8[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d8(3),
	combout => \d8~combout\(3));

-- Location: LC_X4_Y4_N7
\Mux331~1\ : maxii_lcell
-- Equation(s):
-- \Mux331~1_combout\ = (!\d8~combout\(3) & (!\d8~combout\(0) & (!\d8~combout\(2) & !\d8~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d8~combout\(3),
	datab => \d8~combout\(0),
	datac => \d8~combout\(2),
	datad => \d8~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux331~1_combout\);

-- Location: LC_X4_Y4_N5
\Mux304~0\ : maxii_lcell
-- Equation(s):
-- \Mux304~0_combout\ = (!last_s8(3) & (((!last_s8(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s8(3),
	datac => last_s8(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux304~0_combout\);

-- Location: LC_X4_Y4_N2
\Mux304~1\ : maxii_lcell
-- Equation(s):
-- \Mux304~1_combout\ = (((last_s8(0)) # (!last_s8(4))) # (!\Mux298~0_combout\)) # (!\Mux304~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux304~0_combout\,
	datab => \Mux298~0_combout\,
	datac => last_s8(0),
	datad => last_s8(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux304~1_combout\);

-- Location: LC_X4_Y4_N4
\s8[4]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux331~2\ = (\d8~combout\(4) & ((\Mux331~1_combout\ & (\Mux335~68_combout\)) # (!\Mux331~1_combout\ & ((!\Mux304~1_combout\)))))
-- \s8[4]~reg0_regout\ = DFFEAS(\Mux331~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80b0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux335~68_combout\,
	datab => \Mux331~1_combout\,
	datac => \d8~combout\(4),
	datad => \Mux304~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux331~2\,
	regout => \s8[4]~reg0_regout\);

-- Location: LC_X4_Y4_N1
\last_s8[4]\ : maxii_lcell
-- Equation(s):
-- \Mux335~59\ = (last_s8(3) & (!last_s8(2) & ((!last_s8[4]) # (!\d8~combout\(4))))) # (!last_s8(3) & (last_s8(2) $ (((\d8~combout\(4) & last_s8[4])))))
-- last_s8(4) = DFFEAS(\Mux335~59\, GLOBAL(\clk~combout\), VCC, , , \Mux331~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "156a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s8(3),
	datab => \d8~combout\(4),
	datac => \Mux331~2\,
	datad => last_s8(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~59\,
	regout => last_s8(4));

-- Location: LC_X6_Y4_N9
\Mux298~1\ : maxii_lcell
-- Equation(s):
-- \Mux298~1_combout\ = (!last_s8(4) & (((!last_s8(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s8(4),
	datac => last_s8(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux298~1_combout\);

-- Location: LC_X4_Y4_N9
\Mux298~2\ : maxii_lcell
-- Equation(s):
-- \Mux298~2_combout\ = (last_s8(3) & (\Mux298~0_combout\ & (!last_s8(0) & \Mux298~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s8(3),
	datab => \Mux298~0_combout\,
	datac => last_s8(0),
	datad => \Mux298~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux298~2_combout\);

-- Location: LC_X4_Y4_N6
\Mux331~0\ : maxii_lcell
-- Equation(s):
-- \Mux331~0_combout\ = ((!\d8~combout\(0) & (!\d8~combout\(2) & !\d8~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d8~combout\(0),
	datac => \d8~combout\(2),
	datad => \d8~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux331~0_combout\);

-- Location: LC_X3_Y4_N5
\Mux335~40\ : maxii_lcell
-- Equation(s):
-- \Mux335~40_combout\ = (last_s8(5) & (((last_s8(4)) # (!\d8~combout\(5))))) # (!last_s8(5) & (((!last_s8(4))) # (!\d8~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d3df",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d8~combout\(4),
	datab => last_s8(5),
	datac => last_s8(4),
	datad => \d8~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~40_combout\);

-- Location: LC_X3_Y4_N6
\Mux335~38\ : maxii_lcell
-- Equation(s):
-- \Mux335~38_combout\ = (last_s8(3)) # (((\Mux335~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s8(3),
	datad => \Mux335~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~38_combout\);

-- Location: LC_X3_Y4_N7
\Mux335~72\ : maxii_lcell
-- Equation(s):
-- \Mux335~72_combout\ = (last_s8(1)) # ((last_s8(0)) # ((last_s8(2)) # (\Mux335~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s8(1),
	datab => last_s8(0),
	datac => last_s8(2),
	datad => \Mux335~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~72_combout\);

-- Location: LC_X4_Y4_N0
\s8[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux332~0\ = (\d8~combout\(3) & ((\Mux331~0_combout\ & ((\Mux335~72_combout\))) # (!\Mux331~0_combout\ & (\Mux298~2_combout\))))
-- \s8[3]~reg0_regout\ = DFFEAS(\Mux332~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d8~combout\(3),
	datab => \Mux298~2_combout\,
	datac => \Mux331~0_combout\,
	datad => \Mux335~72_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux332~0\,
	regout => \s8[3]~reg0_regout\);

-- Location: LC_X7_Y5_N2
\last_s8[3]\ : maxii_lcell
-- Equation(s):
-- \Mux335~62\ = (last_s8(5) & ((last_s8(4)) # ((!last_s8[3] & !last_s8(2))))) # (!last_s8(5) & ((last_s8[3] & ((last_s8(4)) # (!last_s8(2)))) # (!last_s8[3] & ((last_s8(2))))))
-- last_s8(3) = DFFEAS(\Mux335~62\, GLOBAL(\clk~combout\), VCC, , , \Mux332~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "abbc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s8(4),
	datab => last_s8(5),
	datac => \Mux332~0\,
	datad => last_s8(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~62\,
	regout => last_s8(3));

-- Location: LC_X3_Y5_N3
\Mux294~1\ : maxii_lcell
-- Equation(s):
-- \Mux294~1_combout\ = ((!last_s8(5) & (!last_s8(3) & !last_s8(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => last_s8(5),
	datac => last_s8(3),
	datad => last_s8(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux294~1_combout\);

-- Location: LC_X3_Y5_N9
\Mux335~53\ : maxii_lcell
-- Equation(s):
-- \Mux335~53_combout\ = (last_s8(0)) # ((last_s8(4) & ((last_s8(3)) # (!\d8~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s8(3),
	datab => \d8~combout\(4),
	datac => last_s8(0),
	datad => last_s8(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~53_combout\);

-- Location: LC_X3_Y5_N0
\Mux335~55\ : maxii_lcell
-- Equation(s):
-- \Mux335~55_combout\ = last_s8(2) $ ((((last_s8(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s8(2),
	datac => last_s8(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~55_combout\);

-- Location: LC_X3_Y5_N7
\Mux294~0\ : maxii_lcell
-- Equation(s):
-- \Mux294~0_combout\ = (((!last_s8(3) & !last_s8(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => last_s8(3),
	datad => last_s8(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux294~0_combout\);

-- Location: LC_X3_Y5_N8
\Mux335~54\ : maxii_lcell
-- Equation(s):
-- \Mux335~54_combout\ = (\Mux298~0_combout\ & (last_s8(5) & ((!\d8~combout\(5)) # (!\Mux294~0_combout\)))) # (!\Mux298~0_combout\ & ((last_s8(5)) # ((!\Mux294~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4dcd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux298~0_combout\,
	datab => last_s8(5),
	datac => \Mux294~0_combout\,
	datad => \d8~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~54_combout\);

-- Location: LC_X3_Y5_N2
\Mux335~56\ : maxii_lcell
-- Equation(s):
-- \Mux335~56_combout\ = (\Mux335~53_combout\) # ((\Mux335~54_combout\) # ((\Mux294~1_combout\ & !\Mux335~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux294~1_combout\,
	datab => \Mux335~53_combout\,
	datac => \Mux335~55_combout\,
	datad => \Mux335~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~56_combout\);

-- Location: LC_X4_Y5_N3
\Mux335~45\ : maxii_lcell
-- Equation(s):
-- \Mux335~45_combout\ = (last_s8(5) & (((last_s8(4)) # (!\Mux298~0_combout\)) # (!\d8~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f700",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d8~combout\(5),
	datab => \Mux298~0_combout\,
	datac => last_s8(4),
	datad => last_s8(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~45_combout\);

-- Location: LC_X4_Y5_N4
\Mux335~46\ : maxii_lcell
-- Equation(s):
-- \Mux335~46_combout\ = ((last_s8(4) & (\d8~combout\(4) & !last_s8(1))) # (!last_s8(4) & ((last_s8(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d8~combout\(4),
	datac => last_s8(4),
	datad => last_s8(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~46_combout\);

-- Location: LC_X4_Y5_N1
\Mux335~47\ : maxii_lcell
-- Equation(s):
-- \Mux335~47_combout\ = (last_s8(4) & (((last_s8(2))) # (!\Mux335~46_combout\))) # (!last_s8(4) & (!last_s8(5) & (\Mux335~46_combout\ $ (!last_s8(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f521",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux335~46_combout\,
	datab => last_s8(5),
	datac => last_s8(2),
	datad => last_s8(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~47_combout\);

-- Location: LC_X4_Y5_N6
\Mux335~48\ : maxii_lcell
-- Equation(s):
-- \Mux335~48_combout\ = (\Mux335~45_combout\) # ((\Mux335~47_combout\) # ((last_s8(3)) # (last_s8(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux335~45_combout\,
	datab => \Mux335~47_combout\,
	datac => last_s8(3),
	datad => last_s8(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~48_combout\);

-- Location: LC_X3_Y5_N5
\Mux294~2\ : maxii_lcell
-- Equation(s):
-- \Mux294~2_combout\ = (last_s8(1) & (!last_s8(0) & (!last_s8(2) & \Mux294~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s8(1),
	datab => last_s8(0),
	datac => last_s8(2),
	datad => \Mux294~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux294~2_combout\);

-- Location: LC_X6_Y4_N5
\s8[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux334~0\ = (\d8~combout\(1) & ((\d8~combout\(0) & (\Mux294~2_combout\)) # (!\d8~combout\(0) & ((\Mux335~66_combout\)))))
-- \s8[1]~reg0_regout\ = DFFEAS(\Mux334~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux294~2_combout\,
	datab => \d8~combout\(0),
	datac => \d8~combout\(1),
	datad => \Mux335~66_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux334~0\,
	regout => \s8[1]~reg0_regout\);

-- Location: LC_X6_Y4_N1
\last_s8[1]\ : maxii_lcell
-- Equation(s):
-- \Mux335~77\ = ((last_s8(5) & ((last_s8[1]) # (!\d8~combout\(5)))) # (!last_s8(5) & (!last_s8[1])))
-- last_s8(1) = DFFEAS(\Mux335~77\, GLOBAL(\clk~combout\), VCC, , , \Mux334~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3cf",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => last_s8(5),
	datac => \Mux334~0\,
	datad => \d8~combout\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~77\,
	regout => last_s8(1));

-- Location: LC_X4_Y5_N2
\Mux335~78\ : maxii_lcell
-- Equation(s):
-- \Mux335~78_combout\ = (\Mux335~77\ & (((last_s8(5)) # (!last_s8(4))) # (!\d8~combout\(4)))) # (!\Mux335~77\ & (((last_s8(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d8~combout\(4),
	datab => last_s8(5),
	datac => \Mux335~77\,
	datad => last_s8(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~78_combout\);

-- Location: LC_X4_Y5_N0
\Mux335~69\ : maxii_lcell
-- Equation(s):
-- \Mux335~69_combout\ = (last_s8(3)) # ((\Mux335~78_combout\) # ((last_s8(2)) # (last_s8(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s8(3),
	datab => \Mux335~78_combout\,
	datac => last_s8(2),
	datad => last_s8(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~69_combout\);

-- Location: LC_X7_Y5_N9
\Mux335~49\ : maxii_lcell
-- Equation(s):
-- \Mux335~49_combout\ = (last_s8(1) & ((last_s8(4)) # ((last_s8(5)) # (last_s8(3))))) # (!last_s8(1) & (last_s8(3) $ (((!last_s8(4) & !last_s8(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fee1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s8(4),
	datab => last_s8(5),
	datac => last_s8(1),
	datad => last_s8(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~49_combout\);

-- Location: LC_X4_Y5_N7
\Mux335~50\ : maxii_lcell
-- Equation(s):
-- \Mux335~50_combout\ = (last_s8(5) & (((last_s8(4)) # (!\d8~combout\(5))))) # (!last_s8(5) & (!\d8~combout\(4) & ((last_s8(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d8~combout\(4),
	datab => last_s8(5),
	datac => \d8~combout\(5),
	datad => last_s8(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~50_combout\);

-- Location: LC_X4_Y5_N8
\Mux335~51\ : maxii_lcell
-- Equation(s):
-- \Mux335~51_combout\ = (\Mux335~49_combout\) # ((\Mux335~50_combout\) # ((last_s8(2)) # (last_s8(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux335~49_combout\,
	datab => \Mux335~50_combout\,
	datac => last_s8(2),
	datad => last_s8(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~51_combout\);

-- Location: LC_X4_Y5_N9
\Mux335~52\ : maxii_lcell
-- Equation(s):
-- \Mux335~52_combout\ = (\d8~combout\(2) & (\d8~combout\(3))) # (!\d8~combout\(2) & ((\d8~combout\(3) & ((\Mux335~51_combout\))) # (!\d8~combout\(3) & (\Mux335~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d8~combout\(2),
	datab => \d8~combout\(3),
	datac => \Mux335~69_combout\,
	datad => \Mux335~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~52_combout\);

-- Location: LC_X4_Y5_N5
\Mux335~57\ : maxii_lcell
-- Equation(s):
-- \Mux335~57_combout\ = (\d8~combout\(2) & ((\Mux335~52_combout\ & (\Mux335~56_combout\)) # (!\Mux335~52_combout\ & ((\Mux335~48_combout\))))) # (!\d8~combout\(2) & (((\Mux335~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d8~combout\(2),
	datab => \Mux335~56_combout\,
	datac => \Mux335~48_combout\,
	datad => \Mux335~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~57_combout\);

-- Location: LC_X6_Y4_N0
\s8[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux335~67\ = (\d8~combout\(0) & ((\d8~combout\(1) & ((\Mux335~57_combout\))) # (!\d8~combout\(1) & (\Mux335~66_combout\))))
-- \s8[0]~reg0_regout\ = DFFEAS(\Mux335~67\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c840",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d8~combout\(1),
	datab => \d8~combout\(0),
	datac => \Mux335~66_combout\,
	datad => \Mux335~57_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~67\,
	regout => \s8[0]~reg0_regout\);

-- Location: LC_X6_Y4_N8
\last_s8[0]\ : maxii_lcell
-- Equation(s):
-- \Mux335~60\ = ((!last_s8(1) & (!last_s8[0] & \Mux335~59\)))
-- last_s8(0) = DFFEAS(\Mux335~60\, GLOBAL(\clk~combout\), VCC, , , \Mux335~67\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => last_s8(1),
	datac => \Mux335~67\,
	datad => \Mux335~59\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~60\,
	regout => last_s8(0));

-- Location: LC_X7_Y5_N0
\Mux295~0\ : maxii_lcell
-- Equation(s):
-- \Mux295~0_combout\ = (!last_s8(1) & (last_s8(2) & (!last_s8(0) & \Mux294~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s8(1),
	datab => last_s8(2),
	datac => last_s8(0),
	datad => \Mux294~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux295~0_combout\);

-- Location: LC_X7_Y5_N4
\Mux333~1\ : maxii_lcell
-- Equation(s):
-- \Mux333~1_combout\ = (((!\d8~combout\(1) & !\d8~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \d8~combout\(1),
	datad => \d8~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux333~1_combout\);

-- Location: LC_X7_Y5_N5
\s8[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux333~2\ = (\d8~combout\(2) & ((\Mux333~1_combout\ & (\Mux333~0_combout\)) # (!\Mux333~1_combout\ & ((\Mux295~0_combout\)))))
-- \s8[2]~reg0_regout\ = DFFEAS(\Mux333~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d8~combout\(2),
	datab => \Mux333~0_combout\,
	datac => \Mux295~0_combout\,
	datad => \Mux333~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux333~2\,
	regout => \s8[2]~reg0_regout\);

-- Location: LC_X7_Y5_N1
\last_s8[2]\ : maxii_lcell
-- Equation(s):
-- \Mux335~75\ = (last_s8(5) & (((last_s8[2])) # (!\d8~combout\(5)))) # (!last_s8(5) & (((!last_s8[2]))))
-- last_s8(2) = DFFEAS(\Mux335~75\, GLOBAL(\clk~combout\), VCC, , , \Mux333~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c7c7",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d8~combout\(5),
	datab => last_s8(5),
	datac => \Mux333~2\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~75\,
	regout => last_s8(2));

-- Location: LC_X3_Y5_N6
\Mux298~0\ : maxii_lcell
-- Equation(s):
-- \Mux298~0_combout\ = (!last_s8(2) & (((!last_s8(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s8(2),
	datac => last_s8(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux298~0_combout\);

-- Location: LC_X3_Y5_N1
\Mux330~0\ : maxii_lcell
-- Equation(s):
-- \Mux330~0_combout\ = (\Mux298~0_combout\ & (\Mux294~0_combout\ & (!last_s8(0) & last_s8(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux298~0_combout\,
	datab => \Mux294~0_combout\,
	datac => last_s8(0),
	datad => last_s8(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux330~0_combout\);

-- Location: LC_X4_Y4_N8
\s8[5]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux330~1\ = (\d8~combout\(5) & ((\Mux330~0_combout\) # ((!\d8~combout\(4) & \Mux331~1_combout\))))
-- \s8[5]~reg0_regout\ = DFFEAS(\Mux330~1\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux330~0_combout\,
	datab => \d8~combout\(5),
	datac => \d8~combout\(4),
	datad => \Mux331~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux330~1\,
	regout => \s8[5]~reg0_regout\);

-- Location: LC_X6_Y4_N6
\last_s8[5]\ : maxii_lcell
-- Equation(s):
-- \Mux335~58\ = ((\d8~combout\(5)) # ((\d8~combout\(4) & last_s8[5])))
-- last_s8(5) = DFFEAS(\Mux335~58\, GLOBAL(\clk~combout\), VCC, , , \Mux330~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d8~combout\(4),
	datac => \Mux330~1\,
	datad => \d8~combout\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~58\,
	regout => last_s8(5));

-- Location: LC_X3_Y4_N2
\Mux335~73\ : maxii_lcell
-- Equation(s):
-- \Mux335~73_combout\ = (last_s8(4) & (((last_s8(5))) # (!\d8~combout\(4)))) # (!last_s8(4) & ((last_s8(5) $ (\d8~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d3dc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d8~combout\(4),
	datab => last_s8(5),
	datac => last_s8(4),
	datad => \d8~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~73_combout\);

-- Location: LC_X3_Y4_N8
\Mux335~74\ : maxii_lcell
-- Equation(s):
-- \Mux335~74_combout\ = (last_s8(3) & ((last_s8(4)) # (\Mux335~73_combout\ $ (\d8~combout\(5))))) # (!last_s8(3) & ((\Mux335~73_combout\) # ((!last_s8(4) & !\d8~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6ed",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s8(3),
	datab => \Mux335~73_combout\,
	datac => last_s8(4),
	datad => \d8~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~74_combout\);

-- Location: LC_X3_Y4_N9
\Mux335~70\ : maxii_lcell
-- Equation(s):
-- \Mux335~70_combout\ = (last_s8(1)) # ((last_s8(0)) # ((last_s8(2)) # (\Mux335~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s8(1),
	datab => last_s8(0),
	datac => last_s8(2),
	datad => \Mux335~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~70_combout\);

-- Location: LC_X3_Y4_N4
\Mux333~0\ : maxii_lcell
-- Equation(s):
-- \Mux333~0_combout\ = ((\d8~combout\(3) & (\Mux335~70_combout\)) # (!\d8~combout\(3) & ((\Mux335~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux335~70_combout\,
	datac => \Mux335~72_combout\,
	datad => \d8~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux333~0_combout\);

-- Location: LC_X7_Y5_N8
\Mux335~76\ : maxii_lcell
-- Equation(s):
-- \Mux335~76_combout\ = (last_s8(4) & ((last_s8(5)) # ((!\Mux335~75\) # (!\d8~combout\(4))))) # (!last_s8(4) & (((\Mux335~75\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s8(4),
	datab => last_s8(5),
	datac => \d8~combout\(4),
	datad => \Mux335~75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~76_combout\);

-- Location: LC_X7_Y5_N6
\Mux335~71\ : maxii_lcell
-- Equation(s):
-- \Mux335~71_combout\ = (\Mux335~76_combout\) # ((last_s8(1)) # ((last_s8(0)) # (last_s8(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux335~76_combout\,
	datab => last_s8(1),
	datac => last_s8(0),
	datad => last_s8(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~71_combout\);

-- Location: LC_X7_Y5_N3
\Mux335~63\ : maxii_lcell
-- Equation(s):
-- \Mux335~63_combout\ = (last_s8(1) & (((last_s8(4))))) # (!last_s8(1) & ((last_s8(0) & (last_s8(4))) # (!last_s8(0) & ((\Mux335~62\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s8(1),
	datab => last_s8(0),
	datac => last_s8(4),
	datad => \Mux335~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~63_combout\);

-- Location: LC_X6_Y4_N7
\Mux335~61\ : maxii_lcell
-- Equation(s):
-- \Mux335~61_combout\ = (\Mux335~58\ & (\d8~combout\(4))) # (!\Mux335~58\ & (((!\d8~combout\(4) & !\Mux298~1_combout\)) # (!\Mux335~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a1af",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d8~combout\(4),
	datab => \Mux298~1_combout\,
	datac => \Mux335~58\,
	datad => \Mux335~60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~61_combout\);

-- Location: LC_X6_Y4_N2
\Mux335~64\ : maxii_lcell
-- Equation(s):
-- \Mux335~64_combout\ = (\d8~combout\(5) & ((last_s8(4) & ((\Mux335~63_combout\) # (!\Mux335~61_combout\))) # (!last_s8(4) & (!\Mux335~63_combout\)))) # (!\d8~combout\(5) & (((\Mux335~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9bf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s8(4),
	datab => \Mux335~63_combout\,
	datac => \Mux335~61_combout\,
	datad => \d8~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~64_combout\);

-- Location: LC_X6_Y4_N3
\Mux335~65\ : maxii_lcell
-- Equation(s):
-- \Mux335~65_combout\ = ((\d8~combout\(3) & ((\Mux335~64_combout\))) # (!\d8~combout\(3) & (\Mux335~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux335~71_combout\,
	datac => \d8~combout\(3),
	datad => \Mux335~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~65_combout\);

-- Location: LC_X6_Y4_N4
\Mux335~66\ : maxii_lcell
-- Equation(s):
-- \Mux335~66_combout\ = ((\d8~combout\(2) & ((\Mux335~65_combout\))) # (!\d8~combout\(2) & (\Mux333~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d8~combout\(2),
	datac => \Mux333~0_combout\,
	datad => \Mux335~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux335~66_combout\);

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s1[0]~reg0_regout\,
	oe => VCC,
	padio => ww_s1(0));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s1[1]~reg0_regout\,
	oe => VCC,
	padio => ww_s1(1));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s1[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s1[2]~reg0_regout\,
	oe => VCC,
	padio => ww_s1(2));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s1[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s1[3]~reg0_regout\,
	oe => VCC,
	padio => ww_s1(3));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s1[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s1[4]~reg0_regout\,
	oe => VCC,
	padio => ww_s1(4));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s1[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s1[5]~reg0_regout\,
	oe => VCC,
	padio => ww_s1(5));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s2[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s2[0]~reg0_regout\,
	oe => VCC,
	padio => ww_s2(0));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s2[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s2[1]~reg0_regout\,
	oe => VCC,
	padio => ww_s2(1));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s2[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s2[2]~reg0_regout\,
	oe => VCC,
	padio => ww_s2(2));

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s2[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s2[3]~reg0_regout\,
	oe => VCC,
	padio => ww_s2(3));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s2[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s2[4]~reg0_regout\,
	oe => VCC,
	padio => ww_s2(4));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s2[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s2[5]~reg0_regout\,
	oe => VCC,
	padio => ww_s2(5));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s3[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s3[0]~reg0_regout\,
	oe => VCC,
	padio => ww_s3(0));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s3[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s3[1]~reg0_regout\,
	oe => VCC,
	padio => ww_s3(1));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s3[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s3[2]~reg0_regout\,
	oe => VCC,
	padio => ww_s3(2));

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s3[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s3[3]~reg0_regout\,
	oe => VCC,
	padio => ww_s3(3));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s3[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s3[4]~reg0_regout\,
	oe => VCC,
	padio => ww_s3(4));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s3[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s3[5]~reg0_regout\,
	oe => VCC,
	padio => ww_s3(5));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s4[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s4[0]~reg0_regout\,
	oe => VCC,
	padio => ww_s4(0));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s4[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s4[1]~reg0_regout\,
	oe => VCC,
	padio => ww_s4(1));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s4[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s4[2]~reg0_regout\,
	oe => VCC,
	padio => ww_s4(2));

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s4[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s4[3]~reg0_regout\,
	oe => VCC,
	padio => ww_s4(3));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s4[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s4[4]~reg0_regout\,
	oe => VCC,
	padio => ww_s4(4));

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s4[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s4[5]~reg0_regout\,
	oe => VCC,
	padio => ww_s4(5));

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s5[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s5[0]~reg0_regout\,
	oe => VCC,
	padio => ww_s5(0));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s5[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s5[1]~reg0_regout\,
	oe => VCC,
	padio => ww_s5(1));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s5[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s5[2]~reg0_regout\,
	oe => VCC,
	padio => ww_s5(2));

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s5[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s5[3]~reg0_regout\,
	oe => VCC,
	padio => ww_s5(3));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s5[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s5[4]~reg0_regout\,
	oe => VCC,
	padio => ww_s5(4));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s5[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s5[5]~reg0_regout\,
	oe => VCC,
	padio => ww_s5(5));

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s6[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s6[0]~reg0_regout\,
	oe => VCC,
	padio => ww_s6(0));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s6[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s6[1]~reg0_regout\,
	oe => VCC,
	padio => ww_s6(1));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s6[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s6[2]~reg0_regout\,
	oe => VCC,
	padio => ww_s6(2));

-- Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s6[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s6[3]~reg0_regout\,
	oe => VCC,
	padio => ww_s6(3));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s6[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s6[4]~reg0_regout\,
	oe => VCC,
	padio => ww_s6(4));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s6[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s6[5]~reg0_regout\,
	oe => VCC,
	padio => ww_s6(5));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s7[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s7[0]~reg0_regout\,
	oe => VCC,
	padio => ww_s7(0));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s7[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s7[1]~reg0_regout\,
	oe => VCC,
	padio => ww_s7(1));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s7[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s7[2]~reg0_regout\,
	oe => VCC,
	padio => ww_s7(2));

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s7[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s7[3]~reg0_regout\,
	oe => VCC,
	padio => ww_s7(3));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s7[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s7[4]~reg0_regout\,
	oe => VCC,
	padio => ww_s7(4));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s7[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s7[5]~reg0_regout\,
	oe => VCC,
	padio => ww_s7(5));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s8[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s8[0]~reg0_regout\,
	oe => VCC,
	padio => ww_s8(0));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s8[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s8[1]~reg0_regout\,
	oe => VCC,
	padio => ww_s8(1));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s8[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s8[2]~reg0_regout\,
	oe => VCC,
	padio => ww_s8(2));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s8[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s8[3]~reg0_regout\,
	oe => VCC,
	padio => ww_s8(3));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s8[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s8[4]~reg0_regout\,
	oe => VCC,
	padio => ww_s8(4));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s8[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s8[5]~reg0_regout\,
	oe => VCC,
	padio => ww_s8(5));
END structure;


