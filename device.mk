#
# Copyright (C) 2020 The TwrpBuilder Open-Source Project
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

# Dynamic partition stuff
PRODUCT_USE_DYNAMIC_PARTITIONS := true

#PRODUCT_PACKAGES += \
    #bootctrl.xiaomi_sm8350.recovery \
    #android.hardware.boot@1.1-impl-qti.recovery

#PRODUCT_HOST_PACKAGES += \
    #libandroidicu

# SHIPPING API
PRODUCT_SHIPPING_API_LEVEL := 30

# Soong namespaces
#PRODUCT_SOONG_NAMESPACES += \
    #$(DEVICE_PATH)

# otacert
PRODUCT_EXTRA_RECOVERY_KEYS += \
    $(DEVICE_PATH)/security/miui_releasekey

# Qcom common decryption
PRODUCT_PACKAGES += \
    qcom_decrypt\
    qcom_decrypt_fbe
    
# fastboot/d hal
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

#TWRP_REQUIRED_MODULES += miui_prebuilt \
    #magisk_prebuilt
