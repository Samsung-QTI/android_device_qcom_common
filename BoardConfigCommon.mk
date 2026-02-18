# Common Board Configuration for QCOM Boards
# Based on hardware/qcom-caf/common/BoardConfigQcom.mk
# Gate the feature flags using TARGET_KERNEL_VERSION 
# instead of the original UM_FAMILY board definitions

BOARD_USES_ADRENO := true

# Tell HALs that we're compiling an AOSP build with an in-line kernel
TARGET_COMPILE_WITH_MSM_KERNEL := true

# Enable media extensions
TARGET_USES_MEDIA_EXTENSIONS := true

# Allow building audio encoders
TARGET_USES_QCOM_MM_AUDIO := true

# ============================================================================
# Thermal HAL Configuration
# ============================================================================
# Disable thermal HAL netlink framework
$(call soong_config_set,qti_thermal,netlink,false)

# ============================================================================
# Audio HAL SOONG Configuration
# ============================================================================
# Audio features are opt-in via device BoardConfig.mk
# No defaults set - device must explicitly enable

ifeq ($(AUDIO_FEATURE_ENABLED_CIRRUS_CALIBRATION_RESISTANCE),true)
    $(call soong_config_set,qtiaudio,cirrus_calibration_resistance,true)
endif

ifeq ($(AUDIO_FEATURE_ENABLED_AGM_HIDL),true)
    $(call soong_config_set,qtiaudio,feature_agm_hidl,true)
endif

ifeq ($(AUDIO_FEATURE_ENABLE_BT_A2DP_LPI),true)
    $(call soong_config_set,qtiaudio,feature_bt_a2dp_lpi,true)
endif

ifeq ($(AUDIO_FEATURE_ENABLED_DEVICE_PREPARE_SEQ),true)
    $(call soong_config_set,qtiaudio,feature_device_prepare_seq,true)
endif

ifeq ($(AUDIO_FEATURE_DISABLED_DTS_EAGLE),true)
    $(call soong_config_set,qtiaudio,feature_disabled_dts_eagle,true)
endif

ifeq ($(AUDIO_FEATURE_ENABLED_DYNAMIC_SR),true)
    $(call soong_config_set,qtiaudio,feature_dynamic_sr,true)
endif

ifeq ($(AUDIO_FEATURE_ENABLED_EC_REF_CAPTURE),true)
    $(call soong_config_set,qtiaudio,feature_ec_ref_capture,true)
endif

ifeq ($(AUDIO_FEATURE_ELLIPTIC_ULTRASOUND_SUPPORT),true)
    $(call soong_config_set,qtiaudio,feature_elliptic_ultrasound,true)
endif

ifeq ($(AUDIO_FEATURE_ENABLED_EXT_AMPLIFIER),true)
    $(call soong_config_set,qtiaudio,feature_ext_amplifier,true)
endif

ifeq ($(AUDIO_FEATURE_ENABLED_EXTENDED_COMPRESS_FORMAT),true)
    $(call soong_config_set,qtiaudio,feature_extended_compress_format,true)
endif

ifeq ($(AUDIO_FEATURE_ENABLED_GEF_SUPPORT),true)
    $(call soong_config_set,qtiaudio,feature_gef_support,true)
endif

ifeq ($(AUDIO_FEATURE_ENABLED_GKI),true)
    $(call soong_config_set,qtiaudio,feature_gki,true)
endif

ifeq ($(AUDIO_FEATURE_ENABLED_HAL_V7),true)
    $(call soong_config_set,qtiaudio,feature_hal_v7,true)
endif

ifeq ($(AUDIO_FEATURE_ENABLED_INSTANCE_ID),true)
    $(call soong_config_set,qtiaudio,feature_instance_id,true)
endif

ifeq ($(AUDIO_FEATURE_ENABLED_KEEP_ALIVE),true)
    $(call soong_config_set,qtiaudio,feature_keep_alive,true)
endif

