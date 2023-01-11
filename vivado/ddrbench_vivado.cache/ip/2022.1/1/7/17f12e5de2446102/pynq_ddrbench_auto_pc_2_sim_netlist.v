// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Jan  9 22:57:41 2023
// Host        : HpPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pynq_ddrbench_auto_pc_2_sim_netlist.v
// Design      : pynq_ddrbench_auto_pc_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_25_axic_fifo
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_25_fifo_gen inst
       (.E(E),
        .Q(Q),
        .SR(SR),
        .S_AXI_AREADY_I_reg(S_AXI_AREADY_I_reg),
        .aclk(aclk),
        .\areset_d_reg[1] (\areset_d_reg[1] ),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(m_axi_awvalid_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_25_fifo_gen
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_i_3_n_0;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire cmd_push;
  wire command_ongoing;
  wire command_ongoing_i_2_n_0;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire full;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [4:4]NLW_fifo_gen_inst_dout_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_AREADY_I_i_1
       (.I0(aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'h22722272FFFF2272)) 
    S_AXI_AREADY_I_i_2
       (.I0(E),
        .I1(s_axi_awvalid),
        .I2(m_axi_awready),
        .I3(S_AXI_AREADY_I_i_3_n_0),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(S_AXI_AREADY_I_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    S_AXI_AREADY_I_i_3
       (.I0(m_axi_awvalid_0),
        .I1(full),
        .I2(command_ongoing),
        .O(S_AXI_AREADY_I_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00888A88)) 
    cmd_push_block_i_1
       (.I0(aresetn),
        .I1(m_axi_awvalid_0),
        .I2(full),
        .I3(command_ongoing),
        .I4(m_axi_awready),
        .O(aresetn_0));
  LUT6 #(
    .INIT(64'hF222FFFFD000D000)) 
    command_ongoing_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(E),
        .I3(s_axi_awvalid),
        .I4(command_ongoing_i_2_n_0),
        .I5(command_ongoing),
        .O(\areset_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    command_ongoing_i_2
       (.I0(m_axi_awready),
        .I1(command_ongoing),
        .I2(full),
        .I3(m_axi_awvalid_0),
        .O(command_ongoing_i_2_n_0));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "5" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "5" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_7 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(aclk),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din({1'b0,m_axi_awlen}),
        .dout({NLW_fifo_gen_inst_dout_UNCONNECTED[4],dout}),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(cmd_push),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    fifo_gen_inst_i_1
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(cmd_push));
  LUT6 #(
    .INIT(64'hE4E4CC664E4ECC66)) 
    \length_counter_1[1]_i_1 
       (.I0(empty_fwft_i_reg),
        .I1(length_counter_1_reg[1]),
        .I2(dout[1]),
        .I3(length_counter_1_reg[0]),
        .I4(first_mi_word),
        .I5(dout[0]),
        .O(length_counter_1_reg_1_sn_1));
  LUT3 #(
    .INIT(8'hA2)) 
    m_axi_awvalid_INST_0
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(m_axi_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_wvalid_INST_0
       (.I0(s_axi_wvalid),
        .I1(empty),
        .O(m_axi_wvalid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    s_axi_wready_INST_0
       (.I0(empty),
        .I1(s_axi_wvalid),
        .I2(m_axi_wready),
        .O(empty_fwft_i_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_a_axi3_conv
   (dout,
    empty,
    SR,
    m_axi_awlen,
    m_axi_awlock,
    E,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_awaddr,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    aclk,
    rd_en,
    s_axi_awlock,
    aresetn,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output [3:0]m_axi_awlen;
  output [0:0]m_axi_awlock;
  output [0:0]E;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output [31:0]m_axi_awaddr;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  input aclk;
  input rd_en;
  input [0:0]s_axi_awlock;
  input aresetn;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input s_axi_awvalid;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;

  wire [0:0]E;
  wire [0:0]SR;
  wire \USE_BURSTS.cmd_queue_n_11 ;
  wire \USE_BURSTS.cmd_queue_n_12 ;
  wire \USE_BURSTS.cmd_queue_n_6 ;
  wire aclk;
  wire [1:0]areset_d;
  wire aresetn;
  wire cmd_push_block_reg_n_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  FDRE \S_AXI_AADDR_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[0]),
        .Q(m_axi_awaddr[0]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[10]),
        .Q(m_axi_awaddr[10]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[11]),
        .Q(m_axi_awaddr[11]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[12]),
        .Q(m_axi_awaddr[12]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[13]),
        .Q(m_axi_awaddr[13]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[14]),
        .Q(m_axi_awaddr[14]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[15]),
        .Q(m_axi_awaddr[15]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[16]),
        .Q(m_axi_awaddr[16]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[17]),
        .Q(m_axi_awaddr[17]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[18]),
        .Q(m_axi_awaddr[18]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[19]),
        .Q(m_axi_awaddr[19]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[1]),
        .Q(m_axi_awaddr[1]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[20]),
        .Q(m_axi_awaddr[20]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[21]),
        .Q(m_axi_awaddr[21]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[22]),
        .Q(m_axi_awaddr[22]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[23]),
        .Q(m_axi_awaddr[23]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[24]),
        .Q(m_axi_awaddr[24]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[25]),
        .Q(m_axi_awaddr[25]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[26]),
        .Q(m_axi_awaddr[26]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[27]),
        .Q(m_axi_awaddr[27]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[28]),
        .Q(m_axi_awaddr[28]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[29]),
        .Q(m_axi_awaddr[29]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[2]),
        .Q(m_axi_awaddr[2]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[30]),
        .Q(m_axi_awaddr[30]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[31]),
        .Q(m_axi_awaddr[31]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[3]),
        .Q(m_axi_awaddr[3]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[4]),
        .Q(m_axi_awaddr[4]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[5]),
        .Q(m_axi_awaddr[5]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[6]),
        .Q(m_axi_awaddr[6]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[7]),
        .Q(m_axi_awaddr[7]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[8]),
        .Q(m_axi_awaddr[8]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[9]),
        .Q(m_axi_awaddr[9]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[0]),
        .Q(m_axi_awburst[0]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[1]),
        .Q(m_axi_awburst[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[0]),
        .Q(m_axi_awcache[0]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[1]),
        .Q(m_axi_awcache[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[2]),
        .Q(m_axi_awcache[2]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[3]),
        .Q(m_axi_awcache[3]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[0]),
        .Q(m_axi_awlen[0]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[1]),
        .Q(m_axi_awlen[1]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[2]),
        .Q(m_axi_awlen[2]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[3]),
        .Q(m_axi_awlen[3]),
        .R(SR));
  FDRE \S_AXI_ALOCK_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlock),
        .Q(m_axi_awlock),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[0]),
        .Q(m_axi_awprot[0]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[1]),
        .Q(m_axi_awprot[1]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[2]),
        .Q(m_axi_awprot[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[0]),
        .Q(m_axi_awqos[0]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[1]),
        .Q(m_axi_awqos[1]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[2]),
        .Q(m_axi_awqos[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[3]),
        .Q(m_axi_awqos[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    S_AXI_AREADY_I_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_11 ),
        .Q(E),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[0]),
        .Q(m_axi_awsize[0]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[1]),
        .Q(m_axi_awsize[1]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[2]),
        .Q(m_axi_awsize[2]),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_25_axic_fifo \USE_BURSTS.cmd_queue 
       (.E(E),
        .Q(areset_d),
        .SR(SR),
        .S_AXI_AREADY_I_reg(\USE_BURSTS.cmd_queue_n_11 ),
        .aclk(aclk),
        .\areset_d_reg[1] (\USE_BURSTS.cmd_queue_n_12 ),
        .aresetn(aresetn),
        .aresetn_0(\USE_BURSTS.cmd_queue_n_6 ),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(cmd_push_block_reg_n_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(SR),
        .Q(areset_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(areset_d[0]),
        .Q(areset_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_push_block_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_6 ),
        .Q(cmd_push_block_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    command_ongoing_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_12 ),
        .Q(command_ongoing),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_axi3_conv
   (m_axi_awlen,
    m_axi_awaddr,
    E,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_wlast,
    aresetn,
    m_axi_awready,
    aclk,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    m_axi_wready,
    s_axi_wvalid,
    s_axi_awvalid);
  output [3:0]m_axi_awlen;
  output [31:0]m_axi_awaddr;
  output [0:0]E;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output m_axi_wlast;
  input aresetn;
  input m_axi_awready;
  input aclk;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input m_axi_wready;
  input s_axi_wvalid;
  input s_axi_awvalid;

  wire [0:0]E;
  wire \USE_BURSTS.cmd_queue/inst/empty ;
  wire [3:0]\USE_WRITE.wr_cmd_length ;
  wire \USE_WRITE.wr_cmd_ready ;
  wire \USE_WRITE.write_addr_inst_n_13 ;
  wire \USE_WRITE.write_addr_inst_n_5 ;
  wire aclk;
  wire aresetn;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_a_axi3_conv \USE_WRITE.write_addr_inst 
       (.E(E),
        .SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .aresetn(aresetn),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(\USE_WRITE.write_addr_inst_n_13 ),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_w_axi3_conv \USE_WRITE.write_data_inst 
       (.SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .first_mi_word(first_mi_word),
        .\length_counter_1_reg[1]_0 (length_counter_1_reg),
        .\length_counter_1_reg[1]_1 (\USE_WRITE.write_addr_inst_n_13 ),
        .\length_counter_1_reg[2]_0 (empty_fwft_i_reg),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_WRITE = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "zynq" *) 
(* C_IGNORE_ID = "1" *) (* C_M_AXI_PROTOCOL = "1" *) (* C_S_AXI_PROTOCOL = "0" *) 
(* C_TRANSLATION_MODE = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* P_AXI3 = "1" *) 
(* P_AXI4 = "0" *) (* P_AXILITE = "2" *) (* P_AXILITE_SIZE = "3'b011" *) 
(* P_CONVERSION = "2" *) (* P_DECERR = "2'b11" *) (* P_INCR = "2'b01" *) 
(* P_PROTECTION = "1" *) (* P_SLVERR = "2'b10" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_axi_protocol_converter
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire m_axi_arready;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_araddr[31:0] = s_axi_araddr;
  assign m_axi_arburst[1:0] = s_axi_arburst;
  assign m_axi_arcache[3:0] = s_axi_arcache;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[3:0] = s_axi_arlen[3:0];
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = s_axi_arlock;
  assign m_axi_arprot[2:0] = s_axi_arprot;
  assign m_axi_arqos[3:0] = s_axi_arqos;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2:0] = s_axi_arsize;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = s_axi_arvalid;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = s_axi_rready;
  assign m_axi_wdata[63:0] = s_axi_wdata;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wstrb[7:0] = s_axi_wstrb;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_arready = m_axi_arready;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1:0] = m_axi_bresp;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = m_axi_bvalid;
  assign s_axi_rdata[63:0] = m_axi_rdata;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = m_axi_rlast;
  assign s_axi_rresp[1:0] = m_axi_rresp;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = m_axi_rvalid;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_axi3_conv \gen_axi4_axi3.axi3_conv_inst 
       (.E(s_axi_awready),
        .aclk(aclk),
        .aresetn(aresetn),
        .empty_fwft_i_reg(s_axi_wready),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(\^m_axi_awlock ),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_w_axi3_conv
   (\length_counter_1_reg[1]_0 ,
    first_mi_word,
    rd_en,
    m_axi_wlast,
    SR,
    aclk,
    \length_counter_1_reg[1]_1 ,
    \length_counter_1_reg[2]_0 ,
    m_axi_wready,
    s_axi_wvalid,
    empty,
    dout);
  output [1:0]\length_counter_1_reg[1]_0 ;
  output first_mi_word;
  output rd_en;
  output m_axi_wlast;
  input [0:0]SR;
  input aclk;
  input \length_counter_1_reg[1]_1 ;
  input \length_counter_1_reg[2]_0 ;
  input m_axi_wready;
  input s_axi_wvalid;
  input empty;
  input [3:0]dout;

  wire [0:0]SR;
  wire aclk;
  wire [3:0]dout;
  wire empty;
  wire first_mi_word;
  wire first_mi_word_i_1_n_0;
  wire \length_counter_1[0]_i_1_n_0 ;
  wire \length_counter_1[2]_i_1_n_0 ;
  wire \length_counter_1[3]_i_1_n_0 ;
  wire \length_counter_1[4]_i_1_n_0 ;
  wire \length_counter_1[4]_i_2_n_0 ;
  wire \length_counter_1[5]_i_1_n_0 ;
  wire \length_counter_1[6]_i_1_n_0 ;
  wire \length_counter_1[7]_i_1_n_0 ;
  wire [7:2]length_counter_1_reg;
  wire [1:0]\length_counter_1_reg[1]_0 ;
  wire \length_counter_1_reg[1]_1 ;
  wire \length_counter_1_reg[2]_0 ;
  wire m_axi_wlast;
  wire m_axi_wlast_INST_0_i_1_n_0;
  wire m_axi_wlast_INST_0_i_2_n_0;
  wire m_axi_wlast_INST_0_i_3_n_0;
  wire m_axi_wready;
  wire rd_en;
  wire s_axi_wvalid;

  LUT6 #(
    .INIT(64'h0000CC000000CC04)) 
    fifo_gen_inst_i_2
       (.I0(length_counter_1_reg[7]),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[5]),
        .I3(first_mi_word),
        .I4(m_axi_wlast_INST_0_i_1_n_0),
        .I5(length_counter_1_reg[6]),
        .O(rd_en));
  LUT6 #(
    .INIT(64'h0F0FFFFF00010000)) 
    first_mi_word_i_1
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(length_counter_1_reg[6]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(first_mi_word),
        .O(first_mi_word_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    first_mi_word_reg
       (.C(aclk),
        .CE(1'b1),
        .D(first_mi_word_i_1_n_0),
        .Q(first_mi_word),
        .S(SR));
  LUT6 #(
    .INIT(64'hF2FFFFFF07000000)) 
    \length_counter_1[0]_i_1 
       (.I0(first_mi_word),
        .I1(dout[0]),
        .I2(empty),
        .I3(s_axi_wvalid),
        .I4(m_axi_wready),
        .I5(\length_counter_1_reg[1]_0 [0]),
        .O(\length_counter_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hD8D272D2)) 
    \length_counter_1[2]_i_1 
       (.I0(\length_counter_1_reg[2]_0 ),
        .I1(m_axi_wlast_INST_0_i_3_n_0),
        .I2(length_counter_1_reg[2]),
        .I3(first_mi_word),
        .I4(dout[2]),
        .O(\length_counter_1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB8B474B4)) 
    \length_counter_1[3]_i_1 
       (.I0(\length_counter_1[4]_i_2_n_0 ),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[3]),
        .I3(first_mi_word),
        .I4(dout[3]),
        .O(\length_counter_1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A3A35AAAAAAAA)) 
    \length_counter_1[4]_i_1 
       (.I0(length_counter_1_reg[4]),
        .I1(dout[3]),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[3]),
        .I4(\length_counter_1[4]_i_2_n_0 ),
        .I5(\length_counter_1_reg[2]_0 ),
        .O(\length_counter_1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \length_counter_1[4]_i_2 
       (.I0(m_axi_wlast_INST_0_i_3_n_0),
        .I1(length_counter_1_reg[2]),
        .I2(first_mi_word),
        .I3(dout[2]),
        .O(\length_counter_1[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF0000FFF70808)) 
    \length_counter_1[5]_i_1 
       (.I0(m_axi_wready),
        .I1(s_axi_wvalid),
        .I2(empty),
        .I3(first_mi_word),
        .I4(length_counter_1_reg[5]),
        .I5(m_axi_wlast_INST_0_i_1_n_0),
        .O(\length_counter_1[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3EFF0D00)) 
    \length_counter_1[6]_i_1 
       (.I0(length_counter_1_reg[5]),
        .I1(first_mi_word),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(\length_counter_1_reg[2]_0 ),
        .I4(length_counter_1_reg[6]),
        .O(\length_counter_1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F3EFFFF30310000)) 
    \length_counter_1[7]_i_1 
       (.I0(length_counter_1_reg[6]),
        .I1(m_axi_wlast_INST_0_i_1_n_0),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[5]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(length_counter_1_reg[7]),
        .O(\length_counter_1[7]_i_1_n_0 ));
  FDRE \length_counter_1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[0]_i_1_n_0 ),
        .Q(\length_counter_1_reg[1]_0 [0]),
        .R(SR));
  FDRE \length_counter_1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1_reg[1]_1 ),
        .Q(\length_counter_1_reg[1]_0 [1]),
        .R(SR));
  FDRE \length_counter_1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[2]_i_1_n_0 ),
        .Q(length_counter_1_reg[2]),
        .R(SR));
  FDRE \length_counter_1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[3]_i_1_n_0 ),
        .Q(length_counter_1_reg[3]),
        .R(SR));
  FDRE \length_counter_1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[4]_i_1_n_0 ),
        .Q(length_counter_1_reg[4]),
        .R(SR));
  FDRE \length_counter_1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[5]_i_1_n_0 ),
        .Q(length_counter_1_reg[5]),
        .R(SR));
  FDRE \length_counter_1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[6]_i_1_n_0 ),
        .Q(length_counter_1_reg[6]),
        .R(SR));
  FDRE \length_counter_1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[7]_i_1_n_0 ),
        .Q(length_counter_1_reg[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00F000F1)) 
    m_axi_wlast_INST_0
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(first_mi_word),
        .I3(m_axi_wlast_INST_0_i_1_n_0),
        .I4(length_counter_1_reg[6]),
        .O(m_axi_wlast));
  LUT6 #(
    .INIT(64'hFFFFFFFEFCFCFFFE)) 
    m_axi_wlast_INST_0_i_1
       (.I0(length_counter_1_reg[4]),
        .I1(m_axi_wlast_INST_0_i_2_n_0),
        .I2(m_axi_wlast_INST_0_i_3_n_0),
        .I3(length_counter_1_reg[2]),
        .I4(first_mi_word),
        .I5(dout[2]),
        .O(m_axi_wlast_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axi_wlast_INST_0_i_2
       (.I0(dout[3]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg[3]),
        .O(m_axi_wlast_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    m_axi_wlast_INST_0_i_3
       (.I0(\length_counter_1_reg[1]_0 [1]),
        .I1(dout[1]),
        .I2(\length_counter_1_reg[1]_0 [0]),
        .I3(first_mi_word),
        .I4(dout[0]),
        .O(m_axi_wlast_INST_0_i_3_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "pynq_ddrbench_auto_pc_2,axi_protocol_converter_v2_1_26_axi_protocol_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_converter_v2_1_26_axi_protocol_converter,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN pynq_ddrbench_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]s_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [63:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [7:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]s_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [63:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN pynq_ddrbench_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [3:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [1:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [63:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [7:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [3:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [1:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [63:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN pynq_ddrbench_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]\^m_axi_arlock ;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [63:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \^m_axi_arlock [0];
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  GND GND
       (.G(\<const0> ));
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_IGNORE_ID = "1" *) 
  (* C_M_AXI_PROTOCOL = "1" *) 
  (* C_S_AXI_PROTOCOL = "0" *) 
  (* C_TRANSLATION_MODE = "0" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b011" *) 
  (* P_CONVERSION = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_INCR = "2'b01" *) 
  (* P_PROTECTION = "1" *) 
  (* P_SLVERR = "2'b10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_axi_protocol_converter inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock({NLW_inst_m_axi_arlock_UNCONNECTED[1],\^m_axi_arlock }),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock({NLW_inst_m_axi_awlock_UNCONNECTED[1],\^m_axi_awlock }),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,s_axi_arlen[3:0]}),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,s_axi_awlen[3:0]}),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
h4/8v0FBgXUomE5kJVs58UlO/ao4SLHpniPXt+fomPPYB6tv3U0iBfOL5737ZNNEhgP1kkKeMvq+
VxOLW94g7JZT6mWc5ZuQ7jgK8Qpa6+1xpVVQBB6gVSEeHij7ZHqPdYaLC9rL/SR7notnBC1OujFi
++mTu5z/HJZtnN4VJQw=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Su6POoQw092/hg4JN8GOCSrLUa435VAUaqUned4C4G61yBHlUmaG63UO+KxY5pgyMrDH6/XH2bPa
fona2wB0Y0sw6W61PXOfiew7cH42baMY0P9UBRjH25EZTf72W3O8r7DNj16ob9pPi7bkuCd3aab3
hdfeY613n+hUbAXTLQqbhjqGmO9kFeC/VmdSITa02RauMnpfVxz1wLu9iUQ0V+mPTp6hvfNXlD0F
7oONLZJg+c6/+uSw1WbEiltO2Lplqvbb0sYbZjtTSEQZSdF4DiUdA0SGK+L75aDYGx3Z/ajCRpBx
Mr39wb5wiDr6SJ/QQ/JmYc+HrTs/fbN9BJ/Grg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
JbOromwhdJgnOFMOfO8mpnyFC1anQPoDL/XeHYQuoY4+0yjNmPGasGLGjanpoUgfOYngBHPrFFFH
rapGBPsHEbT6JXWHeRJexf2moVhmq1sHJ7n+Jx1rVNuyclUCC08Fg3sy6FdUQmptKSpqOw1x0DV8
R9ZlmwLTkoN8IV6D7sg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XbCcyKbk3pmZ92QhZ1iCj+9jpzUJAn91N3YYwVHN3gwcgTU0NRr0oD7EmkLoZ8hVAhh/9YMUp7DE
059wcAzCBsD2W3CWY+GHUSJS57Xt2yi9tZH7binajEyHpCqaFKKO9WxDTO9XnYLVswRvAii0DOJL
mY+z3Z0uDx55BVWqbbvDkA5gABsZLueFt15rXRJPRnAjzWXhYzjiqC1WQDy5UHl/LBDlsOMuouyd
gM4k7zzEZUOy4o1sI2isD+6T/wd+iOsXvq39rguDUtkw3SR4GJmk+rBu3rBh+EvBHKxaWqQjGGNV
qWyrqd89LjZFGnXZ2jvsgxldJWCellgTK1ZEfA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dG5h8R2Fe36rfzcvmeDU4OapeKO/Lhe0DkL+4c9AG4It+1yVmtHeEWL8eVWMvHdPTwqJqgkMQbh4
OO9/9XZMyYCWFJTHu4ossKo7zKccfTeBbKfgP+rDEckDTGIWXihj2YJ2N0p6q9Ynpsz9qOLdoXTY
gZXwoOe4MrZBJWZrDOqkD1hQ+cRUV9c8S6FlH+AyBNj5dlaAM0Jyq6a8TvcRmLoZfdi1zFWXeTUW
/XfWQRP+vnqqV8VPdyfaJJzaKnG1u9PnvSFauc3SzydGZfICacU2pPxqAaJWzDYwSns+vd4vCu7u
e01UXo4XXeFCvO/9mye0QnyrDHhuE0b1Svw/jQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K8hvyEyHvgdg02DFF2GnEdLUq6j/uKT5fsI+Nkpbw14CRrq5p+STF83Or85VDleAax2TYln4LhGn
6G6INbZ4BdMuA4nVtyx5xaogScfMwbjrTAn0bqxT20M++g4cn4gW2g3oEFMnXaYCsLaJ58t4/T42
ocO8oqJeCowKICP/eM+B+/jSusNp4JILdp522MKky1zANadPwlv8a7QrMrJQrnb/lF8qC10yXqfM
LbKfbAEBaHlel46y7YBqdIimfeAVng194wkXobD6WuMhQOpFkigBOLQzoKQWN1TWeY5/rSQt9pcT
xLm+NEQmtlL61OudMCIqm++dCQSgE4NFJj1fCw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gSLVZdmdCqRy/3LoTp5M48T1hUUfGQp8cxVz4NQ+P65mrZ0oJJXHSaNbzdvtYH41+27aGh3RBbLb
pzz+TmeVuEVneG5nGe1VY2ogM1D7tBMRUvNgXK2PkSRLnk9tYgnxoYi0cYLBxa3piqBh44cdYXif
bT0Uh2vFogmdeH5hxVNFk8FEhULNtR/T9r9ilPNDQALb08fQM461sjlhS2jgRgH0X8LZqnBOii+F
7+GguDMENTlzU0XSYWEcGFH9V5PdYMehb0WgZeiqTchxRuQFmLjDhI4J5dkci8RmkLCwz4KyjfOi
S8Nkg20qh9otuAisfQTh4Qx2lC7x7BHgmuwy0w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
kXlkvzJI7Tq1glqNfjqmCb8YU69bhN9hH5OsWvFNj7VseyX6/5l9Mgif4B1r1LeKz06I27dmB9g7
AuHBFZ0bPN86mURBL/HK/dTOGyLYAveWeOIK1kqX56i4H9UNIUObEphcz9wdT0OgXHTPMxiIpJhT
1o5oYJW49mDsAv5yxe4FvPo6rFgZAiEo34vJGDxzz4//zJq0z+GxJNCibpLydZBWaJWRfsDUs9pm
1O6hS3KPIL5Evg1JOFt1uwKb1xEA08ETT+qYwg6zmFfwQbs6O7modRmBtEd1n9mrqsgCAviiLPtN
LUFiLdrywPt7LArLCRz4h5uHJxz/21Pj5m1VZtZq9nFmsbp6Lw/0RF1+nN8o+RIu+/tmu74xkL/8
nNEc9mEFy912OKP6WDP4Ajzg4gl9xhtaYA5eGkNB/43YjgGsmTe+L0dyxHIwa734JNMb5zC5dRtR
V4pCnWZKmnDJDXvMftedQzqQvdFwJg5hLxrHfkPD8LqiOwVck/Nt6QSF

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ADtaDIjUIR6zZBfz+lPRaDMdXcoufPACX4aSe06/DoTgIDvM+UOlm8rH20gKO3r8YdsuLtUh7rhz
ekJB22nBPUdbl3FvlGdQIgiCyJ8XgZYvvuOo9I765yKjFxQsFmQE0Ih86fqCqvYmRnsZkpk1uQ7v
JpqhWGBX6tLgYu/txP+ShnzFfkWGhj29JhYII0zqJMBCjGeM89F+mlH+X/YL5Q/fZYyh9Cr2CJx6
ofJpBZ1SPlXwgafXVi0QAUVuQEBmZYVn9Kze++tMEr6qv62ANq23LevYQfCsYKoY5iyf5U7jJ5Qx
eC9nG5Es4y6lz5giep7veaXdBFBHd7VuD56v4w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zFwVPvNmX5sBruiGDSfENTp6EBfydwYKhxWi0YDKQ4j0gu6AMV8yJP6GXeJs/A9Zgb1UFE+sJifk
OngE9N2vVRp43pAVauHQf1hUkSWPDJuZ9yEQZbR7F3mmiBKu/Aehj7KcAjv07FWv46HzxRL9E2xx
gpDOzAyNSNubxORv7bVYUV0C4Fr+tZRA6douG4rxi56npPfzIAZjyU4wPvwabxrJ9L4ZRuZXciLk
lJGTIJZTH2uclPmuo57jlIXGo1ZtQZgRCDfn7W02AQ7MDKblx47m+E+sUKKYHZlvf30GkPcwlucZ
ZcUcGnYaRCZnrhwFl0qxxXn2pO15vG4MJXOHMw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Lq86c/0SMuvdLuij6dbfI/ah4/50WGATVNRwXobLfbnZqWOhhEk3VDQATTxe7ZLrUauwrLuMoKhS
j4kqT2raqDijA51Tz7ee+F/MUKvyxGDJqfBi5JJX9y81LCXav7HpdRiPTy6w5O3tQoQbugh61D0B
oJBwNvL22Oi10e+Bu7H1yQvsbksxPAA8VE8HK+OJzZETk0PfHS2ySL5WXLQf7duD6CWmpWdLMrZQ
ojOqvNL31LsO1gZhssTk4RgyZUrZ3CboBbLWDxq2L/SsF5YiRIUPDTe17rRcrxa1y6LzMD/ve/nR
mptJOGxlUgLpJaPAA7jH3b+EQGlrHzHOsG8fFQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 71296)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
