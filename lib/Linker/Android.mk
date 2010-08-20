LOCAL_PATH:= $(call my-dir)

# For the host
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES :=      \
     LinkArchives.cpp   \
     LinkItems.cpp      \
     LinkModules.cpp    \
     Linker.cpp

LOCAL_MODULE:= libLLVMLinker

include $(LLVM_HOST_BUILD_MK)
include $(BUILD_HOST_STATIC_LIBRARY)
