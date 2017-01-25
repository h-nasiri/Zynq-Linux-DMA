-- (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:axi_cdma:4.1
-- IP Revision: 7

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY axi_cdma_v4_1_7;
USE axi_cdma_v4_1_7.axi_cdma;

ENTITY CDMA_axi_cdma_0_0 IS
  PORT (
    m_axi_aclk : IN STD_LOGIC;
    s_axi_lite_aclk : IN STD_LOGIC;
    s_axi_lite_aresetn : IN STD_LOGIC;
    cdma_introut : OUT STD_LOGIC;
    s_axi_lite_awready : OUT STD_LOGIC;
    s_axi_lite_awvalid : IN STD_LOGIC;
    s_axi_lite_awaddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_lite_wready : OUT STD_LOGIC;
    s_axi_lite_wvalid : IN STD_LOGIC;
    s_axi_lite_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_lite_bready : IN STD_LOGIC;
    s_axi_lite_bvalid : OUT STD_LOGIC;
    s_axi_lite_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_lite_arready : OUT STD_LOGIC;
    s_axi_lite_arvalid : IN STD_LOGIC;
    s_axi_lite_araddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_lite_rready : IN STD_LOGIC;
    s_axi_lite_rvalid : OUT STD_LOGIC;
    s_axi_lite_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_lite_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_arready : IN STD_LOGIC;
    m_axi_arvalid : OUT STD_LOGIC;
    m_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_rready : OUT STD_LOGIC;
    m_axi_rvalid : IN STD_LOGIC;
    m_axi_rdata : IN STD_LOGIC_VECTOR(1023 DOWNTO 0);
    m_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_rlast : IN STD_LOGIC;
    m_axi_awready : IN STD_LOGIC;
    m_axi_awvalid : OUT STD_LOGIC;
    m_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_wready : IN STD_LOGIC;
    m_axi_wvalid : OUT STD_LOGIC;
    m_axi_wdata : OUT STD_LOGIC_VECTOR(1023 DOWNTO 0);
    m_axi_wstrb : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    m_axi_wlast : OUT STD_LOGIC;
    m_axi_bready : OUT STD_LOGIC;
    m_axi_bvalid : IN STD_LOGIC;
    m_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    cdma_tvect_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END CDMA_axi_cdma_0_0;

ARCHITECTURE CDMA_axi_cdma_0_0_arch OF CDMA_axi_cdma_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF CDMA_axi_cdma_0_0_arch: ARCHITECTURE IS "yes";

  COMPONENT axi_cdma IS
    GENERIC (
      C_S_AXI_LITE_ADDR_WIDTH : INTEGER;
      C_S_AXI_LITE_DATA_WIDTH : INTEGER;
      C_AXI_LITE_IS_ASYNC : INTEGER;
      C_M_AXI_ADDR_WIDTH : INTEGER;
      C_M_AXI_DATA_WIDTH : INTEGER;
      C_M_AXI_MAX_BURST_LEN : INTEGER;
      C_INCLUDE_DRE : INTEGER;
      C_USE_DATAMOVER_LITE : INTEGER;
      C_READ_ADDR_PIPE_DEPTH : INTEGER;
      C_WRITE_ADDR_PIPE_DEPTH : INTEGER;
      C_INCLUDE_SF : INTEGER;
      C_INCLUDE_SG : INTEGER;
      C_M_AXI_SG_ADDR_WIDTH : INTEGER;
      C_M_AXI_SG_DATA_WIDTH : INTEGER;
      C_DLYTMR_RESOLUTION : INTEGER;
      C_FAMILY : STRING
    );
    PORT (
      m_axi_aclk : IN STD_LOGIC;
      s_axi_lite_aclk : IN STD_LOGIC;
      s_axi_lite_aresetn : IN STD_LOGIC;
      cdma_introut : OUT STD_LOGIC;
      s_axi_lite_awready : OUT STD_LOGIC;
      s_axi_lite_awvalid : IN STD_LOGIC;
      s_axi_lite_awaddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_lite_wready : OUT STD_LOGIC;
      s_axi_lite_wvalid : IN STD_LOGIC;
      s_axi_lite_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_lite_bready : IN STD_LOGIC;
      s_axi_lite_bvalid : OUT STD_LOGIC;
      s_axi_lite_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_lite_arready : OUT STD_LOGIC;
      s_axi_lite_arvalid : IN STD_LOGIC;
      s_axi_lite_araddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_lite_rready : IN STD_LOGIC;
      s_axi_lite_rvalid : OUT STD_LOGIC;
      s_axi_lite_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_lite_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_arready : IN STD_LOGIC;
      m_axi_arvalid : OUT STD_LOGIC;
      m_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_rready : OUT STD_LOGIC;
      m_axi_rvalid : IN STD_LOGIC;
      m_axi_rdata : IN STD_LOGIC_VECTOR(1023 DOWNTO 0);
      m_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_rlast : IN STD_LOGIC;
      m_axi_awready : IN STD_LOGIC;
      m_axi_awvalid : OUT STD_LOGIC;
      m_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_wready : IN STD_LOGIC;
      m_axi_wvalid : OUT STD_LOGIC;
      m_axi_wdata : OUT STD_LOGIC_VECTOR(1023 DOWNTO 0);
      m_axi_wstrb : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      m_axi_wlast : OUT STD_LOGIC;
      m_axi_bready : OUT STD_LOGIC;
      m_axi_bvalid : IN STD_LOGIC;
      m_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_sg_awready : IN STD_LOGIC;
      m_axi_sg_awvalid : OUT STD_LOGIC;
      m_axi_sg_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_sg_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_sg_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_sg_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_sg_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_sg_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_sg_wready : IN STD_LOGIC;
      m_axi_sg_wvalid : OUT STD_LOGIC;
      m_axi_sg_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_sg_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_sg_wlast : OUT STD_LOGIC;
      m_axi_sg_bready : OUT STD_LOGIC;
      m_axi_sg_bvalid : IN STD_LOGIC;
      m_axi_sg_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_sg_arready : IN STD_LOGIC;
      m_axi_sg_arvalid : OUT STD_LOGIC;
      m_axi_sg_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_sg_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_sg_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_sg_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_sg_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_sg_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_sg_rready : OUT STD_LOGIC;
      m_axi_sg_rvalid : IN STD_LOGIC;
      m_axi_sg_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_sg_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_sg_rlast : IN STD_LOGIC;
      cdma_tvect_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT axi_cdma;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF CDMA_axi_cdma_0_0_arch: ARCHITECTURE IS "axi_cdma,Vivado 2015.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF CDMA_axi_cdma_0_0_arch : ARCHITECTURE IS "CDMA_axi_cdma_0_0,axi_cdma,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF CDMA_axi_cdma_0_0_arch: ARCHITECTURE IS "CDMA_axi_cdma_0_0,axi_cdma,{x_ipProduct=Vivado 2015.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_cdma,x_ipVersion=4.1,x_ipCoreRevision=7,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_LITE_ADDR_WIDTH=6,C_S_AXI_LITE_DATA_WIDTH=32,C_AXI_LITE_IS_ASYNC=0,C_M_AXI_ADDR_WIDTH=32,C_M_AXI_DATA_WIDTH=1024,C_M_AXI_MAX_BURST_LEN=32,C_INCLUDE_DRE=0,C_USE_DATAMOVER_LITE=0,C_READ_ADDR_PIPE_DEPTH=4,C_WRITE_ADDR_PIPE_DEPTH=4,C_INCLUDE_SF=0,C_INCLUDE_SG=0,C_M_AXI_SG_ADDR_WIDTH=32,C_M_AXI_SG_DATA_WIDTH=32,C_DLYTMR_RESOLUTION=256,C_FAMILY=zynq}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S_AXI_LITE_ACLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 AXI_RESETN RST";
  ATTRIBUTE X_INTERFACE_INFO OF cdma_introut: SIGNAL IS "xilinx.com:signal:interrupt:1.0 CDMA_INTERRUPT INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
BEGIN
  U0 : axi_cdma
    GENERIC MAP (
      C_S_AXI_LITE_ADDR_WIDTH => 6,
      C_S_AXI_LITE_DATA_WIDTH => 32,
      C_AXI_LITE_IS_ASYNC => 0,
      C_M_AXI_ADDR_WIDTH => 32,
      C_M_AXI_DATA_WIDTH => 1024,
      C_M_AXI_MAX_BURST_LEN => 32,
      C_INCLUDE_DRE => 0,
      C_USE_DATAMOVER_LITE => 0,
      C_READ_ADDR_PIPE_DEPTH => 4,
      C_WRITE_ADDR_PIPE_DEPTH => 4,
      C_INCLUDE_SF => 0,
      C_INCLUDE_SG => 0,
      C_M_AXI_SG_ADDR_WIDTH => 32,
      C_M_AXI_SG_DATA_WIDTH => 32,
      C_DLYTMR_RESOLUTION => 256,
      C_FAMILY => "zynq"
    )
    PORT MAP (
      m_axi_aclk => m_axi_aclk,
      s_axi_lite_aclk => s_axi_lite_aclk,
      s_axi_lite_aresetn => s_axi_lite_aresetn,
      cdma_introut => cdma_introut,
      s_axi_lite_awready => s_axi_lite_awready,
      s_axi_lite_awvalid => s_axi_lite_awvalid,
      s_axi_lite_awaddr => s_axi_lite_awaddr,
      s_axi_lite_wready => s_axi_lite_wready,
      s_axi_lite_wvalid => s_axi_lite_wvalid,
      s_axi_lite_wdata => s_axi_lite_wdata,
      s_axi_lite_bready => s_axi_lite_bready,
      s_axi_lite_bvalid => s_axi_lite_bvalid,
      s_axi_lite_bresp => s_axi_lite_bresp,
      s_axi_lite_arready => s_axi_lite_arready,
      s_axi_lite_arvalid => s_axi_lite_arvalid,
      s_axi_lite_araddr => s_axi_lite_araddr,
      s_axi_lite_rready => s_axi_lite_rready,
      s_axi_lite_rvalid => s_axi_lite_rvalid,
      s_axi_lite_rdata => s_axi_lite_rdata,
      s_axi_lite_rresp => s_axi_lite_rresp,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_araddr => m_axi_araddr,
      m_axi_arlen => m_axi_arlen,
      m_axi_arsize => m_axi_arsize,
      m_axi_arburst => m_axi_arburst,
      m_axi_arprot => m_axi_arprot,
      m_axi_arcache => m_axi_arcache,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      m_axi_rdata => m_axi_rdata,
      m_axi_rresp => m_axi_rresp,
      m_axi_rlast => m_axi_rlast,
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_awaddr => m_axi_awaddr,
      m_axi_awlen => m_axi_awlen,
      m_axi_awsize => m_axi_awsize,
      m_axi_awburst => m_axi_awburst,
      m_axi_awprot => m_axi_awprot,
      m_axi_awcache => m_axi_awcache,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      m_axi_wdata => m_axi_wdata,
      m_axi_wstrb => m_axi_wstrb,
      m_axi_wlast => m_axi_wlast,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_bresp => m_axi_bresp,
      m_axi_sg_awready => '0',
      m_axi_sg_wready => '0',
      m_axi_sg_bvalid => '0',
      m_axi_sg_bresp => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      m_axi_sg_arready => '0',
      m_axi_sg_rvalid => '0',
      m_axi_sg_rdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      m_axi_sg_rresp => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      m_axi_sg_rlast => '0',
      cdma_tvect_out => cdma_tvect_out
    );
END CDMA_axi_cdma_0_0_arch;
