# Copyright 2014 The Android Open Source Project
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

# Device path
DEVICE_PATH := device/motorola/okinawa/rootdir

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=400

# Camera
PRODUCT_COPY_FILES += \
    prebuilts/vndk/v29/arm64/arch-arm64-armv8-a/shared/vndk-sp/libc++.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libc++.so

PRODUCT_PACKAGES += \
    libc++demangle_vendor

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.3-service-okinawa

# Model
PRODUCT_MODEL := moto z4

# Partitions
TARGET_USES_DYNAMIC_PARTITIONS := false
TARGET_USES_LEGACY_AB := true

# Soong
PRODUCT_SOONG_NAMESPACES += device/motorola/okinawa

# Inherit from those products. Most specific first.
$(call inherit-product, device/motorola/sm6150-common/platform.mk)

# include board vendor blobs
$(call inherit-product-if-exists, vendor/motorola/okinawa/okinawa-vendor.mk)
