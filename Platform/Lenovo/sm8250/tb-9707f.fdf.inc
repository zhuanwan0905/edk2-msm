// Buttons 驱动
FILE DRIVER = 5bd181db-0487-4f1a-ae73-820e165611b3 {
  SECTION DXE_DEPEX = Platform/EFI_Binaries/Drivers/sm8250/ButtonsDxe/ButtonsDxe.depex [cite: 4]
  SECTION PE32 = Platform/EFI_Binaries/Drivers/sm8250/ButtonsDxe/ButtonsDxe.efi [cite: 4]
  SECTION UI = "ButtonsDxe" [cite: 4]
}

// ACPI 表定义
FILE FREEFORM = 7E374E25-8E01-4FEE-87F2-390C23C606CD {
  SECTION RAW = Platform/Lenovo/sm8250/AcpiTables/tb-9707f/DSDT.aml [cite: 4]
  SECTION RAW = Silicon/Qualcomm/sm8250/AcpiTables/Madt.aml [cite: 4]
  SECTION RAW = Silicon/Qualcomm/sm8250/AcpiTables/Facp.aml [cite: 4]
  SECTION RAW = Silicon/Qualcomm/sm8250/AcpiTables/Gtdt.aml [cite: 4]
  SECTION RAW = Silicon/Qualcomm/sm8250/AcpiTables/bgrt.aml [cite: 4]
  SECTION UI = "AcpiTables" [cite: 4]
}

// DTB (Device Tree Blob) - 解决存储识别的关键
FILE FREEFORM = 25462CDA-221F-47d4-ACFA-16D663F8B639 {
  SECTION RAW = Platform/Lenovo/sm8250/tb-9707f.dtb
  SECTION UI = "DeviceTreeBlob"
}
