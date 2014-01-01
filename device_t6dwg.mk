$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/htc/t6dwg/t6dwg-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/t6dwg/overlay

# common overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/max-common/overlay-cdma

# Inherit from max-common
$(call inherit-product, device/htc/max-common/max-common.mk)

LOCAL_PATH := device/htc/t6dwg
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# vold config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/vold.fstab:system/etc/vold.fstab

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=8
PRODUCT_NAME := full_t6dwg
PRODUCT_DEVICE := t6dwg
