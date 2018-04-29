$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/meizu/m2note/device.mk)

# Release name
PRODUCT_RELEASE_NAME := m2note

PRODUCT_DEVICE := m2note
PRODUCT_NAME := omni_m2note
PRODUCT_BRAND := Meizu
PRODUCT_MODEL := m2note
PRODUCT_MANUFACTURER := 
PRODUCT_RESTRICT_VENDOR_FILES := false

# Boot animation
TARGET_SCREEN_HEIGHT      := 1920
TARGET_SCREEN_WIDTH       := 1080
TARGET_BOOTANIMATION_NAME := 1080

PRODUCT_DEFAULT_LANGUAGE := cn
PRODUCT_DEFAULT_REGION   := ZH
