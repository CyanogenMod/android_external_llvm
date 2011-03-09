LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := llvm-as

LOCAL_SRC_FILES := llvm-as.cpp

REQUIRES_EH := 1
REQUIRES_RTTI := 1

LOCAL_STATIC_LIBRARIES := \
    libLLVMAsmParser \
    libLLVMBitWriter \
    libLLVMCore \
    libLLVMSupport

LOCAL_LDLIBS += -lpthread -lm -ldl

LOCAL_MODULE_TAGS := optional

include $(LLVM_HOST_BUILD_MK)
include $(BUILD_HOST_EXECUTABLE)
