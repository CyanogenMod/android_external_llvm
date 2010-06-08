# Only use this on the device or emulator.
ifneq ($(TARGET_ARCH),arm)

ifeq ($(LLVM_ROOT_PATH),)
$(error Must set variable LLVM_ROOT_PATH before including this! $(LOCAL_PATH))
endif

TBLGEN := $(HOST_OUT_EXECUTABLES)/tblgen$(HOST_EXECUTABLE_SUFFIX)

CLEAR_TBLGEN_VARS := $(LLVM_ROOT_PATH)/clear_tblgen_vars.mk
LLVM_HOST_BUILD_MK := $(LLVM_ROOT_PATH)/llvm-host-build.mk
LLVM_DEVICE_BUILD_MK := $(LLVM_ROOT_PATH)/llvm-device-build.mk
LLVM_GEN_INTRINSICS_MK := $(LLVM_ROOT_PATH)/llvm-gen-intrinsics.mk
LLVM_TBLGEN_RULES_MK := $(LLVM_ROOT_PATH)/llvm-tblgen-rules.mk

CLANG_ROOT_PATH := $(LLVM_ROOT_PATH)/tools/clang

include $(CLANG_ROOT_PATH)/clang.mk

endif
