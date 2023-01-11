set moduleName countCycles
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {countCycles}
set C_modelType { void 0 }
set C_modelArgList {
	{ counterCmd1 int 64 regular {fifo 0 volatile }  }
	{ results int 64 regular {axi_master 1}  }
	{ out_r int 64 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "counterCmd1", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "results", "interface" : "axi_master", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "res","offset": { "type": "dynamic","port_name": "res","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "out_r", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 63
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ counterCmd1_dout sc_in sc_lv 64 signal 0 } 
	{ counterCmd1_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ counterCmd1_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ counterCmd1_empty_n sc_in sc_logic 1 signal 0 } 
	{ counterCmd1_read sc_out sc_logic 1 signal 0 } 
	{ m_axi_results_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_results_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_results_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_results_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_results_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_results_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_results_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_results_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_results_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_results_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_results_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_results_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_results_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_results_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_results_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_results_WDATA sc_out sc_lv 64 signal 1 } 
	{ m_axi_results_WSTRB sc_out sc_lv 8 signal 1 } 
	{ m_axi_results_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_results_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_results_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_results_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_results_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_results_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_results_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_results_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_results_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_results_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_results_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_results_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_results_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_results_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_results_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_results_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_results_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_results_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_results_RDATA sc_in sc_lv 64 signal 1 } 
	{ m_axi_results_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_results_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_results_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_results_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_results_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_results_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_results_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_results_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_results_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_results_BUSER sc_in sc_lv 1 signal 1 } 
	{ out_r_dout sc_in sc_lv 64 signal 2 } 
	{ out_r_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ out_r_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ out_r_empty_n sc_in sc_logic 1 signal 2 } 
	{ out_r_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "counterCmd1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "counterCmd1", "role": "dout" }} , 
 	{ "name": "counterCmd1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "counterCmd1", "role": "num_data_valid" }} , 
 	{ "name": "counterCmd1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "counterCmd1", "role": "fifo_cap" }} , 
 	{ "name": "counterCmd1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "counterCmd1", "role": "empty_n" }} , 
 	{ "name": "counterCmd1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "counterCmd1", "role": "read" }} , 
 	{ "name": "m_axi_results_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "AWVALID" }} , 
 	{ "name": "m_axi_results_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "AWREADY" }} , 
 	{ "name": "m_axi_results_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "results", "role": "AWADDR" }} , 
 	{ "name": "m_axi_results_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "AWID" }} , 
 	{ "name": "m_axi_results_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "results", "role": "AWLEN" }} , 
 	{ "name": "m_axi_results_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "results", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_results_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "results", "role": "AWBURST" }} , 
 	{ "name": "m_axi_results_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "results", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_results_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "results", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_results_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "results", "role": "AWPROT" }} , 
 	{ "name": "m_axi_results_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "results", "role": "AWQOS" }} , 
 	{ "name": "m_axi_results_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "results", "role": "AWREGION" }} , 
 	{ "name": "m_axi_results_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "AWUSER" }} , 
 	{ "name": "m_axi_results_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "WVALID" }} , 
 	{ "name": "m_axi_results_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "WREADY" }} , 
 	{ "name": "m_axi_results_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "results", "role": "WDATA" }} , 
 	{ "name": "m_axi_results_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "results", "role": "WSTRB" }} , 
 	{ "name": "m_axi_results_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "WLAST" }} , 
 	{ "name": "m_axi_results_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "WID" }} , 
 	{ "name": "m_axi_results_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "WUSER" }} , 
 	{ "name": "m_axi_results_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "ARVALID" }} , 
 	{ "name": "m_axi_results_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "ARREADY" }} , 
 	{ "name": "m_axi_results_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "results", "role": "ARADDR" }} , 
 	{ "name": "m_axi_results_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "ARID" }} , 
 	{ "name": "m_axi_results_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "results", "role": "ARLEN" }} , 
 	{ "name": "m_axi_results_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "results", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_results_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "results", "role": "ARBURST" }} , 
 	{ "name": "m_axi_results_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "results", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_results_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "results", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_results_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "results", "role": "ARPROT" }} , 
 	{ "name": "m_axi_results_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "results", "role": "ARQOS" }} , 
 	{ "name": "m_axi_results_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "results", "role": "ARREGION" }} , 
 	{ "name": "m_axi_results_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "ARUSER" }} , 
 	{ "name": "m_axi_results_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "RVALID" }} , 
 	{ "name": "m_axi_results_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "RREADY" }} , 
 	{ "name": "m_axi_results_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "results", "role": "RDATA" }} , 
 	{ "name": "m_axi_results_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "RLAST" }} , 
 	{ "name": "m_axi_results_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "RID" }} , 
 	{ "name": "m_axi_results_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "results", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_results_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "RUSER" }} , 
 	{ "name": "m_axi_results_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "results", "role": "RRESP" }} , 
 	{ "name": "m_axi_results_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "BVALID" }} , 
 	{ "name": "m_axi_results_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "BREADY" }} , 
 	{ "name": "m_axi_results_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "results", "role": "BRESP" }} , 
 	{ "name": "m_axi_results_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "BID" }} , 
 	{ "name": "m_axi_results_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "BUSER" }} , 
 	{ "name": "out_r_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_r", "role": "dout" }} , 
 	{ "name": "out_r_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_r", "role": "num_data_valid" }} , 
 	{ "name": "out_r_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_r", "role": "fifo_cap" }} , 
 	{ "name": "out_r_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "empty_n" }} , 
 	{ "name": "out_r_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "countCycles",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "counterCmd1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "counterCmd1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_countCycles_Pipeline_count_fu_90", "Port" : "counterCmd1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "results", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "results_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "results_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "results_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "out_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out_r_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_countCycles_Pipeline_count_fu_90", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "countCycles_Pipeline_count",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tmp", "Type" : "None", "Direction" : "I"},
			{"Name" : "counterCmd1", "Type" : "Fifo", "Direction" : "I"},
			{"Name" : "cnt_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "count", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_countCycles_Pipeline_count_fu_90.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	countCycles {
		counterCmd1 {Type I LastRead 1 FirstWrite -1}
		results {Type O LastRead 4 FirstWrite 3}
		out_r {Type I LastRead 0 FirstWrite -1}}
	countCycles_Pipeline_count {
		tmp {Type I LastRead 0 FirstWrite -1}
		counterCmd1 {Type I LastRead 1 FirstWrite -1}
		cnt_1_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	counterCmd1 { ap_fifo {  { counterCmd1_dout fifo_port_we 0 64 }  { counterCmd1_num_data_valid fifo_status_num_data_valid 0 2 }  { counterCmd1_fifo_cap fifo_update 0 2 }  { counterCmd1_empty_n fifo_status 0 1 }  { counterCmd1_read fifo_data 1 1 } } }
	 { m_axi {  { m_axi_results_AWVALID VALID 1 1 }  { m_axi_results_AWREADY READY 0 1 }  { m_axi_results_AWADDR ADDR 1 64 }  { m_axi_results_AWID ID 1 1 }  { m_axi_results_AWLEN SIZE 1 32 }  { m_axi_results_AWSIZE BURST 1 3 }  { m_axi_results_AWBURST LOCK 1 2 }  { m_axi_results_AWLOCK CACHE 1 2 }  { m_axi_results_AWCACHE PROT 1 4 }  { m_axi_results_AWPROT QOS 1 3 }  { m_axi_results_AWQOS REGION 1 4 }  { m_axi_results_AWREGION USER 1 4 }  { m_axi_results_AWUSER DATA 1 1 }  { m_axi_results_WVALID VALID 1 1 }  { m_axi_results_WREADY READY 0 1 }  { m_axi_results_WDATA FIFONUM 1 64 }  { m_axi_results_WSTRB STRB 1 8 }  { m_axi_results_WLAST LAST 1 1 }  { m_axi_results_WID ID 1 1 }  { m_axi_results_WUSER DATA 1 1 }  { m_axi_results_ARVALID VALID 1 1 }  { m_axi_results_ARREADY READY 0 1 }  { m_axi_results_ARADDR ADDR 1 64 }  { m_axi_results_ARID ID 1 1 }  { m_axi_results_ARLEN SIZE 1 32 }  { m_axi_results_ARSIZE BURST 1 3 }  { m_axi_results_ARBURST LOCK 1 2 }  { m_axi_results_ARLOCK CACHE 1 2 }  { m_axi_results_ARCACHE PROT 1 4 }  { m_axi_results_ARPROT QOS 1 3 }  { m_axi_results_ARQOS REGION 1 4 }  { m_axi_results_ARREGION USER 1 4 }  { m_axi_results_ARUSER DATA 1 1 }  { m_axi_results_RVALID VALID 0 1 }  { m_axi_results_RREADY READY 1 1 }  { m_axi_results_RDATA FIFONUM 0 64 }  { m_axi_results_RLAST LAST 0 1 }  { m_axi_results_RID ID 0 1 }  { m_axi_results_RFIFONUM LEN 0 9 }  { m_axi_results_RUSER DATA 0 1 }  { m_axi_results_RRESP RESP 0 2 }  { m_axi_results_BVALID VALID 0 1 }  { m_axi_results_BREADY READY 1 1 }  { m_axi_results_BRESP RESP 0 2 }  { m_axi_results_BID ID 0 1 }  { m_axi_results_BUSER DATA 0 1 } } }
	out_r { ap_fifo {  { out_r_dout fifo_port_we 0 64 }  { out_r_num_data_valid fifo_status_num_data_valid 0 3 }  { out_r_fifo_cap fifo_update 0 3 }  { out_r_empty_n fifo_status 0 1 }  { out_r_read fifo_data 1 1 } } }
}
