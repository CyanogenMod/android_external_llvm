# Only use this on the device or emulator.
ifneq ($(TARGET_ARCH),arm)

LOCAL_PATH := $(call my-dir)

# For the host only
# =====================================================
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

TBLGEN_TABLES :=	\
  	X86GenRegisterInfo.h.inc	\
	X86GenRegisterNames.inc \
    X86GenRegisterInfo.inc	\
	X86GenInstrNames.inc	\
    X86GenInstrInfo.inc	\
	X86GenAsmMatcher.inc	\
	X86GenDAGISel.inc	\
    X86GenDisassemblerTables.inc	\
	X86GenFastISel.inc	\
    X86GenCallingConv.inc	\
	X86GenSubtarget.inc	\
    X86GenEDInfo.inc

LOCAL_SRC_FILES :=	\
	SSEDomainFix.cpp	\
	X86AsmBackend.cpp	\
	X86COFFMachineModuleInfo.cpp	\
	X86CodeEmitter.cpp	\
	X86ELFWriterInfo.cpp	\
	X86FastISel.cpp	\
	X86FloatingPoint.cpp	\
	X86FloatingPointRegKill.cpp	\
	X86ISelDAGToDAG.cpp	\
	X86ISelLowering.cpp	\
	X86InstrInfo.cpp	\
	X86JITInfo.cpp	\
	X86MCAsmInfo.cpp	\
	X86MCCodeEmitter.cpp	\
	X86RegisterInfo.cpp	\
	X86Subtarget.cpp	\
	X86TargetMachine.cpp	\
	X86TargetObjectFile.cpp

LOCAL_MODULE:= libLLVMX86CodeGen

include $(LLVM_HOST_BUILD_MK)
include $(LLVM_TBLGEN_RULES_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

endif
