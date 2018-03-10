// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xdocompute.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDocompute_CfgInitialize(XDocompute *InstancePtr, XDocompute_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDocompute_Start(XDocompute *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDocompute_ReadReg(InstancePtr->Control_BaseAddress, XDOCOMPUTE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XDocompute_WriteReg(InstancePtr->Control_BaseAddress, XDOCOMPUTE_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDocompute_IsDone(XDocompute *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDocompute_ReadReg(InstancePtr->Control_BaseAddress, XDOCOMPUTE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDocompute_IsIdle(XDocompute *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDocompute_ReadReg(InstancePtr->Control_BaseAddress, XDOCOMPUTE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDocompute_IsReady(XDocompute *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDocompute_ReadReg(InstancePtr->Control_BaseAddress, XDOCOMPUTE_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDocompute_EnableAutoRestart(XDocompute *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDocompute_WriteReg(InstancePtr->Control_BaseAddress, XDOCOMPUTE_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XDocompute_DisableAutoRestart(XDocompute *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDocompute_WriteReg(InstancePtr->Control_BaseAddress, XDOCOMPUTE_CONTROL_ADDR_AP_CTRL, 0);
}

void XDocompute_InterruptGlobalEnable(XDocompute *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDocompute_WriteReg(InstancePtr->Control_BaseAddress, XDOCOMPUTE_CONTROL_ADDR_GIE, 1);
}

void XDocompute_InterruptGlobalDisable(XDocompute *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDocompute_WriteReg(InstancePtr->Control_BaseAddress, XDOCOMPUTE_CONTROL_ADDR_GIE, 0);
}

void XDocompute_InterruptEnable(XDocompute *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDocompute_ReadReg(InstancePtr->Control_BaseAddress, XDOCOMPUTE_CONTROL_ADDR_IER);
    XDocompute_WriteReg(InstancePtr->Control_BaseAddress, XDOCOMPUTE_CONTROL_ADDR_IER, Register | Mask);
}

void XDocompute_InterruptDisable(XDocompute *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDocompute_ReadReg(InstancePtr->Control_BaseAddress, XDOCOMPUTE_CONTROL_ADDR_IER);
    XDocompute_WriteReg(InstancePtr->Control_BaseAddress, XDOCOMPUTE_CONTROL_ADDR_IER, Register & (~Mask));
}

void XDocompute_InterruptClear(XDocompute *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDocompute_WriteReg(InstancePtr->Control_BaseAddress, XDOCOMPUTE_CONTROL_ADDR_ISR, Mask);
}

u32 XDocompute_InterruptGetEnabled(XDocompute *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDocompute_ReadReg(InstancePtr->Control_BaseAddress, XDOCOMPUTE_CONTROL_ADDR_IER);
}

u32 XDocompute_InterruptGetStatus(XDocompute *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDocompute_ReadReg(InstancePtr->Control_BaseAddress, XDOCOMPUTE_CONTROL_ADDR_ISR);
}
