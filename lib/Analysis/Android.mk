LOCAL_PATH:= $(call my-dir)

analysis_SRC_FILES :=	\
	AliasAnalysis.cpp	\
	AliasAnalysisCounter.cpp	\
	AliasAnalysisEvaluator.cpp	\
	AliasDebugger.cpp	\
	AliasSetTracker.cpp	\
	Analysis.cpp	\
	BasicAliasAnalysis.cpp	\
	BlockFrequency.cpp \
	BranchProbabilityInfo.cpp \
	CFGPrinter.cpp	\
	CaptureTracking.cpp	\
	ConstantFolding.cpp	\
	DIBuilder.cpp		\
	DbgInfoPrinter.cpp	\
	DebugInfo.cpp	\
	DominanceFrontier.cpp	\
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
	Loads.cpp	\
	NoAliasAnalysis.cpp \
	MemDepPrinter.cpp \
	MemoryBuiltins.cpp  \
	MemoryDependenceAnalysis.cpp    \
	RegionPass.cpp  \
	LoopDependenceAnalysis.cpp  \
	LoopInfo.cpp    \
	LoopPass.cpp    \
	PathNumbering.cpp \
	PathProfileInfo.cpp \
	PathProfileVerifier.cpp \
	PHITransAddr.cpp    \
	PostDominators.cpp  \
	ProfileEstimatorPass.cpp    \
	ProfileInfo.cpp \
	ProfileInfoLoader.cpp   \
	ProfileInfoLoaderPass.cpp   \
	ProfileVerifierPass.cpp \
	ScalarEvolution.cpp \
	ScalarEvolutionAliasAnalysis.cpp    \
	ScalarEvolutionExpander.cpp \
	ScalarEvolutionNormalization.cpp    \
	SparsePropagation.cpp   \
	Trace.cpp   \
	TypeBasedAliasAnalysis.cpp \
	ValueTracking.cpp

# For the host
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES :=	\
	$(analysis_SRC_FILES) \
	Lint.cpp	\
	ModuleDebugInfoPrinter.cpp	\
	RegionInfo.cpp	\
	RegionPrinter.cpp

LOCAL_MODULE:= libLLVMAnalysis

LOCAL_MODULE_TAGS := optional

include $(LLVM_HOST_BUILD_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

# For the device
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(analysis_SRC_FILES)

LOCAL_MODULE:= libLLVMAnalysis

LOCAL_MODULE_TAGS := optional

include $(LLVM_DEVICE_BUILD_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_STATIC_LIBRARY)
