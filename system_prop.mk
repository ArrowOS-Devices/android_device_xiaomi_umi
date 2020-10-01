# Bluetooth
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.vendor.bt.a2dp.aac_whitelist=false \
    persist.vendor.btstack.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aptxadaptive-aac-ldac \
    persist.vendor.btstack.enable.splita2dp=true \
    persist.vendor.btstack.enable.twsplus=true \
    persist.vendor.btstack.enable.twsplussho=true \
    ro.bluetooth.library_name=libbluetooth_qti.so \
    vendor.bluetooth.soc=cherokee

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,org.lineageos.snap

# CNE
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.vendor.cne.feature=1

# DPM
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.vendor.dpm.feature=9

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.disable_backpressure=1 \
    debug.sf.latch_unsignaled=1 \
    debug.sf.enable_hwc_vds=1

# IMS
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.settings.xml=/system/etc/media_profiles_vendor.xml \
    vendor.mm.enable.qcom_parser=63963135

# Memory optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.sys.fw.bservice_enable=true

# Netflix
PRODUCT_PROPERTY_OVERRIDES += \
    ro.netflix.bsp_rev=Q855-16947-1

# Netmgr
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.vendor.data.iwlan.enable=true \
    ro.vendor.use_data_netmgrd=true \
    persist.vendor.data.mode=concurrent

# Radio
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.telephony.default_network=22,22

# RCS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rcs.supported=1

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.sensors.enable.mag_filter=true

# Vendor
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.va_aosp.support=1
