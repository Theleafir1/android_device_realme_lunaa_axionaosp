#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lunaa device
$(call inherit-product, device/realme/lunaa/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_lunaa
PRODUCT_DEVICE := lunaa
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3360

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="RMX3360-user 13 TP1A.220905.001 R.18a3a4d-41d9-71a9 release-keys" \
    BuildFingerprint=realme/RMX3360/RE54ABL1:13/TP1A.220905.001/R.18a3a4d-41d9-71a9:user/release-keys \
    DeviceName=RE54ABL1 \
    DeviceProduct=RMX3360 \
    SystemDevice=RE54ABL1 \
    SystemName=RMX3360
#AXION
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Camera information (multiple sensors supported)
AXION_CAMERA_REAR_INFO := 64,8,2
AXION_CAMERA_FRONT_INFO := 32

# Maintainer name (underscores become spaces in the UI)
AXION_MAINTAINER := theleafir1

# Processor name (underscores become spaces)
AXION_PROCESSOR := Qualcomm_Snapdragon_778G

#idk what is that
DEX2OAT_CORES ?= 0,1
DEX2OAT_THREADS ?= 2

# Charging
BYPASS_CHARGE_SUPPORTED ?= false
# RAM limitation check
TARGET_IS_LOW_RAM ?= false

#Performance mode and other ig
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil

GPU_FREQS_PATH := /sys/class/kgsl/kgsl-3d0/devfreq/available_frequencies
GPU_MIN_FREQ_PATH := /sys/class/kgsl/kgsl-3d0/devfreq/min_freq
GPU_MAX_FREQ_PATH := /sys/class/kgsl/kgsl-3d0/devfreq/max_freq
