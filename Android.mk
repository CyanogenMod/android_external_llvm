LOCAL_PATH := $(call my-dir)
LLVM_ROOT_PATH := $(LOCAL_PATH)
LLVM_ENABLE_ASSERTION := true
include $(CLEAR_VARS)

# Only use this on the device or emulator.
ifneq ($(TARGET_SIMULATOR),true)

subdirs := $(addprefix $(LOCAL_PATH)/,$(addsuffix /Android.mk, \
		lib/System \
		lib/Support	\
		utils/TableGen	\
		lib/VMCore	\
		lib/Bitcode/Reader	\
		lib/Analysis	\
		lib/Analysis/IPA	\
		lib/Transforms/IPO	\
		lib/Transforms/Utils	\
		lib/Transforms/Scalar	\
		lib/Transforms/InstCombine	\
		lib/CodeGen	\
		lib/CodeGen/SelectionDAG	\
		lib/CodeGen/AsmPrinter	\
		lib/Target	\
		lib/Target/ARM	\
		lib/Target/ARM/AsmPrinter	\
		lib/Target/ARM/Disassembler	\
		lib/Target/ARM/TargetInfo	\
		lib/Target/X86	\
		lib/Target/X86/AsmPrinter	\
		lib/Target/X86/Disassembler	\
		lib/Target/X86/TargetInfo	\
		lib/ExecutionEngine/JIT	\
		lib/MC	\
		lib/MC/MCParser	\
	))

TBLGEN := $(HOST_OUT_EXECUTABLES)/tblgen$(HOST_EXECUTABLE_SUFFIX)

CLEAR_TBLGEN_VARS := $(LOCAL_PATH)/clear_tblgen_vars.mk
LLVM_HOST_BUILD_MK := $(LOCAL_PATH)/llvm-host-build.mk
LLVM_DEVICE_BUILD_MK := $(LOCAL_PATH)/llvm-device-build.mk
LLVM_GEN_INTRINSICS_MK := $(LOCAL_PATH)/llvm-gen-intrinsics.mk
LLVM_TBLGEN_RULES_MK := $(LOCAL_PATH)/tblgen-rules.mk

include $(subdirs)

endif
