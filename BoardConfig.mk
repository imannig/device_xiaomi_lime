#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/lime

# Inherit from sm6115-common
include device/xiaomi/sm6115-common/BoardConfigCommon.mk

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Display
TARGET_SCREEN_DENSITY := 440

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_lime
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_lime

# Kernel
BOARD_PREBUILT_DTBOIMAGE := $(COMMON_PATH)-kernel/lime/dtbo.img
TARGET_PREBUILT_DTB := $(COMMON_PATH)-kernel/lime/dtb.img
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)

# NFC
ODM_MANIFEST_SKUS += lemon
ODM_MANIFEST_LEMON_FILES := $(DEVICE_PATH)/manifest_lemon.xml

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop

# Sepolicy
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/private
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/public
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Inherit from the proprietary version
include vendor/xiaomi/lime/BoardConfigVendor.mk
