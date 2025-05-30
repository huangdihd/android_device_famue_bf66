#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from k62v1_64_bsp device
$(call inherit-product, device/alps/k62v1_64_bsp/device.mk)

PRODUCT_DEVICE := k62v1_64_bsp
PRODUCT_NAME := omni_k62v1_64_bsp
PRODUCT_BRAND := alps
PRODUCT_MODEL := k62v1_64_bsp
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_k62v1_64_bsp-userdebug 12 SP1A.210812.016 mp1V14197 test-keys"

BUILD_FINGERPRINT := alps/vnd_k62v1_64_bsp/k62v1_64_bsp:12/SP1A.210812.016/mp1V14197:userdebug/test-keys
