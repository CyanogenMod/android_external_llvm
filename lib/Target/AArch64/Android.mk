LOCAL_PATH := $(call my-dir)

arm64_codegen_TBLGEN_TABLES := \
  AArch64GenRegisterInfo.inc \
  AArch64GenInstrInfo.inc \
  AArch64GenCodeEmitter.inc \
  AArch64GenMCCodeEmitter.inc \
  AArch64GenMCPseudoLowering.inc \
  AArch64GenAsmWriter.inc \
  AArch64GenAsmMatcher.inc \
  AArch64GenDAGISel.inc \
  AArch64GenFastISel.inc \
  AArch64GenCallingConv.inc \
  AArch64GenSubtargetInfo.inc \
  AArch64GenDisassemblerTables.inc

arm64_codegen_SRC_FILES := \
  AArch64AsmPrinter.cpp \
  AArch64FrameLowering.cpp \
  AArch64ISelDAGToDAG.cpp \
  AArch64MachineFunctionInfo.cpp \
  AArch64RegisterInfo.cpp \
  AArch64Subtarget.cpp \
  AArch64TargetObjectFile.cpp \
  AArch64BranchFixupPass.cpp \
  AArch64InstrInfo.cpp \
  AArch64ISelLowering.cpp \
  AArch64MCInstLower.cpp \
  AArch64SelectionDAGInfo.cpp \
  AArch64TargetMachine.cpp \
  AArch64TargetTransformInfo.cpp

# For the host
# =====================================================
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

LOCAL_MODULE:= libLLVMARM64CodeGen
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(arm64_codegen_SRC_FILES)
LOCAL_C_INCLUDES := $(LOCAL_PATH)/MCTargetDesc
TBLGEN_TABLES := $(arm64_codegen_TBLGEN_TABLES)

include $(LLVM_HOST_BUILD_MK)
include $(LLVM_TBLGEN_RULES_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

# For the device only
# =====================================================
ifneq (true,$(DISABLE_LLVM_DEVICE_BUILDS))
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

LOCAL_MODULE:= libLLVMARM64CodeGen
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(arm64_codegen_SRC_FILES)
LOCAL_C_INCLUDES := $(LOCAL_PATH)/MCTargetDesc
TBLGEN_TABLES := $(arm64_codegen_TBLGEN_TABLES)

include $(LLVM_DEVICE_BUILD_MK)
include $(LLVM_TBLGEN_RULES_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_STATIC_LIBRARY)
endif
