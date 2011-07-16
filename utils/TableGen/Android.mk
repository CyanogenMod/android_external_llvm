LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES :=	\
	ARMDecoderEmitter.cpp	\
	AsmMatcherEmitter.cpp   \
	AsmWriterEmitter.cpp    \
	AsmWriterInst.cpp   \
	CallingConvEmitter.cpp  \
	ClangASTNodesEmitter.cpp	\
	ClangAttrEmitter.cpp	\
	ClangDiagnosticsEmitter.cpp \
	ClangSACheckersEmitter.cpp  \
	CodeEmitterGen.cpp  \
	CodeGenDAGPatterns.cpp  \
	CodeGenInstruction.cpp  \
	CodeGenTarget.cpp   \
	CodeGenRegisters.cpp \
	DAGISelEmitter.cpp  \
	DAGISelMatcher.cpp  \
	DAGISelMatcherEmitter.cpp   \
	DAGISelMatcherGen.cpp   \
	DAGISelMatcherOpt.cpp   \
	DisassemblerEmitter.cpp \
	EDEmitter.cpp   \
	Error.cpp \
	FastISelEmitter.cpp \
	FixedLenDecoderEmitter.cpp \
	InstrEnumEmitter.cpp    \
	InstrInfoEmitter.cpp    \
	IntrinsicEmitter.cpp    \
	LLVMCConfigurationEmitter.cpp   \
	NeonEmitter.cpp	\
	OptParserEmitter.cpp    \
	PseudoLoweringEmitter.cpp \
	Record.cpp  \
	RegisterInfoEmitter.cpp \
	SetTheory.cpp \
	StringMatcher.cpp \
	SubtargetEmitter.cpp    \
	TGLexer.cpp \
	TGParser.cpp    \
	TGValueTypes.cpp    \
	TableGen.cpp    \
	TableGenBackend.cpp \
	X86DisassemblerTables.cpp   \
	X86RecognizableInstr.cpp

REQUIRES_EH := 1
REQUIRES_RTTI := 1

LOCAL_STATIC_LIBRARIES := libLLVMSupport
LOCAL_MODULE := tblgen
LOCAL_LDLIBS += -lm
ifeq ($(HOST_OS),windows)
  LOCAL_LDLIBS += -limagehlp -lpsapi
else
  LOCAL_LDLIBS += -lpthread -ldl
endif

LOCAL_MODULE_TAGS := optional

include $(LLVM_HOST_BUILD_MK)
include $(BUILD_HOST_EXECUTABLE)
