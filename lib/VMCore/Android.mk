# Only use this on the device or emulator.
ifeq ($(TARGET_ARCH),arm)

LOCAL_PATH:= $(call my-dir)

vmcore_SRC_FILES :=	\
	AsmWriter.cpp	\
	Attributes.cpp	\
	AutoUpgrade.cpp	\
	BasicBlock.cpp	\
	ConstantFold.cpp	\
	Constants.cpp	\
	Core.cpp	\
	DebugLoc.cpp	\
	Dominators.cpp	\
	Function.cpp	\
	GVMaterializer.cpp	\
	Globals.cpp	\
	IRBuilder.cpp	\
	InlineAsm.cpp	\
	Instruction.cpp	\
	Instructions.cpp	\
	IntrinsicInst.cpp	\
	LLVMContext.cpp	\
	LLVMContextImpl.cpp	\
	LeakDetector.cpp	\
	Metadata.cpp	\
	Module.cpp	\
	Pass.cpp	\
	PassManager.cpp	\
	PrintModulePass.cpp	\
	Type.cpp	\
	TypeSymbolTable.cpp	\
	Use.cpp	\
	Value.cpp	\
	ValueSymbolTable.cpp	\
	ValueTypes.cpp	\
	Verifier.cpp

# For the host
# =====================================================
include $(CLEAR_VARS)

REQUIRES_RTTI := 1

LOCAL_SRC_FILES := $(vmcore_SRC_FILES)

LOCAL_MODULE:= libLLVMCore

include $(LLVM_HOST_BUILD_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

# For the device
# =====================================================
include $(CLEAR_VARS)

REQUIRES_RTTI := 1

LOCAL_SRC_FILES := $(vmcore_SRC_FILES)

LOCAL_MODULE:= libLLVMCore

include $(LLVM_DEVICE_BUILD_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_STATIC_LIBRARY)

endif
