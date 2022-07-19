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

# Inherit some common ArrowOS stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

TARGET_BOOT_ANIMATION_RES := 1080
ARROW_GAPPS := true
DEVICE_MAINTAINER := DennisMurimi

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := arrow_toco
PRODUCT_DEVICE := toco
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Note 10 Lite
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="toco-user 12 RKQ1.210614.002 V13.0.2.0.SFNMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/toco_global/toco:12/RKQ1.210614.002/V13.0.2.0.SFNMIXM:user/release-keys