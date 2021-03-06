# Inherit AOSP device configuration for mako.
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit common product files.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aosp/config/gsm.mk)

# Mako Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/mako

# Setup device specific product configuration.
PRODUCT_NAME := xylon_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=occam BUILD_FINGERPRINT="google/occam/mako:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="occam-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

# Copy mako specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/hybrid_xhdpi.conf:system/etc/beerbong/properties.conf \
    vendor/aosp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aosp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd
