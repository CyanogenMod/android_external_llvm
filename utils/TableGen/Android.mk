LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES :=	\
	AsmMatcherEmitter.cpp	\
	AsmWriterEmitter.cpp	\
	AsmWriterInst.cpp	\
	ARMDecoderEmitter.cpp	\
	CallingConvEmitter.cpp	\
	ClangDiagnosticsEmitter.cpp	\
	CodeEmitterGen.cpp	\
	CodeGenDAGPatterns.cpp	\
	CodeGenInstruction.cpp	\
	CodeGenTarget.cpp	\
	DAGISelEmitter.cpp	\
	DAGISelMatcher.cpp	\
	DAGISelMatcherEmitter.cpp	\
	DAGISelMatcherGen.cpp	\
	DAGISelMatcherOpt.cpp	\
	DisassemblerEmitter.cpp	\
	EDEmitter.cpp	\
	FastISelEmitter.cpp	\
	InstrEnumEmitter.cpp	\
	InstrInfoEmitter.cpp	\
	IntrinsicEmitter.cpp	\
	LLVMCConfigurationEmitter.cpp	\
	OptParserEmitter.cpp	\
	Record.cpp	\
	RegisterInfoEmitter.cpp	\
	SubtargetEmitter.cpp	\
	TGLexer.cpp	\
	TGParser.cpp	\
	TGValueTypes.cpp	\
	TableGen.cpp	\
	TableGenBackend.cpp	\
	X86DisassemblerTables.cpp	\
	X86RecognizableInstr.cpp

REQUIRES_EH := 1
REQUIRES_RTTI := 1

LOCAL_STATIC_LIBRARIES := libLLVMSupport libLLVMSystem
LOCAL_MODULE := tblgen
LOCAL_LDLIBS += -lpthread -lm -ldl

include $(LLVM_HOST_BUILD_MK)
include $(BUILD_HOST_EXECUTABLE)
