-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Mon Jan  9 22:57:47 2023
-- Host        : HpPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/gbeve/Downloads/ddrBench/ddrbench_vivado/ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ip/pynq_ddrbench_auto_pc_2/pynq_ddrbench_auto_pc_2_sim_netlist.vhdl
-- Design      : pynq_ddrbench_auto_pc_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_w_axi3_conv is
  port (
    \length_counter_1_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    first_mi_word : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    m_axi_wlast : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \length_counter_1_reg[1]_1\ : in STD_LOGIC;
    \length_counter_1_reg[2]_0\ : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    empty : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_w_axi3_conv : entity is "axi_protocol_converter_v2_1_26_w_axi3_conv";
end pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_w_axi3_conv;

architecture STRUCTURE of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_w_axi3_conv is
  signal \^first_mi_word\ : STD_LOGIC;
  signal first_mi_word_i_1_n_0 : STD_LOGIC;
  signal \length_counter_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \length_counter_1[2]_i_1_n_0\ : STD_LOGIC;
  signal \length_counter_1[3]_i_1_n_0\ : STD_LOGIC;
  signal \length_counter_1[4]_i_1_n_0\ : STD_LOGIC;
  signal \length_counter_1[4]_i_2_n_0\ : STD_LOGIC;
  signal \length_counter_1[5]_i_1_n_0\ : STD_LOGIC;
  signal \length_counter_1[6]_i_1_n_0\ : STD_LOGIC;
  signal \length_counter_1[7]_i_1_n_0\ : STD_LOGIC;
  signal length_counter_1_reg : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \^length_counter_1_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_axi_wlast_INST_0_i_1_n_0 : STD_LOGIC;
  signal m_axi_wlast_INST_0_i_2_n_0 : STD_LOGIC;
  signal m_axi_wlast_INST_0_i_3_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \length_counter_1[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \length_counter_1[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \length_counter_1[4]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of m_axi_wlast_INST_0_i_2 : label is "soft_lutpair8";
begin
  first_mi_word <= \^first_mi_word\;
  \length_counter_1_reg[1]_0\(1 downto 0) <= \^length_counter_1_reg[1]_0\(1 downto 0);
fifo_gen_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CC000000CC04"
    )
        port map (
      I0 => length_counter_1_reg(7),
      I1 => \length_counter_1_reg[2]_0\,
      I2 => length_counter_1_reg(5),
      I3 => \^first_mi_word\,
      I4 => m_axi_wlast_INST_0_i_1_n_0,
      I5 => length_counter_1_reg(6),
      O => rd_en
    );
first_mi_word_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0FFFFF00010000"
    )
        port map (
      I0 => length_counter_1_reg(7),
      I1 => length_counter_1_reg(5),
      I2 => m_axi_wlast_INST_0_i_1_n_0,
      I3 => length_counter_1_reg(6),
      I4 => \length_counter_1_reg[2]_0\,
      I5 => \^first_mi_word\,
      O => first_mi_word_i_1_n_0
    );
first_mi_word_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => first_mi_word_i_1_n_0,
      Q => \^first_mi_word\,
      S => SR(0)
    );
\length_counter_1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2FFFFFF07000000"
    )
        port map (
      I0 => \^first_mi_word\,
      I1 => dout(0),
      I2 => empty,
      I3 => s_axi_wvalid,
      I4 => m_axi_wready,
      I5 => \^length_counter_1_reg[1]_0\(0),
      O => \length_counter_1[0]_i_1_n_0\
    );
\length_counter_1[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D8D272D2"
    )
        port map (
      I0 => \length_counter_1_reg[2]_0\,
      I1 => m_axi_wlast_INST_0_i_3_n_0,
      I2 => length_counter_1_reg(2),
      I3 => \^first_mi_word\,
      I4 => dout(2),
      O => \length_counter_1[2]_i_1_n_0\
    );
\length_counter_1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B474B4"
    )
        port map (
      I0 => \length_counter_1[4]_i_2_n_0\,
      I1 => \length_counter_1_reg[2]_0\,
      I2 => length_counter_1_reg(3),
      I3 => \^first_mi_word\,
      I4 => dout(3),
      O => \length_counter_1[3]_i_1_n_0\
    );
\length_counter_1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A3A35AAAAAAAA"
    )
        port map (
      I0 => length_counter_1_reg(4),
      I1 => dout(3),
      I2 => \^first_mi_word\,
      I3 => length_counter_1_reg(3),
      I4 => \length_counter_1[4]_i_2_n_0\,
      I5 => \length_counter_1_reg[2]_0\,
      O => \length_counter_1[4]_i_1_n_0\
    );
\length_counter_1[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => m_axi_wlast_INST_0_i_3_n_0,
      I1 => length_counter_1_reg(2),
      I2 => \^first_mi_word\,
      I3 => dout(2),
      O => \length_counter_1[4]_i_2_n_0\
    );
\length_counter_1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF0000FFF70808"
    )
        port map (
      I0 => m_axi_wready,
      I1 => s_axi_wvalid,
      I2 => empty,
      I3 => \^first_mi_word\,
      I4 => length_counter_1_reg(5),
      I5 => m_axi_wlast_INST_0_i_1_n_0,
      O => \length_counter_1[5]_i_1_n_0\
    );
\length_counter_1[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3EFF0D00"
    )
        port map (
      I0 => length_counter_1_reg(5),
      I1 => \^first_mi_word\,
      I2 => m_axi_wlast_INST_0_i_1_n_0,
      I3 => \length_counter_1_reg[2]_0\,
      I4 => length_counter_1_reg(6),
      O => \length_counter_1[6]_i_1_n_0\
    );
\length_counter_1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F3EFFFF30310000"
    )
        port map (
      I0 => length_counter_1_reg(6),
      I1 => m_axi_wlast_INST_0_i_1_n_0,
      I2 => \^first_mi_word\,
      I3 => length_counter_1_reg(5),
      I4 => \length_counter_1_reg[2]_0\,
      I5 => length_counter_1_reg(7),
      O => \length_counter_1[7]_i_1_n_0\
    );
\length_counter_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \length_counter_1[0]_i_1_n_0\,
      Q => \^length_counter_1_reg[1]_0\(0),
      R => SR(0)
    );
