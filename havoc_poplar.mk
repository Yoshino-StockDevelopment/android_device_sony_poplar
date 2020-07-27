$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit device configuration
$(call inherit-product, device/sony/poplar/device.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

### BOOTANIMATION
# vendor/lineage/config/common_full_phone.mk
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
# vendor/lineage/config/common.mk
TARGET_BOOTANIMATION_HALF_RES := true

### LINEAGE
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := havoc_poplar
PRODUCT_DEVICE := poplar
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=poplar

PRODUCT_GMS_CLIENTID_BASE := android-sony-mobile

WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_PIXEL_WALLPAPER := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

