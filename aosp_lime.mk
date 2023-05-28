#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Elixir stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from lime device
$(call inherit-product, device/xiaomi/lime/device.mk)

PRODUCT_NAME := aosp_lime
PRODUCT_DEVICE := lime
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2010J19SG

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Project Elixir Stuff
IS_PHONE := true
ELIXIR_BUILD_TYPE := OFFICIAL
ELIXIR_MAINTAINER := rriaame
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_QUICK_TAP := true
