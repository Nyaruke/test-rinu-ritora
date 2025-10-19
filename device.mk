$(call inherit-product-if-exists, vendor/sts/a04br3/a04br3-vendor.mk)

LOCAL_PATH := device/sts/a04br3

# API levels
PRODUCT_SHIPPING_API_LEVEL := 24
PRODUCT_ENFORCE_RRO_TARGETS := *
# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debuggable=1 \
    security.perf_harden=0 \
    ro.config.low_ram=false \
    ro.telephony.default_network=0 \
    persist.sys.usb.config=mtp,adb \
    ro.lockscreen.disable.default=true \
    ro.zygote=zygote64_32

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.oem_unlock_supported=0 \
    persist.service.acm.enable=0 \
    ro.secure=0 \
    security.perf_harden=0 \
    ro.allow.mock.location=0 \
    ro.debuggable=1 \
    ro.zygote=zygote64_32 \
    persist.sys.usb.config=mtp,adb \
    ro.mount.fs=EXT4 \
    persist.sys.mtk.disable.moms=1 \
    debug.mediatek.pq.enable=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=0 \
    ro.telephony.disable=true \
    ro.kernel.android.checkjni=0 \
    ro.setupwizard.mode=DISABLED \
    ro.radio.noril=true

ADDITIONAL_BUILD_PROPERTIES += \
    ro.build.selinux=0 \
    dalvik.vm.heapstartsize=16m \
    dalvik.vm.heapgrowthlimit=192m \
    dalvik.vm.heapsize=384m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2MB \
    dalvik.vm.heapmaxfree=8m \
    ro.telephony.disable=true \
    ro.config.ringtone=ANDROMEDA.ogg \
    ro.config.alarm_alert=Cesium.ogg \
    ro.config.notification_sound=pixiedust.ogg \
    ro.btstack=blueangel \
    ro.sf.hwrotation=270 \
    drm.service.enabled=false \
    fmradio.driver.enable=0 \
    ro.mtk_support_mp2_playback=1 \
    ro.mtk_audio_alac_support=1 \
    ro.mtk_bt_support=1 \
    ro.mtk_audio_tuning_tool_ver=V2.2 \
    ro.mtk_wlan_support=1 \
    ro.mtk_search_db_support=1 \
    ro.mtk_dhcpv6c_wifi=1 \
    ro.have_aacencode_feature=1 \
    ro.mtk_audio_ape_support=1 \
    ro.mtk_wmv_playback_support=1 \
    ro.mtk_send_rr_support=1 \
    ro.mtk_emmc_support=1 \
    ro.mtk_tetheringipv6_support=1 \
    ro.mtk_shared_sdcard=1 \
    ro.mtk_flight_mode_power_off_md=1 \
    ro.mtk_miravision_support=0 \
    ro.mtk_blulight_def_support=1 \
    ro.mtk_wifi_mcc_support=1 \
    ro.mtk_bip_scws=1 \
    ro.mtk_world_phone_policy=0 \
    ro.mtk_perfservice_support=0 \
    ro.mtk_owner_sdcard_support=1 \
    ro.mtk_cta_set=1 \
    ro.mtk_multi_patition=1 \
    ro.mtk_cam_mfb_support=0 \
    ro.mtk_bg_power_saving_support=1 \
    ro.mtk_bg_power_saving_ui=1 \
    ro.have_aee_feature=1 \
    ro.mtk_dual_mic_support=0 \
    ro.mtk_is_tablet=1 \
    wfd.dummy.enable=1 \
    wfd.iframesize.level=0 \
    ro.mediatek.project.path=device/sts/a04br3 \
    ro.mtk_sec_video_path_support=1 \
    persist.mtk.wcn.patch.version=-1 \
    persist.mtk.wcn.dynamic.dump=0 \
    persist.mtk.connsys.poweron.ctl=0 \
    ro.com.android.mobiledata=false \
    ro.mtk_deinterlace_support=1 \
    ro.boot.opt_using_default=1 \
    mtk.vdec.waitkeyframeforplay=1 \
    ro.sys.sdcardfs=1 \
    persist.sys.timezone=Asia/Tokyo \
    ro.product.locale.language=ja \
    ro.product.locale.region=JP \
    ro.radio.noril=true

