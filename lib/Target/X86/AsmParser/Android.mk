# Only use this on the device or emulator.
ifeq ($(TARGET_ARCH),arm)

LOCAL_PATH := $(call my-dir)

# For the device only
# =====================================================
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

TBLGEN_TABLES :=	\
	X86GenAsmMatcher.inc	\
	X86GenInstrNames.inc	\
	X86GenRegisterNames.inc


TBLGEN_TD_DIR := $(LOCAL_PATH)/..

LOCAL_SRC_FILES :=	\
	X86AsmLexer.cpp	\
	X86AsmParser.cpp

LOCAL_C_INCLUDES +=	\
	$(LOCAL_PATH)/..

LOCAL_MODULE:= libLLVMX86AsmParser

include $(LLVM_HOST_BUILD_MK)
include $(LLVM_TBLGEN_RULES_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

endif
