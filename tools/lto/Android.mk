#
# Copyright (C) 2015 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH:= $(call my-dir)

LLVM_ROOT_PATH := $(LOCAL_PATH)/../../
include $(LLVM_ROOT_PATH)/llvm.mk

# For the host only
# =====================================================
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

LOCAL_MODULE := libLTO

LOCAL_MODULE_CLASS := SHARED_LIBRARIES

llvm_lto_SRC_FILES := \
  lto.cpp \
  LTODisassembler.cpp

LOCAL_SRC_FILES := $(llvm_lto_SRC_FILES)

LOCAL_STATIC_LIBRARIES := \
  libLLVMARMAsmParser \
  libLLVMARMCodeGen \
  libLLVMARMAsmPrinter \
  libLLVMARMDisassembler \
  libLLVMARMDesc \
  libLLVMARMInfo \
  libLLVMMipsAsmParser \
  libLLVMMipsCodeGen \
  libLLVMMipsDisassembler \
  libLLVMMipsAsmPrinter \
  libLLVMMipsDesc \
  libLLVMMipsInfo \
  libLLVMX86Info \
  libLLVMX86AsmParser \
  libLLVMX86CodeGen \
  libLLVMX86Disassembler \
  libLLVMX86Desc \
  libLLVMX86AsmPrinter \
  libLLVMX86Utils \
  libLLVMAArch64Info \
  libLLVMAArch64AsmParser \
  libLLVMAArch64CodeGen \
  libLLVMAArch64Disassembler \
  libLLVMAArch64Desc \
  libLLVMAArch64AsmPrinter \
  libLLVMAArch64Utils \
  libLLVMCore \
  libLLVMLTO \
  libLLVMMC \
  libLLVMMCDisassembler \
  libLLVMSupport

ifndef USE_MINGW
LOCAL_LDLIBS += -lpthread -ldl
endif

include $(LLVM_HOST_BUILD_MK)
include $(BUILD_HOST_SHARED_LIBRARY)
