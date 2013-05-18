# Inherit AOSP device configuration for jflteatt.
$(call inherit-product, device/samsung/jflteatt/full_jflteatt.mk)

# Inherit common product files.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aosp/config/gsm.mk)

# Mako Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/toro

# Setup device specific product configuration.
PRODUCT_NAME := xylon_jflteatt
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := jflteatt
PRODUCT_MODEL := SGS4
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jflteatt TARGET_DEVICE=jflteatt BUILD_FINGERPRINT="samsung/jflteatt/jflteatt:4.2.2/JDQ39:user/release-keys" PRIVATE_BUILD_DESC="jflteatt-user 4.2.2 JDQ39 release-keys"

# Copy mako specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/hybrid_xhdpi.conf:system/etc/beerbong/properties.conf \
    vendor/aosp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aosp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd
