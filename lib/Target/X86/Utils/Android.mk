LOCAL_PATH := $(call my-dir)

# For the device only
# =====================================================
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

TBLGEN_TABLES :=

TBLGEN_TD_DIR := $(LOCAL_PATH)/..

LOCAL_SRC_FILES := X86ShuffleDecode.cpp

LOCAL_C_INCLUDES += $(LOCAL_PATH)/..

LOCAL_MODULE:= libLLVMX86Utils

LOCAL_MODULE_TAGS := optional

include $(LLVM_HOST_BUILD_MK)
include $(LLVM_TBLGEN_RULES_MK)
include $(BUILD_HOST_STATIC_LIBRARY)
