// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="ddrBenchmark_ddrBenchmark,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=7.300000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=3873,HLS_SYN_LUT=5571,HLS_VERSION=2022_1}" *)

module ddrBenchmark (
        s_axi_control_AWVALID,
        s_axi_control_AWREADY,
        s_axi_control_AWADDR,
        s_axi_control_WVALID,
        s_axi_control_WREADY,
        s_axi_control_WDATA,
        s_axi_control_WSTRB,
        s_axi_control_ARVALID,
        s_axi_control_ARREADY,
        s_axi_control_ARADDR,
        s_axi_control_RVALID,
        s_axi_control_RREADY,
        s_axi_control_RDATA,
        s_axi_control_RRESP,
        s_axi_control_BVALID,
        s_axi_control_BREADY,
        s_axi_control_BRESP,
        ap_clk,
        ap_rst_n,
        interrupt,
        m_axi_gmem_AWVALID,
        m_axi_gmem_AWREADY,
        m_axi_gmem_AWADDR,
        m_axi_gmem_AWID,
        m_axi_gmem_AWLEN,
        m_axi_gmem_AWSIZE,
        m_axi_gmem_AWBURST,
        m_axi_gmem_AWLOCK,
        m_axi_gmem_AWCACHE,
        m_axi_gmem_AWPROT,
        m_axi_gmem_AWQOS,
        m_axi_gmem_AWREGION,
        m_axi_gmem_AWUSER,
        m_axi_gmem_WVALID,
        m_axi_gmem_WREADY,
        m_axi_gmem_WDATA,
        m_axi_gmem_WSTRB,
        m_axi_gmem_WLAST,
        m_axi_gmem_WID,
        m_axi_gmem_WUSER,
        m_axi_gmem_ARVALID,
        m_axi_gmem_ARREADY,
        m_axi_gmem_ARADDR,
        m_axi_gmem_ARID,
        m_axi_gmem_ARLEN,
        m_axi_gmem_ARSIZE,
        m_axi_gmem_ARBURST,
        m_axi_gmem_ARLOCK,
        m_axi_gmem_ARCACHE,
        m_axi_gmem_ARPROT,
        m_axi_gmem_ARQOS,
        m_axi_gmem_ARREGION,
        m_axi_gmem_ARUSER,
        m_axi_gmem_RVALID,
        m_axi_gmem_RREADY,
        m_axi_gmem_RDATA,
        m_axi_gmem_RLAST,
        m_axi_gmem_RID,
        m_axi_gmem_RUSER,
        m_axi_gmem_RRESP,
        m_axi_gmem_BVALID,
        m_axi_gmem_BREADY,
        m_axi_gmem_BRESP,
        m_axi_gmem_BID,
        m_axi_gmem_BUSER,
        m_axi_results_AWVALID,
        m_axi_results_AWREADY,
        m_axi_results_AWADDR,
        m_axi_results_AWID,
        m_axi_results_AWLEN,
        m_axi_results_AWSIZE,
        m_axi_results_AWBURST,
        m_axi_results_AWLOCK,
        m_axi_results_AWCACHE,
        m_axi_results_AWPROT,
        m_axi_results_AWQOS,
        m_axi_results_AWREGION,
        m_axi_results_AWUSER,
        m_axi_results_WVALID,
        m_axi_results_WREADY,
        m_axi_results_WDATA,
        m_axi_results_WSTRB,
        m_axi_results_WLAST,
        m_axi_results_WID,
        m_axi_results_WUSER,
        m_axi_results_ARVALID,
        m_axi_results_ARREADY,
        m_axi_results_ARADDR,
        m_axi_results_ARID,
        m_axi_results_ARLEN,
        m_axi_results_ARSIZE,
        m_axi_results_ARBURST,
        m_axi_results_ARLOCK,
        m_axi_results_ARCACHE,
        m_axi_results_ARPROT,
        m_axi_results_ARQOS,
        m_axi_results_ARREGION,
        m_axi_results_ARUSER,
        m_axi_results_RVALID,
        m_axi_results_RREADY,
        m_axi_results_RDATA,
        m_axi_results_RLAST,
        m_axi_results_RID,
        m_axi_results_RUSER,
        m_axi_results_RRESP,
        m_axi_results_BVALID,
        m_axi_results_BREADY,
        m_axi_results_BRESP,
        m_axi_results_BID,
        m_axi_results_BUSER
);

parameter    C_S_AXI_CONTROL_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_ADDR_WIDTH = 6;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_M_AXI_GMEM_ID_WIDTH = 1;
parameter    C_M_AXI_GMEM_ADDR_WIDTH = 64;
parameter    C_M_AXI_GMEM_DATA_WIDTH = 512;
parameter    C_M_AXI_GMEM_AWUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_ARUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_WUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_RUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_BUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_USER_VALUE = 0;
parameter    C_M_AXI_GMEM_PROT_VALUE = 0;
parameter    C_M_AXI_GMEM_CACHE_VALUE = 3;
parameter    C_M_AXI_DATA_WIDTH = 32;
parameter    C_M_AXI_RESULTS_ID_WIDTH = 1;
parameter    C_M_AXI_RESULTS_ADDR_WIDTH = 64;
parameter    C_M_AXI_RESULTS_DATA_WIDTH = 64;
parameter    C_M_AXI_RESULTS_AWUSER_WIDTH = 1;
parameter    C_M_AXI_RESULTS_ARUSER_WIDTH = 1;
parameter    C_M_AXI_RESULTS_WUSER_WIDTH = 1;
parameter    C_M_AXI_RESULTS_RUSER_WIDTH = 1;
parameter    C_M_AXI_RESULTS_BUSER_WIDTH = 1;
parameter    C_M_AXI_RESULTS_USER_VALUE = 0;
parameter    C_M_AXI_RESULTS_PROT_VALUE = 0;
parameter    C_M_AXI_RESULTS_CACHE_VALUE = 3;

