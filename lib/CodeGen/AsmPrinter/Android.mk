LOCAL_PATH := $(call my-dir)

codegen_asmprinter_SRC_FILES :=	\
	AsmPrinter.cpp	\
	DIE.cpp	\
	DwarfDebug.cpp	\
	DwarfException.cpp	\
	DwarfLabel.cpp	\
	DwarfPrinter.cpp	\
	DwarfWriter.cpp	\
	OcamlGCPrinter.cpp

# For the host
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(codegen_asmprinter_SRC_FILES)
LOCAL_MODULE:= libLLVMAsmPrinter

include $(LLVM_HOST_BUILD_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

# For the device
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(codegen_asmprinter_SRC_FILES)
LOCAL_MODULE:= libLLVMAsmPrinter

include $(LLVM_DEVICE_BUILD_MK)
include $(BUILD_STATIC_LIBRARY)
