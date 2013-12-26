## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := t6dwg

# Inherit device configuration
$(call inherit-product, device/htc/t6dwg/device_t6dwg.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := t6dwg
PRODUCT_NAME := cm_t6dwg
PRODUCT_BRAND := htc
PRODUCT_MODEL := t6dwg
PRODUCT_MANUFACTURER := HTC
