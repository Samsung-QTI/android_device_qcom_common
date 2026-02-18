# Common definitions and properties for Qualcomm-based devices

# Device Branding
PRODUCT_BRAND := qcom
PRODUCT_MANUFACTURER := QUALCOMM

# AAPT Configuration
PRODUCT_AAPT_CONFIG += hdpi mdpi

# Vendor Extension Library
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.extension_library=libqti-perfd-client.so

# Radio/Modem Configuration
PRODUCT_VENDOR_PROPERTIES += \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.procedure_bytes=SKIP

# System Configuration
PRODUCT_SYSTEM_PROPERTIES += \
    persist.backup.ntpServer=0.pool.ntp.org

PRODUCT_VENDOR_PROPERTIES += \
    sys.vendor.shutdown.waittime=500

# whitelisted app
PRODUCT_COPY_FILES += \
    device/qcom/common/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml

PRODUCT_COPY_FILES += \
    device/qcom/common/privapp-permissions-qti.xml:system/etc/permissions/privapp-permissions-qti.xml

# QTI permission definitions and privileged permission allowlists
PRODUCT_COPY_FILES += \
    device/qcom/common/com.qualcomm.qcom_diag.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.qualcomm.qcom_diag.xml

PRODUCT_COPY_FILES += \
    device/qcom/common/privapp-permissions-qti-system-ext.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-qti-system-ext.xml

PRODUCT_COPY_FILES += \
    device/qcom/common/privapp-permissions-qti-vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/privapp-permissions-qti-vendor.xml

PRODUCT_COPY_FILES += \
    device/qcom/common/qti_permissions.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/qti_permissions.xml

# Ipsec_tunnels feature
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml

# Permission for Wi-Fi passpoint support
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml

PRODUCT_PRIVATE_KEY := device/qcom/common/qcom.key
#PRODUCT_PACKAGES += qcril.db

# Memtrack
PRODUCT_PACKAGES += \
    vendor.qti.hardware.memtrack-service

ifneq ($(TARGET_DEFINES_DALVIK_HEAP), true)
ifneq ($(TARGET_HAS_LOW_RAM), true)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
endif
endif

# Define Product Namespaces
PRODUCT_SOONG_NAMESPACES += \
    hardware/qcom/display \
    vendor/qcom/opensource/commonsys/display \
    vendor/qcom/opensource/commonsys-intf/display

# RFS APQ GNSS symlinks
PRODUCT_PACKAGES += \
    rfs_apq_gnss_hlos_symlink \
    rfs_apq_gnss_ramdumps_symlink \
    rfs_apq_gnss_readonly_firmware_symlink \
    rfs_apq_gnss_readonly_vendor_firmware_symlink \
    rfs_apq_gnss_readwrite_symlink \
    rfs_apq_gnss_shared_symlink

# RFS MDM ADSP symlinks
PRODUCT_PACKAGES += \
    rfs_mdm_adsp_hlos_symlink \
    rfs_mdm_adsp_ramdumps_symlink \
    rfs_mdm_adsp_readonly_firmware_symlink \
    rfs_mdm_adsp_readonly_vendor_firmware_symlink \
    rfs_mdm_adsp_readwrite_symlink \
    rfs_mdm_adsp_shared_symlink

# RFS MDM CDSP symlinks
PRODUCT_PACKAGES += \
    rfs_mdm_cdsp_hlos_symlink \
    rfs_mdm_cdsp_ramdumps_symlink \
    rfs_mdm_cdsp_readonly_firmware_symlink \
    rfs_mdm_cdsp_readonly_vendor_firmware_symlink \
    rfs_mdm_cdsp_readwrite_symlink \
    rfs_mdm_cdsp_shared_symlink

# RFS MDM MPSS symlinks
PRODUCT_PACKAGES += \
    rfs_mdm_mpss_hlos_symlink \
    rfs_mdm_mpss_ramdumps_symlink \
    rfs_mdm_mpss_readonly_firmware_symlink \
    rfs_mdm_mpss_readonly_vendor_firmware_symlink \
    rfs_mdm_mpss_readwrite_symlink \
    rfs_mdm_mpss_shared_symlink

