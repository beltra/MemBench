-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_12 -sv \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_14 -sv \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_ddrbench/ip/pynq_ddrbench_processing_system7_0_0_1/sim/pynq_ddrbench_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_ddrbench/ip/pynq_ddrbench_rst_ps7_0_50M_0/sim/pynq_ddrbench_rst_ps7_0_50M_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_26 \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_25 \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_27 \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_ddrbench/ip/pynq_ddrbench_xbar_0_1/sim/pynq_ddrbench_xbar_0.v" \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/30b1/hdl/verilog/ddrBenchmark_control_s_axi.v" \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/30b1/hdl/verilog/ddrBenchmark_countCycles.v" \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/30b1/hdl/verilog/ddrBenchmark_countCycles_Pipeline_count.v" \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/30b1/hdl/verilog/ddrBenchmark_entry_proc.v" \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/30b1/hdl/verilog/ddrBenchmark_fifo_w64_d2_S.v" \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/30b1/hdl/verilog/ddrBenchmark_fifo_w64_d3_S.v" \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/30b1/hdl/verilog/ddrBenchmark_flow_control_loop_pipe_sequential_init.v" \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/30b1/hdl/verilog/ddrBenchmark_gmem_m_axi.v" \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/30b1/hdl/verilog/ddrBenchmark_hls_deadlock_detection_unit.v" \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/30b1/hdl/verilog/ddrBenchmark_results_m_axi.v" \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/30b1/hdl/verilog/ddrBenchmark_runBench.v" \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/30b1/hdl/verilog/ddrBenchmark_runBench_Pipeline_dataWrite.v" \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/30b1/hdl/verilog/ddrBenchmark_runBench_Pipeline_dataWrite1.v" \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/30b1/hdl/verilog/ddrBenchmark_start_for_countCycles_U0.v" \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/30b1/hdl/verilog/ddrBenchmark.v" \
  "../../../bd/pynq_ddrbench/ip/pynq_ddrbench_ddrBenchmark_0_0_1/sim/pynq_ddrbench_ddrBenchmark_0_0.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_26 \
  "../../../../ddrbench_vivado.gen/sources_1/bd/pynq_ddrbench/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_ddrbench/ip/pynq_ddrbench_auto_pc_0_1/sim/pynq_ddrbench_auto_pc_0.v" \
  "../../../bd/pynq_ddrbench/ip/pynq_ddrbench_auto_pc_1_1/sim/pynq_ddrbench_auto_pc_1.v" \
  "../../../bd/pynq_ddrbench/sim/pynq_ddrbench.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

