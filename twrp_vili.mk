#
# Copyright (C) 2019 The TwrpBuilder Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PATH := device/xiaomi/vili

# Inherit from the Device Tree itself.
$(call inherit-product, device/xiaomi/vili/device.mk)

# Inherit from PBRP-common stuffs.
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vili
PRODUCT_RELEASE_NAME := vili
PRODUCT_NAME := twrp_vili
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi 11T Pro
PRODUCT_MANUFACTURER := Xiaomi

# Assert
TARGET_OTA_ASSERT_DEVICE := $(PRODUCT_RELEASE_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vili-user 12 RKQ1.211001.001 V13.0.8.0.SKDMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/vili/vili:12/RKQ1.211001.001/V13.0.8.0.SKDMIXM:user/release-keys

#
