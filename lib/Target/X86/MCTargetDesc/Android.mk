#LOCAL_PATH := $(call my-dir)
#
#x86_codegen_SRC_FILES :=	\
#	X86TargetDesc.cpp
#
## For the host
## =====================================================
#include $(CLEAR_VARS)
#include $(CLEAR_TBLGEN_VARS)
#
#TBLGEN_TABLES := $(x86_codegen_TBLGEN_TABLES)
#
#LOCAL_SRC_FILES := $(x86_codegen_SRC_FILES)
#
#LOCAL_MODULE:= libLLVMX86Desc
#
#LOCAL_MODULE_TAGS := optional
#
#include $(LLVM_HOST_BUILD_MK)
#include $(BUILD_HOST_STATIC_LIBRARY)
#
## For the device only
## =====================================================
#ifeq ($(TARGET_ARCH),x86)
#include $(CLEAR_VARS)
#include $(CLEAR_TBLGEN_VARS)
#
#LOCAL_SRC_FILES := $(x86_codegen_SRC_FILES)
#
#LOCAL_MODULE:= libLLVMX86Desc
#
#LOCAL_MODULE_TAGS := optional
#
#include $(LLVM_DEVICE_BUILD_MK)
#include $(BUILD_STATIC_LIBRARY)
#endif
