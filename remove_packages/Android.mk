LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePkgs
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    AdaptiveVPNPrebuilt \
    arcore \
    AmbientStreaming \
    CalculatorGooglePrebuilt \
    Calendar \
    Calendar2 \
    CalendarGooglePrebuilt \
    CarrierLocation \
    CarrierMetrics \
    DevicePolicyPrebuilt \
    DiagnosticsToolPrebuilt \
    ExactCalculator \
    Gallery2 \
    GoogleTTS \
    HealthConnectPrebuilt \
    MaestroPrebuilt \
    NgaResources \
    Papers \
    Photos \
    PhotoTable \
    PicoTts \
    PixelLiveWallpaperPrebuilt \
    PixelWallpapers2020 \
    PixelWallpapers2021 \
    PixelWallpapers2022 \
    PixelWallpapers2022a \
    PixelWallpapers2023Tablet \
    RecorderPrebuilt \
    ScribePrebuilt \
    SecurityHubPrebuilt \
    Showcase \
    SoundAmplifierPrebuilt \
    Tycho \
    WellbeingPrebuilt
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)