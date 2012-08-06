# Release name
PRODUCT_RELEASE_NAME := SSA2

# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/allwinner/ssa2/full_ssa2.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ssa2
PRODUCT_NAME := cm_ssa2
PRODUCT_BRAND := SkytexSkypadAlpha2
PRODUCT_MODEL := SX-SP715A
PRODUCT_MANUFACTURER := Allwinner

#Set build fingerprint / ID / Product Name etc
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ssa2 BUILD_FINGERPRINT="allwinner/ssa2/ssa2:4.0.4/IMM76I/330937:user/release-keys" PRIVATE_BUILD_DESC="ssa2-user 4.0.4 IMM76I 330937 release-keys"
