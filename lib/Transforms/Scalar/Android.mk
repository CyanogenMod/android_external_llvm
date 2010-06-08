# Only use this on the device or emulator.
ifeq ($(TARGET_ARCH),arm)

LOCAL_PATH:= $(call my-dir)

transforms_scalar_SRC_FILES :=	\
	ABCD.cpp	\
	ADCE.cpp	\
	BasicBlockPlacement.cpp	\
	CodeGenPrepare.cpp	\
	ConstantProp.cpp	\
	DCE.cpp	\
	DeadStoreElimination.cpp	\
	GEPSplitter.cpp	\
	GVN.cpp	\
	IndVarSimplify.cpp	\
	JumpThreading.cpp	\
	LICM.cpp	\
	LoopDeletion.cpp	\
	LoopIndexSplit.cpp	\
	LoopRotation.cpp	\
	LoopStrengthReduce.cpp	\
	LoopUnrollPass.cpp	\
	LoopUnswitch.cpp	\
	MemCpyOptimizer.cpp	\
	Reassociate.cpp	\
	Reg2Mem.cpp	\
	SCCP.cpp	\
	Scalar.cpp	\
	ScalarReplAggregates.cpp	\
	SimplifyCFGPass.cpp	\
	SimplifyHalfPowrLibCalls.cpp	\
	SimplifyLibCalls.cpp	\
	TailDuplication.cpp	\
	TailRecursionElimination.cpp

# For the host
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(transforms_scalar_SRC_FILES)
LOCAL_MODULE:= libLLVMScalarOpts

include $(LLVM_HOST_BUILD_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

# For the device
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(transforms_scalar_SRC_FILES)
LOCAL_MODULE:= libLLVMScalarOpts

include $(LLVM_DEVICE_BUILD_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_STATIC_LIBRARY)

endif
