-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Mon Jan  9 22:57:42 2023
-- Host        : HpPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top pynq_ddrbench_auto_pc_1 -prefix
--               pynq_ddrbench_auto_pc_1_ pynq_ddrbench_auto_pc_2_sim_netlist.vhdl
-- Design      : pynq_ddrbench_auto_pc_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_w_axi3_conv is
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
end pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_w_axi3_conv;

architecture STRUCTURE of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_w_axi3_conv is
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
entity pynq_ddrbench_auto_pc_1_xpm_cdc_async_rst is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of pynq_ddrbench_auto_pc_1_xpm_cdc_async_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of pynq_ddrbench_auto_pc_1_xpm_cdc_async_rst : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of pynq_ddrbench_auto_pc_1_xpm_cdc_async_rst : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of pynq_ddrbench_auto_pc_1_xpm_cdc_async_rst : entity is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of pynq_ddrbench_auto_pc_1_xpm_cdc_async_rst : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of pynq_ddrbench_auto_pc_1_xpm_cdc_async_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of pynq_ddrbench_auto_pc_1_xpm_cdc_async_rst : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of pynq_ddrbench_auto_pc_1_xpm_cdc_async_rst : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of pynq_ddrbench_auto_pc_1_xpm_cdc_async_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of pynq_ddrbench_auto_pc_1_xpm_cdc_async_rst : entity is "ASYNC_RST";
end pynq_ddrbench_auto_pc_1_xpm_cdc_async_rst;

architecture STRUCTURE of pynq_ddrbench_auto_pc_1_xpm_cdc_async_rst is
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 103904)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pynq_ddrbench_auto_pc_1_axi_data_fifo_v2_1_25_fifo_gen is
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
end pynq_ddrbench_auto_pc_1_axi_data_fifo_v2_1_25_fifo_gen;

architecture STRUCTURE of pynq_ddrbench_auto_pc_1_axi_data_fifo_v2_1_25_fifo_gen is
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
fifo_gen_inst: entity work.pynq_ddrbench_auto_pc_1_fifo_generator_v13_2_7
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
entity pynq_ddrbench_auto_pc_1_axi_data_fifo_v2_1_25_axic_fifo is
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
end pynq_ddrbench_auto_pc_1_axi_data_fifo_v2_1_25_axic_fifo;

architecture STRUCTURE of pynq_ddrbench_auto_pc_1_axi_data_fifo_v2_1_25_axic_fifo is
  signal length_counter_1_reg_1_sn_1 : STD_LOGIC;
begin
  length_counter_1_reg_1_sp_1 <= length_counter_1_reg_1_sn_1;
inst: entity work.pynq_ddrbench_auto_pc_1_axi_data_fifo_v2_1_25_fifo_gen
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
entity pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_a_axi3_conv is
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
end pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_a_axi3_conv;

architecture STRUCTURE of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_a_axi3_conv is
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
\USE_BURSTS.cmd_queue\: entity work.pynq_ddrbench_auto_pc_1_axi_data_fifo_v2_1_25_axic_fifo
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
entity pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi3_conv is
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
end pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi3_conv;

architecture STRUCTURE of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi3_conv is
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
\USE_WRITE.write_addr_inst\: entity work.pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_a_axi3_conv
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
\USE_WRITE.write_data_inst\: entity work.pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_w_axi3_conv
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
entity pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter is
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
  attribute C_AXI_ADDR_WIDTH of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 0;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is "zynq";
  attribute C_IGNORE_ID : integer;
  attribute C_IGNORE_ID of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute C_M_AXI_PROTOCOL : integer;
  attribute C_M_AXI_PROTOCOL of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute C_S_AXI_PROTOCOL : integer;
  attribute C_S_AXI_PROTOCOL of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 0;
  attribute C_TRANSLATION_MODE : integer;
  attribute C_TRANSLATION_MODE of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 0;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is "yes";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is "3'b011";
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 2;
  attribute P_DECERR : string;
  attribute P_DECERR of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is "2'b11";
  attribute P_INCR : string;
  attribute P_INCR of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is "2'b01";
  attribute P_PROTECTION : integer;
  attribute P_PROTECTION of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is 1;
  attribute P_SLVERR : string;
  attribute P_SLVERR of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter : entity is "2'b10";
end pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter;

architecture STRUCTURE of pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter is
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
\gen_axi4_axi3.axi3_conv_inst\: entity work.pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi3_conv
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
entity pynq_ddrbench_auto_pc_1 is
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
  attribute NotValidForBitStream of pynq_ddrbench_auto_pc_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pynq_ddrbench_auto_pc_1 : entity is "pynq_ddrbench_auto_pc_2,axi_protocol_converter_v2_1_26_axi_protocol_converter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of pynq_ddrbench_auto_pc_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of pynq_ddrbench_auto_pc_1 : entity is "axi_protocol_converter_v2_1_26_axi_protocol_converter,Vivado 2022.1";
end pynq_ddrbench_auto_pc_1;

architecture STRUCTURE of pynq_ddrbench_auto_pc_1 is
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
inst: entity work.pynq_ddrbench_auto_pc_1_axi_protocol_converter_v2_1_26_axi_protocol_converter
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
