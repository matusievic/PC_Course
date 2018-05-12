-- megafunction wizard: %LPM_INV%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: lpm_inv 

-- ============================================================
-- File Name: alu_nor_inv.vhd
-- Megafunction Name(s):
-- 			lpm_inv
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 9.1 Build 222 10/21/2009 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2009 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY alu_nor_inv IS
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
END alu_nor_inv;


ARCHITECTURE SYN OF alu_nor_inv IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (15 DOWNTO 0);



	COMPONENT lpm_inv
	GENERIC (
		lpm_type		: STRING;
		lpm_width		: NATURAL
	);
	PORT (
			data	: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			result	: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	result    <= sub_wire0(15 DOWNTO 0);

	lpm_inv_component : lpm_inv
	GENERIC MAP (
		lpm_type => "LPM_INV",
		lpm_width => 16
	)
	PORT MAP (
		data => data,
		result => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix III"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: nBit NUMERIC "16"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_INV"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "16"
-- Retrieval info: USED_PORT: data 0 0 16 0 INPUT NODEFVAL data[15..0]
-- Retrieval info: USED_PORT: result 0 0 16 0 OUTPUT NODEFVAL result[15..0]
-- Retrieval info: CONNECT: @data 0 0 16 0 data 0 0 16 0
-- Retrieval info: CONNECT: result 0 0 16 0 @result 0 0 16 0
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: GEN_FILE: TYPE_NORMAL alu_nor_inv.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL alu_nor_inv.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL alu_nor_inv.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL alu_nor_inv.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL alu_nor_inv_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm
