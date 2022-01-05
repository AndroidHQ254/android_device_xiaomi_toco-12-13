#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from toco device
$(call inherit-product, device/xiaomi/toco/device.mk)

# Inherit some common Project Elixir stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Maintainer
PRODUCT_PRODUCT_PROPERTIES += \
  	ro.elixir.maintainer=DennisMurimi \
	org.elixir.device=toco

# Project Elixir Stuff
TARGET_USES_AOSP_RECOVERY := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_STOCK_ARCORE := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_toco
PRODUCT_DEVICE := toco
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Note 10 Lite
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="toco-user 11 RKQ1.200826.002 V12.5.4.0.RFNMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/toco_global/toco:11/RKQ1.200826.002/V12.5.4.0.RFNMIXM:user/release-keys
