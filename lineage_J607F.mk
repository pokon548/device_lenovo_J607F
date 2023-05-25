#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from J607F device
$(call inherit-product, device/lenovo/J607F/device.mk)

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

TARGET_USES_AOSP_RECOVERY := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := false

# Enable 2-Pane Layout
PRODUCT_PACKAGES += \
	androidx.window.extensions
	
DEVICE_MAINTAINER := pokon548

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_J607F
PRODUCT_DEVICE := J607F
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-J607F
PRODUCT_MANUFACTURER := LENOVO

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

BUILD_FINGERPRINT := Lenovo/LenovoTB-J607F_PRC/J607F:12/SKQ1.220213.001/14.0.313_221021:user/release-keys
