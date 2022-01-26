#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from toco device
$(call inherit-product, device/xiaomi/toco/device.mk)

# Inherit some common Xtended stuff.
$(call inherit-product, vendor/xtended/config/common_full_phone.mk)

# Xtended Stuff
PROCESSOR_MODEL := SDM730G
XTENDED_BUILD_TYPE := UNOFFICIAL
XTENDED_BUILD_MAINTAINER := DennisMurimi
XTENDED_BUILD_DONATE_URL := https://paypal.me/ahq254
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_GAPPS_ARCH := arm64
EXTRA_UDFPS_ANIMATIONS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := xtended_toco
PRODUCT_DEVICE := toco
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Note 10 Lite
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="toco-user 11 RKQ1.200826.002 V12.5.4.0.RFNMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/toco_global/toco:11/RKQ1.200826.002/V12.5.4.0.RFNMIXM:user/release-keys