parameter C_S_AXI_CONTROL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_GMEM_WSTRB_WIDTH = (512 / 8);
parameter C_M_AXI_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_RESULTS_WSTRB_WIDTH = (64 / 8);

input   s_axi_control_AWVALID;
output   s_axi_control_AWREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_AWADDR;
input   s_axi_control_WVALID;
output   s_axi_control_WREADY;
input  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_WDATA;
input  [C_S_AXI_CONTROL_WSTRB_WIDTH - 1:0] s_axi_control_WSTRB;
input   s_axi_control_ARVALID;
output   s_axi_control_ARREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_ARADDR;
output   s_axi_control_RVALID;
input   s_axi_control_RREADY;
output  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_RDATA;
output  [1:0] s_axi_control_RRESP;
output   s_axi_control_BVALID;
input   s_axi_control_BREADY;
output  [1:0] s_axi_control_BRESP;
input   ap_clk;
input   ap_rst_n;
output   interrupt;
output   m_axi_gmem_AWVALID;
input   m_axi_gmem_AWREADY;
output  [C_M_AXI_GMEM_ADDR_WIDTH - 1:0] m_axi_gmem_AWADDR;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_AWID;
output  [7:0] m_axi_gmem_AWLEN;
output  [2:0] m_axi_gmem_AWSIZE;
output  [1:0] m_axi_gmem_AWBURST;
output  [1:0] m_axi_gmem_AWLOCK;
output  [3:0] m_axi_gmem_AWCACHE;
output  [2:0] m_axi_gmem_AWPROT;
output  [3:0] m_axi_gmem_AWQOS;
output  [3:0] m_axi_gmem_AWREGION;
output  [C_M_AXI_GMEM_AWUSER_WIDTH - 1:0] m_axi_gmem_AWUSER;
output   m_axi_gmem_WVALID;
input   m_axi_gmem_WREADY;
output  [C_M_AXI_GMEM_DATA_WIDTH - 1:0] m_axi_gmem_WDATA;
output  [C_M_AXI_GMEM_WSTRB_WIDTH - 1:0] m_axi_gmem_WSTRB;
output   m_axi_gmem_WLAST;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_WID;
output  [C_M_AXI_GMEM_WUSER_WIDTH - 1:0] m_axi_gmem_WUSER;
output   m_axi_gmem_ARVALID;
input   m_axi_gmem_ARREADY;
output  [C_M_AXI_GMEM_ADDR_WIDTH - 1:0] m_axi_gmem_ARADDR;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_ARID;
output  [7:0] m_axi_gmem_ARLEN;
output  [2:0] m_axi_gmem_ARSIZE;
output  [1:0] m_axi_gmem_ARBURST;
output  [1:0] m_axi_gmem_ARLOCK;
output  [3:0] m_axi_gmem_ARCACHE;
output  [2:0] m_axi_gmem_ARPROT;
output  [3:0] m_axi_gmem_ARQOS;
output  [3:0] m_axi_gmem_ARREGION;
output  [C_M_AXI_GMEM_ARUSER_WIDTH - 1:0] m_axi_gmem_ARUSER;
input   m_axi_gmem_RVALID;
output   m_axi_gmem_RREADY;
input  [C_M_AXI_GMEM_DATA_WIDTH - 1:0] m_axi_gmem_RDATA;
input   m_axi_gmem_RLAST;
input  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_RID;
input  [C_M_AXI_GMEM_RUSER_WIDTH - 1:0] m_axi_gmem_RUSER;
input  [1:0] m_axi_gmem_RRESP;
input   m_axi_gmem_BVALID;
output   m_axi_gmem_BREADY;
input  [1:0] m_axi_gmem_BRESP;
input  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_BID;
input  [C_M_AXI_GMEM_BUSER_WIDTH - 1:0] m_axi_gmem_BUSER;
output   m_axi_results_AWVALID;
input   m_axi_results_AWREADY;
output  [C_M_AXI_RESULTS_ADDR_WIDTH - 1:0] m_axi_results_AWADDR;
output  [C_M_AXI_RESULTS_ID_WIDTH - 1:0] m_axi_results_AWID;
output  [7:0] m_axi_results_AWLEN;
output  [2:0] m_axi_results_AWSIZE;
output  [1:0] m_axi_results_AWBURST;
output  [1:0] m_axi_results_AWLOCK;
output  [3:0] m_axi_results_AWCACHE;
output  [2:0] m_axi_results_AWPROT;
output  [3:0] m_axi_results_AWQOS;
output  [3:0] m_axi_results_AWREGION;
output  [C_M_AXI_RESULTS_AWUSER_WIDTH - 1:0] m_axi_results_AWUSER;
output   m_axi_results_WVALID;
input   m_axi_results_WREADY;
output  [C_M_AXI_RESULTS_DATA_WIDTH - 1:0] m_axi_results_WDATA;
output  [C_M_AXI_RESULTS_WSTRB_WIDTH - 1:0] m_axi_results_WSTRB;
output   m_axi_results_WLAST;
output  [C_M_AXI_RESULTS_ID_WIDTH - 1:0] m_axi_results_WID;
output  [C_M_AXI_RESULTS_WUSER_WIDTH - 1:0] m_axi_results_WUSER;
output   m_axi_results_ARVALID;
input   m_axi_results_ARREADY;
output  [C_M_AXI_RESULTS_ADDR_WIDTH - 1:0] m_axi_results_ARADDR;
output  [C_M_AXI_RESULTS_ID_WIDTH - 1:0] m_axi_results_ARID;
output  [7:0] m_axi_results_ARLEN;
output  [2:0] m_axi_results_ARSIZE;
output  [1:0] m_axi_results_ARBURST;
output  [1:0] m_axi_results_ARLOCK;
output  [3:0] m_axi_results_ARCACHE;
output  [2:0] m_axi_results_ARPROT;
output  [3:0] m_axi_results_ARQOS;
output  [3:0] m_axi_results_ARREGION;
output  [C_M_AXI_RESULTS_ARUSER_WIDTH - 1:0] m_axi_results_ARUSER;
input   m_axi_results_RVALID;
output   m_axi_results_RREADY;
input  [C_M_AXI_RESULTS_DATA_WIDTH - 1:0] m_axi_results_RDATA;
input   m_axi_results_RLAST;
input  [C_M_AXI_RESULTS_ID_WIDTH - 1:0] m_axi_results_RID;
input  [C_M_AXI_RESULTS_RUSER_WIDTH - 1:0] m_axi_results_RUSER;
input  [1:0] m_axi_results_RRESP;
input   m_axi_results_BVALID;
output   m_axi_results_BREADY;
input  [1:0] m_axi_results_BRESP;
input  [C_M_AXI_RESULTS_ID_WIDTH - 1:0] m_axi_results_BID;
input  [C_M_AXI_RESULTS_BUSER_WIDTH - 1:0] m_axi_results_BUSER;

 reg    ap_rst_n_inv;