ifeq ($(SOUND_TRIGGER_FEATURE_LPMA_ENABLED),true)
    $(call soong_config_set,qtiaudio,feature_lpma,true)
endif

ifeq ($(AUDIO_FEATURE_ENABLED_LSM_HIDL),true)
    $(call soong_config_set,qtiaudio,feature_lsm_hidl,true)
endif

ifeq ($(AUDIO_FEATURE_ENABLED_MCS),true)
    $(call soong_config_set,qtiaudio,feature_mcs,true)
endif

ifeq ($(AUDIO_FEATURE_ENABLED_PAL_HIDL),true)
    $(call soong_config_set,qtiaudio,feature_pal_hidl,true)
endif

ifeq ($(BOARD_SUPPORTS_QSTHW_API),true)
    $(call soong_config_set,qtiaudio,feature_qsthw_api,true)
endif

ifeq ($(BOARD_SUPPORTS_SOUND_TRIGGER),true)
    $(call soong_config_set,qtiaudio,feature_sound_trigger,true)
endif

ifeq ($(BOARD_SUPPORTS_SOUND_TRIGGER_HAL),true)
    $(call soong_config_set,qtiaudio,feature_sound_trigger,true)
endif

ifeq ($(BOARD_SUPPORTS_SOUND_TRIGGER_CPU_AFFINITY_SET),true)
    $(call soong_config_set,qtiaudio,feature_sound_trigger_cpu_affinity_set,true)
endif

ifeq ($(AUDIO_FEATURE_ENABLED_SVA_MULTI_STAGE),true)
    $(call soong_config_set,qtiaudio,feature_sva_multi_stage,true)
endif

ifeq ($(AUDIO_FEATURE_ENABLED_TRUE_STEREO),true)
    $(call soong_config_set,qtiaudio,feature_true_stereo,true)
endif

ifneq ($(TARGET_PAL_SPKR_PROTECTION_PATH),)
    $(call soong_config_set,qtiaudio,pal_spkr_protection_path,$(TARGET_PAL_SPKR_PROTECTION_PATH))
endif

ifeq ($(AUDIO_FEATURE_ENABLED_ULTRASOUND_PROXIMITY),true)
    $(call soong_config_set,qtiaudio,ultrasound_proximity,true)
endif

# ============================================================================
# Display SOONG Config
# ============================================================================
# Add qtidisplay to soong config namespaces
SOONG_CONFIG_NAMESPACES += qtidisplay

# Add supported variables to qtidisplay config
SOONG_CONFIG_qtidisplay += \
    composer_version \
    drmpp \
    headless \
    llvmsa \
    gralloc4 \
    displayconfig_enabled \
    udfps \
    default \
    master_side_cp \
    shift_horizontal \
    shift_vertical \
    smmu_proxy \
    var1 \
    var2 \
    var3 \
    hwasan \
    llvmcov \
    mapper_ext \
    ubwcp_headers \
    wide_color \
    target_kernel_version \
    target_no_raw10_custom_format \
    target_uses_aligned_ycbcr_height \
    target_uses_aligned_ycrcb_height \
    target_uses_unaligned_nv21_zsl \
    target_uses_unaligned_ycrcb \
    target_uses_ycrcb_camera_preview \
    target_uses_ycrcb_venus_camera_preview

