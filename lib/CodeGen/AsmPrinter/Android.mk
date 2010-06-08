# Only use this on the device or emulator.
ifeq ($(TARGET_ARCH),arm)

LOCAL_PATH := $(call my-dir)

codegen_asmprinter_SRC_FILES :=	\
	AsmPrinter.cpp

# For the host
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES :=	\
	AsmPrinter.cpp	\
	AsmPrinterDwarf.cpp	\
	AsmPrinterInlineAsm.cpp	\
	DIE.cpp	\
	DwarfDebug.cpp	\
	DwarfException.cpp	\
	OcamlGCPrinter.cpp

LOCAL_MODULE:= libLLVMAsmPrinter

include $(LLVM_HOST_BUILD_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

# For the device
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES :=	\
	AsmPrinter.cpp	\
	AsmPrinterInlineAsm.cpp

LOCAL_MODULE:= libLLVMAsmPrinter

include $(LLVM_DEVICE_BUILD_MK)
include $(BUILD_STATIC_LIBRARY)

endif
