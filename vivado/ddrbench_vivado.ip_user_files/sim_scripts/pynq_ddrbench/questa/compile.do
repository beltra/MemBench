vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_12
vlib questa_lib/msim/processing_system7_vip_v1_0_14
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_26
vlib questa_lib/msim/fifo_generator_v13_2_7
vlib questa_lib/msim/axi_data_fifo_v2_1_25
vlib questa_lib/msim/axi_crossbar_v2_1_27
vlib questa_lib/msim/axi_protocol_converter_v2_1_26

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 questa_lib/msim/axi_vip_v1_1_12
vmap processing_system7_vip_v1_0_14 questa_lib/msim/processing_system7_vip_v1_0_14
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_26 questa_lib/msim/axi_register_slice_v2_1_26
vmap fifo_generator_v13_2_7 questa_lib/msim/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_25 questa_lib/msim/axi_data_fifo_v2_1_25
vmap axi_crossbar_v2_1_27 questa_lib/msim/axi_crossbar_v2_1_27
vmap axi_protocol_converter_v2_1_26 questa_lib/msim/axi_protocol_converter_v2_1_26

vlog -work xilinx_vip  -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/ec67/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/5765/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ip/pynq_ddrbench_ddrBenchmark_0_0/drivers/ddrBenchmark_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/ec67/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/5765/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ip/pynq_ddrbench_ddrBenchmark_0_0/drivers/ddrBenchmark_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12  -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/ec67/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/5765/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ip/pynq_ddrbench_ddrBenchmark_0_0/drivers/ddrBenchmark_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_14  -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/ec67/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/5765/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ip/pynq_ddrbench_ddrBenchmark_0_0/drivers/ddrBenchmark_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/ec67/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/5765/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ip/pynq_ddrbench_ddrBenchmark_0_0/drivers/ddrBenchmark_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/pynq_ddrbench/ip/pynq_ddrbench_processing_system7_0_0_1/sim/pynq_ddrbench_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/pynq_ddrbench/ip/pynq_ddrbench_rst_ps7_0_50M_0/sim/pynq_ddrbench_rst_ps7_0_50M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/ec67/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/5765/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ip/pynq_ddrbench_ddrBenchmark_0_0/drivers/ddrBenchmark_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26  -incr -mfcu "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/ec67/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/5765/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ip/pynq_ddrbench_ddrBenchmark_0_0/drivers/ddrBenchmark_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/ec67/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/5765/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ip/pynq_ddrbench_ddrBenchmark_0_0/drivers/ddrBenchmark_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7  -93 \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/ec67/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/5765/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ip/pynq_ddrbench_ddrBenchmark_0_0/drivers/ddrBenchmark_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_25  -incr -mfcu "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/ec67/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/5765/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ip/pynq_ddrbench_ddrBenchmark_0_0/drivers/ddrBenchmark_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_27  -incr -mfcu "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/ec67/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/5765/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ip/pynq_ddrbench_ddrBenchmark_0_0/drivers/ddrBenchmark_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/ec67/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/5765/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ip/pynq_ddrbench_ddrBenchmark_0_0/drivers/ddrBenchmark_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/pynq_ddrbench/ip/pynq_ddrbench_xbar_0_1/sim/pynq_ddrbench_xbar_0.v" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog/ddrBenchmark_control_s_axi.v" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog/ddrBenchmark_countCycles.v" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog/ddrBenchmark_countCycles_Pipeline_count.v" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog/ddrBenchmark_entry_proc.v" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog/ddrBenchmark_fifo_w64_d2_S.v" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog/ddrBenchmark_fifo_w64_d3_S.v" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog/ddrBenchmark_flow_control_loop_pipe_sequential_init.v" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog/ddrBenchmark_gmem_m_axi.v" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog/ddrBenchmark_hls_deadlock_detection_unit.v" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog/ddrBenchmark_results_m_axi.v" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog/ddrBenchmark_runBench.v" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog/ddrBenchmark_runBench_Pipeline_dataRead.v" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog/ddrBenchmark_runBench_Pipeline_dataWrite.v" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog/ddrBenchmark_start_for_countCycles_U0.v" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog/ddrBenchmark.v" \
"../../../bd/pynq_ddrbench/ip/pynq_ddrbench_ddrBenchmark_0_0/sim/pynq_ddrbench_ddrBenchmark_0_0.v" \

vlog -work axi_protocol_converter_v2_1_26  -incr -mfcu "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/ec67/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/5765/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ip/pynq_ddrbench_ddrBenchmark_0_0/drivers/ddrBenchmark_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/ec67/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/5765/hdl" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/62e1/hdl/verilog" "+incdir+../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ip/pynq_ddrbench_ddrBenchmark_0_0/drivers/ddrBenchmark_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/pynq_ddrbench/ip/pynq_ddrbench_auto_pc_0_1/sim/pynq_ddrbench_auto_pc_0.v" \
"../../../bd/pynq_ddrbench/ip/pynq_ddrbench_auto_pc_1_1/sim/pynq_ddrbench_auto_pc_1.v" \
"../../../bd/pynq_ddrbench/sim/pynq_ddrbench.v" \

vlog -work xil_defaultlib \
"glbl.v"