# Set default values for qtidisplay config
SOONG_CONFIG_qtidisplay_composer_version := v3_3
SOONG_CONFIG_qtidisplay_drmpp ?= false
SOONG_CONFIG_qtidisplay_headless ?= false
SOONG_CONFIG_qtidisplay_llvmsa ?= false
SOONG_CONFIG_qtidisplay_gralloc4 ?= false
SOONG_CONFIG_qtidisplay_displayconfig_enabled ?= false
SOONG_CONFIG_qtidisplay_udfps ?= false
SOONG_CONFIG_qtidisplay_default := true
SOONG_CONFIG_qtidisplay_master_side_cp ?= false
SOONG_CONFIG_qtidisplay_shift_horizontal ?= 0
SOONG_CONFIG_qtidisplay_shift_vertical ?= 0
SOONG_CONFIG_qtidisplay_smmu_proxy ?= false
SOONG_CONFIG_qtidisplay_var1 ?= false
SOONG_CONFIG_qtidisplay_var2 ?= false
SOONG_CONFIG_qtidisplay_var3 ?= false
SOONG_CONFIG_qtidisplay_hwasan ?= false
SOONG_CONFIG_qtidisplay_llvmcov ?= false
SOONG_CONFIG_qtidisplay_mapper_ext := true
SOONG_CONFIG_qtidisplay_ubwcp_headers ?= false
SOONG_CONFIG_qtidisplay_wide_color ?= false
SOONG_CONFIG_qtidisplay_target_kernel_version ?= 0
SOONG_CONFIG_qtidisplay_target_no_raw10_custom_format ?= false
SOONG_CONFIG_qtidisplay_target_uses_aligned_ycbcr_height ?= false
SOONG_CONFIG_qtidisplay_target_uses_aligned_ycrcb_height ?= false
SOONG_CONFIG_qtidisplay_target_uses_unaligned_nv21_zsl ?= false
SOONG_CONFIG_qtidisplay_target_uses_unaligned_ycrcb ?= false
SOONG_CONFIG_qtidisplay_target_uses_ycrcb_camera_preview ?= false
SOONG_CONFIG_qtidisplay_target_uses_ycrcb_venus_camera_preview ?= false

# ============================================================================
# Display Configuration
# ============================================================================
# Kernel 4.9+ : DRM PP support
ifeq ($(shell test $(TARGET_KERNEL_VERSION) -ge 4.9 2>/dev/null && echo true),true)
    SOONG_CONFIG_qtidisplay_drmpp := true
endif

# Kernel 4.14+ : Gralloc4 + displayconfig
ifeq ($(shell test $(TARGET_KERNEL_VERSION) -ge 4.14 2>/dev/null && echo true),true)
    SOONG_CONFIG_qtidisplay_gralloc4 := true
    SOONG_CONFIG_qtidisplay_displayconfig_enabled := true
endif

# Kernel 6.1+ : SMMU proxy + UBWCP headers
ifeq ($(shell test $(TARGET_KERNEL_VERSION) -ge 6.1 2>/dev/null && echo true),true)
    SOONG_CONFIG_qtidisplay_smmu_proxy := true
    SOONG_CONFIG_qtidisplay_ubwcp_headers := true
endif

# ============================================================================
# Device-Level Display Overrides
# ============================================================================
ifneq ($(TARGET_DISPLAY_SHIFT_HORIZONTAL),)
    SOONG_CONFIG_qtidisplay_shift_horizontal := $(TARGET_DISPLAY_SHIFT_HORIZONTAL)
endif

ifneq ($(TARGET_DISPLAY_SHIFT_VERTICAL),)
    SOONG_CONFIG_qtidisplay_shift_vertical := $(TARGET_DISPLAY_SHIFT_VERTICAL)
endif

ifeq ($(TARGET_HAS_WIDE_COLOR_DISPLAY),true)
    SOONG_CONFIG_qtidisplay_wide_color := true
endif

ifeq ($(TARGET_USES_FOD_ZPOS),true)
    SOONG_CONFIG_qtidisplay_udfps := true
endif

ifneq ($(TARGET_KERNEL_VERSION),)
    SOONG_CONFIG_qtidisplay_target_kernel_version := $(TARGET_KERNEL_VERSION)
endif

# For libgrallocutils features
ifeq ($(TARGET_NO_RAW10_CUSTOM_FORMAT),true)
    SOONG_CONFIG_qtidisplay_target_no_raw10_custom_format := true
endif

ifeq ($(TARGET_USES_ALIGNED_YCBCR_HEIGHT),true)
    SOONG_CONFIG_qtidisplay_target_uses_aligned_ycbcr_height := true
endif

