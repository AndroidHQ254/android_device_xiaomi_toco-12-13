LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePkgs
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    arcore \
    AmbientStreaming \
    CarrierLocation \
    CarrierMetrics \
    DevicePolicyPrebuilt \
    DiagnosticsToolPrebuilt \
    Gallery2 \
    Papers \
    Photos \
    PhotoTable \
    PixelLiveWallpaperPrebuilt \
    PixelWallpapers2022 \
    RecorderPrebuilt \
    Showcase \
    SoundAmplifierPrebuilt
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)