// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Jan  9 22:57:41 2023
// Host        : HpPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top pynq_ddrbench_auto_pc_1 -prefix
//               pynq_ddrbench_auto_pc_1_ pynq_ddrbench_auto_pc_2_sim_netlist.v
// Design      : pynq_ddrbench_auto_pc_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module pynq_ddrbench_auto_pc_1_axi_data_fifo_v2_1_25_axic_fifo
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
  pynq_ddrbench_auto_pc_1_axi_data_fifo_v2_1_25_fifo_gen inst
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

module pynq_ddrbench_auto_pc_1_axi_data_fifo_v2_1_25_fifo_gen
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
  pynq_ddrbench_auto_pc_1_fifo_generator_v13_2_7 fifo_gen_inst
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

module pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_a_axi3_conv
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
  pynq_ddrbench_auto_pc_1_axi_data_fifo_v2_1_25_axic_fifo \USE_BURSTS.cmd_queue 
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

module pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi3_conv
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

  pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_a_axi3_conv \USE_WRITE.write_addr_inst 
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
  pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_w_axi3_conv \USE_WRITE.write_data_inst 
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
module pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter
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
  pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi3_conv \gen_axi4_axi3.axi3_conv_inst 
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

module pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_w_axi3_conv
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
module pynq_ddrbench_auto_pc_1
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
  pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter inst
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
module pynq_ddrbench_auto_pc_1_xpm_cdc_async_rst
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 70784)
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
