LOCAL_PATH:= $(call my-dir)

mc_SRC_FILES := \
  ELFObjectWriter.cpp \
  MCAsmBackend.cpp \
  MCAsmInfo.cpp \
  MCAsmInfoCOFF.cpp \
  MCAsmInfoDarwin.cpp \
  MCAsmInfoELF.cpp \
  MCAsmStreamer.cpp \
  MCAssembler.cpp \
  MCAtom.cpp \
  MCCodeEmitter.cpp \
  MCCodeGenInfo.cpp \
  MCContext.cpp \
  MCDisassembler.cpp \
  MCDwarf.cpp \
  MCELF.cpp \
  MCELFObjectTargetWriter.cpp \
  MCELFStreamer.cpp \
  MCFunction.cpp \
  MCExpr.cpp \
  MCExternalSymbolizer.cpp \
  MCInst.cpp \
  MCInstPrinter.cpp \
  MCInstrAnalysis.cpp \
  MCLabel.cpp \
  MCLinkerOptimizationHint.cpp \
  MCMachOStreamer.cpp \
  MCMachObjectTargetWriter.cpp \
  MCModule.cpp \
  MCModuleYAML.cpp \
  MCNullStreamer.cpp \
  MCObjectFileInfo.cpp \
  MCObjectDisassembler.cpp \
  MCObjectStreamer.cpp \
  MCObjectSymbolizer.cpp \
  MCObjectWriter.cpp \
  MCRegisterInfo.cpp \
  MCRelocationInfo.cpp \
  MCSection.cpp \
  MCSectionCOFF.cpp \
  MCSectionELF.cpp \
  MCSectionMachO.cpp \
  MCStreamer.cpp \
  MCSubtargetInfo.cpp \
  MCSymbol.cpp \
  MCSymbolizer.cpp \
  MCTargetOptions.cpp \
  MCValue.cpp \
  MCWin64EH.cpp \
  MachObjectWriter.cpp \
  SubtargetFeature.cpp \
  WinCOFFObjectWriter.cpp \
  WinCOFFStreamer.cpp \

# For the host
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(mc_SRC_FILES)

LOCAL_MODULE:= libLLVMMC

LOCAL_MODULE_TAGS := optional


include $(LLVM_HOST_BUILD_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

# For the device
# =====================================================
include $(CLEAR_VARS)
ifneq (true,$(DISABLE_LLVM_DEVICE_BUILDS))

LOCAL_SRC_FILES := $(mc_SRC_FILES)

LOCAL_MODULE:= libLLVMMC

LOCAL_MODULE_TAGS := optional

include $(LLVM_DEVICE_BUILD_MK)
include $(BUILD_STATIC_LIBRARY)
endif
