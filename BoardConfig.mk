#
# Copyright (C) 2018 The LineageOS Open Source Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

DEVICE_PATH := device/asus/X00T

BOARD_VENDOR := asus

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm636
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := sdm660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno509

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a73

TARGET_USES_64_BIT_BINDER := true

# Assert
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
TARGET_OTA_ASSERT_DEVICE := X00TD,X00T

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 earlycon=msm_serial_dm,0xc170000 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=1 androidboot.configfs=true androidboot.usbcontroller=a800000.dwc3 loop.max_part=7
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/asus/sdm660
TARGET_KERNEL_CONFIG := darkonah_defconfig
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CLANG_VERSION := 8.0.8

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# Audio
AUDIO_DISABLE_SWAP_CHANNELS := true
AUDIO_FEATURE_ENABLED_3D_AUDIO := false
AUDIO_FEATURE_ENABLED_AAC_ADTS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_APE_OFFLOAD := true
AUDIO_FEATURE_ENABLED_AUDIOSPHERE := true
AUDIO_FEATURE_ENABLED_COMPRESS_CAPTURE := false
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_CUSTOMSTEREO := true
AUDIO_FEATURE_ENABLED_DEV_ARBI := false
AUDIO_FEATURE_ENABLED_DISPLAY_PORT := true
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := false
AUDIO_FEATURE_ENABLED_DTS_EAGLE := false
AUDIO_FEATURE_ENABLED_EXTN_FLAC_DECODER := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_EXTN_RESAMPLER := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_GEF_SUPPORT := true
AUDIO_FEATURE_ENABLED_HDMI_EDID := true
AUDIO_FEATURE_ENABLED_HDMI_PASSTHROUGH := true
AUDIO_FEATURE_ENABLED_HDMI_SPK := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_HIFI_AUDIO := true
AUDIO_FEATURE_ENABLED_HW_ACCELERATED_EFFECTS := false
AUDIO_FEATURE_ENABLED_INCALL_MUSIC := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_PERF_HINTS := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_RAS := true
AUDIO_FEATURE_ENABLED_SND_MONITOR := true
AUDIO_FEATURE_ENABLED_SOURCE_TRACKING := true
AUDIO_FEATURE_ENABLED_SPKR_PROTECTION := true
AUDIO_FEATURE_ENABLED_SPLIT_A2DP := false
AUDIO_FEATURE_ENABLED_USB_TUNNEL_AUDIO := true
AUDIO_FEATURE_ENABLED_VBAT_MONITOR := true
AUDIO_FEATURE_ENABLED_VOICE_PRINT := false
AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_WMA_OFFLOAD := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1
USE_LEGACY_LOCAL_AUDIO_HAL := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
QCOM_BT_USE_BTNV := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Camera
BOARD_QTI_CAMERA_32BIT_ONLY := true
TARGET_USES_QTI_CAMERA_DEVICE := true
USE_DEVICE_SPECIFIC_CAMERA := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# CNE and DPM
BOARD_USES_QCNE := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true
TARGET_CRYPTFS_HW_PATH ?= vendor/qcom/opensource/cryptfs_hw

# Display
BOARD_USES_ADRENO := true
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
MAX_VIRTUAL_DISPLAY_DIMENSION := 4096
OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x00002000U
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC2 := true
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_USES_OVERLAY := true
USE_OPENGL_RENDERER := true
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 6000000
VSYNC_EVENT_PHASE_OFFSET_NS := 2000000

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# Enable dexpreopt to speed boot time
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
      WITH_DEXPREOPT := true
      WITH_DEXPREOPT_DEBUG_INFO := false
      USE_DEX2OAT_DEBUG := false
      DONT_DEXPREOPT_PREBUILTS := true
      WITH_DEXPREOPT_PIC := true
      WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true
  endif
endif
PRODUCT_DEXPREOPT_SPEED_APPS += SystemUI

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# FM
BOARD_HAS_QCA_FM_SOC := "cherokee"
BOARD_HAVE_QCOM_FM := true

# GPS
TARGET_NO_RPC := true
USE_DEVICE_SPECIFIC_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)

# HALs
TARGET_QCOM_AUDIO_VARIANT := caf-msm8998
TARGET_QCOM_MEDIA_VARIANT := caf-msm8998
TARGET_QCOM_DISPLAY_VARIANT := caf-msm8998

PRODUCT_SOONG_NAMESPACES += \
    hardware/qcom/display-$(TARGET_QCOM_DISPLAY_VARIANT) \
    hardware/qcom/audio-$(TARGET_QCOM_AUDIO_VARIANT) \
    hardware/qcom/media-$(TARGET_QCOM_MEDIA_VARIANT)

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Keystore
TARGET_PROVIDES_KEYMASTER := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Lineage Hardware
JAVA_SOURCE_OVERLAYS := org.lineageos.hardware|$(DEVICE_PATH)/lineagehw|**/*.java

# Media
TARGET_USES_MEDIA_EXTENSIONS := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 55155080704
BOARD_VENDORIMAGE_PARTITION_SIZE := 838860800
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

PRODUCT_VENDOR_MOVE_ENABLED := true
TARGET_COPY_OUT_VENDOR := vendor
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USES_MKE2FS := true

# Peripheral manager
TARGET_PER_MGR_ENABLED := true

# Power
TARGET_USES_INTERACTION_BOOST := true
TARGET_TAP_TO_WAKE_NODE := "/sys/kernel/touchpanel/dclicknode"

# Properties
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/recovery.fstab
BOARD_HAS_LARGE_FILESYSTEM := true

# Releasetools
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_X00T
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# RIL
TARGET_RIL_VARIANT := caf
PROTOBUF_SUPPORTED := true
TARGET_USES_OLD_MNC_FORMAT := true

# Seccomp
BOARD_SECCOMP_POLICY := $(DEVICE_PATH)/seccomp

# Security patch level
VENDOR_SECURITY_PATCH := 2018-11-01

# SELinux
include device/qcom/sepolicy/sepolicy.mk
#BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy
BOARD_SEPOLICY_VERS := 28.0

# Use Snapdragon LLVM, if available
TARGET_USE_SDCLANG := true

# Vendor init
TARGET_INIT_VENDOR_LIB := libinit_X00T
TARGET_RECOVERY_DEVICE_MODULES := libinit_X00T

# Wifi
BOARD_USES_AOSP_WLAN_HAL := false
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_DRIVER_OPERSTATE_PATH := "/sys/class/net/wlan0/operstate"
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true

# inherit from the proprietary version
-include vendor/asus/X00T/BoardConfigVendor.mk
