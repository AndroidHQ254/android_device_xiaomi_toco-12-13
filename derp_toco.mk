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

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Call the MiuiCamera setup
$(call inherit-product-if-exists, vendor/xiaomi/toco-miuicamera/products/miuicamera.mk)

DERP_BUILDTYPE := Official
TARGET_BOOT_ANIMATION_RES := 1080
WITH_GAPPS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_CALL_RECORDING := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := derp_toco
PRODUCT_DEVICE := toco
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Note 10 Lite
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="toco-user 12 RKQ1.210614.002 V13.0.4.0.SFNMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/toco_global/toco:12/RKQ1.210614.002/V13.0.4.0.SFNMIXM:user/release-keys