\length_counter_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \length_counter_1_reg[1]_1\,
      Q => \^length_counter_1_reg[1]_0\(1),
      R => SR(0)
    );
\length_counter_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \length_counter_1[2]_i_1_n_0\,
      Q => length_counter_1_reg(2),
      R => SR(0)
    );
\length_counter_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \length_counter_1[3]_i_1_n_0\,
      Q => length_counter_1_reg(3),
      R => SR(0)
    );
\length_counter_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \length_counter_1[4]_i_1_n_0\,
      Q => length_counter_1_reg(4),
      R => SR(0)
    );
\length_counter_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \length_counter_1[5]_i_1_n_0\,
      Q => length_counter_1_reg(5),
      R => SR(0)
    );
\length_counter_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \length_counter_1[6]_i_1_n_0\,
      Q => length_counter_1_reg(6),
      R => SR(0)
    );
\length_counter_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \length_counter_1[7]_i_1_n_0\,
      Q => length_counter_1_reg(7),
      R => SR(0)
    );
m_axi_wlast_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F000F1"
    )
        port map (
      I0 => length_counter_1_reg(7),
      I1 => length_counter_1_reg(5),
      I2 => \^first_mi_word\,
      I3 => m_axi_wlast_INST_0_i_1_n_0,
      I4 => length_counter_1_reg(6),
      O => m_axi_wlast
    );
m_axi_wlast_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFCFCFFFE"
    )
        port map (
      I0 => length_counter_1_reg(4),
      I1 => m_axi_wlast_INST_0_i_2_n_0,
      I2 => m_axi_wlast_INST_0_i_3_n_0,
      I3 => length_counter_1_reg(2),
      I4 => \^first_mi_word\,
      I5 => dout(2),
      O => m_axi_wlast_INST_0_i_1_n_0
    );
m_axi_wlast_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout(3),
      I1 => \^first_mi_word\,
      I2 => length_counter_1_reg(3),
      O => m_axi_wlast_INST_0_i_2_n_0
    );
m_axi_wlast_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \^length_counter_1_reg[1]_0\(1),
      I1 => dout(1),
      I2 => \^length_counter_1_reg[1]_0\(0),
      I3 => \^first_mi_word\,
      I4 => dout(0),
      O => m_axi_wlast_INST_0_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pynq_ddrbench_auto_pc_2_xpm_cdc_async_rst is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of pynq_ddrbench_auto_pc_2_xpm_cdc_async_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of pynq_ddrbench_auto_pc_2_xpm_cdc_async_rst : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of pynq_ddrbench_auto_pc_2_xpm_cdc_async_rst : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of pynq_ddrbench_auto_pc_2_xpm_cdc_async_rst : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pynq_ddrbench_auto_pc_2_xpm_cdc_async_rst : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of pynq_ddrbench_auto_pc_2_xpm_cdc_async_rst : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of pynq_ddrbench_auto_pc_2_xpm_cdc_async_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of pynq_ddrbench_auto_pc_2_xpm_cdc_async_rst : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of pynq_ddrbench_auto_pc_2_xpm_cdc_async_rst : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of pynq_ddrbench_auto_pc_2_xpm_cdc_async_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of pynq_ddrbench_auto_pc_2_xpm_cdc_async_rst : entity is "ASYNC_RST";
end pynq_ddrbench_auto_pc_2_xpm_cdc_async_rst;

