// megafunction wizard: %FIFO%VBB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: dcfifo 

// ============================================================
// File Name: fifo_4k.v
// Megafunction Name(s):
// 			dcfifo
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 5.0 Build 168 06/22/2005 SP 1 SJ Web Edition
// ************************************************************

//Copyright (C) 1991-2005 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic       
//functions, and any output files any of the foregoing           
//(including device programming or simulation files), and any    
//associated documentation or information are expressly subject  
//to the terms and conditions of the Altera Program License      
//Subscription Agreement, Altera MegaCore Function License       
//Agreement, or other applicable license agreement, including,   
//without limitation, that your use is for the sole purpose of   
//programming logic devices manufactured by Altera and sold by   
//Altera or its authorized distributors.  Please refer to the    
//applicable agreement for further details.

module fifo_4k (
	data,
	wrreq,
	rdreq,
	rdclk,
	wrclk,
	aclr,
	q,
	rdempty,
	rdusedw,
	wrfull,
	wrusedw)/* synthesis synthesis_clearbox = 1 */;

	input	[15:0]  data;
	input	  wrreq;
	input	  rdreq;
	input	  rdclk;
	input	  wrclk;
	input	  aclr;
	output	[15:0]  q;
	output	  rdempty;
	output	[11:0]  rdusedw;
	output	  wrfull;
	output	[11:0]  wrusedw;

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: Width NUMERIC "16"
// Retrieval info: PRIVATE: Depth NUMERIC "4096"
// Retrieval info: PRIVATE: Clock NUMERIC "4"
// Retrieval info: PRIVATE: CLOCKS_ARE_SYNCHRONIZED NUMERIC "0"
// Retrieval info: PRIVATE: Full NUMERIC "1"
// Retrieval info: PRIVATE: Empty NUMERIC "1"
// Retrieval info: PRIVATE: UsedW NUMERIC "1"
// Retrieval info: PRIVATE: AlmostFull NUMERIC "0"
// Retrieval info: PRIVATE: AlmostEmpty NUMERIC "0"
// Retrieval info: PRIVATE: AlmostFullThr NUMERIC "-1"
// Retrieval info: PRIVATE: AlmostEmptyThr NUMERIC "-1"
// Retrieval info: PRIVATE: sc_aclr NUMERIC "0"
// Retrieval info: PRIVATE: sc_sclr NUMERIC "0"
// Retrieval info: PRIVATE: rsFull NUMERIC "0"
// Retrieval info: PRIVATE: rsEmpty NUMERIC "1"
// Retrieval info: PRIVATE: rsUsedW NUMERIC "1"
// Retrieval info: PRIVATE: wsFull NUMERIC "1"
// Retrieval info: PRIVATE: wsEmpty NUMERIC "0"
// Retrieval info: PRIVATE: wsUsedW NUMERIC "1"
// Retrieval info: PRIVATE: dc_aclr NUMERIC "1"
// Retrieval info: PRIVATE: LegacyRREQ NUMERIC "0"
// Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "0"
// Retrieval info: PRIVATE: MAX_DEPTH_BY_9 NUMERIC "0"
// Retrieval info: PRIVATE: LE_BasedFIFO NUMERIC "0"
// Retrieval info: PRIVATE: Optimize NUMERIC "2"
// Retrieval info: PRIVATE: OVERFLOW_CHECKING NUMERIC "1"
// Retrieval info: PRIVATE: UNDERFLOW_CHECKING NUMERIC "1"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "16"
// Retrieval info: CONSTANT: LPM_NUMWORDS NUMERIC "4096"
// Retrieval info: CONSTANT: LPM_WIDTHU NUMERIC "12"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone"
// Retrieval info: CONSTANT: CLOCKS_ARE_SYNCHRONIZED STRING "FALSE"
// Retrieval info: CONSTANT: LPM_TYPE STRING "dcfifo"
// Retrieval info: CONSTANT: LPM_SHOWAHEAD STRING "ON"
// Retrieval info: CONSTANT: OVERFLOW_CHECKING STRING "OFF"
// Retrieval info: CONSTANT: UNDERFLOW_CHECKING STRING "OFF"
// Retrieval info: CONSTANT: USE_EAB STRING "ON"
// Retrieval info: CONSTANT: ADD_RAM_OUTPUT_REGISTER STRING "OFF"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone"
// Retrieval info: USED_PORT: data 0 0 16 0 INPUT NODEFVAL data[15..0]
// Retrieval info: USED_PORT: q 0 0 16 0 OUTPUT NODEFVAL q[15..0]
// Retrieval info: USED_PORT: wrreq 0 0 0 0 INPUT NODEFVAL wrreq
// Retrieval info: USED_PORT: rdreq 0 0 0 0 INPUT NODEFVAL rdreq
// Retrieval info: USED_PORT: rdclk 0 0 0 0 INPUT NODEFVAL rdclk
// Retrieval info: USED_PORT: wrclk 0 0 0 0 INPUT NODEFVAL wrclk
// Retrieval info: USED_PORT: rdempty 0 0 0 0 OUTPUT NODEFVAL rdempty
// Retrieval info: USED_PORT: rdusedw 0 0 12 0 OUTPUT NODEFVAL rdusedw[11..0]
// Retrieval info: USED_PORT: wrfull 0 0 0 0 OUTPUT NODEFVAL wrfull
// Retrieval info: USED_PORT: wrusedw 0 0 12 0 OUTPUT NODEFVAL wrusedw[11..0]
// Retrieval info: USED_PORT: aclr 0 0 0 0 INPUT GND aclr
// Retrieval info: CONNECT: @data 0 0 16 0 data 0 0 16 0
// Retrieval info: CONNECT: q 0 0 16 0 @q 0 0 16 0
// Retrieval info: CONNECT: @wrreq 0 0 0 0 wrreq 0 0 0 0
// Retrieval info: CONNECT: @rdreq 0 0 0 0 rdreq 0 0 0 0
// Retrieval info: CONNECT: @rdclk 0 0 0 0 rdclk 0 0 0 0
// Retrieval info: CONNECT: @wrclk 0 0 0 0 wrclk 0 0 0 0
// Retrieval info: CONNECT: rdempty 0 0 0 0 @rdempty 0 0 0 0
// Retrieval info: CONNECT: rdusedw 0 0 12 0 @rdusedw 0 0 12 0
// Retrieval info: CONNECT: wrfull 0 0 0 0 @wrfull 0 0 0 0
// Retrieval info: CONNECT: wrusedw 0 0 12 0 @wrusedw 0 0 12 0
// Retrieval info: CONNECT: @aclr 0 0 0 0 aclr 0 0 0 0
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo_4k.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo_4k.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo_4k.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo_4k.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo_4k_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo_4k_bb.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo_4k_waveforms.html TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo_4k_wave*.jpg FALSE