wire   [63:0] mem;
wire   [31:0] dataNum;
wire    rw;
wire   [63:0] res;
wire    ap_start;
wire    ap_ready;
wire    ap_done;
wire    ap_idle;
wire    gmem_AWREADY;
wire    gmem_WREADY;
wire    gmem_ARREADY;
wire    gmem_RVALID;
wire   [511:0] gmem_RDATA;
wire    gmem_RLAST;
wire   [0:0] gmem_RID;
wire   [8:0] gmem_RFIFONUM;
wire   [0:0] gmem_RUSER;
wire   [1:0] gmem_RRESP;
wire    gmem_BVALID;
wire   [1:0] gmem_BRESP;
wire   [0:0] gmem_BID;
wire   [0:0] gmem_BUSER;
wire    results_AWREADY;
wire    results_WREADY;
wire    results_ARREADY;
wire    results_RVALID;
wire   [63:0] results_RDATA;
wire   [8:0] results_RFIFONUM;
wire    results_BVALID;
wire   [1:0] results_BRESP;
wire   [0:0] results_BID;
wire   [0:0] results_BUSER;
wire    entry_proc_U0_ap_start;
wire    entry_proc_U0_ap_done;
wire    entry_proc_U0_ap_continue;
wire    entry_proc_U0_ap_idle;
wire    entry_proc_U0_ap_ready;
wire    entry_proc_U0_start_out;
wire    entry_proc_U0_start_write;
wire   [63:0] entry_proc_U0_res_c_din;
wire    entry_proc_U0_res_c_write;
wire    runBench_U0_ap_start;
wire    runBench_U0_ap_done;
wire    runBench_U0_ap_continue;
wire    runBench_U0_ap_idle;
wire    runBench_U0_ap_ready;
wire    runBench_U0_m_axi_gmem_AWVALID;
wire   [63:0] runBench_U0_m_axi_gmem_AWADDR;
wire   [0:0] runBench_U0_m_axi_gmem_AWID;
wire   [31:0] runBench_U0_m_axi_gmem_AWLEN;
wire   [2:0] runBench_U0_m_axi_gmem_AWSIZE;
wire   [1:0] runBench_U0_m_axi_gmem_AWBURST;
wire   [1:0] runBench_U0_m_axi_gmem_AWLOCK;
wire   [3:0] runBench_U0_m_axi_gmem_AWCACHE;
wire   [2:0] runBench_U0_m_axi_gmem_AWPROT;
wire   [3:0] runBench_U0_m_axi_gmem_AWQOS;
wire   [3:0] runBench_U0_m_axi_gmem_AWREGION;
wire   [0:0] runBench_U0_m_axi_gmem_AWUSER;
wire    runBench_U0_m_axi_gmem_WVALID;
wire   [511:0] runBench_U0_m_axi_gmem_WDATA;
wire   [63:0] runBench_U0_m_axi_gmem_WSTRB;
wire    runBench_U0_m_axi_gmem_WLAST;
wire   [0:0] runBench_U0_m_axi_gmem_WID;
wire   [0:0] runBench_U0_m_axi_gmem_WUSER;
wire    runBench_U0_m_axi_gmem_ARVALID;
wire   [63:0] runBench_U0_m_axi_gmem_ARADDR;
wire   [0:0] runBench_U0_m_axi_gmem_ARID;
wire   [31:0] runBench_U0_m_axi_gmem_ARLEN;
wire   [2:0] runBench_U0_m_axi_gmem_ARSIZE;
wire   [1:0] runBench_U0_m_axi_gmem_ARBURST;
wire   [1:0] runBench_U0_m_axi_gmem_ARLOCK;
wire   [3:0] runBench_U0_m_axi_gmem_ARCACHE;
wire   [2:0] runBench_U0_m_axi_gmem_ARPROT;
wire   [3:0] runBench_U0_m_axi_gmem_ARQOS;
wire   [3:0] runBench_U0_m_axi_gmem_ARREGION;
wire   [0:0] runBench_U0_m_axi_gmem_ARUSER;
wire    runBench_U0_m_axi_gmem_RREADY;
wire    runBench_U0_m_axi_gmem_BREADY;
wire   [63:0] runBench_U0_counterCmd1_din;
wire    runBench_U0_counterCmd1_write;
wire   [0:0] runBench_U0_rw;
wire    countCycles_U0_ap_start;
wire    countCycles_U0_ap_done;
wire    countCycles_U0_ap_continue;
wire    countCycles_U0_ap_idle;
wire    countCycles_U0_ap_ready;
wire    countCycles_U0_counterCmd1_read;
wire    countCycles_U0_m_axi_results_AWVALID;
wire   [63:0] countCycles_U0_m_axi_results_AWADDR;
wire   [0:0] countCycles_U0_m_axi_results_AWID;
wire   [31:0] countCycles_U0_m_axi_results_AWLEN;
wire   [2:0] countCycles_U0_m_axi_results_AWSIZE;
wire   [1:0] countCycles_U0_m_axi_results_AWBURST;
wire   [1:0] countCycles_U0_m_axi_results_AWLOCK;
wire   [3:0] countCycles_U0_m_axi_results_AWCACHE;
wire   [2:0] countCycles_U0_m_axi_results_AWPROT;
wire   [3:0] countCycles_U0_m_axi_results_AWQOS;
wire   [3:0] countCycles_U0_m_axi_results_AWREGION;
wire   [0:0] countCycles_U0_m_axi_results_AWUSER;
wire    countCycles_U0_m_axi_results_WVALID;
wire   [63:0] countCycles_U0_m_axi_results_WDATA;
wire   [7:0] countCycles_U0_m_axi_results_WSTRB;
wire    countCycles_U0_m_axi_results_WLAST;
wire   [0:0] countCycles_U0_m_axi_results_WID;
wire   [0:0] countCycles_U0_m_axi_results_WUSER;
wire    countCycles_U0_m_axi_results_ARVALID;
wire   [63:0] countCycles_U0_m_axi_results_ARADDR;
wire   [0:0] countCycles_U0_m_axi_results_ARID;
wire   [31:0] countCycles_U0_m_axi_results_ARLEN;
wire   [2:0] countCycles_U0_m_axi_results_ARSIZE;
wire   [1:0] countCycles_U0_m_axi_results_ARBURST;
wire   [1:0] countCycles_U0_m_axi_results_ARLOCK;
wire   [3:0] countCycles_U0_m_axi_results_ARCACHE;
wire   [2:0] countCycles_U0_m_axi_results_ARPROT;
wire   [3:0] countCycles_U0_m_axi_results_ARQOS;
wire   [3:0] countCycles_U0_m_axi_results_ARREGION;
wire   [0:0] countCycles_U0_m_axi_results_ARUSER;
wire    countCycles_U0_m_axi_results_RREADY;
wire    countCycles_U0_m_axi_results_BREADY;
wire    countCycles_U0_out_r_read;
wire    res_c_full_n;
wire   [63:0] res_c_dout;
wire   [2:0] res_c_num_data_valid;
wire   [2:0] res_c_fifo_cap;
wire    res_c_empty_n;
wire    counterCmd_full_n;
wire   [63:0] counterCmd_dout;
wire   [1:0] counterCmd_num_data_valid;
wire   [1:0] counterCmd_fifo_cap;
wire    counterCmd_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_entry_proc_U0_ap_ready;
wire    ap_sync_entry_proc_U0_ap_ready;
reg    ap_sync_reg_runBench_U0_ap_ready;
wire    ap_sync_runBench_U0_ap_ready;
wire   [0:0] start_for_countCycles_U0_din;
wire    start_for_countCycles_U0_full_n;
wire   [0:0] start_for_countCycles_U0_dout;
wire    start_for_countCycles_U0_empty_n;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_sync_reg_entry_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_runBench_U0_ap_ready = 1'b0;
end

ddrBenchmark_control_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_DATA_WIDTH ))
control_s_axi_U(
    .AWVALID(s_axi_control_AWVALID),
    .AWREADY(s_axi_control_AWREADY),
    .AWADDR(s_axi_control_AWADDR),
    .WVALID(s_axi_control_WVALID),
    .WREADY(s_axi_control_WREADY),
    .WDATA(s_axi_control_WDATA),
    .WSTRB(s_axi_control_WSTRB),
    .ARVALID(s_axi_control_ARVALID),
    .ARREADY(s_axi_control_ARREADY),
    .ARADDR(s_axi_control_ARADDR),
    .RVALID(s_axi_control_RVALID),
    .RREADY(s_axi_control_RREADY),
    .RDATA(s_axi_control_RDATA),
    .RRESP(s_axi_control_RRESP),
    .BVALID(s_axi_control_BVALID),
    .BREADY(s_axi_control_BREADY),
    .BRESP(s_axi_control_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .mem(mem),
    .dataNum(dataNum),
    .rw(rw),
    .res(res),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

ddrBenchmark_gmem_m_axi #(
    .CONSERVATIVE( 1 ),
    .USER_MAXREQS( 5 ),
    .NUM_READ_OUTSTANDING( 16 ),
    .NUM_WRITE_OUTSTANDING( 16 ),
    .MAX_READ_BURST_LENGTH( 16 ),
    .MAX_WRITE_BURST_LENGTH( 16 ),
    .USER_RFIFONUM_WIDTH( 9 ),
    .C_M_AXI_ID_WIDTH( C_M_AXI_GMEM_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH( C_M_AXI_GMEM_ADDR_WIDTH ),
    .C_M_AXI_DATA_WIDTH( C_M_AXI_GMEM_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH( C_M_AXI_GMEM_AWUSER_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH( C_M_AXI_GMEM_ARUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH( C_M_AXI_GMEM_WUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH( C_M_AXI_GMEM_RUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH( C_M_AXI_GMEM_BUSER_WIDTH ),
    .C_USER_VALUE( C_M_AXI_GMEM_USER_VALUE ),
    .C_PROT_VALUE( C_M_AXI_GMEM_PROT_VALUE ),
    .C_CACHE_VALUE( C_M_AXI_GMEM_CACHE_VALUE ),
    .USER_DW( 512 ),
    .USER_AW( 64 ))
gmem_m_axi_U(
    .AWVALID(m_axi_gmem_AWVALID),
    .AWREADY(m_axi_gmem_AWREADY),
    .AWADDR(m_axi_gmem_AWADDR),
    .AWID(m_axi_gmem_AWID),
    .AWLEN(m_axi_gmem_AWLEN),
    .AWSIZE(m_axi_gmem_AWSIZE),
    .AWBURST(m_axi_gmem_AWBURST),
    .AWLOCK(m_axi_gmem_AWLOCK),
    .AWCACHE(m_axi_gmem_AWCACHE),
    .AWPROT(m_axi_gmem_AWPROT),
    .AWQOS(m_axi_gmem_AWQOS),
    .AWREGION(m_axi_gmem_AWREGION),
    .AWUSER(m_axi_gmem_AWUSER),
    .WVALID(m_axi_gmem_WVALID),
    .WREADY(m_axi_gmem_WREADY),
    .WDATA(m_axi_gmem_WDATA),
    .WSTRB(m_axi_gmem_WSTRB),
    .WLAST(m_axi_gmem_WLAST),
    .WID(m_axi_gmem_WID),
    .WUSER(m_axi_gmem_WUSER),
    .ARVALID(m_axi_gmem_ARVALID),
    .ARREADY(m_axi_gmem_ARREADY),
    .ARADDR(m_axi_gmem_ARADDR),
    .ARID(m_axi_gmem_ARID),
    .ARLEN(m_axi_gmem_ARLEN),
    .ARSIZE(m_axi_gmem_ARSIZE),
    .ARBURST(m_axi_gmem_ARBURST),
    .ARLOCK(m_axi_gmem_ARLOCK),
    .ARCACHE(m_axi_gmem_ARCACHE),
    .ARPROT(m_axi_gmem_ARPROT),
    .ARQOS(m_axi_gmem_ARQOS),
    .ARREGION(m_axi_gmem_ARREGION),
    .ARUSER(m_axi_gmem_ARUSER),
    .RVALID(m_axi_gmem_RVALID),
    .RREADY(m_axi_gmem_RREADY),
    .RDATA(m_axi_gmem_RDATA),
    .RLAST(m_axi_gmem_RLAST),
    .RID(m_axi_gmem_RID),
    .RUSER(m_axi_gmem_RUSER),
    .RRESP(m_axi_gmem_RRESP),
    .BVALID(m_axi_gmem_BVALID),
    .BREADY(m_axi_gmem_BREADY),
    .BRESP(m_axi_gmem_BRESP),
    .BID(m_axi_gmem_BID),
    .BUSER(m_axi_gmem_BUSER),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .I_ARVALID(runBench_U0_m_axi_gmem_ARVALID),
    .I_ARREADY(gmem_ARREADY),
    .I_ARADDR(runBench_U0_m_axi_gmem_ARADDR),
    .I_ARLEN(runBench_U0_m_axi_gmem_ARLEN),
    .I_RVALID(gmem_RVALID),
    .I_RREADY(runBench_U0_m_axi_gmem_RREADY),
    .I_RDATA(gmem_RDATA),
    .I_RFIFONUM(gmem_RFIFONUM),
    .I_AWVALID(runBench_U0_m_axi_gmem_AWVALID),
    .I_AWREADY(gmem_AWREADY),
    .I_AWADDR(runBench_U0_m_axi_gmem_AWADDR),
    .I_AWLEN(runBench_U0_m_axi_gmem_AWLEN),
    .I_WVALID(runBench_U0_m_axi_gmem_WVALID),
    .I_WREADY(gmem_WREADY),
    .I_WDATA(runBench_U0_m_axi_gmem_WDATA),
    .I_WSTRB(runBench_U0_m_axi_gmem_WSTRB),
    .I_BVALID(gmem_BVALID),
    .I_BREADY(runBench_U0_m_axi_gmem_BREADY)
);

ddrBenchmark_results_m_axi #(
    .CONSERVATIVE( 1 ),
    .USER_MAXREQS( 5 ),
    .NUM_READ_OUTSTANDING( 16 ),
    .NUM_WRITE_OUTSTANDING( 16 ),
    .MAX_READ_BURST_LENGTH( 16 ),
    .MAX_WRITE_BURST_LENGTH( 16 ),
    .USER_RFIFONUM_WIDTH( 9 ),
    .C_M_AXI_ID_WIDTH( C_M_AXI_RESULTS_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH( C_M_AXI_RESULTS_ADDR_WIDTH ),
    .C_M_AXI_DATA_WIDTH( C_M_AXI_RESULTS_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH( C_M_AXI_RESULTS_AWUSER_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH( C_M_AXI_RESULTS_ARUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH( C_M_AXI_RESULTS_WUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH( C_M_AXI_RESULTS_RUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH( C_M_AXI_RESULTS_BUSER_WIDTH ),
    .C_USER_VALUE( C_M_AXI_RESULTS_USER_VALUE ),
    .C_PROT_VALUE( C_M_AXI_RESULTS_PROT_VALUE ),
    .C_CACHE_VALUE( C_M_AXI_RESULTS_CACHE_VALUE ),
    .USER_DW( 64 ),
    .USER_AW( 64 ))
results_m_axi_U(
    .AWVALID(m_axi_results_AWVALID),
    .AWREADY(m_axi_results_AWREADY),
    .AWADDR(m_axi_results_AWADDR),
    .AWID(m_axi_results_AWID),
    .AWLEN(m_axi_results_AWLEN),
    .AWSIZE(m_axi_results_AWSIZE),
    .AWBURST(m_axi_results_AWBURST),
    .AWLOCK(m_axi_results_AWLOCK),
    .AWCACHE(m_axi_results_AWCACHE),
    .AWPROT(m_axi_results_AWPROT),
    .AWQOS(m_axi_results_AWQOS),
    .AWREGION(m_axi_results_AWREGION),
    .AWUSER(m_axi_results_AWUSER),
    .WVALID(m_axi_results_WVALID),
    .WREADY(m_axi_results_WREADY),
    .WDATA(m_axi_results_WDATA),
    .WSTRB(m_axi_results_WSTRB),
    .WLAST(m_axi_results_WLAST),
    .WID(m_axi_results_WID),
    .WUSER(m_axi_results_WUSER),
    .ARVALID(m_axi_results_ARVALID),
    .ARREADY(m_axi_results_ARREADY),
    .ARADDR(m_axi_results_ARADDR),
    .ARID(m_axi_results_ARID),
    .ARLEN(m_axi_results_ARLEN),
    .ARSIZE(m_axi_results_ARSIZE),
    .ARBURST(m_axi_results_ARBURST),
    .ARLOCK(m_axi_results_ARLOCK),
    .ARCACHE(m_axi_results_ARCACHE),
    .ARPROT(m_axi_results_ARPROT),
    .ARQOS(m_axi_results_ARQOS),
    .ARREGION(m_axi_results_ARREGION),
    .ARUSER(m_axi_results_ARUSER),
    .RVALID(m_axi_results_RVALID),
    .RREADY(m_axi_results_RREADY),
    .RDATA(m_axi_results_RDATA),
    .RLAST(m_axi_results_RLAST),
    .RID(m_axi_results_RID),
    .RUSER(m_axi_results_RUSER),
    .RRESP(m_axi_results_RRESP),
    .BVALID(m_axi_results_BVALID),
    .BREADY(m_axi_results_BREADY),
    .BRESP(m_axi_results_BRESP),
    .BID(m_axi_results_BID),
    .BUSER(m_axi_results_BUSER),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .I_ARVALID(1'b0),
    .I_ARREADY(results_ARREADY),
    .I_ARADDR(64'd0),
    .I_ARLEN(32'd0),
    .I_RVALID(results_RVALID),
    .I_RREADY(1'b0),
    .I_RDATA(results_RDATA),
    .I_RFIFONUM(results_RFIFONUM),
    .I_AWVALID(countCycles_U0_m_axi_results_AWVALID),
    .I_AWREADY(results_AWREADY),
    .I_AWADDR(countCycles_U0_m_axi_results_AWADDR),
    .I_AWLEN(countCycles_U0_m_axi_results_AWLEN),
    .I_WVALID(countCycles_U0_m_axi_results_WVALID),
    .I_WREADY(results_WREADY),
    .I_WDATA(countCycles_U0_m_axi_results_WDATA),
    .I_WSTRB(countCycles_U0_m_axi_results_WSTRB),
    .I_BVALID(results_BVALID),
    .I_BREADY(countCycles_U0_m_axi_results_BREADY)
);

ddrBenchmark_entry_proc entry_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(entry_proc_U0_ap_start),
    .start_full_n(start_for_countCycles_U0_full_n),
    .ap_done(entry_proc_U0_ap_done),
    .ap_continue(entry_proc_U0_ap_continue),
    .ap_idle(entry_proc_U0_ap_idle),
    .ap_ready(entry_proc_U0_ap_ready),
    .start_out(entry_proc_U0_start_out),
    .start_write(entry_proc_U0_start_write),
    .res(res),
    .res_c_din(entry_proc_U0_res_c_din),
    .res_c_num_data_valid(res_c_num_data_valid),
    .res_c_fifo_cap(res_c_fifo_cap),
    .res_c_full_n(res_c_full_n),
    .res_c_write(entry_proc_U0_res_c_write)
);

ddrBenchmark_runBench runBench_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(runBench_U0_ap_start),
    .ap_done(runBench_U0_ap_done),
    .ap_continue(runBench_U0_ap_continue),
    .ap_idle(runBench_U0_ap_idle),
    .ap_ready(runBench_U0_ap_ready),
    .m_axi_gmem_AWVALID(runBench_U0_m_axi_gmem_AWVALID),
    .m_axi_gmem_AWREADY(gmem_AWREADY),
    .m_axi_gmem_AWADDR(runBench_U0_m_axi_gmem_AWADDR),
    .m_axi_gmem_AWID(runBench_U0_m_axi_gmem_AWID),
    .m_axi_gmem_AWLEN(runBench_U0_m_axi_gmem_AWLEN),
    .m_axi_gmem_AWSIZE(runBench_U0_m_axi_gmem_AWSIZE),
    .m_axi_gmem_AWBURST(runBench_U0_m_axi_gmem_AWBURST),
    .m_axi_gmem_AWLOCK(runBench_U0_m_axi_gmem_AWLOCK),
    .m_axi_gmem_AWCACHE(runBench_U0_m_axi_gmem_AWCACHE),
    .m_axi_gmem_AWPROT(runBench_U0_m_axi_gmem_AWPROT),
    .m_axi_gmem_AWQOS(runBench_U0_m_axi_gmem_AWQOS),
    .m_axi_gmem_AWREGION(runBench_U0_m_axi_gmem_AWREGION),
    .m_axi_gmem_AWUSER(runBench_U0_m_axi_gmem_AWUSER),
    .m_axi_gmem_WVALID(runBench_U0_m_axi_gmem_WVALID),
    .m_axi_gmem_WREADY(gmem_WREADY),
    .m_axi_gmem_WDATA(runBench_U0_m_axi_gmem_WDATA),
    .m_axi_gmem_WSTRB(runBench_U0_m_axi_gmem_WSTRB),
    .m_axi_gmem_WLAST(runBench_U0_m_axi_gmem_WLAST),
    .m_axi_gmem_WID(runBench_U0_m_axi_gmem_WID),
    .m_axi_gmem_WUSER(runBench_U0_m_axi_gmem_WUSER),
    .m_axi_gmem_ARVALID(runBench_U0_m_axi_gmem_ARVALID),
    .m_axi_gmem_ARREADY(gmem_ARREADY),
    .m_axi_gmem_ARADDR(runBench_U0_m_axi_gmem_ARADDR),
    .m_axi_gmem_ARID(runBench_U0_m_axi_gmem_ARID),
    .m_axi_gmem_ARLEN(runBench_U0_m_axi_gmem_ARLEN),
    .m_axi_gmem_ARSIZE(runBench_U0_m_axi_gmem_ARSIZE),
    .m_axi_gmem_ARBURST(runBench_U0_m_axi_gmem_ARBURST),
    .m_axi_gmem_ARLOCK(runBench_U0_m_axi_gmem_ARLOCK),
    .m_axi_gmem_ARCACHE(runBench_U0_m_axi_gmem_ARCACHE),
    .m_axi_gmem_ARPROT(runBench_U0_m_axi_gmem_ARPROT),
    .m_axi_gmem_ARQOS(runBench_U0_m_axi_gmem_ARQOS),
    .m_axi_gmem_ARREGION(runBench_U0_m_axi_gmem_ARREGION),
    .m_axi_gmem_ARUSER(runBench_U0_m_axi_gmem_ARUSER),
    .m_axi_gmem_RVALID(gmem_RVALID),
    .m_axi_gmem_RREADY(runBench_U0_m_axi_gmem_RREADY),
    .m_axi_gmem_RDATA(gmem_RDATA),
    .m_axi_gmem_RLAST(gmem_RLAST),
    .m_axi_gmem_RID(gmem_RID),
    .m_axi_gmem_RFIFONUM(gmem_RFIFONUM),
    .m_axi_gmem_RUSER(gmem_RUSER),
    .m_axi_gmem_RRESP(gmem_RRESP),
    .m_axi_gmem_BVALID(gmem_BVALID),
    .m_axi_gmem_BREADY(runBench_U0_m_axi_gmem_BREADY),
    .m_axi_gmem_BRESP(gmem_BRESP),
    .m_axi_gmem_BID(gmem_BID),
    .m_axi_gmem_BUSER(gmem_BUSER),
    .mem(mem),
    .counterCmd1_din(runBench_U0_counterCmd1_din),
    .counterCmd1_num_data_valid(counterCmd_num_data_valid),
    .counterCmd1_fifo_cap(counterCmd_fifo_cap),
    .counterCmd1_full_n(counterCmd_full_n),
    .counterCmd1_write(runBench_U0_counterCmd1_write),
    .dataNum(dataNum),
    .rw(runBench_U0_rw)
);

ddrBenchmark_countCycles countCycles_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(countCycles_U0_ap_start),
    .ap_done(countCycles_U0_ap_done),
    .ap_continue(countCycles_U0_ap_continue),
    .ap_idle(countCycles_U0_ap_idle),
    .ap_ready(countCycles_U0_ap_ready),
    .counterCmd1_dout(counterCmd_dout),
    .counterCmd1_num_data_valid(counterCmd_num_data_valid),
    .counterCmd1_fifo_cap(counterCmd_fifo_cap),
    .counterCmd1_empty_n(counterCmd_empty_n),
    .counterCmd1_read(countCycles_U0_counterCmd1_read),
    .m_axi_results_AWVALID(countCycles_U0_m_axi_results_AWVALID),
    .m_axi_results_AWREADY(results_AWREADY),
    .m_axi_results_AWADDR(countCycles_U0_m_axi_results_AWADDR),
    .m_axi_results_AWID(countCycles_U0_m_axi_results_AWID),
    .m_axi_results_AWLEN(countCycles_U0_m_axi_results_AWLEN),
    .m_axi_results_AWSIZE(countCycles_U0_m_axi_results_AWSIZE),
    .m_axi_results_AWBURST(countCycles_U0_m_axi_results_AWBURST),
    .m_axi_results_AWLOCK(countCycles_U0_m_axi_results_AWLOCK),
    .m_axi_results_AWCACHE(countCycles_U0_m_axi_results_AWCACHE),
    .m_axi_results_AWPROT(countCycles_U0_m_axi_results_AWPROT),
    .m_axi_results_AWQOS(countCycles_U0_m_axi_results_AWQOS),
    .m_axi_results_AWREGION(countCycles_U0_m_axi_results_AWREGION),
    .m_axi_results_AWUSER(countCycles_U0_m_axi_results_AWUSER),
    .m_axi_results_WVALID(countCycles_U0_m_axi_results_WVALID),
    .m_axi_results_WREADY(results_WREADY),
    .m_axi_results_WDATA(countCycles_U0_m_axi_results_WDATA),
    .m_axi_results_WSTRB(countCycles_U0_m_axi_results_WSTRB),
    .m_axi_results_WLAST(countCycles_U0_m_axi_results_WLAST),
    .m_axi_results_WID(countCycles_U0_m_axi_results_WID),
    .m_axi_results_WUSER(countCycles_U0_m_axi_results_WUSER),
    .m_axi_results_ARVALID(countCycles_U0_m_axi_results_ARVALID),
    .m_axi_results_ARREADY(1'b0),
    .m_axi_results_ARADDR(countCycles_U0_m_axi_results_ARADDR),
    .m_axi_results_ARID(countCycles_U0_m_axi_results_ARID),
    .m_axi_results_ARLEN(countCycles_U0_m_axi_results_ARLEN),
    .m_axi_results_ARSIZE(countCycles_U0_m_axi_results_ARSIZE),
    .m_axi_results_ARBURST(countCycles_U0_m_axi_results_ARBURST),
    .m_axi_results_ARLOCK(countCycles_U0_m_axi_results_ARLOCK),
    .m_axi_results_ARCACHE(countCycles_U0_m_axi_results_ARCACHE),
    .m_axi_results_ARPROT(countCycles_U0_m_axi_results_ARPROT),
    .m_axi_results_ARQOS(countCycles_U0_m_axi_results_ARQOS),
    .m_axi_results_ARREGION(countCycles_U0_m_axi_results_ARREGION),
    .m_axi_results_ARUSER(countCycles_U0_m_axi_results_ARUSER),
    .m_axi_results_RVALID(1'b0),
    .m_axi_results_RREADY(countCycles_U0_m_axi_results_RREADY),
    .m_axi_results_RDATA(64'd0),
    .m_axi_results_RLAST(1'b0),
    .m_axi_results_RID(1'd0),
    .m_axi_results_RFIFONUM(9'd0),
    .m_axi_results_RUSER(1'd0),
    .m_axi_results_RRESP(2'd0),
    .m_axi_results_BVALID(results_BVALID),
    .m_axi_results_BREADY(countCycles_U0_m_axi_results_BREADY),
    .m_axi_results_BRESP(results_BRESP),
    .m_axi_results_BID(results_BID),
    .m_axi_results_BUSER(results_BUSER),
    .out_r_dout(res_c_dout),
    .out_r_num_data_valid(res_c_num_data_valid),
    .out_r_fifo_cap(res_c_fifo_cap),
    .out_r_empty_n(res_c_empty_n),
    .out_r_read(countCycles_U0_out_r_read)
);

ddrBenchmark_fifo_w64_d3_S res_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(entry_proc_U0_res_c_din),
    .if_full_n(res_c_full_n),
    .if_write(entry_proc_U0_res_c_write),
    .if_dout(res_c_dout),
    .if_num_data_valid(res_c_num_data_valid),
    .if_fifo_cap(res_c_fifo_cap),
    .if_empty_n(res_c_empty_n),
    .if_read(countCycles_U0_out_r_read)
);

ddrBenchmark_fifo_w64_d2_S counterCmd_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(runBench_U0_counterCmd1_din),
    .if_full_n(counterCmd_full_n),
    .if_write(runBench_U0_counterCmd1_write),
    .if_dout(counterCmd_dout),
    .if_num_data_valid(counterCmd_num_data_valid),
    .if_fifo_cap(counterCmd_fifo_cap),
    .if_empty_n(counterCmd_empty_n),
    .if_read(countCycles_U0_counterCmd1_read)
);

ddrBenchmark_start_for_countCycles_U0 start_for_countCycles_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_countCycles_U0_din),
    .if_full_n(start_for_countCycles_U0_full_n),
    .if_write(entry_proc_U0_start_write),
    .if_dout(start_for_countCycles_U0_dout),
    .if_empty_n(start_for_countCycles_U0_empty_n),
    .if_read(countCycles_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_entry_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_entry_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_entry_proc_U0_ap_ready <= ap_sync_entry_proc_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_runBench_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_runBench_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_runBench_U0_ap_ready <= ap_sync_runBench_U0_ap_ready;
        end
    end
end

assign ap_done = ap_sync_done;

assign ap_idle = (runBench_U0_ap_idle & entry_proc_U0_ap_idle & countCycles_U0_ap_idle);

assign ap_ready = ap_sync_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_done = (runBench_U0_ap_done & countCycles_U0_ap_done);

assign ap_sync_entry_proc_U0_ap_ready = (entry_proc_U0_ap_ready | ap_sync_reg_entry_proc_U0_ap_ready);

assign ap_sync_ready = (ap_sync_runBench_U0_ap_ready & ap_sync_entry_proc_U0_ap_ready);

assign ap_sync_runBench_U0_ap_ready = (runBench_U0_ap_ready | ap_sync_reg_runBench_U0_ap_ready);

assign countCycles_U0_ap_continue = ap_sync_done;

assign countCycles_U0_ap_start = start_for_countCycles_U0_empty_n;

assign entry_proc_U0_ap_continue = 1'b1;

assign entry_proc_U0_ap_start = ((ap_sync_reg_entry_proc_U0_ap_ready ^ 1'b1) & ap_start);

assign gmem_BID = 1'd0;

assign gmem_BRESP = 2'd0;

assign gmem_BUSER = 1'd0;

assign gmem_RID = 1'd0;

assign gmem_RLAST = 1'b0;

assign gmem_RRESP = 2'd0;

assign gmem_RUSER = 1'd0;

assign results_BID = 1'd0;

assign results_BRESP = 2'd0;

assign results_BUSER = 1'd0;

assign runBench_U0_ap_continue = ap_sync_done;

assign runBench_U0_ap_start = ((ap_sync_reg_runBench_U0_ap_ready ^ 1'b1) & ap_start);

assign runBench_U0_rw = rw;

assign start_for_countCycles_U0_din = 1'b1;


reg find_df_deadlock = 0;
// synthesis translate_off
`include "ddrBenchmark_hls_deadlock_detector.vh"
// synthesis translate_on

endmodule //ddrBenchmark

