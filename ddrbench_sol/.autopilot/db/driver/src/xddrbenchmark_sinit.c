// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xddrbenchmark.h"

extern XDdrbenchmark_Config XDdrbenchmark_ConfigTable[];

XDdrbenchmark_Config *XDdrbenchmark_LookupConfig(u16 DeviceId) {
	XDdrbenchmark_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDDRBENCHMARK_NUM_INSTANCES; Index++) {
		if (XDdrbenchmark_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDdrbenchmark_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDdrbenchmark_Initialize(XDdrbenchmark *InstancePtr, u16 DeviceId) {
	XDdrbenchmark_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDdrbenchmark_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDdrbenchmark_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

