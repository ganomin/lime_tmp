#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6115-common
include device/xiaomi/sm6115-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/lime

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Display
TARGET_SCREEN_DENSITY := 440

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_lime
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_lime

# Kernel
TARGET_KERNEL_CONFIG += vendor/lime-perf_defconfig

# OTA assert
TARGET_OTA_ASSERT_DEVICE := lime,lemon,pomelo

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/xiaomi/lime/BoardConfigVendor.mk
