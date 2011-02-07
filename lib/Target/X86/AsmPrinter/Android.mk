LOCAL_PATH := $(call my-dir)

x86_asm_printer_TBLGEN_TABLES :=	\
	X86GenAsmWriter.inc	\
	X86GenAsmWriter1.inc	\
	X86GenInstrNames.inc	\
	X86GenRegisterNames.inc	\
	X86GenRegisterInfo.h.inc

x86_asm_printer_SRC_FILES :=	\
	X86ATTInstPrinter.cpp	\
	X86AsmPrinter.cpp	\
	X86IntelInstPrinter.cpp

# For the host
# =====================================================
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

TBLGEN_TABLES := $(x86_asm_printer_TBLGEN_TABLES)

TBLGEN_TD_DIR := $(LOCAL_PATH)/..

LOCAL_SRC_FILES := $(x86_asm_printer_SRC_FILES)

LOCAL_C_INCLUDES +=	\
	$(LOCAL_PATH)/..

LOCAL_MODULE:= libLLVMX86AsmPrinter

LOCAL_MODULE_TAGS := optional

include $(LLVM_HOST_BUILD_MK)
include $(LLVM_TBLGEN_RULES_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

# For the device
# =====================================================
ifeq ($(TARGET_ARCH),x86)
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

TBLGEN_TABLES := $(x86_asm_printer_TBLGEN_TABLES)

TBLGEN_TD_DIR := $(LOCAL_PATH)/..

LOCAL_SRC_FILES := $(x86_asm_printer_SRC_FILES)

LOCAL_C_INCLUDES +=     \
        $(LOCAL_PATH)/..

LOCAL_MODULE:= libLLVMX86AsmPrinter

LOCAL_MODULE_TAGS := optional

include $(LLVM_DEVICE_BUILD_MK)
include $(LLVM_TBLGEN_RULES_MK)
include $(BUILD_STATIC_LIBRARY)
endif
