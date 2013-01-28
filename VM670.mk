# Most specific first. 
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk) 

LOCAL_KERNEL_DIR := device/lge/VM670/kernels/BobZ
LOCAL_KERNEL_MODULES := tun.ko wireless.ko cifs.ko

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL_DIR)/zImage:kernel

PRODUCT_COPY_FILES += \
    $(foreach f,$(LOCAL_KERNEL_MODULES),$(LOCAL_KERNEL_DIR)/$(f):system/lib/modules/$(f)) \

# thunderc configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thunderc_keypad.kl:system/usr/keylayout/thunderc_keypad.kl \
    $(LOCAL_PATH)/configs/thunderc_keypad.kcm.bin:system/usr/keychars/thunderc_keypad.kcm.bin \
    $(LOCAL_PATH)/configs/touch_mcs6000.idc:system/usr/idc/touch_mcs6000.idc \
    $(LOCAL_PATH)/configs/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/999youtube:system/etc/init.d/999youtube \
    $(LOCAL_PATH)/configs/40a2sd:system/etc/init.d/40a2sd \
    $(LOCAL_PATH)/configs/95zipalign:system/etc/init.d/95zipalign

PRODUCT_COPY_FILES += device/lge/VM670/configs/default.prop:root/default.prop 
PRODUCT_COPY_FILES += device/lge/VM670/configs/thunderc_keypad.kl:system/usr/keylayout/thunderc_keypad.kl 
PRODUCT_COPY_FILES += device/lge/VM670/configs/thunderc_keypad.kcm.bin:system/usr/keychars/thunderc_keypad.kcm.bin 
PRODUCT_COPY_FILES += device/lge/VM670/configs/7k_handset.kl:system/usr/keylayout/7k_handset.kl 
PRODUCT_COPY_FILES += device/lge/VM670/configs/Generic.kl:system/usr/keylayout/Generic.kl 

# init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.thunderc.rc:root/init.thunderc.rc \
    $(LOCAL_PATH)/ueventd.thunderc.rc:root/ueventd.thunderc.rc

# bluetooth vendor configuration 
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf
	
# Audio
#PRODUCT_PACKAGES += \
    audio_policy.thunderc \
    audio.primary.thunderc

# Live wallpapers
PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    librs_jni

# Full-featured build of the Open-Source
$(call inherit-product, vendor/lge/VM670/VM670-vendor.mk) 
$(call inherit-product, device/lge/msm7x27-common/device.mk)
$(call inherit-product, vendor/lge/msm7x27-common/msm7x27-common-vendor-blobs.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_small.mk)

PRODUCT_AAPT_CONFIG := normal mdpi 
PRODUCT_AAPT_PREF_CONFIG := mdpi 
 
DEVICE_PACKAGE_OVERLAYS += device/lge/VM670/overlay

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=BobZ_CM10.1
PRODUCT_NAME := thunderc
PRODUCT_DEVICE := VM670
PRODUCT_BRAND := Virgin_Mobile
PRODUCT_MODEL := LG-VM670
PRODUCT_MANUFACTURER := LGE

CDMA_GOOGLE_BASE := android-sprint-us
CDMA_CARRIER_ALPHA := Virgin_Mobile
CDMA_CARRIER_NUMERIC := 311490

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(CDMA_GOOGLE_BASE) \
    ro.cdma.home.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    ro.cdma.home.operator.numeric=$(CDMA_CARRIER_NUMERIC) \
    gsm.sim.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    gsm.sim.operator.numeric=$(CDMA_CARRIER_NUMERIC) \
    gsm.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    gsm.operator.numeric=$(CDMA_CARRIER_NUMERIC) \
    gsm.operator.iso-country = us

