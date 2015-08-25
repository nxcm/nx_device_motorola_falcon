$(call inherit-product, device/motorola/falcon/full_falcon.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_RELEASE_NAME := MOTO G
PRODUCT_NAME := cm_falcon
NX_MODEL_NAME := Moto G (2013)

PRODUCT_GMS_CLIENTID_BASE := android-motorola
