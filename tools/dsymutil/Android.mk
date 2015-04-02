LOCAL_PATH := $(call my-dir)

LLVM_ROOT_PATH := $(LOCAL_PATH)/../..
include $(LLVM_ROOT_PATH)/llvm.mk

llvm_dsymutil_SRC_FILES := \
  BinaryHolder.cpp \
  DebugMap.cpp \
  dsymutil.cpp \
  DwarfLinker.cpp \
  MachODebugMapParser.cpp

llvm_dsymutil_STATIC_LIBRARIES := \
  libLLVMDebugInfoDWARF \
  libLLVMObject \
  libLLVMMCParser \
  libLLVMMC \
  libLLVMBitReader \
  libLLVMCore \
  libLLVMSupport

include $(CLEAR_VARS)

LOCAL_MODULE := llvm-dsymutil
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(llvm_dsymutil_SRC_FILES)
LOCAL_LDLIBS += -lpthread -lm -ldl

LOCAL_STATIC_LIBRARIES := $(llvm_dsymutil_STATIC_LIBRARIES)

include $(LLVM_HOST_BUILD_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_HOST_EXECUTABLE)