ifeq ($(TARGET_USES_ALIGNED_YCRCB_HEIGHT),true)
    SOONG_CONFIG_qtidisplay_target_uses_aligned_ycrcb_height := true
endif

ifeq ($(TARGET_USES_UNALIGNED_NV21_ZSL),true)
    SOONG_CONFIG_qtidisplay_target_uses_unaligned_nv21_zsl := true
endif

ifeq ($(TARGET_USES_UNALIGNED_YCRCB),true)
    SOONG_CONFIG_qtidisplay_target_uses_unaligned_ycrcb := true
endif

ifeq ($(TARGET_USES_YCRCB_CAMERA_PREVIEW),true)
    SOONG_CONFIG_qtidisplay_target_uses_ycrcb_camera_preview := true
else ifeq ($(TARGET_USES_YCRCB_VENUS_CAMERA_preview),true)
    SOONG_CONFIG_qtidisplay_target_uses_ycrcb_venus_camera_preview := true
endif

# ============================================================================
# Gralloc Usage Bits
# ============================================================================
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS ?= 0

# Mark GRALLOC_USAGE_EXTERNAL_DISP as valid gralloc bit
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS += | (1 << 13)

# Mark GRALLOC_USAGE_PRIVATE_WFD as valid gralloc bit
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS += | (1 << 21)

# Mark GRALLOC_USAGE_PRIVATE_HEIF_VIDEO as valid gralloc bit (Kernel 4.9+)
ifeq ($(shell test $(TARGET_KERNEL_VERSION) -ge 4.9 2>/dev/null && echo true),true)
    TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS += | (1 << 27)
endif

# ============================================================================
# Gralloc Handle Configuration
# ============================================================================
# Kernel 5.10+ : GKI 2.0 gralloc structure
ifeq ($(shell test $(TARGET_KERNEL_VERSION) -ge 5.10 2>/dev/null && echo true),true)
    TARGET_GRALLOC_HANDLE_HAS_CUSTOM_CONTENT_MD_RESERVED_SIZE ?= true
    TARGET_GRALLOC_HANDLE_HAS_RESERVED_SIZE ?= true
else
    TARGET_GRALLOC_HANDLE_HAS_CUSTOM_CONTENT_MD_RESERVED_SIZE ?= false
    TARGET_GRALLOC_HANDLE_HAS_RESERVED_SIZE ?= false
endif

# Kernel 6.1+ : Full GKI 2.0 including UBWCP format
ifeq ($(shell test $(TARGET_KERNEL_VERSION) -ge 6.1 2>/dev/null && echo true),true)
    TARGET_GRALLOC_HANDLE_HAS_UBWCP_FORMAT ?= true
else
    TARGET_GRALLOC_HANDLE_HAS_UBWCP_FORMAT ?= false
endif

# Set SOONG configs
$(call soong_config_set,qtidisplay,gralloc_handle_has_custom_content_md_reserved_size,$(TARGET_GRALLOC_HANDLE_HAS_CUSTOM_CONTENT_MD_RESERVED_SIZE))
$(call soong_config_set,qtidisplay,gralloc_handle_has_reserved_size,$(TARGET_GRALLOC_HANDLE_HAS_RESERVED_SIZE))
$(call soong_config_set,qtidisplay,gralloc_handle_has_ubwcp_format,$(TARGET_GRALLOC_HANDLE_HAS_UBWCP_FORMAT))

# ============================================================================
# Audio HAL Variant Selection
# ============================================================================
# Kernel 5.10+ uses AudioReach AHAL
ifeq ($(shell test $(TARGET_KERNEL_VERSION) -ge 5.10 2>/dev/null && echo true),true)
    TARGET_USES_QCOM_AUDIO_AR ?= true
else
    TARGET_USES_QCOM_AUDIO_AR ?= false
endif

# Kernel 5.15+ uses new rmnet driver
ifeq ($(shell test $(TARGET_KERNEL_VERSION) -ge 5.15 2>/dev/null && echo true),true)
    $(call soong_config_set,rmnetctl,old_rmnet_data,false)
