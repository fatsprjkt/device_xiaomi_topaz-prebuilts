#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/superior/config/common.mk)

# Inherit from topaz device.
$(call inherit-product, device/xiaomi/topaz/device.mk)

# Superior Flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_MATLOG := true
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_SUPPORTS_BLUR := true
SYSTEM_OPTIMIZE_JAVA := true
SYSTEMUI_OPTIMIZE_JAVA := true
BUILD_WITH_GAPPS := true
USE_QUICKPIC := true
USE_DUCKDUCKGO := false

# Maintainer
PRODUCT_SYSTEM_PROPERTIES += \
	ro.spos.maintainer=hefatss

# Device identifier
PRODUCT_NAME := superior_topaz
PRODUCT_DEVICE := topaz
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 12 4G
PRODUCT_MANUFACTURER := Xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
