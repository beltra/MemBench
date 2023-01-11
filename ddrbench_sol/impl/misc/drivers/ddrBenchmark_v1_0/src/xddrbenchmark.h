// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XDDRBENCHMARK_H
#define XDDRBENCHMARK_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xddrbenchmark_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XDdrbenchmark_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XDdrbenchmark;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDdrbenchmark_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDdrbenchmark_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDdrbenchmark_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDdrbenchmark_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XDdrbenchmark_Initialize(XDdrbenchmark *InstancePtr, u16 DeviceId);
XDdrbenchmark_Config* XDdrbenchmark_LookupConfig(u16 DeviceId);
int XDdrbenchmark_CfgInitialize(XDdrbenchmark *InstancePtr, XDdrbenchmark_Config *ConfigPtr);
#else
int XDdrbenchmark_Initialize(XDdrbenchmark *InstancePtr, const char* InstanceName);
int XDdrbenchmark_Release(XDdrbenchmark *InstancePtr);
#endif

void XDdrbenchmark_Start(XDdrbenchmark *InstancePtr);
u32 XDdrbenchmark_IsDone(XDdrbenchmark *InstancePtr);
u32 XDdrbenchmark_IsIdle(XDdrbenchmark *InstancePtr);
u32 XDdrbenchmark_IsReady(XDdrbenchmark *InstancePtr);
void XDdrbenchmark_EnableAutoRestart(XDdrbenchmark *InstancePtr);
void XDdrbenchmark_DisableAutoRestart(XDdrbenchmark *InstancePtr);

void XDdrbenchmark_Set_mem(XDdrbenchmark *InstancePtr, u64 Data);
u64 XDdrbenchmark_Get_mem(XDdrbenchmark *InstancePtr);
void XDdrbenchmark_Set_dataNum(XDdrbenchmark *InstancePtr, u32 Data);
u32 XDdrbenchmark_Get_dataNum(XDdrbenchmark *InstancePtr);
void XDdrbenchmark_Set_rw(XDdrbenchmark *InstancePtr, u32 Data);
u32 XDdrbenchmark_Get_rw(XDdrbenchmark *InstancePtr);
void XDdrbenchmark_Set_res(XDdrbenchmark *InstancePtr, u64 Data);
u64 XDdrbenchmark_Get_res(XDdrbenchmark *InstancePtr);

void XDdrbenchmark_InterruptGlobalEnable(XDdrbenchmark *InstancePtr);
void XDdrbenchmark_InterruptGlobalDisable(XDdrbenchmark *InstancePtr);
void XDdrbenchmark_InterruptEnable(XDdrbenchmark *InstancePtr, u32 Mask);
void XDdrbenchmark_InterruptDisable(XDdrbenchmark *InstancePtr, u32 Mask);
void XDdrbenchmark_InterruptClear(XDdrbenchmark *InstancePtr, u32 Mask);
u32 XDdrbenchmark_InterruptGetEnabled(XDdrbenchmark *InstancePtr);
u32 XDdrbenchmark_InterruptGetStatus(XDdrbenchmark *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
