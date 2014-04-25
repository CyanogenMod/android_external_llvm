LOCAL_PATH := $(call my-dir)

arm64_target_info_TBLGEN_TABLES := \
  AArch64GenSubtargetInfo.inc \
  AArch64GenRegisterInfo.inc \
  AArch64GenInstrInfo.inc

arm64_target_info_SRC_FILES := \
  AArch64TargetInfo.cpp

# For the host
# =====================================================
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

TBLGEN_TABLES := $(arm64_target_info_TBLGEN_TABLES)

TBLGEN_TD_DIR := $(LOCAL_PATH)/..

LOCAL_SRC_FILES := $(arm64_target_info_SRC_FILES)

LOCAL_C_INCLUDES +=	\
	$(LOCAL_PATH)/..

LOCAL_MODULE:= libLLVMARM64Info

LOCAL_MODULE_TAGS := optional

include $(LLVM_HOST_BUILD_MK)
include $(LLVM_TBLGEN_RULES_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

# For the device
# =====================================================
ifneq (true,$(DISABLE_LLVM_DEVICE_BUILDS))
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

TBLGEN_TABLES := $(arm64_target_info_TBLGEN_TABLES)

TBLGEN_TD_DIR := $(LOCAL_PATH)/..

LOCAL_SRC_FILES := $(arm64_target_info_SRC_FILES)

LOCAL_C_INCLUDES +=	\
	$(LOCAL_PATH)/..

LOCAL_MODULE:= libLLVMARM64Info

LOCAL_MODULE_TAGS := optional

include $(LLVM_DEVICE_BUILD_MK)
include $(LLVM_TBLGEN_RULES_MK)
include $(BUILD_STATIC_LIBRARY)
endif
