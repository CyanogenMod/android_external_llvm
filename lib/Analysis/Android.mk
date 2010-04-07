LOCAL_PATH:= $(call my-dir)

analysis_SRC_FILES :=	\
	AliasAnalysis.cpp	\
	AliasAnalysisCounter.cpp	\
	AliasAnalysisEvaluator.cpp	\
	AliasDebugger.cpp	\
	AliasSetTracker.cpp	\
	Analysis.cpp	\
	BasicAliasAnalysis.cpp	\
	CFGPrinter.cpp	\
	CaptureTracking.cpp	\
	ConstantFolding.cpp	\
	DbgInfoPrinter.cpp	\
	DebugInfo.cpp	\
	DomPrinter.cpp	\
	IVUsers.cpp	\
	InlineCost.cpp	\
	InstCount.cpp	\
	InstructionSimplify.cpp	\
	Interval.cpp	\
	IntervalPartition.cpp	\
	LazyValueInfo.cpp	\
	LibCallAliasAnalysis.cpp	\
	LibCallSemantics.cpp	\
	LiveValues.cpp	\
	MemoryBuiltins.cpp	\
	MemoryDependenceAnalysis.cpp	\
	LoopDependenceAnalysis.cpp	\
	LoopInfo.cpp	\
	LoopPass.cpp	\
	PHITransAddr.cpp	\
	PointerTracking.cpp	\
	PostDominators.cpp	\
	ProfileEstimatorPass.cpp	\
	ProfileInfo.cpp	\
	ProfileInfoLoader.cpp	\
	ProfileInfoLoaderPass.cpp	\
	ProfileVerifierPass.cpp	\
	ScalarEvolution.cpp	\
	ScalarEvolutionAliasAnalysis.cpp	\
	ScalarEvolutionExpander.cpp	\
	SparsePropagation.cpp	\
	Trace.cpp	\
	ValueTracking.cpp

# For the host
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(analysis_SRC_FILES)

LOCAL_MODULE:= libLLVMAnalysis

include $(LLVM_HOST_BUILD_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

# For the device
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(analysis_SRC_FILES)

LOCAL_MODULE:= libLLVMAnalysis

include $(LLVM_DEVICE_BUILD_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_STATIC_LIBRARY)
