[Defines]
  VENDOR_NAME                    = Lenovo
  PLATFORM_NAME                  = tb-9707f
  PLATFORM_GUID                  = 28f1a3bf-193a-47e3-a7b9-5a435eaab2ee
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = Platform/Qualcomm/sm8250/sm8250.fdf
  # 关键修改：直接指定文件名，避免与父目录叠加导致找不到文件
  DEVICE_DXE_FV_COMPONENTS       = tb-9707f.fdf.inc

!include Platform/Qualcomm/sm8250/sm8250.dsc

[BuildOptions.common]
  # 开启大容量存储宏 [cite: 2]
  GCC:*_*_AARCH64_CC_FLAGS = -DENABLE_SIMPLE_INIT -DENABLE_LINUX_SIMPLE_MASS_STORAGE

[PcdsFixedAtBuild.common]
  gQcomTokenSpaceGuid.PcdMipiFrameBufferWidth|1600
  gQcomTokenSpaceGuid.PcdMipiFrameBufferHeight|2560
  gSimpleInitTokenSpaceGuid.PcdGuiDefaultDPI|400
  gRenegadePkgTokenSpaceGuid.PcdDeviceVendor|"Lenovo"
  gRenegadePkgTokenSpaceGuid.PcdDeviceProduct|"Legion Tab Y700"
  gRenegadePkgTokenSpaceGuid.PcdDeviceCodeName|"TB-9707F"
