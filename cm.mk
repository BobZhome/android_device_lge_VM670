# Include CDMA stuff
$(call inherit-product, vendor/cm/config/cdma.mk)
# Inherit device configuration for thunderc.
$(call inherit-product, device/lge/VM670/VM670.mk)
# Boot Animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320

$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

PRODUCT_NAME := cm_VM670
PRODUCT_BRAND := lge
PRODUCT_DEVICE := VM670
PRODUCT_MODEL := LG-VM670
PRODUCT_MANUFACTURER := LGE
PRODUCT_CHARACTERISTICS := phone

# Release name and versioning
PRODUCT_RELEASE_NAME := VM670
PRODUCT_VERSION_DEVICE_SPECIFIC :=
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lge_VM670 \
    BUILD_FINGERPRINT="lge/VM670/VM670:2.3.3/GRI40/LG-VM670-V20g.19C11F164C:user/release-keys" \
    PRIVATE_BUILD_DESC="thunderc-user 2.3.3 GRI40  LG-VM670-V20g.19C11F164C release-keys"
