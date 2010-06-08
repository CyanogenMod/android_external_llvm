# Only use this on the device or emulator.
ifeq ($(TARGET_ARCH),arm)

LOCAL_PATH := $(call my-dir)

# For the device only
# =====================================================
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

TBLGEN_TABLES :=	\
	ARMGenDecoderTables.inc	\
	ARMGenEDInfo.inc	\
	ARMGenInstrNames.inc	\
	ARMGenInstrInfo.inc	\
	ARMGenRegisterNames.inc	\
	ARMGenRegisterInfo.h.inc

TBLGEN_TD_DIR := $(LOCAL_PATH)/..

LOCAL_SRC_FILES :=	\
	ARMDisassembler.cpp	\
	ARMDisassemblerCore.cpp

LOCAL_C_INCLUDES +=	\
	$(LOCAL_PATH)/..

LOCAL_MODULE:= libLLVMARMDisassembler

include $(LLVM_DEVICE_BUILD_MK)
include $(LLVM_TBLGEN_RULES_MK)
include $(BUILD_STATIC_LIBRARY)

endif
