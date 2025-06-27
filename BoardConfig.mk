#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/renoir

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# Board
TARGET_BOOTLOADER_BOARD_NAME := renoir

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/hidl/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG += vendor/renoir_QGKI.config

# Kernel modules
BOOT_KERNEL_MODULES := \
    adsp_loader_dlkm.ko \
    apr_dlkm.ko \
    focaltech_touch.ko \
    goodix_core.ko \
    hwid.ko \
    mmhardware_sysfs_dlkm.ko \
    msm_drm.ko \
    q6_notifier_dlkm.ko \
    q6_pdr_dlkm.ko \
    qti_battery_charger_main.ko \
    snd_event_dlkm.ko \
    xiaomi_touch.ko
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(BOOT_KERNEL_MODULES)

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Include proprietary files
include vendor/xiaomi/renoir/BoardConfigVendor.mk