BOOTIMAGE_BUILD_PROPERTIES += \
    ro.bootimage.build.fingerprint=benesse/TAB-A04-BR3/TAB-A04-BR3:7.0/01.06.000/01.06.000:user/release-keys

PRODUCT_PACKAGES := $(filter-out CtsVerifier CtsShim CtsAppSecurityHostTestCases CtsDeviceAdmin,$(PRODUCT_PACKAGES))
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-impl \
    android.hardware.health@2.0-impl.recovery \
    android.hardware.health@2.0-service

#test key
#PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service.software \
    keystore.default

#PRODUCT_COPY_FILES := $(filter-out %ethernet%:%,$(PRODUCT_COPY_FILES))
#PRODUCT_COPY_FILES := $(filter-out %:system/framework/ims-common.jar,$(PRODUCT_COPY_FILES))
#PRODUCT_COPY_FILES := $(filter-out %:system/framework/ethernet-service.jar,$(PRODUCT_COPY_FILES))
#PRODUCT_COPY_FILES := $(filter-out %:system/framework/telephony-common.jar,$(PRODUCT_COPY_FILES))
#PRODUCT_COPY_FILES := $(filter-out %:system/priv-app/TeleService.apk,$(PRODUCT_COPY_FILES))
#PRODUCT_COPY_FILES := $(filter-out %:system/priv-app/TeleService/TeleService.apk,$(PRODUCT_COPY_FILES))
#PRODUCT_COPY_FILES := $(filter-out %telephon%:%,$(PRODUCT_COPY_FILES))
#PRODUCT_PACKAGES := $(filter-out TeleService TelephonyProvider TelephonyCommon,$(PRODUCT_PACKAGES))
#PRODUCT_PACKAGES := $(filter-out ims-common com.android.ethernet ethernet-service,$(PRODUCT_PACKAGES))

PRODUCT_PACKAGES := $(filter-out org.lineageos.setupwizard,$(PRODUCT_PACKAGES))

PRODUCT_PACKAGES += \
    libstlport
 
PRODUCT_PACKAGES += \
    libion

PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

PRODUCT_PACKAGES += \
    e2fsck \
    fsck.f2fs \
    mkfs.f2fs \
    make_ext4fs

PRODUCT_PACKAGES += \
    lights.mt8167

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:/system/etc/a2dp_audio_policy_configuration.xml

# Media
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml

PRODUCT_PACKAGES += \
    fstab.mt8167 \
    init.mt8167.rc \
    init.mt8167.usb.rc \
    init.usb.rc \
    init.usb.configfs.rc \
    init.recovery.mt8167.rc \
    ueventd.mt8167.rc \
    ueventd.rc \
    init.modem.rc \
    init.zygote32.rc \
    init.zygote64_32.rc \
    toybox \
    init.cm.rc \
    init.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.mt8167.rc:root/init.mt8167.rc \
    $(LOCAL_PATH)/rootdir/etc/init.mt8167.usb.rc:root/init.mt8167.usb.rc \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt8167:root/fstab.mt8167 \
    $(LOCAL_PATH)/rootdir/etc/init.recovery.mt8167.rc:root/init.recovery.mt8167.rc \
    $(LOCAL_PATH)/rootdir/etc/ueventd.mt8167.rc:root/ueventd.mt8167.rc \
    $(LOCAL_PATH)/rootdir/etc/init.usb.rc:root/ini.tusb.rc \
    $(LOCAL_PATH)/rootdir/etc/init.usb.configfs.rc:root/init.usb.configfs.rc \
    $(LOCAL_PATH)/rootdir/etc/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/rootdir/etc/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/etc/init.zygote32.rc:root/init.zygote32.rc \
    $(LOCAL_PATH)/rootdir/etc/init.zygote64_32.rc:root/init.zygote64_32.rc \
    $(LOCAL_PATH)/toybox:system/bin/toybox \
    $(LOCAL_PATH)/rootdir/etc/init.cm.rc:root/init.cm.rc \
    $(LOCAL_PATH)/rootdir/etc/init.rc:root/init.rc

include device/sts/a04br3/media.mk
include device/sts/a04br3/wifi.mk
include device/sts/a04br3/permissions.mk
