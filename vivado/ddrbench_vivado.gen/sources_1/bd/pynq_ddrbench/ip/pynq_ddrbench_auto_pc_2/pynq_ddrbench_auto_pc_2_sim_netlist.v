// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Jan  9 22:57:45 2023
// Host        : HpPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/gbeve/Downloads/ddrBench/ddrbench_vivado/ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ip/pynq_ddrbench_auto_pc_2/pynq_ddrbench_auto_pc_2_sim_netlist.v
// Design      : pynq_ddrbench_auto_pc_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pynq_ddrbench_auto_pc_2,axi_protocol_converter_v2_1_26_axi_protocol_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_converter_v2_1_26_axi_protocol_converter,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module pynq_ddrbench_auto_pc_2
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
  pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter inst
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

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_25_axic_fifo" *) 
module pynq_ddrbench_auto_pc_2_axi_data_fifo_v2_1_25_axic_fifo
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
  pynq_ddrbench_auto_pc_2_axi_data_fifo_v2_1_25_fifo_gen inst
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

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_25_fifo_gen" *) 
module pynq_ddrbench_auto_pc_2_axi_data_fifo_v2_1_25_fifo_gen
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
  pynq_ddrbench_auto_pc_2_fifo_generator_v13_2_7 fifo_gen_inst
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

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_26_a_axi3_conv" *) 
module pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_a_axi3_conv
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
  pynq_ddrbench_auto_pc_2_axi_data_fifo_v2_1_25_axic_fifo \USE_BURSTS.cmd_queue 
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

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_26_axi3_conv" *) 
module pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi3_conv
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

  pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_a_axi3_conv \USE_WRITE.write_addr_inst 
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
  pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_w_axi3_conv \USE_WRITE.write_data_inst 
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
(* C_TRANSLATION_MODE = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_protocol_converter_v2_1_26_axi_protocol_converter" *) 
(* P_AXI3 = "1" *) (* P_AXI4 = "0" *) (* P_AXILITE = "2" *) 
(* P_AXILITE_SIZE = "3'b011" *) (* P_CONVERSION = "2" *) (* P_DECERR = "2'b11" *) 
(* P_INCR = "2'b01" *) (* P_PROTECTION = "1" *) (* P_SLVERR = "2'b10" *) 
module pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter
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
  pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi3_conv \gen_axi4_axi3.axi3_conv_inst 
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

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_26_w_axi3_conv" *) 
module pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_w_axi3_conv
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

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module pynq_ddrbench_auto_pc_2_xpm_cdc_async_rst
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 71344)
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
