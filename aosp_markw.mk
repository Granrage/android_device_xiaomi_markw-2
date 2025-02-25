#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, device/xiaomi/markw/full_markw.mk)

# Inherit some common Pixel Experience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

TARGET_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64

#Official
export CUSTOM_BUILD_TYPE := OFFICIAL

PRODUCT_NAME := aosp_markw
BOARD_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="markw-user 6.0.1 MMB29M V10.2.2.0.MBECNXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/markw/markw:6.0.1/MMB29M/V10.2.2.0.MBECNXM:user/release-keys"