architecture STRUCTURE of pynq_ddrbench_auto_pc_2_xpm_cdc_async_rst is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
h4/8v0FBgXUomE5kJVs58UlO/ao4SLHpniPXt+fomPPYB6tv3U0iBfOL5737ZNNEhgP1kkKeMvq+
VxOLW94g7JZT6mWc5ZuQ7jgK8Qpa6+1xpVVQBB6gVSEeHij7ZHqPdYaLC9rL/SR7notnBC1OujFi
++mTu5z/HJZtnN4VJQw=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Su6POoQw092/hg4JN8GOCSrLUa435VAUaqUned4C4G61yBHlUmaG63UO+KxY5pgyMrDH6/XH2bPa
fona2wB0Y0sw6W61PXOfiew7cH42baMY0P9UBRjH25EZTf72W3O8r7DNj16ob9pPi7bkuCd3aab3
hdfeY613n+hUbAXTLQqbhjqGmO9kFeC/VmdSITa02RauMnpfVxz1wLu9iUQ0V+mPTp6hvfNXlD0F
7oONLZJg+c6/+uSw1WbEiltO2Lplqvbb0sYbZjtTSEQZSdF4DiUdA0SGK+L75aDYGx3Z/ajCRpBx
Mr39wb5wiDr6SJ/QQ/JmYc+HrTs/fbN9BJ/Grg==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
JbOromwhdJgnOFMOfO8mpnyFC1anQPoDL/XeHYQuoY4+0yjNmPGasGLGjanpoUgfOYngBHPrFFFH
rapGBPsHEbT6JXWHeRJexf2moVhmq1sHJ7n+Jx1rVNuyclUCC08Fg3sy6FdUQmptKSpqOw1x0DV8
R9ZlmwLTkoN8IV6D7sg=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
XbCcyKbk3pmZ92QhZ1iCj+9jpzUJAn91N3YYwVHN3gwcgTU0NRr0oD7EmkLoZ8hVAhh/9YMUp7DE
059wcAzCBsD2W3CWY+GHUSJS57Xt2yi9tZH7binajEyHpCqaFKKO9WxDTO9XnYLVswRvAii0DOJL
mY+z3Z0uDx55BVWqbbvDkA5gABsZLueFt15rXRJPRnAjzWXhYzjiqC1WQDy5UHl/LBDlsOMuouyd
gM4k7zzEZUOy4o1sI2isD+6T/wd+iOsXvq39rguDUtkw3SR4GJmk+rBu3rBh+EvBHKxaWqQjGGNV
qWyrqd89LjZFGnXZ2jvsgxldJWCellgTK1ZEfA==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
dG5h8R2Fe36rfzcvmeDU4OapeKO/Lhe0DkL+4c9AG4It+1yVmtHeEWL8eVWMvHdPTwqJqgkMQbh4
OO9/9XZMyYCWFJTHu4ossKo7zKccfTeBbKfgP+rDEckDTGIWXihj2YJ2N0p6q9Ynpsz9qOLdoXTY
gZXwoOe4MrZBJWZrDOqkD1hQ+cRUV9c8S6FlH+AyBNj5dlaAM0Jyq6a8TvcRmLoZfdi1zFWXeTUW
/XfWQRP+vnqqV8VPdyfaJJzaKnG1u9PnvSFauc3SzydGZfICacU2pPxqAaJWzDYwSns+vd4vCu7u
e01UXo4XXeFCvO/9mye0QnyrDHhuE0b1Svw/jQ==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
K8hvyEyHvgdg02DFF2GnEdLUq6j/uKT5fsI+Nkpbw14CRrq5p+STF83Or85VDleAax2TYln4LhGn
6G6INbZ4BdMuA4nVtyx5xaogScfMwbjrTAn0bqxT20M++g4cn4gW2g3oEFMnXaYCsLaJ58t4/T42
ocO8oqJeCowKICP/eM+B+/jSusNp4JILdp522MKky1zANadPwlv8a7QrMrJQrnb/lF8qC10yXqfM
LbKfbAEBaHlel46y7YBqdIimfeAVng194wkXobD6WuMhQOpFkigBOLQzoKQWN1TWeY5/rSQt9pcT
xLm+NEQmtlL61OudMCIqm++dCQSgE4NFJj1fCw==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
gSLVZdmdCqRy/3LoTp5M48T1hUUfGQp8cxVz4NQ+P65mrZ0oJJXHSaNbzdvtYH41+27aGh3RBbLb
pzz+TmeVuEVneG5nGe1VY2ogM1D7tBMRUvNgXK2PkSRLnk9tYgnxoYi0cYLBxa3piqBh44cdYXif
bT0Uh2vFogmdeH5hxVNFk8FEhULNtR/T9r9ilPNDQALb08fQM461sjlhS2jgRgH0X8LZqnBOii+F
7+GguDMENTlzU0XSYWEcGFH9V5PdYMehb0WgZeiqTchxRuQFmLjDhI4J5dkci8RmkLCwz4KyjfOi
S8Nkg20qh9otuAisfQTh4Qx2lC7x7BHgmuwy0w==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
kXlkvzJI7Tq1glqNfjqmCb8YU69bhN9hH5OsWvFNj7VseyX6/5l9Mgif4B1r1LeKz06I27dmB9g7
AuHBFZ0bPN86mURBL/HK/dTOGyLYAveWeOIK1kqX56i4H9UNIUObEphcz9wdT0OgXHTPMxiIpJhT
1o5oYJW49mDsAv5yxe4FvPo6rFgZAiEo34vJGDxzz4//zJq0z+GxJNCibpLydZBWaJWRfsDUs9pm
1O6hS3KPIL5Evg1JOFt1uwKb1xEA08ETT+qYwg6zmFfwQbs6O7modRmBtEd1n9mrqsgCAviiLPtN
LUFiLdrywPt7LArLCRz4h5uHJxz/21Pj5m1VZtZq9nFmsbp6Lw/0RF1+nN8o+RIu+/tmu74xkL/8
nNEc9mEFy912OKP6WDP4Ajzg4gl9xhtaYA5eGkNB/43YjgGsmTe+L0dyxHIwa734JNMb5zC5dRtR
V4pCnWZKmnDJDXvMftedQzqQvdFwJg5hLxrHfkPD8LqiOwVck/Nt6QSF

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ADtaDIjUIR6zZBfz+lPRaDMdXcoufPACX4aSe06/DoTgIDvM+UOlm8rH20gKO3r8YdsuLtUh7rhz
ekJB22nBPUdbl3FvlGdQIgiCyJ8XgZYvvuOo9I765yKjFxQsFmQE0Ih86fqCqvYmRnsZkpk1uQ7v
JpqhWGBX6tLgYu/txP+ShnzFfkWGhj29JhYII0zqJMBCjGeM89F+mlH+X/YL5Q/fZYyh9Cr2CJx6
ofJpBZ1SPlXwgafXVi0QAUVuQEBmZYVn9Kze++tMEr6qv62ANq23LevYQfCsYKoY5iyf5U7jJ5Qx
eC9nG5Es4y6lz5giep7veaXdBFBHd7VuD56v4w==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
zFwVPvNmX5sBruiGDSfENTp6EBfydwYKhxWi0YDKQ4j0gu6AMV8yJP6GXeJs/A9Zgb1UFE+sJifk
OngE9N2vVRp43pAVauHQf1hUkSWPDJuZ9yEQZbR7F3mmiBKu/Aehj7KcAjv07FWv46HzxRL9E2xx
gpDOzAyNSNubxORv7bVYUV0C4Fr+tZRA6douG4rxi56npPfzIAZjyU4wPvwabxrJ9L4ZRuZXciLk
lJGTIJZTH2uclPmuo57jlIXGo1ZtQZgRCDfn7W02AQ7MDKblx47m+E+sUKKYHZlvf30GkPcwlucZ
ZcUcGnYaRCZnrhwFl0qxxXn2pO15vG4MJXOHMw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Lq86c/0SMuvdLuij6dbfI/ah4/50WGATVNRwXobLfbnZqWOhhEk3VDQATTxe7ZLrUauwrLuMoKhS
j4kqT2raqDijA51Tz7ee+F/MUKvyxGDJqfBi5JJX9y81LCXav7HpdRiPTy6w5O3tQoQbugh61D0B
oJBwNvL22Oi10e+Bu7H1yQvsbksxPAA8VE8HK+OJzZETk0PfHS2ySL5WXLQf7duD6CWmpWdLMrZQ
ojOqvNL31LsO1gZhssTk4RgyZUrZ3CboBbLWDxq2L/SsF5YiRIUPDTe17rRcrxa1y6LzMD/ve/nR
mptJOGxlUgLpJaPAA7jH3b+EQGlrHzHOsG8fFQ==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 105792)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pynq_ddrbench_auto_pc_2_axi_data_fifo_v2_1_25_fifo_gen is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 );
    empty : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_0 : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    length_counter_1_reg_1_sp_1 : out STD_LOGIC;
    empty_fwft_i_reg : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    S_AXI_AREADY_I_reg : out STD_LOGIC;
    \areset_d_reg[1]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    m_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rd_en : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awvalid_0 : in STD_LOGIC;
    command_ongoing : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    length_counter_1_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    first_mi_word : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pynq_ddrbench_auto_pc_2_axi_data_fifo_v2_1_25_fifo_gen : entity is "axi_data_fifo_v2_1_25_fifo_gen";
