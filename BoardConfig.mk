-include vendor/lge/VM670/BoardConfigVendor.mk
-include device/lge/msm7x27-common/BoardConfigCommon.mk

BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=thunderc
TARGET_BOOTLOADER_BOARD_NAME := thunderc
TARGET_OTA_ASSERT_DEVICE := thunderc,VM670,LS670

SMALLER_FONT_FOOTPRINT := true

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/VM670/bluetooth

