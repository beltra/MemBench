-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Mon Jan  9 23:08:20 2023
-- Host        : HpPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pynq_ddrbench_ddrBenchmark_0_0_stub.vhdl
-- Design      : pynq_ddrbench_ddrBenchmark_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_gmem_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_AWVALID : out STD_LOGIC;
    m_axi_gmem_AWREADY : in STD_LOGIC;
    m_axi_gmem_WDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_gmem_WSTRB : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem_WLAST : out STD_LOGIC;
    m_axi_gmem_WVALID : out STD_LOGIC;
    m_axi_gmem_WREADY : in STD_LOGIC;
    m_axi_gmem_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_BVALID : in STD_LOGIC;
    m_axi_gmem_BREADY : out STD_LOGIC;
    m_axi_gmem_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_ARVALID : out STD_LOGIC;
    m_axi_gmem_ARREADY : in STD_LOGIC;
    m_axi_gmem_RDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_gmem_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_RLAST : in STD_LOGIC;
    m_axi_gmem_RVALID : in STD_LOGIC;
    m_axi_gmem_RREADY : out STD_LOGIC;
    m_axi_results_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_results_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_results_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_results_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_results_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_results_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_results_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_results_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_results_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_results_AWVALID : out STD_LOGIC;
    m_axi_results_AWREADY : in STD_LOGIC;
    m_axi_results_WDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_results_WSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_results_WLAST : out STD_LOGIC;
    m_axi_results_WVALID : out STD_LOGIC;
    m_axi_results_WREADY : in STD_LOGIC;
    m_axi_results_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_results_BVALID : in STD_LOGIC;
    m_axi_results_BREADY : out STD_LOGIC;
    m_axi_results_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_results_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_results_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_results_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_results_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_results_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_results_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_results_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_results_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_results_ARVALID : out STD_LOGIC;
    m_axi_results_ARREADY : in STD_LOGIC;
    m_axi_results_RDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_results_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_results_RLAST : in STD_LOGIC;
    m_axi_results_RVALID : in STD_LOGIC;
    m_axi_results_RREADY : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_control_AWADDR[5:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[5:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_gmem_AWADDR[63:0],m_axi_gmem_AWLEN[7:0],m_axi_gmem_AWSIZE[2:0],m_axi_gmem_AWBURST[1:0],m_axi_gmem_AWLOCK[1:0],m_axi_gmem_AWREGION[3:0],m_axi_gmem_AWCACHE[3:0],m_axi_gmem_AWPROT[2:0],m_axi_gmem_AWQOS[3:0],m_axi_gmem_AWVALID,m_axi_gmem_AWREADY,m_axi_gmem_WDATA[511:0],m_axi_gmem_WSTRB[63:0],m_axi_gmem_WLAST,m_axi_gmem_WVALID,m_axi_gmem_WREADY,m_axi_gmem_BRESP[1:0],m_axi_gmem_BVALID,m_axi_gmem_BREADY,m_axi_gmem_ARADDR[63:0],m_axi_gmem_ARLEN[7:0],m_axi_gmem_ARSIZE[2:0],m_axi_gmem_ARBURST[1:0],m_axi_gmem_ARLOCK[1:0],m_axi_gmem_ARREGION[3:0],m_axi_gmem_ARCACHE[3:0],m_axi_gmem_ARPROT[2:0],m_axi_gmem_ARQOS[3:0],m_axi_gmem_ARVALID,m_axi_gmem_ARREADY,m_axi_gmem_RDATA[511:0],m_axi_gmem_RRESP[1:0],m_axi_gmem_RLAST,m_axi_gmem_RVALID,m_axi_gmem_RREADY,m_axi_results_AWADDR[63:0],m_axi_results_AWLEN[7:0],m_axi_results_AWSIZE[2:0],m_axi_results_AWBURST[1:0],m_axi_results_AWLOCK[1:0],m_axi_results_AWREGION[3:0],m_axi_results_AWCACHE[3:0],m_axi_results_AWPROT[2:0],m_axi_results_AWQOS[3:0],m_axi_results_AWVALID,m_axi_results_AWREADY,m_axi_results_WDATA[63:0],m_axi_results_WSTRB[7:0],m_axi_results_WLAST,m_axi_results_WVALID,m_axi_results_WREADY,m_axi_results_BRESP[1:0],m_axi_results_BVALID,m_axi_results_BREADY,m_axi_results_ARADDR[63:0],m_axi_results_ARLEN[7:0],m_axi_results_ARSIZE[2:0],m_axi_results_ARBURST[1:0],m_axi_results_ARLOCK[1:0],m_axi_results_ARREGION[3:0],m_axi_results_ARCACHE[3:0],m_axi_results_ARPROT[2:0],m_axi_results_ARQOS[3:0],m_axi_results_ARVALID,m_axi_results_ARREADY,m_axi_results_RDATA[63:0],m_axi_results_RRESP[1:0],m_axi_results_RLAST,m_axi_results_RVALID,m_axi_results_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ddrBenchmark,Vivado 2022.1";
begin
end;