end pynq_ddrbench_auto_pc_2_axi_data_fifo_v2_1_25_fifo_gen;

architecture STRUCTURE of pynq_ddrbench_auto_pc_2_axi_data_fifo_v2_1_25_fifo_gen is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_AREADY_I_i_3_n_0 : STD_LOGIC;
  signal cmd_push : STD_LOGIC;
  signal command_ongoing_i_2_n_0 : STD_LOGIC;
  signal \^dout\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^empty\ : STD_LOGIC;
  signal \^empty_fwft_i_reg\ : STD_LOGIC;
  signal full : STD_LOGIC;
  signal length_counter_1_reg_1_sn_1 : STD_LOGIC;
  signal NLW_fifo_gen_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_fifo_gen_inst_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 4 to 4 );
  signal NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of S_AXI_AREADY_I_i_3 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of cmd_push_block_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of command_ongoing_i_2 : label is "soft_lutpair5";
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of fifo_gen_inst : label is 64;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of fifo_gen_inst : label is 8;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of fifo_gen_inst : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of fifo_gen_inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of fifo_gen_inst : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of fifo_gen_inst : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of fifo_gen_inst : label is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of fifo_gen_inst : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of fifo_gen_inst : label is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of fifo_gen_inst : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of fifo_gen_inst : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of fifo_gen_inst : label is 5;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of fifo_gen_inst : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of fifo_gen_inst : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of fifo_gen_inst : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of fifo_gen_inst : label is 32;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of fifo_gen_inst : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of fifo_gen_inst : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of fifo_gen_inst : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of fifo_gen_inst : label is 5;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of fifo_gen_inst : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of fifo_gen_inst : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of fifo_gen_inst : label is "zynq";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of fifo_gen_inst : label is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of fifo_gen_inst : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of fifo_gen_inst : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of fifo_gen_inst : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of fifo_gen_inst : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of fifo_gen_inst : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of fifo_gen_inst : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of fifo_gen_inst : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of fifo_gen_inst : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of fifo_gen_inst : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of fifo_gen_inst : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of fifo_gen_inst : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of fifo_gen_inst : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of fifo_gen_inst : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of fifo_gen_inst : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of fifo_gen_inst : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of fifo_gen_inst : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of fifo_gen_inst : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of fifo_gen_inst : label is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of fifo_gen_inst : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of fifo_gen_inst : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of fifo_gen_inst : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of fifo_gen_inst : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of fifo_gen_inst : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of fifo_gen_inst : label is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of fifo_gen_inst : label is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of fifo_gen_inst : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of fifo_gen_inst : label is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of fifo_gen_inst : label is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of fifo_gen_inst : label is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of fifo_gen_inst : label is 30;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of fifo_gen_inst : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of fifo_gen_inst : label is 32;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of fifo_gen_inst : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of fifo_gen_inst : label is 5;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of fifo_gen_inst : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of fifo_gen_inst : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of fifo_gen_inst : label is 3;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of fifo_gen_inst : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of fifo_gen_inst : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of fifo_gen_inst : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of fifo_gen_inst : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of fifo_gen_inst : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of fifo_gen_inst : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of fifo_gen_inst : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of fifo_gen_inst : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of fifo_gen_inst : label is 1;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of fifo_gen_inst : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of fifo_gen_inst : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of fifo_gen_inst : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of fifo_gen_inst : label is 32;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of fifo_gen_inst : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of fifo_gen_inst : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of fifo_gen_inst : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of fifo_gen_inst : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of fifo_gen_inst : label is 5;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of fifo_gen_inst : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of fifo_gen_inst : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of fifo_gen_inst : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of fifo_gen_inst : label is 1;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of fifo_gen_inst : label is "soft";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of fifo_gen_inst : label is "true";
  attribute SOFT_HLUTNM of fifo_gen_inst_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of m_axi_wvalid_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0 : label is "soft_lutpair6";
begin
  SR(0) <= \^sr\(0);
  dout(3 downto 0) <= \^dout\(3 downto 0);
  empty <= \^empty\;
  empty_fwft_i_reg <= \^empty_fwft_i_reg\;
  length_counter_1_reg_1_sp_1 <= length_counter_1_reg_1_sn_1;
S_AXI_AREADY_I_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^sr\(0)
    );
S_AXI_AREADY_I_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22722272FFFF2272"
    )
        port map (
      I0 => E(0),
      I1 => s_axi_awvalid,
      I2 => m_axi_awready,
      I3 => S_AXI_AREADY_I_i_3_n_0,
      I4 => Q(1),
      I5 => Q(0),
      O => S_AXI_AREADY_I_reg
    );
S_AXI_AREADY_I_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => m_axi_awvalid_0,
      I1 => full,
      I2 => command_ongoing,
      O => S_AXI_AREADY_I_i_3_n_0
    );
cmd_push_block_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00888A88"
    )
        port map (
      I0 => aresetn,
      I1 => m_axi_awvalid_0,
      I2 => full,
      I3 => command_ongoing,
      I4 => m_axi_awready,
      O => aresetn_0
    );
command_ongoing_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222FFFFD000D000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => E(0),
      I3 => s_axi_awvalid,
      I4 => command_ongoing_i_2_n_0,
      I5 => command_ongoing,
      O => \areset_d_reg[1]\
    );
command_ongoing_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => m_axi_awready,
      I1 => command_ongoing,
      I2 => full,
      I3 => m_axi_awvalid_0,
      O => command_ongoing_i_2_n_0
    );
