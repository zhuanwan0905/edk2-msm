// Buttons 驱动保持原样 [cite: 2]
FILE DRIVER = 5bd181db-0487-4f1a-ae73-820e165611b3 {
  SECTION DXE_DEPEX = Platform/EFI_Binaries/Drivers/sm8250/ButtonsDxe/ButtonsDxe.depex
  SECTION PE32 = Platform/EFI_Binaries/Drivers/sm8250/ButtonsDxe/ButtonsDxe.efi
  SECTION UI = "ButtonsDxe"
}

// ACPI Tables 保持原样 [cite: 2]
FILE FREEFORM = 7E374E25-8E01-4FEE-87F2-390C23C606CD {
  SECTION RAW = Platform/Lenovo/sm8250/AcpiTables/tb-9707f/DSDT.aml
  SECTION RAW = Silicon/Qualcomm/sm8250/AcpiTables/Madt.aml
  SECTION RAW = Silicon/Qualcomm/sm8250/AcpiTables/Facp.aml
  SECTION RAW = Silicon/Qualcomm/sm8250/AcpiTables/Gtdt.aml
  SECTION RAW = Silicon/Qualcomm/sm8250/AcpiTables/bgrt.aml
  SECTION UI = "AcpiTables"
}

// 解决大容量不识别的关键：Device Tree Blob (DTB)
FILE FREEFORM = 25462CDA-221F-47d4-ACFA-16D663F8B639 {
  # 根据你确认的路径进行引用 
  SECTION RAW = Platform/Lenovo/sm8250/tb-9707f.dtb
  SECTION UI = "DeviceTreeBlob"
}
