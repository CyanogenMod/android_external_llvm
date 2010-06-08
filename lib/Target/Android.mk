# Only use this on the device or emulator.
ifneq ($(TARGET_ARCH),arm)

LOCAL_PATH:= $(call my-dir)

target_SRC_FILES :=	\
	Mangler.cpp	\
	SubtargetFeature.cpp	\
	Target.cpp	\
	TargetAsmLexer.cpp	\
	TargetData.cpp	\
	TargetELFWriterInfo.cpp	\
	TargetFrameInfo.cpp	\
	TargetInstrInfo.cpp	\
	TargetIntrinsicInfo.cpp	\
	TargetLoweringObjectFile.cpp	\
	TargetMachine.cpp	\
	TargetRegisterInfo.cpp	\
	TargetSubtarget.cpp

# For the host
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(target_SRC_FILES)

LOCAL_MODULE:= libLLVMTarget

include $(LLVM_HOST_BUILD_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

# For the device
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(target_SRC_FILES)

LOCAL_MODULE:= libLLVMTarget

include $(LLVM_DEVICE_BUILD_MK)
include $(BUILD_STATIC_LIBRARY)

endif
