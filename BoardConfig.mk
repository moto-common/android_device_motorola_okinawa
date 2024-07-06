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

# Platform
PRODUCT_PLATFORM := sm6150

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := foles

# Partition information
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3556769792
BOARD_VENDORIMAGE_PARTITION_SIZE := 956301312
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_EROFS_PCLUSTER_SIZE := 262144

# This target has no recovery partition
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true

# Fingerprint
TARGET_SURFACEFLINGER_UDFPS_LIB := //device/motorola/okinawa:libudfps_extension.okinawa
TARGET_USES_FINGERPRINT_V2_1 := false
TARGET_USES_FOD_ZPOS := true

# PlatformConfig
include device/motorola/sm6150-common/PlatformConfig.mk
