#
# Copyright (C) 2020 Paranoid Android
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

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

# Inherit proprietary targets
$(call inherit-product-if-exists, vendor/xiaomi/cmi/cmi-vendor.mk)

-include $(LOCAL_PATH)/product_prop.mk
-include $(LOCAL_PATH)/system_prop.mk

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 29

# Board
TARGET_BOARD_PLATFORM := kona

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-pa

# A/B
AB_OTA_UPDATER := false

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    tinymix

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy_engine_configuration.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/audio_policy_engine_configuration.xml

# Bluetooth
PRODUCT_PACKAGES += \
    libbluetooth_qti

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# Fingerprint
#PRODUCT_PACKAGES += \
#    pa.biometrics.fingerprint.inscreen@1.0-service.kona

#PRODUCT_COPY_FILES += \
#   vendor/pa/config/permissions/vendor.pa.biometrics.fingerprint.inscreen.xml:system/etc/permissions/vendor.pa.biometrics.fingerprint.inscreen.xml

# Fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.xiaomi_kona

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_profiles_vendor.xml:system/etc/media_profiles_vendor.xml

# Namespaces
PRODUCT_SOONG_NAMESPACES += \
    device/xiaomi/cmi

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    com.gsma.services.nfc \
    NfcNci \
    Tag \
    SecureElement

# Overlays
PRODUCT_PACKAGES += \
    XiaomiBluetooth \
    XiaomiFrameworks \
    XiaomiSystemUI

# Overlays - override vendor ones
PRODUCT_PACKAGES += \
    FrameworksResCommon \
    FrameworksResTarget \
    DevicesOverlay \
    DevicesAndroidOverlay

# Paranoid Doze
PRODUCT_PACKAGES += \
    ParanoidDoze

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_BUILD_PRODUCT_IMAGE := true

# Perf
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/perfconfigstore.xml:$(TARGET_COPY_OUT_PRODUCT)vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/perf/perfconfigstore.xml

# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/privapp-permissions-qti.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-qti.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.ims.xml

# QTI common
TARGET_COMMON_QTI_COMPONENTS := \
    audio \
    av \
    bt \
    display \
    perf \
    telephony \
    wfd

# Ramdisk
PRODUCT_PACKAGES += \
    init.qcom.rc \
    init.recovery.qcom.rc
