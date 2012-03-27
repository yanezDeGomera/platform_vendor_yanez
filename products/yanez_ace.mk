# Inherit AOSP device configuration for ace
$(call inherit-product, device/htc/ace/full_ace.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/yanez/products/common.mk)

# Google Apps
$(call inherit-product-if-exists, vendor/google/google-vendor.mk)

# Common Files
PRODUCT_COPY_FILES += \
	vendor/yanez/prebuilt/media/bootanimation_johnblundon.zip:system/media/bootanimation.zip \
	vendor/yanez/products/gps.conf:system/etc/gps.conf \
	vendor/yanez/products/overlay/ApexLauncher.apk:system/app/ApexLauncher.apk \
	vendor/yanez/products/overlay/Authenticator.apk:data/app/Authenticator.apk \
	vendor/yanez/products/overlay/BarcodeReader.apk:data/app/BarcodeReader.apk \
	vendor/yanez/products/overlay/BatteryCalibration.apk:data/app/BatteryCalibration.apk \
	vendor/yanez/products/overlay/com.sgiggle.production-1.apk:data/app/com.sgiggle.production-1.apk \
	vendor/yanez/products/overlay/CurrentWidget.apk:data/app/CurrentWidget.apk \
	vendor/yanez/products/overlay/Endomondo.apk:data/app/Endomondo.apk \
	vendor/yanez/products/overlay/EsFileExplorer.apk:data/app/EsFileExplorer.apk \
	vendor/yanez/products/overlay/Facebook.apk:data/app/Facebook.apk \
	vendor/yanez/products/overlay/FancyWidgets.apk:data/app/FancyWidgets.apk \
	vendor/yanez/products/overlay/GpsTest.apk:data/app/GpsTest.apk \
	vendor/yanez/products/overlay/GTask.apk:data/app/GTask.apk \
	vendor/yanez/products/overlay/IlMeteo.apk:data/app/IlMeteo.apk \
	vendor/yanez/products/overlay/LastFmFree.apk:data/app/LastFmFree.apk \
	vendor/yanez/products/overlay/MaxThonMobile.apk:data/app/MaxThonMobile.apk \
	vendor/yanez/products/overlay/Messenger.apk:data/app/Messenger.apk \
	vendor/yanez/products/overlay/Quadrant.apk:data/app/Quadrant.apk \
	vendor/yanez/products/overlay/Shazam.apk:data/app/Shazam.apk \
	vendor/yanez/products/overlay/SingleBattery.apk:data/app/SingleBattery.apk \
	vendor/yanez/products/overlay/SMSBackupRestore.apk:data/app/SMSBackupRestore.apk \
	vendor/yanez/products/overlay/TitaniumBackup.apk:data/app/TitaniumBackup.apk \
	vendor/yanez/products/overlay/TitaniumBackupPro.apk:data/app/TitaniumBackupPro.apk \
	vendor/yanez/products/overlay/Twitter.apk:data/app/Twitter.apk \
	vendor/yanez/products/overlay/Waze.apk:data/app/Waze.apk \
	vendor/yanez/products/overlay/WhatsApp.apk:data/app/WhatsApp.apk \
	vendor/yanez/products/overlay/WiFiFileExplorer.apk:data/app/WiFiFileExplorer.apk \

#
# Setup device specific product configuration.
#
PRODUCT_NAME := htc_ace
PRODUCT_BRAND := htc_wwe
PRODUCT_DEVICE := ace
PRODUCT_MODEL := HTC Desire HD
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=google/yakju/maguro:4.0.1/ITL41D/223971:user/release-keys

# Lord Version
PRODUCT_VERSION_MAJOR = 6
PRODUCT_VERSION_MINOR = 2
PRODUCT_VERSION_MAINTENANCE = AOKP_byFabio
PRODUCT_VERSION_GOOAOKP = 7

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=IML74K

PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=IceColdSandwich-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE) \
	ro.goo.developerid=IceCold \
	ro.goo.rom=IceColdAOKP \
	ro.goo.version=$(PRODUCT_VERSION_GOOAOKP)

