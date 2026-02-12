# Common Definitions for QTI Devices

PRODUCT_BRAND := qcom
PRODUCT_AAPT_CONFIG += hdpi mdpi

PRODUCT_MANUFACTURER := QUALCOMM

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.radio.rat_on=combine \
    persist.backup.ntpServer=0.pool.ntp.org \
    sys.vendor.shutdown.waittime=500 \
    persist.vendor.radio.procedure_bytes=SKIP

# whitelisted app
PRODUCT_COPY_FILES += \
    device/qcom/common/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml

PRODUCT_COPY_FILES += \
    device/qcom/common/privapp-permissions-qti.xml:system/etc/permissions/privapp-permissions-qti.xml

# Ipsec_tunnels feature
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml

# Permission for Wi-Fi passpoint support
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml

PRODUCT_PRIVATE_KEY := device/qcom/common/qcom.key
PRODUCT_PACKAGES += qcril.db

ifneq ($(TARGET_DEFINES_DALVIK_HEAP), true)
ifneq ($(TARGET_HAS_LOW_RAM), true)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
endif
endif

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
