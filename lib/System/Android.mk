LOCAL_PATH:= $(call my-dir)

system_SRC_FILES :=	\
	Alarm.cpp	\
	Atomic.cpp	\
	Disassembler.cpp	\
	Errno.cpp	\
	Host.cpp	\
	IncludeFile.cpp	\
	Memory.cpp	\
	Mutex.cpp	\
	Path.cpp	\
	Process.cpp	\
	Program.cpp	\
	RWMutex.cpp	\
	Signals.cpp	\
	ThreadLocal.cpp	\
	Threading.cpp	\
	TimeValue.cpp	\
	Valgrind.cpp

# For the host
# =====================================================
include $(CLEAR_VARS)

REQUIRES_RTTI := 1

LOCAL_SRC_FILES := $(system_SRC_FILES)
LOCAL_CFLAGS +=	-march=i686

LOCAL_MODULE:= libLLVMSystem

include $(LLVM_HOST_BUILD_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

# For the device
# =====================================================
include $(CLEAR_VARS)

REQUIRES_RTTI := 1

LOCAL_SRC_FILES := $(system_SRC_FILES)

LOCAL_MODULE:= libLLVMSystem

include $(LLVM_DEVICE_BUILD_MK)
include $(BUILD_STATIC_LIBRARY)