else
    $(call soong_config_set,rmnetctl,old_rmnet_data,true)
endif

# ============================================================================
# Pass board platform to kernel build
# ============================================================================
TARGET_KERNEL_ADDITIONAL_FLAGS += TARGET_BOARD_PLATFORM=$(TARGET_BOARD_PLATFORM)

# ============================================================================
# SOONG Namespace Configuration
# ============================================================================

# Display namespaces (use hardware/qcom, not hardware/qcom-caf)
PRODUCT_SOONG_NAMESPACES += \
    hardware/qcom/display \
    vendor/qcom/opensource/commonsys/display \
    vendor/qcom/opensource/commonsys-intf/display

$(call soong_config_set,qtidisplay,headers_namespace,vendor/qcom/opensource/commonsys-intf/display)

# Data namespaces
PRODUCT_SOONG_NAMESPACES += vendor/qcom/opensource/dataservices

# Sound trigger HAL namespace
ifeq ($(BOARD_SUPPORTS_OPENSOURCE_STHAL),true)
    # Kernel 6.6+ : Latest ST-HAL
    ifeq ($(shell test $(TARGET_KERNEL_VERSION) -ge 6.6 2>/dev/null && echo true),true)
        PRODUCT_SOONG_NAMESPACES += vendor/qcom/opensource/audio-hal/st-hal-ar
        $(call soong_config_set,qtiaudio,headers_namespace,hardware/qcom/audio)
        $(call soong_config_set,qtiaudio,libarpal_namespace,hardware/qcom/audio)
    # Kernel 5.10 - 6.1 : Legacy AR ST-HAL
    else ifeq ($(shell test $(TARGET_KERNEL_VERSION) -ge 5.10 2>/dev/null && echo true),true)
        PRODUCT_SOONG_NAMESPACES += vendor/qcom/opensource/audio-hal/st-hal-ar-legacy
        $(call soong_config_set,qtiaudio,legacy_headers_namespace,hardware/qcom/audio)
        $(call soong_config_set,qtiaudio,legacy_libarpal_namespace,hardware/qcom/audio)
    else
        PRODUCT_SOONG_NAMESPACES += vendor/qcom/opensource/audio-hal/st-hal
    endif
endif

# Thermal HAL namespace
PRODUCT_SOONG_NAMESPACES += vendor/qcom/opensource/thermal-hal

# Bootctrl namespace
PRODUCT_SOONG_NAMESPACES += hardware/qcom/bootctrl

# WLAN namespace
PRODUCT_SOONG_NAMESPACES += \
    hardware/qcom/wlan \
    hardware/qcom/wlan/qcwcn

# ============================================================================
# Verified Boot
# ============================================================================
BOARD_AVB_SYSTEM_ADD_HASHTREE_FOOTER_ARGS += --hash_algorithm sha256
BOARD_AVB_SYSTEM_DLKM_ADD_HASHTREE_FOOTER_ARGS += --hash_algorithm sha256
BOARD_AVB_SYSTEM_EXT_ADD_HASHTREE_FOOTER_ARGS += --hash_algorithm sha256
BOARD_AVB_SYSTEM_OTHER_ADD_HASHTREE_FOOTER_ARGS += --hash_algorithm sha256
BOARD_AVB_ODM_ADD_HASHTREE_FOOTER_ARGS += --hash_algorithm sha256
BOARD_AVB_ODM_DLKM_ADD_HASHTREE_FOOTER_ARGS += --hash_algorithm sha256
BOARD_AVB_PRODUCT_ADD_HASHTREE_FOOTER_ARGS += --hash_algorithm sha256
BOARD_AVB_VENDOR_ADD_HASHTREE_FOOTER_ARGS += --hash_algorithm sha256
BOARD_AVB_VENDOR_DLKM_ADD_HASHTREE_FOOTER_ARGS += --hash_algorithm sha256