fifo_gen_inst: entity work.pynq_ddrbench_auto_pc_2_fifo_generator_v13_2_7
     port map (
      almost_empty => NLW_fifo_gen_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_fifo_gen_inst_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_fifo_gen_inst_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_fifo_gen_inst_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => aclk,
      data_count(5 downto 0) => NLW_fifo_gen_inst_data_count_UNCONNECTED(5 downto 0),
      dbiterr => NLW_fifo_gen_inst_dbiterr_UNCONNECTED,
      din(4) => '0',
      din(3 downto 0) => m_axi_awlen(3 downto 0),
      dout(4) => NLW_fifo_gen_inst_dout_UNCONNECTED(4),
      dout(3 downto 0) => \^dout\(3 downto 0),
      empty => \^empty\,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(3 downto 0) => NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED(3 downto 0),
      m_axi_arlen(7 downto 0) => NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(1 downto 0) => NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED(1 downto 0),
      m_axi_arprot(2 downto 0) => NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(3 downto 0) => NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED(3 downto 0),
      m_axi_awlen(7 downto 0) => NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(1 downto 0) => NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED(1 downto 0),
      m_axi_awprot(2 downto 0) => NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(3 downto 0) => B"0000",
      m_axi_bready => NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(3 downto 0) => B"0000",
      m_axi_rlast => '0',
      m_axi_rready => NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(3 downto 0) => NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED(3 downto 0),
      m_axi_wlast => NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(63 downto 0) => NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED(63 downto 0),
      m_axis_tdest(3 downto 0) => NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED(3 downto 0),
      m_axis_tid(7 downto 0) => NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED(7 downto 0),
      m_axis_tkeep(3 downto 0) => NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED(3 downto 0),
      m_axis_tlast => NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(3 downto 0) => NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED(3 downto 0),
      m_axis_tuser(3 downto 0) => NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_fifo_gen_inst_overflow_UNCONNECTED,
      prog_empty => NLW_fifo_gen_inst_prog_empty_UNCONNECTED,
      prog_empty_thresh(4 downto 0) => B"00000",
      prog_empty_thresh_assert(4 downto 0) => B"00000",
      prog_empty_thresh_negate(4 downto 0) => B"00000",
      prog_full => NLW_fifo_gen_inst_prog_full_UNCONNECTED,
      prog_full_thresh(4 downto 0) => B"00000",
      prog_full_thresh_assert(4 downto 0) => B"00000",
      prog_full_thresh_negate(4 downto 0) => B"00000",
      rd_clk => '0',
      rd_data_count(5 downto 0) => NLW_fifo_gen_inst_rd_data_count_UNCONNECTED(5 downto 0),
      rd_en => rd_en,
      rd_rst => '0',
      rd_rst_busy => NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED,
      rst => \^sr\(0),
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(1 downto 0) => B"00",
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(1 downto 0) => B"00",
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(3 downto 0) => NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(3 downto 0) => B"0000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axis_tdest(3 downto 0) => B"0000",
      s_axis_tid(7 downto 0) => B"00000000",
      s_axis_tkeep(3 downto 0) => B"0000",
      s_axis_tlast => '0',
      s_axis_tready => NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(3 downto 0) => B"0000",
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_fifo_gen_inst_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_fifo_gen_inst_underflow_UNCONNECTED,
      valid => NLW_fifo_gen_inst_valid_UNCONNECTED,
      wr_ack => NLW_fifo_gen_inst_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(5 downto 0) => NLW_fifo_gen_inst_wr_data_count_UNCONNECTED(5 downto 0),
      wr_en => cmd_push,
      wr_rst => '0',
      wr_rst_busy => NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED
    );
fifo_gen_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => command_ongoing,
      I1 => full,
      I2 => m_axi_awvalid_0,
      O => cmd_push
    );
\length_counter_1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4CC664E4ECC66"
    )
        port map (
      I0 => \^empty_fwft_i_reg\,
      I1 => length_counter_1_reg(1),
      I2 => \^dout\(1),
      I3 => length_counter_1_reg(0),
      I4 => first_mi_word,
      I5 => \^dout\(0),
      O => length_counter_1_reg_1_sn_1
    );
m_axi_awvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => command_ongoing,
      I1 => full,
      I2 => m_axi_awvalid_0,
      O => m_axi_awvalid
    );
m_axi_wvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \^empty\,
      O => m_axi_wvalid
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^empty\,
      I1 => s_axi_wvalid,
      I2 => m_axi_wready,
      O => \^empty_fwft_i_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pynq_ddrbench_auto_pc_2_axi_data_fifo_v2_1_25_axic_fifo is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 );
    empty : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_0 : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    length_counter_1_reg_1_sp_1 : out STD_LOGIC;
    empty_fwft_i_reg : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    S_AXI_AREADY_I_reg : out STD_LOGIC;
    \areset_d_reg[1]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    m_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rd_en : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awvalid_0 : in STD_LOGIC;
    command_ongoing : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    length_counter_1_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    first_mi_word : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pynq_ddrbench_auto_pc_2_axi_data_fifo_v2_1_25_axic_fifo : entity is "axi_data_fifo_v2_1_25_axic_fifo";
end pynq_ddrbench_auto_pc_2_axi_data_fifo_v2_1_25_axic_fifo;

architecture STRUCTURE of pynq_ddrbench_auto_pc_2_axi_data_fifo_v2_1_25_axic_fifo is
  signal length_counter_1_reg_1_sn_1 : STD_LOGIC;
begin
  length_counter_1_reg_1_sp_1 <= length_counter_1_reg_1_sn_1;
