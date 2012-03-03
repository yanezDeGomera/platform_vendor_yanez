# Generic product
PRODUCT_NAME := yanez
PRODUCT_BRAND := yanez
PRODUCT_DEVICE := generic

# Include GSM stuff
$(call inherit-product, vendor/yanez/products/gsm.mk)

PRODUCT_PACKAGES += \
    Superuser \
    Mms \
    Camera

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

# Bring in all audio files
include frameworks/base/data/sounds/AllAudio.mk

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false


PRODUCT_COPY_FILES += \
    vendor/yanez/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/yanez/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/yanez/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/yanez/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/yanez/prebuilt/common/etc/init.d/99complete:system/etc/init.d/99complete \
    vendor/yanez/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/yanez/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/yanez/prebuilt/common/bin/verify_cache_partition_size.sh:system/bin/verify_cache_partition_size.sh \
    vendor/yanez/prebuilt/common/xbin/htop:system/xbin/htop \
    vendor/yanez/prebuilt/common/xbin/irssi:system/xbin/irssi \
    vendor/yanez/prebuilt/common/xbin/powertop:system/xbin/powertop \
    vendor/yanez/prebuilt/common/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh \
    vendor/yanez/prebuilt/common/bin/modelid_cfg.sh:system/bin/modelid_cfg.sh \
    vendor/yanez/prebuilt/setup/overlay:system/setup/overlay
