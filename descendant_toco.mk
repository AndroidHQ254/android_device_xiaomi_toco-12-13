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

# Inherit some common Descendant-XI stuff.
$(call inherit-product, vendor/descendant/config/common_full_phone.mk)

# Blur
TARGET_SUPPORTS_BLUR := true

# Descendant-XI Stuff
TARGET_BOOT_ANIMATION_RES := 1080

# Faceunlock
TARGET_FACE_UNLOCK_SUPPORT := YES

# QCOM Flags
PRODUCT_BOARD_PLATFORM := sm6150
PRODUCT_USES_QCOM_HARDWARE := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := descendant_toco
PRODUCT_DEVICE := toco
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Note 10 Lite
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="toco-user 11 RKQ1.200826.002 V12.5.3.0.RFNMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/toco_global/toco:11/RKQ1.200826.002/V12.5.3.0.RFNMIXM:user/release-keys
