#
# Copyright (C) 2016 The CyanogenMod Project
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

# call the proprietary setup
$(call inherit-product, vendor/motorola/falcon/falcon-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Motorola-specific permissions
PRODUCT_COPY_FILES += \
    device/motorola/falcon/permissions/com.motorola.actions.xml:system/etc/permissions/com.motorola.actions.xml \
    device/motorola/falcon/permissions/com.motorola.android.dm.service.xml:system/etc/permissions/com.motorola.android.dm.service.xml \
    device/motorola/falcon/permissions/com.motorola.android.encryption_library.xml:system/etc/permissions/com.motorola.android.encryption_library.xml \
    device/motorola/falcon/permissions/com.motorola.android.tcmd.xml:system/etc/permissions/com.motorola.android.tcmd.xml \
    device/motorola/falcon/permissions/com.motorola.aon.quickpeek.xml:system/etc/permissions/com.motorola.aon.quickpeek.xml \
    device/motorola/falcon/permissions/com.motorola.aov.xml:system/etc/permissions/com.motorola.aov.xml \
    device/motorola/falcon/permissions/com.motorola.avatar.xml:system/etc/permissions/com.motorola.avatar.xml \
    device/motorola/falcon/permissions/com.motorola.camerabgproc_library.xml:system/etc/permissions/com.motorola.camerabgproc_library.xml \
    device/motorola/falcon/permissions/com.motorola.camera.xml:system/etc/permissions/com.motorola.camera.xml \
    device/motorola/falcon/permissions/com.motorola.fpsmotosignature.xml:system/etc/permissions/com.motorola.fpsmotosignature.xml \
    device/motorola/falcon/permissions/com.motorola.frameworks.core.addon.xml:system/etc/permissions/com.motorola.frameworks.core.addon.xml \
    device/motorola/falcon/permissions/com.motorola.gallery.xml:system/etc/permissions/com.motorola.gallery.xml \
    device/motorola/falcon/permissions/com.motorola.haptic.xml:system/etc/permissions/com.motorola.haptic.xml \
    device/motorola/falcon/permissions/com.motorola.moodle.library.xml:system/etc/permissions/com.motorola.moodle.library.xml \
    device/motorola/falcon/permissions/com.motorola.motodisplay.pd.screenoff.xml:system/etc/permissions/com.motorola.motodisplay.pd.screenoff.xml \
    device/motorola/falcon/permissions/com.motorola.motosignature.xml:system/etc/permissions/com.motorola.motosignature.xml \
    device/motorola/falcon/permissions/com.motorola.moto.xml:system/etc/permissions/com.motorola.moto.xml \
    device/motorola/falcon/permissions/com.motorola.pixelpipe.xml:system/etc/permissions/com.motorola.pixelpipe.xml \
    device/motorola/falcon/permissions/com.motorola.sensorhub.stm401.xml:system/etc/permissions/com.motorola.sensorhub.stm401.xml \
    device/motorola/falcon/permissions/com.motorola.slpc.xml:system/etc/permissions/com.motorola.slpc.xml \
    device/motorola/falcon/permissions/com.motorola.software.bodyguard.xml:system/etc/permissions/com.motorola.software.bodyguard.xml \
    device/motorola/falcon/permissions/com.motorola.software.guideme.xml:system/etc/permissions/com.motorola.software.guideme.xml \
    device/motorola/falcon/permissions/com.motorola.software.smartnotifications.xml:system/etc/permissions/com.motorola.software.smartnotifications.xml \
    device/motorola/falcon/permissions/com.motorola.software.x_line.xml:system/etc/permissions/com.motorola.software.x_line.xml \
    device/motorola/falcon/permissions/com.motorola.targetnotif.xml:system/etc/permissions/com.motorola.targetnotif.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/mixer_paths.xml:system/etc/mixer_paths.xml

# Ramdisk
PRODUCT_PACKAGES += \
    init.target.rc

# CDMA APN list
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/apns-conf-cdma.xml:system/etc/apns-conf-cdma.xml

# Inherit from msm8226-common
$(call inherit-product, device/motorola/msm8226-common/msm8226.mk)
