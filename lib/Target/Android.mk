LOCAL_PATH:= $(call my-dir)

target_SRC_FILES :=	\
	Mangler.cpp	\
	SubtargetFeature.cpp	\
	Target.cpp	\
	TargetAsmInfo.cpp	\
	TargetAsmLexer.cpp	\
	TargetData.cpp	\
	TargetELFWriterInfo.cpp	\
	TargetFrameLowering.cpp \
	TargetInstrInfo.cpp	\
	TargetIntrinsicInfo.cpp	\
	TargetLoweringObjectFile.cpp	\
	TargetLibraryInfo.cpp	\
	TargetMachine.cpp	\
	TargetRegisterInfo.cpp	\
	TargetSubtarget.cpp

# For the host
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(target_SRC_FILES)

LOCAL_MODULE:= libLLVMTarget

LOCAL_MODULE_TAGS := optional

include $(LLVM_HOST_BUILD_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

# For the device
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(target_SRC_FILES)

LOCAL_MODULE:= libLLVMTarget

LOCAL_MODULE_TAGS := optional

include $(LLVM_DEVICE_BUILD_MK)
include $(BUILD_STATIC_LIBRARY)
