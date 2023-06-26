/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_utils.h>
#include <libinit_variant.h>

#include "vendor_init.h"

static const variant_info_t toco_global_info = {
    .hwc_value = "GLOBAL",
    .sku_value = "",

    .mod_device = "toco_global",
    .name = "toco_global",
    .brand = "Xiaomi",
    .device = "toco",
    .marketname = "Xiaomi Mi Note 10 Lite",
    .model = "Mi Note 10 Lite",
    .build_fingerprint = "Xiaomi/toco_global/toco:12/RKQ1.210614.002/V13.0.4.0.SFNMIXM:user/release-keys",

    .nfc = true,
};

static const variant_info_t toco_eea_info = {
    .hwc_value = "EEA",
    .sku_value = "",

    .mod_device = "toco_global",
    .name = "toco_global",
    .brand = "Xiaomi",
    .device = "toco",
    .marketname = "Xiaomi Mi Note 10 Lite",
    .model = "Mi Note 10 Lite",
    .build_fingerprint = "Xiaomi/toco_global/toco:12/RKQ1.210614.002/V13.0.4.0.SFNMIXM:user/release-keys",

    .nfc = true,
};

static const variant_info_t toco_ru_info = {
    .hwc_value = "RU",
    .sku_value = "",

    .mod_device = "toco_global",
    .name = "toco_global",
    .brand = "Xiaomi",
    .device = "toco",
    .marketname = "Xiaomi Mi Note 10 Lite",
    .model = "Mi Note 10 Lite",
    .build_fingerprint = "Xiaomi/toco_global/toco:12/RKQ1.210614.002/V13.0.4.0.SFNMIXM:user/release-keys",


    .nfc = true,
};

static const std::vector<variant_info_t> variants = {
    toco_global_info,
    toco_eea_info,
    toco_ru_info,
};

void vendor_load_properties() {
    search_variant(variants);
    set_dalvik_heap();

    // SafetyNet workaround
    property_override("ro.boot.verifiedbootstate", "green");
}
