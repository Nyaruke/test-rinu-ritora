#PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    wpa_cli \
    wpa_supplicant

PRODUCT_PACKAGES += \
    hostapd

PRODUCT_COPY_FILES += \
    device/sts/a04br3/configs/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/sts/a04br3/configs/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    device/sts/a04br3/configs/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf
