#
# Copyright (C) 2018  mbskykill
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
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOARD_PLATFORM := mt6753
TARGET_NO_BOOTLOADER := true
TARGET_NO_FACTORYIMAGE := true

# CPU
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

TARGET_CPU_CORTEX_A53 := true
TARGET_BOOTLOADER_BOARD_NAME := mt6735
TARGET_USES_NON_TREBLE_CAMERA := true

# Kernel
TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --base 0x40078000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --second_offset 0x00e88000 --tags_offset 0x0df88000 --board 1479347649

TARGET_KERNEL_SOURCE := kernel/meizu/m2note
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CONFIG := m2note_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
MTK_APPENDED_DTB_SUPPORT := yes
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
LZMA_RAMDISK_TARGETS := boot,recovery
BOARD_USES_FULL_RECOVERY_IMAGE := true

# Partitions:
# Fix this up by examining /proc/partitions on a running device. (value * 1024)
#  or cat /proc/partinfo (hex to dec)
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12831948800
# cat /proc/mtd. See "erasesize" column. Translate into decimal
BOARD_FLASH_BLOCK_SIZE := 131072

# File Systems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_SECURE_ERASE := true


# Graphics
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 128
TW_THEME := portrait_hdpi
# Turn the screen upside down for Meizu M2 Note to make TWRP usable
BOARD_HAS_FLIPPED_SCREEN := true

# LightHAL
TARGET_PROVIDES_LIBLIGHT := true


# TWRP-specific
LOCAL_PATH := device/meizu/m2note
TARGET_RECOVERY_FSTAB := device/meizu/m2note/rootdir/fstab.mt6735
DEVICE_RESOLUTION := 1080x1920
DEVICE_SCREEN_WIDTH := 1080
DEVICE_SCREEN_HEIGHT := 1920

# Storages
BOARD_HAS_NO_MISC_PARTITION := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/extSdCard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "extSdCard"
TW_FLASH_FROM_STORAGE := true
TW_SDEXT_NO_EXT4 := true
RECOVERY_SDCARD_ON_DATA := true

# No partitioning SD Card
BOARD_HAS_NO_REAL_SDCARD := true
TW_DEFAULT_EXTERNAL_STORAGE := true

# Crypto
TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p22"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_KEY_LOC := "footer"
TW_INCLUDE_L_CRYPTO := true
# USB Mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/f_mass_storage/lun/file
TW_MTP_DEVICE := /dev/mtp_usb
# Buttons:
# No Download mode
TW_HAS_DOWNLOAD_MODE := false
# No Select Button
BOARD_HAS_NO_SELECT_BUTTON := true
# The path to a temperature sensor
TW_CUSTOM_CPU_TEMP_PATH := /sys/class/thermal/thermal_zone1/temp
# HW ID
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := false
TW_FORCE_CPUINFO_FOR_DEVICE_ID := false
