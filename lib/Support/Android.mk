# Only use this on the device or emulator.
ifneq ($(TARGET_ARCH),arm)

LOCAL_PATH:= $(call my-dir)

support_SRC_FILES :=	\
	APFloat.cpp	\
	APInt.cpp	\
	APSInt.cpp	\
	Allocator.cpp	\
	CommandLine.cpp	\
	ConstantRange.cpp	\
	Debug.cpp	\
	DeltaAlgorithm.cpp	\
	Dwarf.cpp	\
	ErrorHandling.cpp	\
	FileUtilities.cpp	\
	FoldingSet.cpp	\
	FormattedStream.cpp	\
	GraphWriter.cpp	\
	IsInf.cpp	\
	IsNAN.cpp	\
	ManagedStatic.cpp	\
	MemoryBuffer.cpp	\
	MemoryObject.cpp	\
	PluginLoader.cpp	\
	PrettyStackTrace.cpp	\
	Regex.cpp	\
	SlowOperationInformer.cpp	\
	SmallPtrSet.cpp	\
	SmallVector.cpp	\
	SourceMgr.cpp	\
	Statistic.cpp	\
	StringExtras.cpp	\
	StringMap.cpp	\
	StringPool.cpp	\
	StringRef.cpp	\
	SystemUtils.cpp	\
	TargetRegistry.cpp	\
	Timer.cpp	\
	Triple.cpp	\
	Twine.cpp	\
	circular_raw_ostream.cpp	\
	raw_os_ostream.cpp	\
	raw_ostream.cpp	\
	regcomp.c	\
	regerror.c	\
	regexec.c	\
	regfree.c	\
	regstrlcpy.c

# For the host
# =====================================================
include $(CLEAR_VARS)

# FIXME: This only requires RTTI because tblgen uses it.  Fix that.
REQUIRES_RTTI := 1

LOCAL_SRC_FILES := $(support_SRC_FILES)

LOCAL_MODULE:= libLLVMSupport

include $(LLVM_HOST_BUILD_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

# For the device
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(support_SRC_FILES)

LOCAL_MODULE:= libLLVMSupport

include $(LLVM_DEVICE_BUILD_MK)
include $(BUILD_STATIC_LIBRARY)

endif
