#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from qssi device
$(call inherit-product, device/xiaomi/lime/device.mk)

PRODUCT_DEVICE := lime
PRODUCT_NAME := lineage_lime
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 9T
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lime-user 12 SKQ1.211202.001 V14.0.5.0.SJQEUXM release-keys"

BUILD_FINGERPRINT := Redmi/lime/lime:12/SKQ1.211202.001/V14.0.5.0.SJQEUXM:user/release-keys
