#
# Copyright (C) 2023 The LineageOS Project
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

COMMON_PATH := device/samsung/exynos9820-common

# Inherit common configuration
$(call inherit-product, $(COMMON_PATH)/common.mk)

# init
FSTAB_FILES ?= \
    $(COMMON_PATH)/configs/init/fstab.exynos9820:$(TARGET_COPY_OUT_RAMDISK)/fstab.exynos9820 \
    $(COMMON_PATH)/configs/init/fstab.exynos9820:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.exynos9820

PRODUCT_COPY_FILES += $(FSTAB_FILES)

# NFC
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/nfc/libnfc-sec-vendor.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-sec-vendor.conf

# VNDK
PRODUCT_PACKAGES += \
    libutils-v32
