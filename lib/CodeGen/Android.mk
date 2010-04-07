LOCAL_PATH:= $(call my-dir)

codegen_SRC_FILES :=	\
	AggressiveAntiDepBreaker.cpp	\
	BranchFolding.cpp	\
	CalcSpillWeights.cpp	\
	CodePlacementOpt.cpp	\
	CriticalAntiDepBreaker.cpp	\
	DeadMachineInstructionElim.cpp	\
	DwarfEHPrepare.cpp	\
	ELFCodeEmitter.cpp	\
	ELFWriter.cpp	\
	ExactHazardRecognizer.cpp	\
	GCMetadata.cpp	\
	GCMetadataPrinter.cpp	\
	GCStrategy.cpp	\
	IfConversion.cpp	\
	IntrinsicLowering.cpp	\
	LLVMTargetMachine.cpp	\
	LatencyPriorityQueue.cpp	\
	LiveInterval.cpp	\
	LiveIntervalAnalysis.cpp	\
	LiveStackAnalysis.cpp	\
	LiveVariables.cpp	\
	LowerSubregs.cpp	\
	MachineBasicBlock.cpp	\
	MachineCSE.cpp	\
	MachineDominators.cpp	\
	MachineFunction.cpp	\
	MachineFunctionAnalysis.cpp	\
	MachineFunctionPass.cpp	\
	MachineInstr.cpp	\
	MachineLICM.cpp	\
	MachineLoopInfo.cpp	\
	MachineModuleInfo.cpp	\
	MachineModuleInfoImpls.cpp	\
	MachinePassRegistry.cpp	\
	MachineRegisterInfo.cpp	\
	MachineSSAUpdater.cpp	\
	MachineSink.cpp	\
	MachineVerifier.cpp	\
	ObjectCodeEmitter.cpp	\
	OcamlGC.cpp	\
	OptimizeExts.cpp	\
	OptimizePHIs.cpp	\
	PHIElimination.cpp	\
	Passes.cpp	\
	PostRASchedulerList.cpp	\
	PreAllocSplitting.cpp	\
	ProcessImplicitDefs.cpp	\
	PrologEpilogInserter.cpp	\
	PseudoSourceValue.cpp	\
	RegAllocLinearScan.cpp	\
	RegAllocLocal.cpp	\
	RegAllocPBQP.cpp	\
	RegisterCoalescer.cpp	\
	RegisterScavenging.cpp	\
	ScheduleDAG.cpp	\
	ScheduleDAGEmit.cpp	\
	ScheduleDAGInstrs.cpp	\
	ScheduleDAGPrinter.cpp	\
	ShadowStackGC.cpp	\
	ShrinkWrapping.cpp	\
	SimpleRegisterCoalescing.cpp	\
	SjLjEHPrepare.cpp	\
	SlotIndexes.cpp	\
	Spiller.cpp	\
	StackProtector.cpp	\
	StackSlotColoring.cpp	\
	StrongPHIElimination.cpp	\
	TailDuplication.cpp	\
	TargetInstrInfoImpl.cpp	\
	TargetLoweringObjectFileImpl.cpp	\
	TwoAddressInstructionPass.cpp	\
	UnreachableBlockElim.cpp	\
	VirtRegMap.cpp	\
	VirtRegRewriter.cpp

# For the host
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(codegen_SRC_FILES)
LOCAL_MODULE:= libLLVMCodeGen

include $(LLVM_HOST_BUILD_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

# For the device
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(codegen_SRC_FILES)
LOCAL_MODULE:= libLLVMCodeGen

include $(LLVM_DEVICE_BUILD_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_STATIC_LIBRARY)