# RFS MDM OIS symlinks
PRODUCT_PACKAGES += \
    rfs_mdm_ois_hlos_symlink \
    rfs_mdm_ois_ramdumps_symlink \
    rfs_mdm_ois_readonly_firmware_symlink \
    rfs_mdm_ois_readonly_vendor_firmware_symlink \
    rfs_mdm_ois_readwrite_symlink \
    rfs_mdm_ois_shared_symlink

# RFS MDM SLPI symlinks
PRODUCT_PACKAGES += \
    rfs_mdm_slpi_hlos_symlink \
    rfs_mdm_slpi_ramdumps_symlink \
    rfs_mdm_slpi_readonly_firmware_symlink \
    rfs_mdm_slpi_readonly_vendor_firmware_symlink \
    rfs_mdm_slpi_readwrite_symlink \
    rfs_mdm_slpi_shared_symlink

# RFS MDM TN symlinks
PRODUCT_PACKAGES += \
    rfs_mdm_tn_hlos_symlink \
    rfs_mdm_tn_ramdumps_symlink \
    rfs_mdm_tn_readonly_firmware_symlink \
    rfs_mdm_tn_readonly_vendor_firmware_symlink \
    rfs_mdm_tn_readwrite_symlink \
    rfs_mdm_tn_shared_symlink

# RFS MDM WPSS symlinks
PRODUCT_PACKAGES += \
    rfs_mdm_wpss_hlos_symlink \
    rfs_mdm_wpss_ramdumps_symlink \
    rfs_mdm_wpss_readonly_firmware_symlink \
    rfs_mdm_wpss_readonly_vendor_firmware_symlink \
    rfs_mdm_wpss_readwrite_symlink \
    rfs_mdm_wpss_shared_symlink

# RFS MSM ADSP symlinks
PRODUCT_PACKAGES += \
    rfs_msm_adsp_hlos_symlink \
    rfs_msm_adsp_ramdumps_symlink \
    rfs_msm_adsp_readonly_firmware_symlink \
    rfs_msm_adsp_readonly_vendor_firmware_symlink \
    rfs_msm_adsp_readwrite_symlink \
    rfs_msm_adsp_shared_symlink

# RFS MSM CDSP symlinks
PRODUCT_PACKAGES += \
    rfs_msm_cdsp_hlos_symlink \
    rfs_msm_cdsp_ramdumps_symlink \
    rfs_msm_cdsp_readonly_firmware_symlink \
    rfs_msm_cdsp_readonly_vendor_firmware_symlink \
    rfs_msm_cdsp_readwrite_symlink \
    rfs_msm_cdsp_shared_symlink

# RFS MSM MPSS symlinks
PRODUCT_PACKAGES += \
    rfs_msm_mpss_hlos_symlink \
    rfs_msm_mpss_ramdumps_symlink \
    rfs_msm_mpss_readonly_firmware_symlink \
    rfs_msm_mpss_readonly_vendor_firmware_symlink \
    rfs_msm_mpss_readwrite_symlink \
    rfs_msm_mpss_shared_symlink

# RFS MSM OIS symlinks
PRODUCT_PACKAGES += \
    rfs_msm_ois_hlos_symlink \
    rfs_msm_ois_ramdumps_symlink \
    rfs_msm_ois_readonly_firmware_symlink \
    rfs_msm_ois_readonly_vendor_firmware_symlink \
    rfs_msm_ois_readwrite_symlink \
    rfs_msm_ois_shared_symlink

# RFS MSM SLPI symlinks
PRODUCT_PACKAGES += \
    rfs_msm_slpi_hlos_symlink \
    rfs_msm_slpi_ramdumps_symlink \
    rfs_msm_slpi_readonly_firmware_symlink \
    rfs_msm_slpi_readonly_vendor_firmware_symlink \
    rfs_msm_slpi_readwrite_symlink \
    rfs_msm_slpi_shared_symlink

# RFS MSM WPSS symlinks
PRODUCT_PACKAGES += \
    rfs_msm_wpss_hlos_symlink \
    rfs_msm_wpss_ramdumps_symlink \
    rfs_msm_wpss_readonly_firmware_symlink \
    rfs_msm_wpss_readonly_vendor_firmware_symlink \
    rfs_msm_wpss_readwrite_symlink \
    rfs_msm_wpss_shared_symlink

# ------------ Device Property Definitions Start ------------- #

# RIL (Radio Interface Layer) Configuration
PRODUCT_SYSTEM_PROPERTIES += \
    rild.libpath=/vendor/lib64/libril-qc-hal-qmi.so \
    persist.rild.nitz_plmn= \
    persist.rild.nitz_long_ons_0= \
    persist.rild.nitz_long_ons_1= \
    persist.rild.nitz_long_ons_2= \
    persist.rild.nitz_long_ons_3= \
    persist.rild.nitz_short_ons_0= \
    persist.rild.nitz_short_ons_1= \
    persist.rild.nitz_short_ons_2= \
    persist.rild.nitz_short_ons_3= \
    ril.subscription.types=NV,RUIM \

# Telephony - Default network mode (7+7 DSDS: T/L/G/W/1X/EVDO)
PRODUCT_SYSTEM_PROPERTIES += \
    ro.telephony.default_network=22,22 \

# Telephony - LTE on CDMA Device
PRODUCT_SYSTEM_PROPERTIES += \
    telephony.lteOnCdmaDevice=1

# Fetch QoS parameters via IQtiRadio HAL
PRODUCT_SYSTEM_PROPERTIES += \
    persist.vendor.radio.fetchqos=true

# Dalvik VM Heap Configuration
PRODUCT_SYSTEM_PROPERTIES += \
    dalvik.vm.heapsize=36m \
    dev.pm.dyn_samplingrate=1

# Hardware AAC Encoder Support
PRODUCT_SYSTEM_PROPERTIES += \
    qcom.hw.aac.encoder=true

# CNE (Connectivity Engine) Module
PRODUCT_SYSTEM_PROPERTIES += \
    persist.vendor.cne.feature=1

# Media Stagefright Configuration
PRODUCT_SYSTEM_PROPERTIES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-fma2dp=true \
    media.stagefright.enable-scan=true \
    media.stagefright.thumbnail.prefer_hw_codecs=true \
    mmp.enable.3g2=true \
    media.aac_51_output_enabled=true

# Qualcomm Parser - Supported codecs (decimal: 63963135)
# Codecs: AAC AC3 AMR_NB AMR_WB ASF AVI DTS FLV 3GP 3G2 MKV MP2PS MP2TS MP3 OGG QCP WAV FLAC AIFF APE DSD MOV XVID
PRODUCT_SYSTEM_PROPERTIES += \
    vendor.mm.enable.qcom_parser=63963135 \
    persist.mm.enable.prefetch=true

# Data Modules Configuration
PRODUCT_SYSTEM_PROPERTIES += \
    ro.vendor.use_data_netmgrd=true \
    persist.data.netmgrd.qos.enable=true \
    persist.vendor.data.mode=concurrent

# Time Services
PRODUCT_SYSTEM_PROPERTIES += \
    persist.timed.enable=true

# OpenGL ES Version (196610 = 0x30002 = OpenGL ES 3.2)
PRODUCT_SYSTEM_PROPERTIES += \
    ro.opengles.version=196610

# Bluetooth HFP Client Connections
PRODUCT_SYSTEM_PROPERTIES += \
    bt.max.hfpclient.connections=1

# Storage - Simulate SDCard on /data/media
PRODUCT_SYSTEM_PROPERTIES += \
    persist.fuse_sdcard=true

