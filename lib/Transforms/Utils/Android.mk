LOCAL_PATH:= $(call my-dir)

transforms_utils_SRC_FILES :=	\
	AddrModeMatcher.cpp	\
	BasicBlockUtils.cpp	\
	BasicInliner.cpp	\
	BreakCriticalEdges.cpp	\
	CloneFunction.cpp	\
	CloneLoop.cpp	\
	CloneModule.cpp	\
	CodeExtractor.cpp	\
	DemoteRegToStack.cpp	\
	InlineFunction.cpp	\
	InstructionNamer.cpp	\
	LCSSA.cpp	\
	Local.cpp	\
	LoopSimplify.cpp	\
	LoopUnroll.cpp	\
	LowerInvoke.cpp	\
	LowerSwitch.cpp	\
	Mem2Reg.cpp	\
	PromoteMemoryToRegister.cpp	\
	SSAUpdater.cpp	\
	SSI.cpp	\
	SimplifyCFG.cpp	\
	UnifyFunctionExitNodes.cpp	\
	ValueMapper.cpp

# For the host
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(transforms_utils_SRC_FILES)
LOCAL_MODULE:= libLLVMTransformUtils

include $(LLVM_HOST_BUILD_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

# For the device
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(transforms_utils_SRC_FILES)
LOCAL_MODULE:= libLLVMTransformUtils

include $(LLVM_DEVICE_BUILD_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_STATIC_LIBRARY)
