# Kernel
TARGET_KERNEL_SOURCE := kernel/sony/msm

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/aries/overlay-crdroid

# Inherit AOSP Shinano device parts
$(call inherit-product, device/sony/aries/aosp_d5803.mk)

# Inherit crDroid Shinano device parts
$(call inherit-product, device/sony/shinano/device_crdroid.mk)

## crDroid Parts ##
# Inherit crDroid common Phone stuff.
$(call inherit-product, vendor/crdroid/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/crdroid/config/nfc_enhanced.mk)
## End crDroid Parts ##

# Recovery
PRODUCT_COPY_FILES += \
    device/sony/aries/recovery/root/etc/bootrec-device:recovery/root/etc/bootrec-device

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D5803
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/D5803/D5803:5.1.1/23.4.A.0.546/864948651:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="D5803-user 5.1.1 23.4.A.0.546 864948651 release-keys"

# Override Product Name for crDroid
PRODUCT_NAME := crdroid_aries
PRODUCT_MODEL := Xperia Z3 Compact

# Assert
TARGET_OTA_ASSERT_DEVICE := D5803,D5833,z3c,aries


