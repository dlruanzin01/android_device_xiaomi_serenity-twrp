#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
DEVICE_PATH := device/redmi/serenity
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Enable virtual A/B OTA
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit some common TWRP config
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

# Inherit from serenity device
$(call inherit-product, device/redmi/serenity/device.mk)

PRODUCT_DEVICE := serenity
PRODUCT_NAME := twrp_serenity
PRODUCT_BRAND := REDMI
PRODUCT_MODEL := REDMI-A5
PRODUCT_MANUFACTURER := REDMI
PRODUCT_RELEASE_NAME := REDMI A5