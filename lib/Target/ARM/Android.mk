LOCAL_PATH := $(call my-dir)

arm_codegen_TBLGEN_TABLES :=	\
	ARMGenAsmWriter.inc	\
	ARMGenMCCodeEmitter.inc \
	ARMGenMCPseudoLowering.inc \
	ARMGenRegisterInfo.inc	\
	ARMGenInstrInfo.inc	\
	ARMGenDAGISel.inc	\
	ARMGenFastISel.inc	\
	ARMGenSubtargetInfo.inc	\
	ARMGenCodeEmitter.inc	\
	ARMGenCallingConv.inc

arm_codegen_SRC_FILES :=   \
	ARMAsmBackend.cpp \
	ARMAsmPrinter.cpp \
	ARMBaseInstrInfo.cpp    \
	ARMBaseRegisterInfo.cpp \
	ARMCodeEmitter.cpp  \
	ARMConstantIslandPass.cpp   \
	ARMConstantPoolValue.cpp    \
	ARMELFWriterInfo.cpp \
	ARMExpandPseudoInsts.cpp    \
	ARMFastISel.cpp	\
	ARMFrameLowering.cpp \
	ARMGlobalMerge.cpp  \
	ARMHazardRecognizer.cpp \
	ARMISelDAGToDAG.cpp \
	ARMISelLowering.cpp \
	ARMInstrInfo.cpp    \
	ARMJITInfo.cpp  \
	ARMLoadStoreOptimizer.cpp   \
	ARMMachObjectWriter.cpp \
	ARMMCCodeEmitter.cpp\
	ARMMCExpr.cpp	\
	ARMMCInstLower.cpp  \
	ARMRegisterInfo.cpp \
	ARMSelectionDAGInfo.cpp	\
	ARMSubtarget.cpp    \
	ARMTargetMachine.cpp    \
	ARMTargetObjectFile.cpp \
	InstPrinter/ARMInstPrinter.cpp \
	MLxExpansionPass.cpp \
	NEONMoveFix.cpp \
	Thumb1FrameLowering.cpp \
	Thumb1InstrInfo.cpp \
	Thumb1RegisterInfo.cpp  \
	Thumb2ITBlockPass.cpp   \
	Thumb2InstrInfo.cpp \
	Thumb2RegisterInfo.cpp  \
	Thumb2SizeReduction.cpp

# For the host
# =====================================================
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

TBLGEN_TABLES := $(arm_codegen_TBLGEN_TABLES)

LOCAL_SRC_FILES := $(arm_codegen_SRC_FILES)

LOCAL_MODULE:= libLLVMARMCodeGen

LOCAL_MODULE_TAGS := optional

include $(LLVM_HOST_BUILD_MK)
include $(LLVM_TBLGEN_RULES_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

# For the device only
# =====================================================
ifeq ($(TARGET_ARCH),arm)
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

TBLGEN_TABLES := $(arm_codegen_TBLGEN_TABLES)

LOCAL_SRC_FILES := $(arm_codegen_SRC_FILES)

LOCAL_MODULE:= libLLVMARMCodeGen

LOCAL_MODULE_TAGS := optional

include $(LLVM_DEVICE_BUILD_MK)
include $(LLVM_TBLGEN_RULES_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_STATIC_LIBRARY)
endif
