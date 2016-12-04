#
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
#

# inherit from common ctp-common
-include device/asus/ctp-common/BoardConfigCommon.mk

TARGET_RELEASETOOLS_EXTENSIONS := device/asus/Z00D

#cmhw
BOARD_HARDWARE_CLASS += device/asus/Z00D/cmhw

# Partitions
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 59261286400
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2415919104
BOARD_FLASH_BLOCK_SIZE := 2048

# SELinux
BOARD_SEPOLICY_DIRS += device/asus/Z00D/sepolicy

# Bootloader
TARGET_OTA_ASSERT_DEVICE := Z00D,ASUS_Z00D

# Use the non-open-source parts, if they're present
-include vendor/asus/Z00D/BoardConfigVendor.mk
