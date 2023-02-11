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

TARGET_USES_LEGACY_AB := true

# Device path
DEVICE_PATH := device/motorola/okinawa/rootdir

# Kernel
PRODUCT_COPY_FILES += \
    device/motorola/okinawa-kernel/Image.gz:kernel

# Audio Configuration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/etc/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(DEVICE_PATH)/vendor/etc/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(DEVICE_PATH)/vendor/etc/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(DEVICE_PATH)/vendor/etc/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml

# Device Init
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/etc/init/init.okinawa.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.okinawa.rc

PRODUCT_PACKAGES += \
    init.recovery.qcom.rc

# Camera
PRODUCT_COPY_FILES += \
    prebuilts/vndk/v29/arm64/arch-arm64-armv8-a/shared/vndk-sp/libc++.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libc++.so

PRODUCT_PACKAGES += \
    libc++demangle_vendor

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=400

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.3-service-okinawa

# Overlay
PRODUCT_PACKAGES += \
    okinawaFrameworkOverlay \
    okinawaSystemUIOverlay

# Media
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/etc/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \
    $(DEVICE_PATH)/vendor/etc/media_profiles_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_vendor.xml

# Inherit from those products. Most specific first.
$(call inherit-product, device/motorola/sm6150-common/platform.mk)

# include board vendor blobs
$(call inherit-product-if-exists, vendor/motorola/okinawa/okinawa-vendor.mk)
