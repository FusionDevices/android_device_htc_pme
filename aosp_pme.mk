# Copyright 2017 Android Open Source Project
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
#
IS_ARM64 := true

# Include Official OTA Package
WITH_OFFICIALOTA := true

# Support Beta OTA Opt-in (Requires additional ota xml)
BETA_OTA := true

TARGET_TRICK_SELINUX := true

# Include pure telephony configuration
$(call inherit-product, vendor/pure/configs/pure_phone.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from pme device
$(call inherit-product, device/htc/pme/device.mk)

# Device identifier. This must come after all inclusions
# Inherit some common AOSP stuff.
# $(call inherit-product, vendor/aosp/common.mk)

PRODUCT_DEVICE := pme
PRODUCT_NAME := pme
PRODUCT_BRAND := HTC
PRODUCT_MODEL := HTC 10
PRODUCT_MANUFACTURER := HTC
PRODUCT_RELEASE_NAME := pme

TARGET_VENDOR := htc

$(call inherit-product-if-exists, vendor/htc/pme/pme-vendor.mk)

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=htc/pmewl_00617/htc_pmewl:7.0/NRD90M/831921.8:user/release-keys
