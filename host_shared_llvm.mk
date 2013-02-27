LOCAL_PATH:= $(call my-dir)

LOCAL_IS_HOST_MODULE := true

LOCAL_MODULE:= libLLVM

LOCAL_MODULE_TAGS := optional

# Host build pulls in all ARM, Mips, X86 components.
LOCAL_WHOLE_STATIC_LIBRARIES := \
	libLLVMLinker \
	libLLVMipo \
	libLLVMBitWriter \
	libLLVMBitReader \
	libLLVMARMCodeGen \
	libLLVMARMAsmParser \
	libLLVMARMAsmPrinter \
	libLLVMARMInfo \
	libLLVMARMDesc \
	libLLVMX86CodeGen \
	libLLVMX86Info \
	libLLVMX86Desc \
	libLLVMX86AsmParser \
	libLLVMX86AsmPrinter \
	libLLVMX86Utils \
	libLLVMMipsCodeGen \
	libLLVMMipsInfo \
	libLLVMMipsDesc \
	libLLVMMipsAsmParser \
	libLLVMMipsAsmPrinter \
	libLLVMAsmPrinter \
	libLLVMSelectionDAG \
	libLLVMCodeGen \
	libLLVMScalarOpts \
	libLLVMInstCombine \
	libLLVMInstrumentation \
	libLLVMTransformUtils \
	libLLVMipa \
	libLLVMAnalysis \
	libLLVMTarget \
	libLLVMMC \
	libLLVMMCParser \
	libLLVMCore \
	libLLVMArchive \
	libLLVMAsmParser \
	libLLVMSupport \
	libLLVMVectorize

LOCAL_LDLIBS := -ldl -lpthread

include $(LLVM_HOST_BUILD_MK)
#include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_HOST_SHARED_LIBRARY)
