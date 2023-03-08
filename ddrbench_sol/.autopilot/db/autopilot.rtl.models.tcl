set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME ddrBenchmark_entry_proc}
  {SRCNAME runBench_Pipeline_dataRead MODELNAME runBench_Pipeline_dataRead RTLNAME ddrBenchmark_runBench_Pipeline_dataRead
    SUBMODULES {
      {MODELNAME ddrBenchmark_flow_control_loop_pipe_sequential_init RTLNAME ddrBenchmark_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME ddrBenchmark_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME runBench_Pipeline_dataWrite MODELNAME runBench_Pipeline_dataWrite RTLNAME ddrBenchmark_runBench_Pipeline_dataWrite}
  {SRCNAME runBench MODELNAME runBench RTLNAME ddrBenchmark_runBench}
  {SRCNAME countCycles_Pipeline_count MODELNAME countCycles_Pipeline_count RTLNAME ddrBenchmark_countCycles_Pipeline_count}
  {SRCNAME countCycles MODELNAME countCycles RTLNAME ddrBenchmark_countCycles}
  {SRCNAME ddrBenchmark MODELNAME ddrBenchmark RTLNAME ddrBenchmark IS_TOP 1
    SUBMODULES {
      {MODELNAME ddrBenchmark_fifo_w64_d3_S RTLNAME ddrBenchmark_fifo_w64_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME ddrBenchmark_fifo_w64_d2_S RTLNAME ddrBenchmark_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME ddrBenchmark_start_for_countCycles_U0 RTLNAME ddrBenchmark_start_for_countCycles_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME ddrBenchmark_gmem_m_axi RTLNAME ddrBenchmark_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME ddrBenchmark_results_m_axi RTLNAME ddrBenchmark_results_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME ddrBenchmark_control_s_axi RTLNAME ddrBenchmark_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
