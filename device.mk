#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# A/B
TARGET_IS_VAB := true

# Inherit from sm6115-common
$(call inherit-product, device/xiaomi/sm6115-common/bengal.mk)

# Audio configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/camera/camera_cnf.txt:$(TARGET_COPY_OUT_VENDOR)/etc/camera/camera_cnf.txt

PRODUCT_PACKAGES += \
    libpiex_shim

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/lime/lime-vendor.mk)
