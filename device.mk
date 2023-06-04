#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enforce native interfaces of product partition as VNDK
PRODUCT_PRODUCT_VNDK_VERSION := current

# Enforce java interfaces of product partition
PRODUCT_ENFORCE_PRODUCT_PARTITION_INTERFACE := true

# Inherit from sm6150-common
$(call inherit-product, device/xiaomi/sm6150-common/sm6150.mk)

# API level, the device has been commercially launched on
PRODUCT_SHIPPING_API_LEVEL := 29

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio
PRODUCT_PACKAGES += \
    libtinycompress

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_engine_stream_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_engine_stream_volumes.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_idp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_idp.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_overlay_dynamic.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_overlay_dynamic.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_overlay_static.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_overlay_static.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_wcd9375.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9375.xml

# Display
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display/qdcm_calib_data_xiaomi_f4_36_02_0b_fhd_cmd_dsi_panel.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_xiaomi_f4_36_02_0b_fhd_cmd_dsi_panel.xml \
    $(LOCAL_PATH)/configs/display/qdcm_calib_data_xiaomi_f4_41_06_0a_fhd_cmd_dsi_panel.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_xiaomi_f4_41_06_0a_fhd_cmd_dsi_panel.xml \
    $(LOCAL_PATH)/configs/display/qdcm_calib_data_xiaomi_f4_42_06_0c_fhd_cmd_dsi_panel.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_xiaomi_f4_42_06_0c_fhd_cmd_dsi_panel.xml \
    $(LOCAL_PATH)/configs/display/hdr_config.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/hdr_config.cfg \
    $(LOCAL_PATH)/configs/display/sdr_config.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/sdr_config.cfg \
    $(LOCAL_PATH)/configs/display/init.panel_info.sh:$(TARGET_COPY_OUT_VENDOR)/etc/init.panel_info.sh

# Camera Extensions
PRODUCT_SYSTEM_PROPERTIES += \
    ro.camerax.extensions.enabled=true

# Camera Extensions permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/camerax-vendor-extensions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/camerax-vendor-extensions.xml

# Enable backpressure for GL comp
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.enable_gl_backpressure=1

# F2FS
PRODUCT_PACKAGES += \
    sg_write_buffer \
    f2fs_io \
    check_f2fs

# Fingerprint
TARGET_HAS_UDFPS := true

# Fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.qcom

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.base@1.0.vendor

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/configs/keylayout/sm6150-idp-snd-card_Button_Jack.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/sm6150-idp-snd-card_Button_Jack.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_0079_Product_0011.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_0079_Product_0011.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_045e_Product_028e.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_045e_Product_028e.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_045e_Product_028f.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_045e_Product_028f.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_045e_Product_0291.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_045e_Product_0291.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_045e_Product_02a1.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_045e_Product_02a1.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_045e_Product_02d1.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_045e_Product_02d1.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_045e_Product_02e0.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_045e_Product_02e0.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_045e_Product_02e3.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_045e_Product_02e3.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_045e_Product_02e6.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_045e_Product_02e6.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_045e_Product_02ea.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_045e_Product_02ea.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_045e_Product_02fd.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_045e_Product_02fd.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_045e_Product_0719.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_045e_Product_0719.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_045e_Product_0b12.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_045e_Product_0b12.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_054c_Product_0268.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_054c_Product_0268.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_054c_Product_05c4.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_054c_Product_05c4.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_054c_Product_09cc.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_054c_Product_09cc.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_054c_Product_0ce6.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_054c_Product_0ce6.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_057e_Product_2009.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_057e_Product_2009.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_0810_Product_0001.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_0810_Product_0001.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_0e6f_Product_f501.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_0e6f_Product_f501.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_1038_Product_1412.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_1038_Product_1412.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_146b_Product_0d01.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_146b_Product_0d01.kl

# IR
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-impl \
    android.hardware.ir@1.0-service

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.consumerir.xml

# LMK tuning
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lmk.filecache_min_kb=153600 \
    ro.lmk.stall_limit_critical=40

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    Tag

PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_PRODUCT)/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.uicc.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.nxp.mifare.xml

# Overlay
PRODUCT_PACKAGES += \
    FrameworksToco \
    SettingsToco \
    SystemUIToco \
    WifiToco

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Power
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/power/powerhint.json:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.json

# Quick Tap
PRODUCT_PROPERTY_OVERRIDES += \
    persist.columbus.model=tap7cls_coral.tflite

# Remove unwanted packages
PRODUCT_PACKAGES += \
    RemovePkgs

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl-xiaomi \
    android.hardware.sensors@1.0-service

PRODUCT_PACKAGES += \
    sensors.udfps

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Shim
PRODUCT_PACKAGES += \
    libpiex_shim

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Storage health HAL
PRODUCT_PACKAGES += \
    android.hardware.health.storage@1.0-service

# Task profile
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/task_profiles.json:$(TARGET_COPY_OUT_VENDOR)/etc/task_profiles.json

# VNDK
PRODUCT_PACKAGES += \
    com.android.vndk.current.on_vendor

# Wallpapers
PRODUCT_PACKAGES += \
    PixelWallpapers2023Foldable

# Call the proprietary setup
$(call inherit-product, vendor/xiaomi/toco/toco-vendor.mk)