inst: entity work.pynq_ddrbench_auto_pc_2_axi_data_fifo_v2_1_25_fifo_gen
     port map (
      E(0) => E(0),
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => SR(0),
      S_AXI_AREADY_I_reg => S_AXI_AREADY_I_reg,
      aclk => aclk,
      \areset_d_reg[1]\ => \areset_d_reg[1]\,
      aresetn => aresetn,
      aresetn_0 => aresetn_0,
      command_ongoing => command_ongoing,
      dout(3 downto 0) => dout(3 downto 0),
      empty => empty,
      empty_fwft_i_reg => empty_fwft_i_reg,
      first_mi_word => first_mi_word,
      length_counter_1_reg(1 downto 0) => length_counter_1_reg(1 downto 0),
      length_counter_1_reg_1_sp_1 => length_counter_1_reg_1_sn_1,
      m_axi_awlen(3 downto 0) => m_axi_awlen(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_awvalid_0 => m_axi_awvalid_0,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      rd_en => rd_en,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_a_axi3_conv is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 );
    empty : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    length_counter_1_reg_1_sp_1 : out STD_LOGIC;
    empty_fwft_i_reg : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    length_counter_1_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    first_mi_word : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_a_axi3_conv : entity is "axi_protocol_converter_v2_1_26_a_axi3_conv";
end pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_a_axi3_conv;

architecture STRUCTURE of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_a_axi3_conv is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \USE_BURSTS.cmd_queue_n_11\ : STD_LOGIC;
  signal \USE_BURSTS.cmd_queue_n_12\ : STD_LOGIC;
  signal \USE_BURSTS.cmd_queue_n_6\ : STD_LOGIC;
  signal areset_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cmd_push_block_reg_n_0 : STD_LOGIC;
  signal command_ongoing : STD_LOGIC;
  signal length_counter_1_reg_1_sn_1 : STD_LOGIC;
  signal \^m_axi_awlen\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  E(0) <= \^e\(0);
  SR(0) <= \^sr\(0);
  length_counter_1_reg_1_sp_1 <= length_counter_1_reg_1_sn_1;
  m_axi_awlen(3 downto 0) <= \^m_axi_awlen\(3 downto 0);
\S_AXI_AADDR_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(0),
      Q => m_axi_awaddr(0),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(10),
      Q => m_axi_awaddr(10),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(11),
      Q => m_axi_awaddr(11),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(12),
      Q => m_axi_awaddr(12),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(13),
      Q => m_axi_awaddr(13),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(14),
      Q => m_axi_awaddr(14),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(15),
      Q => m_axi_awaddr(15),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(16),
      Q => m_axi_awaddr(16),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(17),
      Q => m_axi_awaddr(17),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(18),
      Q => m_axi_awaddr(18),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(19),
      Q => m_axi_awaddr(19),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(1),
      Q => m_axi_awaddr(1),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(20),
      Q => m_axi_awaddr(20),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(21),
      Q => m_axi_awaddr(21),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(22),
      Q => m_axi_awaddr(22),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(23),
      Q => m_axi_awaddr(23),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(24),
      Q => m_axi_awaddr(24),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(25),
      Q => m_axi_awaddr(25),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(26),
      Q => m_axi_awaddr(26),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(27),
      Q => m_axi_awaddr(27),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(28),
      Q => m_axi_awaddr(28),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(29),
      Q => m_axi_awaddr(29),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(2),
      Q => m_axi_awaddr(2),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(30),
      Q => m_axi_awaddr(30),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(31),
      Q => m_axi_awaddr(31),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(3),
      Q => m_axi_awaddr(3),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(4),
      Q => m_axi_awaddr(4),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(5),
      Q => m_axi_awaddr(5),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(6),
      Q => m_axi_awaddr(6),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(7),
      Q => m_axi_awaddr(7),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(8),
      Q => m_axi_awaddr(8),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(9),
      Q => m_axi_awaddr(9),
      R => \^sr\(0)
    );
\S_AXI_ABURST_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awburst(0),
      Q => m_axi_awburst(0),
      R => \^sr\(0)
    );
\S_AXI_ABURST_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awburst(1),
      Q => m_axi_awburst(1),
      R => \^sr\(0)
    );
\S_AXI_ACACHE_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awcache(0),
      Q => m_axi_awcache(0),
      R => \^sr\(0)
    );
\S_AXI_ACACHE_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awcache(1),
      Q => m_axi_awcache(1),
      R => \^sr\(0)
    );
\S_AXI_ACACHE_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awcache(2),
      Q => m_axi_awcache(2),
      R => \^sr\(0)
    );
\S_AXI_ACACHE_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awcache(3),
      Q => m_axi_awcache(3),
      R => \^sr\(0)
    );
\S_AXI_ALEN_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awlen(0),
      Q => \^m_axi_awlen\(0),
      R => \^sr\(0)
    );
\S_AXI_ALEN_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awlen(1),
      Q => \^m_axi_awlen\(1),
      R => \^sr\(0)
    );
\S_AXI_ALEN_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awlen(2),
      Q => \^m_axi_awlen\(2),
      R => \^sr\(0)
    );
\S_AXI_ALEN_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awlen(3),
      Q => \^m_axi_awlen\(3),
      R => \^sr\(0)
    );
\S_AXI_ALOCK_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awlock(0),
      Q => m_axi_awlock(0),
      R => \^sr\(0)
    );
\S_AXI_APROT_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awprot(0),
      Q => m_axi_awprot(0),
      R => \^sr\(0)
    );
\S_AXI_APROT_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awprot(1),
      Q => m_axi_awprot(1),
      R => \^sr\(0)
    );
\S_AXI_APROT_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awprot(2),
      Q => m_axi_awprot(2),
      R => \^sr\(0)
    );
\S_AXI_AQOS_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awqos(0),
      Q => m_axi_awqos(0),
      R => \^sr\(0)
    );
\S_AXI_AQOS_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awqos(1),
      Q => m_axi_awqos(1),
      R => \^sr\(0)
    );
\S_AXI_AQOS_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awqos(2),
      Q => m_axi_awqos(2),
      R => \^sr\(0)
    );
\S_AXI_AQOS_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awqos(3),
      Q => m_axi_awqos(3),
      R => \^sr\(0)
    );
S_AXI_AREADY_I_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \USE_BURSTS.cmd_queue_n_11\,
      Q => \^e\(0),
      R => \^sr\(0)
    );
\S_AXI_ASIZE_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awsize(0),
      Q => m_axi_awsize(0),
      R => \^sr\(0)
    );
\S_AXI_ASIZE_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awsize(1),
      Q => m_axi_awsize(1),
      R => \^sr\(0)
    );
\S_AXI_ASIZE_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awsize(2),
      Q => m_axi_awsize(2),
      R => \^sr\(0)
    );
\USE_BURSTS.cmd_queue\: entity work.pynq_ddrbench_auto_pc_2_axi_data_fifo_v2_1_25_axic_fifo
     port map (
      E(0) => \^e\(0),
      Q(1 downto 0) => areset_d(1 downto 0),
      SR(0) => \^sr\(0),
      S_AXI_AREADY_I_reg => \USE_BURSTS.cmd_queue_n_11\,
      aclk => aclk,
      \areset_d_reg[1]\ => \USE_BURSTS.cmd_queue_n_12\,
      aresetn => aresetn,
      aresetn_0 => \USE_BURSTS.cmd_queue_n_6\,
      command_ongoing => command_ongoing,
      dout(3 downto 0) => dout(3 downto 0),
      empty => empty,
      empty_fwft_i_reg => empty_fwft_i_reg,
      first_mi_word => first_mi_word,
      length_counter_1_reg(1 downto 0) => length_counter_1_reg(1 downto 0),
      length_counter_1_reg_1_sp_1 => length_counter_1_reg_1_sn_1,
      m_axi_awlen(3 downto 0) => \^m_axi_awlen\(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_awvalid_0 => cmd_push_block_reg_n_0,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      rd_en => rd_en,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_wvalid => s_axi_wvalid
    );
\areset_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \^sr\(0),
      Q => areset_d(0),
      R => '0'
    );
