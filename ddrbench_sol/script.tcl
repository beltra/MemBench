############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ddrBench
set_top ddrBenchmark
add_files ddrBench/src/ddrbenchmark.hpp
add_files ddrBench/src/ddrbenchmark.cpp
add_files -tb ddrBench/src/testbench/ddrbenchmark_testbench.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "ddrbench_sol" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./ddrBench/ddrbench_sol/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
