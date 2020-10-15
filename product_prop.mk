# Media
PRODUCT_PRODUCT_PROPERTIES += \
    debug.stagefright.omx_default_rank.sw-audio=16

# Recorder
PRODUCT_PRODUCT_PROPERTIES += \
    persist.vendor.audio.fluence.voicerec=true \
    persist.vendor.audio.fluence.audiorec=true

# Telephony
PRODUCT_PRODUCT_PROPERTIES += \
    ro.telephony.default_network=22,22 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1