\areset_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => areset_d(0),
      Q => areset_d(1),
      R => '0'
    );
cmd_push_block_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \USE_BURSTS.cmd_queue_n_6\,
      Q => cmd_push_block_reg_n_0,
      R => '0'
    );
command_ongoing_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \USE_BURSTS.cmd_queue_n_12\,
      Q => command_ongoing,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi3_conv is
  port (
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    empty_fwft_i_reg : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wlast : out STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi3_conv : entity is "axi_protocol_converter_v2_1_26_axi3_conv";
end pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi3_conv;

architecture STRUCTURE of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi3_conv is
  signal \USE_BURSTS.cmd_queue/inst/empty\ : STD_LOGIC;
  signal \USE_WRITE.wr_cmd_length\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \USE_WRITE.wr_cmd_ready\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_13\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_5\ : STD_LOGIC;
  signal \^empty_fwft_i_reg\ : STD_LOGIC;
  signal first_mi_word : STD_LOGIC;
  signal length_counter_1_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  empty_fwft_i_reg <= \^empty_fwft_i_reg\;
\USE_WRITE.write_addr_inst\: entity work.pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_a_axi3_conv
     port map (
      E(0) => E(0),
      SR(0) => \USE_WRITE.write_addr_inst_n_5\,
      aclk => aclk,
      aresetn => aresetn,
      dout(3 downto 0) => \USE_WRITE.wr_cmd_length\(3 downto 0),
      empty => \USE_BURSTS.cmd_queue/inst/empty\,
      empty_fwft_i_reg => \^empty_fwft_i_reg\,
      first_mi_word => first_mi_word,
      length_counter_1_reg(1 downto 0) => length_counter_1_reg(1 downto 0),
      length_counter_1_reg_1_sp_1 => \USE_WRITE.write_addr_inst_n_13\,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awlen(3 downto 0) => m_axi_awlen(3 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      rd_en => \USE_WRITE.wr_cmd_ready\,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_wvalid => s_axi_wvalid
    );
\USE_WRITE.write_data_inst\: entity work.pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_w_axi3_conv
     port map (
      SR(0) => \USE_WRITE.write_addr_inst_n_5\,
      aclk => aclk,
      dout(3 downto 0) => \USE_WRITE.wr_cmd_length\(3 downto 0),
      empty => \USE_BURSTS.cmd_queue/inst/empty\,
      first_mi_word => first_mi_word,
      \length_counter_1_reg[1]_0\(1 downto 0) => length_counter_1_reg(1 downto 0),
      \length_counter_1_reg[1]_1\ => \USE_WRITE.write_addr_inst_n_13\,
      \length_counter_1_reg[2]_0\ => \^empty_fwft_i_reg\,
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      rd_en => \USE_WRITE.wr_cmd_ready\,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 0;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is "zynq";
  attribute C_IGNORE_ID : integer;
  attribute C_IGNORE_ID of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute C_M_AXI_PROTOCOL : integer;
  attribute C_M_AXI_PROTOCOL of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute C_S_AXI_PROTOCOL : integer;
  attribute C_S_AXI_PROTOCOL of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 0;
  attribute C_TRANSLATION_MODE : integer;
  attribute C_TRANSLATION_MODE of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 0;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is "axi_protocol_converter_v2_1_26_axi_protocol_converter";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is "3'b011";
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 2;
  attribute P_DECERR : string;
  attribute P_DECERR of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is "2'b11";
  attribute P_INCR : string;
  attribute P_INCR of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is "2'b01";
  attribute P_PROTECTION : integer;
  attribute P_PROTECTION of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute P_SLVERR : string;
  attribute P_SLVERR of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is "2'b10";
end pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter;

architecture STRUCTURE of pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_arready\ : STD_LOGIC;
  signal \^m_axi_awlock\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_bvalid\ : STD_LOGIC;
  signal \^m_axi_rdata\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^m_axi_rlast\ : STD_LOGIC;
  signal \^m_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_arburst\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_arcache\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_arlen\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi_arlock\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_arprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_arqos\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_arsize\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_arvalid\ : STD_LOGIC;
  signal \^s_axi_bready\ : STD_LOGIC;
  signal \^s_axi_rready\ : STD_LOGIC;
  signal \^s_axi_wdata\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^s_axi_wstrb\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  \^m_axi_arready\ <= m_axi_arready;
  \^m_axi_bresp\(1 downto 0) <= m_axi_bresp(1 downto 0);
  \^m_axi_bvalid\ <= m_axi_bvalid;
  \^m_axi_rdata\(63 downto 0) <= m_axi_rdata(63 downto 0);
  \^m_axi_rlast\ <= m_axi_rlast;
  \^m_axi_rresp\(1 downto 0) <= m_axi_rresp(1 downto 0);
  \^m_axi_rvalid\ <= m_axi_rvalid;
  \^s_axi_araddr\(31 downto 0) <= s_axi_araddr(31 downto 0);
  \^s_axi_arburst\(1 downto 0) <= s_axi_arburst(1 downto 0);
  \^s_axi_arcache\(3 downto 0) <= s_axi_arcache(3 downto 0);
  \^s_axi_arlen\(3 downto 0) <= s_axi_arlen(3 downto 0);
  \^s_axi_arlock\(0) <= s_axi_arlock(0);
  \^s_axi_arprot\(2 downto 0) <= s_axi_arprot(2 downto 0);
  \^s_axi_arqos\(3 downto 0) <= s_axi_arqos(3 downto 0);
  \^s_axi_arsize\(2 downto 0) <= s_axi_arsize(2 downto 0);
  \^s_axi_arvalid\ <= s_axi_arvalid;
  \^s_axi_bready\ <= s_axi_bready;
  \^s_axi_rready\ <= s_axi_rready;
  \^s_axi_wdata\(63 downto 0) <= s_axi_wdata(63 downto 0);
  \^s_axi_wstrb\(7 downto 0) <= s_axi_wstrb(7 downto 0);
  m_axi_araddr(31 downto 0) <= \^s_axi_araddr\(31 downto 0);
  m_axi_arburst(1 downto 0) <= \^s_axi_arburst\(1 downto 0);
  m_axi_arcache(3 downto 0) <= \^s_axi_arcache\(3 downto 0);
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(3 downto 0) <= \^s_axi_arlen\(3 downto 0);
  m_axi_arlock(1) <= \<const0>\;
  m_axi_arlock(0) <= \^s_axi_arlock\(0);
  m_axi_arprot(2 downto 0) <= \^s_axi_arprot\(2 downto 0);
  m_axi_arqos(3 downto 0) <= \^s_axi_arqos\(3 downto 0);
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2 downto 0) <= \^s_axi_arsize\(2 downto 0);
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \^s_axi_arvalid\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlock(1) <= \<const0>\;
  m_axi_awlock(0) <= \^m_axi_awlock\(0);
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_bready <= \^s_axi_bready\;
  m_axi_rready <= \^s_axi_rready\;
  m_axi_wdata(63 downto 0) <= \^s_axi_wdata\(63 downto 0);
  m_axi_wid(0) <= \<const0>\;
  m_axi_wstrb(7 downto 0) <= \^s_axi_wstrb\(7 downto 0);
  m_axi_wuser(0) <= \<const0>\;
  s_axi_arready <= \^m_axi_arready\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1 downto 0) <= \^m_axi_bresp\(1 downto 0);
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \^m_axi_bvalid\;
  s_axi_rdata(63 downto 0) <= \^m_axi_rdata\(63 downto 0);
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \^m_axi_rlast\;
  s_axi_rresp(1 downto 0) <= \^m_axi_rresp\(1 downto 0);
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \^m_axi_rvalid\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_axi4_axi3.axi3_conv_inst\: entity work.pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi3_conv
     port map (
      E(0) => s_axi_awready,
      aclk => aclk,
      aresetn => aresetn,
      empty_fwft_i_reg => s_axi_wready,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awlen(3 downto 0) => m_axi_awlen(3 downto 0),
      m_axi_awlock(0) => \^m_axi_awlock\(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pynq_ddrbench_auto_pc_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pynq_ddrbench_auto_pc_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pynq_ddrbench_auto_pc_2 : entity is "pynq_ddrbench_auto_pc_2,axi_protocol_converter_v2_1_26_axi_protocol_converter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of pynq_ddrbench_auto_pc_2 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of pynq_ddrbench_auto_pc_2 : entity is "axi_protocol_converter_v2_1_26_axi_protocol_converter,Vivado 2022.1";
end pynq_ddrbench_auto_pc_2;

architecture STRUCTURE of pynq_ddrbench_auto_pc_2 is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_arlock\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_awlock\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of inst : label is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 0;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of inst : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynq";
  attribute C_IGNORE_ID : integer;
  attribute C_IGNORE_ID of inst : label is 1;
  attribute C_M_AXI_PROTOCOL : integer;
  attribute C_M_AXI_PROTOCOL of inst : label is 1;
  attribute C_S_AXI_PROTOCOL : integer;
  attribute C_S_AXI_PROTOCOL of inst : label is 0;
  attribute C_TRANSLATION_MODE : integer;
  attribute C_TRANSLATION_MODE of inst : label is 0;
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of inst : label is "3'b011";
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of inst : label is 2;
  attribute P_DECERR : string;
  attribute P_DECERR of inst : label is "2'b11";
  attribute P_INCR : string;
  attribute P_INCR of inst : label is "2'b01";
  attribute P_PROTECTION : integer;
  attribute P_PROTECTION of inst : label is 1;
  attribute P_SLVERR : string;
  attribute P_SLVERR of inst : label is "2'b10";
  attribute downgradeipidentifiedwarnings of inst : label is "yes";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN pynq_ddrbench_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN pynq_ddrbench_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN pynq_ddrbench_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  attribute X_INTERFACE_INFO of m_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARQOS";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWQOS";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute X_INTERFACE_INFO of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute X_INTERFACE_INFO of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARQOS";
  attribute X_INTERFACE_INFO of s_axi_arregion : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREGION";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWQOS";
  attribute X_INTERFACE_INFO of s_axi_awregion : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREGION";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  m_axi_arlock(1) <= \<const0>\;
  m_axi_arlock(0) <= \^m_axi_arlock\(0);
  m_axi_awlock(1) <= \<const0>\;
  m_axi_awlock(0) <= \^m_axi_awlock\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.pynq_ddrbench_auto_pc_2_axi_protocol_converter_v2_1_26_axi_protocol_converter
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arid(0) => NLW_inst_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(3 downto 0) => m_axi_arlen(3 downto 0),
      m_axi_arlock(1) => NLW_inst_m_axi_arlock_UNCONNECTED(1),
      m_axi_arlock(0) => \^m_axi_arlock\(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_aruser(0) => NLW_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awid(0) => NLW_inst_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(3 downto 0) => m_axi_awlen(3 downto 0),
      m_axi_awlock(1) => NLW_inst_m_axi_awlock_UNCONNECTED(1),
      m_axi_awlock(0) => \^m_axi_awlock\(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => NLW_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awuser(0) => NLW_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(0) => '0',
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(0) => '0',
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => '0',
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => '0',
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(63 downto 0) => m_axi_wdata(63 downto 0),
      m_axi_wid(0) => NLW_inst_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(7 downto 0) => m_axi_wstrb(7 downto 0),
      m_axi_wuser(0) => NLW_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 4) => B"0000",
      s_axi_arlen(3 downto 0) => s_axi_arlen(3 downto 0),
      s_axi_arlock(0) => s_axi_arlock(0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_aruser(0) => '0',
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 4) => B"0000",
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awuser(0) => '0',
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_inst_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_buser(0) => NLW_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_rid(0) => NLW_inst_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(0) => NLW_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0),
      s_axi_wuser(0) => '0',
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
