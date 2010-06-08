# Only use this on the device or emulator.
ifneq ($(TARGET_ARCH),arm)

LOCAL_PATH:= $(call my-dir)

codegen_selectiondag_SRC_FILES :=	\
	CallingConvLower.cpp	\
	DAGCombiner.cpp	\
	FastISel.cpp	\
	FunctionLoweringInfo.cpp	\
	InstrEmitter.cpp	\
	LegalizeDAG.cpp	\
	LegalizeFloatTypes.cpp	\
	LegalizeIntegerTypes.cpp	\
	LegalizeTypes.cpp	\
	LegalizeTypesGeneric.cpp	\
	LegalizeVectorOps.cpp	\
	LegalizeVectorTypes.cpp	\
	ScheduleDAGFast.cpp	\
	ScheduleDAGList.cpp	\
	ScheduleDAGRRList.cpp	\
	ScheduleDAGSDNodes.cpp	\
	SelectionDAG.cpp	\
	SelectionDAGBuilder.cpp	\
	SelectionDAGISel.cpp	\
	SelectionDAGPrinter.cpp	\
	TargetLowering.cpp

# For the host
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(codegen_selectiondag_SRC_FILES)

LOCAL_MODULE:= libLLVMSelectionDAG

include $(LLVM_HOST_BUILD_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

# For the device
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(codegen_selectiondag_SRC_FILES)

LOCAL_MODULE:= libLLVMSelectionDAG

include $(LLVM_DEVICE_BUILD_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_STATIC_LIBRARY)

endif
