## Specify phone tech before including full_phone
$(call inherit-product, vendor/aosp/config/gsm.mk)

PRODUCT_RELEASE_NAME := evita

# Inherit common product files.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/htc/evita/full_evita.mk)

TARGET_BOOTANIMATION_NAME := vertical-720x1280

# Device naming
PRODUCT_DEVICE := evita
PRODUCT_NAME := xylon_evita
PRODUCT_BRAND := htc
PRODUCT_MODEL := One X
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_evita BUILD_FINGERPRINT="cingular_us/evita/evita:4.1.1/JRO03C/131981.6:user/release-keys" PRIVATE_BUILD_DESC="3.18.502.6 CL131981 release-keys" BUILD_NUMBER=79936


# Copy mako specific prebuilt files
PRODUCT_COPY_FILES +=  \
	vendor/aosp/prebuilt/hybrid_evita.conf:system/etc/beerbong/properties.conf \
    vendor/aosp/prebuilt/bootanimation/bootanimation_1280_720.zip:system/media/bootanimation.zip \
    vendor/aosp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aosp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

TARGET_OTA_ASSERT_DEVICE := evita