# Bluetooth SOC Configuration
PRODUCT_SYSTEM_PROPERTIES += \
    vendor.bluetooth.soc=hastings \
    ro.bluetooth.library_name=libbluetooth_qti.so \
    persist.vendor.btstack.enable.splita2dp=true \
    persist.vendor.btstack.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aac-ldac

# Bluetooth Wipower Support
PRODUCT_SYSTEM_PROPERTIES += \
    ro.bluetooth.emb_wp_mode=true \
    ro.bluetooth.wipower=true

# Snapdragon Audio Features
PRODUCT_SYSTEM_PROPERTIES += \
    ro.qc.sdk.audio.ssr=false

# Fluence Audio Configuration (noise cancellation)
PRODUCT_SYSTEM_PROPERTIES += \
    ro.qc.sdk.audio.fluencetype=none \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicerec=false \
    persist.audio.fluence.speaker=true

# RmNet Data Configuration
PRODUCT_SYSTEM_PROPERTIES += \
    persist.rmnet.data.enable=true \
    persist.data.wda.enable=true \
    persist.data.df.dl_mode=5 \
    persist.data.df.ul_mode=5 \
    persist.data.df.agg.dl_pkt=10 \
    persist.data.df.agg.dl_size=4096 \
    persist.data.df.mux_count=8 \
    persist.data.df.iwlan_mux=9 \
    persist.data.df.dev_name=rmnet_usb0

# Wireless Display Configuration
PRODUCT_SYSTEM_PROPERTIES += \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0

# Audio Encoding - Tunnel encoding for AMR-WB
PRODUCT_SYSTEM_PROPERTIES += \
    tunnel.audio.encode=true

# Audio Offload - Buffer size for compress offload playback
PRODUCT_SYSTEM_PROPERTIES += \
    audio.offload.buffer.size.kb=32

# Audio/Video Offload Playback
PRODUCT_SYSTEM_PROPERTIES += \
    av.offload.enable=true

# VoIP - Voice path for PCM VoIP
PRODUCT_SYSTEM_PROPERTIES += \
    use.voice.path.for.pcm.voip=true

# NFC Configuration - I2C port
PRODUCT_SYSTEM_PROPERTIES += \
    ro.nfc.port=I2C

# Audio - Gapless playback for offload
PRODUCT_SYSTEM_PROPERTIES += \
    audio.offload.gapless.enabled=true

# QCA1530 Detection (GPS/Location)
PRODUCT_SYSTEM_PROPERTIES += \
    sys.qca1530=detect

# CoreSight Debug - STM events
PRODUCT_SYSTEM_PROPERTIES += \
    persist.debug.coresight.config=stm-events

# HWUI (Hardware UI) Rendering Properties
PRODUCT_SYSTEM_PROPERTIES += \
    ro.hwui.texture_cache_size=72 \
    ro.hwui.layer_cache_size=48 \
    ro.hwui.r_buffer_cache_size=8 \
    ro.hwui.path_cache_size=32 \
    ro.hwui.gradient_cache_size=1 \
    ro.hwui.drop_shadow_cache_size=6 \
    ro.hwui.texture_cache_flushrate=0.4 \
    ro.hwui.text_small_cache_width=1024 \
    ro.hwui.text_small_cache_height=1024 \
    ro.hwui.text_large_cache_width=2048 \
    ro.hwui.text_large_cache_height=1024

# RTT (Round Trip Time) - Disable
PRODUCT_SYSTEM_PROPERTIES += \
    config.disable_rtt=true

# Bringup Properties - Force software GLES rendering
PRODUCT_SYSTEM_PROPERTIES += \
    persist.sys.force_sw_gles=1 \
    persist.vendor.radio.atfwd.start=true \
    ro.kernel.qemu.gles=0 \
    qemu.hw.mainkeys=0

# LMKD Configuration
PRODUCT_SYSTEM_PROPERTIES += \
    ro.lmk.kill_heaviest_task=true \
    ro.lmk.kill_timeout_ms=15

# Expose auxiliary camera for specific packages
PRODUCT_SYSTEM_PROPERTIES += \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam