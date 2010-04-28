LOCAL_PATH := $(call my-dir)

# For the device only
# =====================================================
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

TBLGEN_TABLES :=	\
	ARMGenRegisterInfo.h.inc	\
	ARMGenRegisterNames.inc	\
    ARMGenRegisterInfo.inc	\
	ARMGenInstrNames.inc	\
    ARMGenInstrInfo.inc	\
    ARMGenDAGISel.inc	\
	ARMGenSubtarget.inc	\
    ARMGenCodeEmitter.inc	\
	ARMGenCallingConv.inc

LOCAL_SRC_FILES :=	\
	ARMBaseInstrInfo.cpp	\
	ARMBaseRegisterInfo.cpp	\
	ARMCodeEmitter.cpp	\
	ARMConstantIslandPass.cpp	\
	ARMConstantPoolValue.cpp	\
	ARMExpandPseudoInsts.cpp	\
	ARMISelDAGToDAG.cpp	\
	ARMISelLowering.cpp	\
	ARMInstrInfo.cpp	\
	ARMJITInfo.cpp	\
	ARMLoadStoreOptimizer.cpp	\
	ARMMCAsmInfo.cpp	\
	ARMRegisterInfo.cpp	\
	ARMSubtarget.cpp	\
	ARMTargetMachine.cpp	\
	ARMTargetObjectFile.cpp	\
	NEONMoveFix.cpp	\
	NEONPreAllocPass.cpp	\
	Thumb1InstrInfo.cpp	\
	Thumb1RegisterInfo.cpp	\
	Thumb2ITBlockPass.cpp	\
	Thumb2InstrInfo.cpp	\
	Thumb2RegisterInfo.cpp	\
	Thumb2SizeReduction.cpp

LOCAL_MODULE:= libLLVMARMCodeGen

include $(LLVM_DEVICE_BUILD_MK)
include $(LLVM_TBLGEN_RULES_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_STATIC_LIBRARY)
