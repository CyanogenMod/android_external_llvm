LOCAL_PATH:= $(call my-dir)

codegen_SRC_FILES :=   \
	AggressiveAntiDepBreaker.cpp    \
	Analysis.cpp    \
	BranchFolding.cpp   \
	CalcSpillWeights.cpp    \
	CallingConvLower.cpp	\
	CodePlacementOpt.cpp    \
	CriticalAntiDepBreaker.cpp  \
	DeadMachineInstructionElim.cpp  \
	DwarfEHPrepare.cpp  \
	ELFCodeEmitter.cpp  \
	ELFWriter.cpp   \
	GCMetadata.cpp  \
	GCMetadataPrinter.cpp   \
	GCStrategy.cpp  \
	IfConversion.cpp    \
	InlineSpiller.cpp	\
	IntrinsicLowering.cpp   \
	LLVMTargetMachine.cpp   \
	LatencyPriorityQueue.cpp    \
	LiveInterval.cpp    \
	LiveIntervalAnalysis.cpp    \
	LiveRangeEdit.cpp \
	LiveStackAnalysis.cpp   \
	LiveVariables.cpp   \
	LocalStackSlotAllocation.cpp	\
	LowerSubregs.cpp    \
	MachineBasicBlock.cpp   \
	MachineCSE.cpp  \
	MachineDominators.cpp   \
	MachineFunction.cpp \
	MachineFunctionAnalysis.cpp \
	MachineFunctionPass.cpp \
	MachineFunctionPrinterPass.cpp  \
	MachineInstr.cpp    \
	MachineLICM.cpp \
	MachineLoopInfo.cpp \
	MachineModuleInfo.cpp   \
	MachineModuleInfoImpls.cpp  \
	MachinePassRegistry.cpp \
	MachineRegisterInfo.cpp \
	MachineSSAUpdater.cpp   \
	MachineSink.cpp \
	MachineVerifier.cpp \
	ObjectCodeEmitter.cpp   \
	OcamlGC.cpp \
	OptimizePHIs.cpp    \
	PHIElimination.cpp  \
	Passes.cpp  \
	PeepholeOptimizer.cpp	\
	PostRAHazardRecognizer.cpp	\
	PostRASchedulerList.cpp \
	PreAllocSplitting.cpp   \
	ProcessImplicitDefs.cpp \
	PrologEpilogInserter.cpp    \
	PseudoSourceValue.cpp   \
	RegAllocFast.cpp	\
	RegAllocLinearScan.cpp  \
	RegAllocPBQP.cpp    \
	RegisterCoalescer.cpp   \
	RegisterScavenging.cpp  \
	RenderMachineFunction.cpp	\
	ScheduleDAG.cpp \
	ScheduleDAGEmit.cpp \
	ScheduleDAGInstrs.cpp   \
	ScheduleDAGPrinter.cpp  \
	ShadowStackGC.cpp   \
	ShrinkWrapping.cpp  \
	SimpleRegisterCoalescing.cpp    \
	SjLjEHPrepare.cpp   \
	SlotIndexes.cpp \
	Spiller.cpp \
	SplitKit.cpp	\
	Splitter.cpp	\
	StackProtector.cpp  \
	StackSlotColoring.cpp   \
	StrongPHIElimination.cpp    \
	TailDuplication.cpp \
	TargetInstrInfoImpl.cpp \
	TargetLoweringObjectFileImpl.cpp    \
	TwoAddressInstructionPass.cpp   \
	UnreachableBlockElim.cpp    \
	VirtRegMap.cpp  \
	VirtRegRewriter.cpp

# For the host
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(codegen_SRC_FILES)
LOCAL_MODULE:= libLLVMCodeGen

LOCAL_MODULE_TAGS := optional

include $(LLVM_HOST_BUILD_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

# For the device
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(codegen_SRC_FILES)
LOCAL_MODULE:= libLLVMCodeGen

LOCAL_MODULE_TAGS := optional

include $(LLVM_DEVICE_BUILD_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_STATIC_LIBRARY)
