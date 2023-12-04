#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from ares device
$(call inherit-product, device/xiaomi/ares/device.mk)

PRODUCT_DEVICE := ares
PRODUCT_NAME := lineage_ares
PRODUCT_BRAND := redmi
PRODUCT_MODEL := ares
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="missi_phoneext4_cn-user 13 TP1A.220624.014 V14.0.23.4.17.DEV release-keys"

BUILD_FINGERPRINT := redmi/vnd_ares/ares:12/SP1A.210812.016/V14.0.23.4.17.DEV:user/release-keys
