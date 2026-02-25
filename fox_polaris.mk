#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from polaris device
$(call inherit-product, device/xiaomi/polaris/device.mk)

PRODUCT_DEVICE := polaris
PRODUCT_NAME := fox_polaris
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi MIX 2S
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="polaris-user 8.0.0 OPR1.170623.032 V9.5.19.0.ODGMIFA release-keys"

BUILD_FINGERPRINT := Xiaomi/polaris/polaris:8.0.0/OPR1.170623.032/V9.5.19.0.ODGMIFA:user/release-keys

# Bypass anti-rollback ROMs protection
# Set build date to Jan 1 2009 00:00:00
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.date.utc=1230768000