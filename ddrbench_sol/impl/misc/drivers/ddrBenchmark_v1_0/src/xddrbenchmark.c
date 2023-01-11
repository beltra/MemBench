// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xddrbenchmark.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDdrbenchmark_CfgInitialize(XDdrbenchmark *InstancePtr, XDdrbenchmark_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDdrbenchmark_Start(XDdrbenchmark *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDdrbenchmark_ReadReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_AP_CTRL) & 0x80;
    XDdrbenchmark_WriteReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDdrbenchmark_IsDone(XDdrbenchmark *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDdrbenchmark_ReadReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDdrbenchmark_IsIdle(XDdrbenchmark *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDdrbenchmark_ReadReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDdrbenchmark_IsReady(XDdrbenchmark *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDdrbenchmark_ReadReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDdrbenchmark_EnableAutoRestart(XDdrbenchmark *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDdrbenchmark_WriteReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XDdrbenchmark_DisableAutoRestart(XDdrbenchmark *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDdrbenchmark_WriteReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_AP_CTRL, 0);
}

void XDdrbenchmark_Set_mem(XDdrbenchmark *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDdrbenchmark_WriteReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_MEM_DATA, (u32)(Data));
    XDdrbenchmark_WriteReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_MEM_DATA + 4, (u32)(Data >> 32));
}

u64 XDdrbenchmark_Get_mem(XDdrbenchmark *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDdrbenchmark_ReadReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_MEM_DATA);
    Data += (u64)XDdrbenchmark_ReadReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_MEM_DATA + 4) << 32;
    return Data;
}

void XDdrbenchmark_Set_dataNum(XDdrbenchmark *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDdrbenchmark_WriteReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_DATANUM_DATA, Data);
}

u32 XDdrbenchmark_Get_dataNum(XDdrbenchmark *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDdrbenchmark_ReadReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_DATANUM_DATA);
    return Data;
}

void XDdrbenchmark_Set_rw(XDdrbenchmark *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDdrbenchmark_WriteReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_RW_DATA, Data);
}

u32 XDdrbenchmark_Get_rw(XDdrbenchmark *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDdrbenchmark_ReadReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_RW_DATA);
    return Data;
}

void XDdrbenchmark_Set_res(XDdrbenchmark *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDdrbenchmark_WriteReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_RES_DATA, (u32)(Data));
    XDdrbenchmark_WriteReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_RES_DATA + 4, (u32)(Data >> 32));
}

u64 XDdrbenchmark_Get_res(XDdrbenchmark *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDdrbenchmark_ReadReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_RES_DATA);
    Data += (u64)XDdrbenchmark_ReadReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_RES_DATA + 4) << 32;
    return Data;
}

void XDdrbenchmark_InterruptGlobalEnable(XDdrbenchmark *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDdrbenchmark_WriteReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_GIE, 1);
}

void XDdrbenchmark_InterruptGlobalDisable(XDdrbenchmark *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDdrbenchmark_WriteReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_GIE, 0);
}

void XDdrbenchmark_InterruptEnable(XDdrbenchmark *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDdrbenchmark_ReadReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_IER);
    XDdrbenchmark_WriteReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_IER, Register | Mask);
}

void XDdrbenchmark_InterruptDisable(XDdrbenchmark *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDdrbenchmark_ReadReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_IER);
    XDdrbenchmark_WriteReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_IER, Register & (~Mask));
}

void XDdrbenchmark_InterruptClear(XDdrbenchmark *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XDdrbenchmark_WriteReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_ISR, Mask);
}

u32 XDdrbenchmark_InterruptGetEnabled(XDdrbenchmark *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDdrbenchmark_ReadReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_IER);
}

u32 XDdrbenchmark_InterruptGetStatus(XDdrbenchmark *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XDdrbenchmark_ReadReg(InstancePtr->Control_BaseAddress, XDDRBENCHMARK_CONTROL_ADDR_ISR);
}

