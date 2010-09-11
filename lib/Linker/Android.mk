LOCAL_PATH:= $(call my-dir)

# For the host
# =====================================================
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

LOCAL_SRC_FILES :=      \
     LinkArchives.cpp   \
     Linker.cpp         \
     LinkItems.cpp      \
     LinkModules.cpp    

LOCAL_MODULE:= libLLVMLinker

include $(LLVM_HOST_BUILD_MK)
include $(BUILD_HOST_STATIC_LIBRARY)
