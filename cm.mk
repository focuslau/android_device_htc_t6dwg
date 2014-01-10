$(call inherit-product, device/htc/t6dwg/full_t6dwg.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := t6dwg
PRODUCT_NAME := cm_t6dwg
PRODUCT_BRAND := htc
PRODUCT_MODEL := t6dwg
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=htccn_chs_ct \
    BUILD_ID=JSS15J \
    BUILD_FINGERPRINT="htc/htccn_chs_ct/t6dwg:4.3/JSS15J/282597.1:user/release-keys" \
    PRIVATE_BUILD_DESC="1.41.1401.1 CL282597 release-keys"

# apn config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/apns-conf.xml:/system/etc/apns-conf.xml

PRODUCT_GMS_CLIENTID_BASE := android-verizon
