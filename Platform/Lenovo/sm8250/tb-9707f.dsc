[Defines]
  VENDOR_NAME                    = Lenovo
  PLATFORM_NAME                  = tb-9707f
  PLATFORM_GUID                  = 28f1a3bf-193a-47e3-a7b9-5a435eaab2ee
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019 [cite: 1, 2]
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = Platform/Qualcomm/sm8250/sm8250.fdf
  DEVICE_DXE_FV_COMPONENTS       = Platform/Lenovo/sm8250/tb-9707f.fdf.inc [cite: 2]

!include Platform/Qualcomm/sm8250/sm8250.dsc [cite: 2]

[BuildOptions.common]
  GCC:*_*_AARCH64_CC_FLAGS = -DENABLE_SIMPLE_INIT -DENABLE_LINUX_SIMPLE_MASS_STORAGE [cite: 2, 3]

[PcdsFixedAtBuild.common]
  # 屏幕分辨率设置
  gQcomTokenSpaceGuid.PcdMipiFrameBufferWidth|1600 
  gQcomTokenSpaceGuid.PcdMipiFrameBufferHeight|2560 

  # Simple Init UI 设置
  gSimpleInitTokenSpaceGuid.PcdGuiDefaultDPI|400 

  # 设备识别信息
  gRenegadePkgTokenSpaceGuid.PcdDeviceVendor|"Lenovo" 
  gRenegadePkgTokenSpaceGuid.PcdDeviceProduct|"Legion Tab Y700" 
  gRenegadePkgTokenSpaceGuid.PcdDeviceCodeName|"TB-9707F"
