LOCAL_PATH := $(call my-dir)

LLVM_ROOT_PATH := $(LOCAL_PATH)/../..


#===---------------------------------------------------------------===
# llvm-config command line tool
#===---------------------------------------------------------------===

llvm_config_SRC_FILES := \
  llvm-config.cpp \

llvm_config_STATIC_LIBRARIES := \
  libLLVMCore               \
  libLLVMSupport            \

llvm_config_LOCAL_INCLUDES := \
  BuildVariables.inc \
  LibraryDependencies.inc

llvm_config_DEPENDENCIES := \
  BuildVariables.inc

include $(CLEAR_VARS)

BUILD_VARIABLES_IN  := $(LOCAL_PATH)/BuildVariables.inc.in
BUILD_VARIABLES_OUT := $(LOCAL_PATH)/BuildVariables.inc

BuildVariables.inc:
	sed -e 's/@ANDROID_BUILD_TOP@/$(subst /,\/,$(ANDROID_BUILD_TOP))/' < $(BUILD_VARIABLES_IN) > $(BUILD_VARIABLES_OUT)

LOCAL_MODULE := llvm-config
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_IS_HOST_MODULE := true

LOCAL_SRC_FILES := $(llvm_config_SRC_FILES)
LOCAL_STATIC_LIBRARIES := $(llvm_config_STATIC_LIBRARIES)
LOCAL_INCLUDES := $(llvm_config_LOCAL_INCLUDES)
LOCAL_ADDITIONAL_DEPENDENCIES := $(llvm_config_DEPENDENCIES)

LOCAL_LDLIBS += -lpthread -lm -ldl

include $(LLVM_ROOT_PATH)/llvm.mk
include $(LLVM_HOST_BUILD_MK)
include $(BUILD_HOST_EXECUTABLE)
