# Only use this on the device or emulator.
ifneq ($(TARGET_ARCH),arm)

LOCAL_PATH:= $(call my-dir)

# For the host only
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES :=	\
	BitWriter.cpp	\
	BitcodeWriter.cpp	\
	BitcodeWriterPass.cpp	\
	ValueEnumerator.cpp

LOCAL_MODULE:= libLLVMBitWriter

include $(LLVM_HOST_BUILD_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

endif
