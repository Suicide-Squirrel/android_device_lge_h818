# Inherit AOSCP common bits
$(call inherit-product, vendor/aoscp/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/aoscp/configs/telephony.mk)

# Inherit AOSP device configuration for H818
$(call inherit-product, device/lge/h818/full_h818.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Setup device specific product configuration
PRODUCT_NAME := aoscp_h818

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g4" \
    PRODUCT_NAME="g4_global_com" \
    BUILD_FINGERPRINT="lge/p1_global_com/p1:8.0/NRD90U/171931902b165:user/release-keys" \
    PRIVATE_BUILD_DESC="p1_global_com-user 8.0 NRD90U 171931902b165 release-keys"
