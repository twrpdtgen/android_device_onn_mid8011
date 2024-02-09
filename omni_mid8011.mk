#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from mid8011 device
$(call inherit-product, device/onn/mid8011/device.mk)

PRODUCT_DEVICE := mid8011
PRODUCT_NAME := omni_mid8011
PRODUCT_BRAND := onn
PRODUCT_MODEL := 100003561
PRODUCT_MANUFACTURER := onn

PRODUCT_GMS_CLIENTID_BASE := android-digiland

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_mid8011_mq-user 10 QP1A.190711.020 mp1V9332 release-keys"

BUILD_FINGERPRINT := onn/100003561/mid8011:10/QP1A.190711.020/kanghua20051533:user/release-keys
