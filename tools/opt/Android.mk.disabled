# Only use this on the device or emulator.
ifeq ($(TARGET_ARCH),arm)

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES :=	  \
	opt.cpp           \
        GraphPrinters.cpp \
        PrintSCC.cpp

LOCAL_STATIC_LIBRARIES := libLLVMipo libLLVMScalarOpts libLLVMInstCombine libLLVMInstrumentation libLLVMTransformUtils libLLVMipa libLLVMAnalysis libLLVMTarget libLLVMMC libLLVMAsmParser libLLVMBitWriter libLLVMBitReader libLLVMCore libLLVMSupport libLLVMSystem
LOCAL_MODULE := opt
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_LDLIBS += -lpthread -lm -ldl

include $(LLVM_HOST_BUILD_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_HOST_EXECUTABLE)

endif
