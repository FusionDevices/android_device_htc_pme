TARGET_USE_DEVICE_AUDIO_EFFECTS_CONF := true

## Audio Feature Flags
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
BOARD_SUPPORTS_SOUND_TRIGGER := true
AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true
USE_XML_AUDIO_POLICY_CONF := 1
AUDIO_FEATURE_ENABLED_VBAT_MONITOR := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_COMPRESS_CAPTURE := false
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_EXTN_FLAC_DECODER := true
#AUDIO_FEATURE_ENABLED_EXTN_RESAMPLER := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := false
AUDIO_FEATURE_ENABLED_HDMI_SPK := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
#AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD := true
#AUDIO_FEATURE_ENABLED_WMA_OFFLOAD := true
AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD := true
#AUDIO_FEATURE_ENABLED_APE_OFFLOAD := true
AUDIO_FEATURE_ENABLED_AAC_ADTS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_SSR := true
AUDIO_FEATURE_ENABLED_DTS_EAGLE := false
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
BOARD_USES_SRS_TRUEMEDIA := false
DTS_CODEC_M_ := true
MM_AUDIO_ENABLED_SAFX := true
AUDIO_FEATURE_ENABLED_HW_ACCELERATED_EFFECTS := false
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := false
AUDIO_FEATURE_ENABLED_AUDIOSPHERE := true
DOLBY_ENABLE := false
AUDIO_FEATURE_ENABLED_CUSTOMSTEREO := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HDMI_EDID := true
#AUDIO_FEATURE_ENABLED_HDMI_PASSTHROUGH := true
#AUDIO_FEATURE_ENABLED_KEEP_ALIVE := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_INCALL_MUSIC := false
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
#AUDIO_FEATURE_ENABLED_SPKR_PROTECTION := true
AUDIO_FEATURE_ENABLED_DEV_ARBI := false
MM_AUDIO_ENABLED_FTM := true
TARGET_USES_QCOM_MM_AUDIO := true
AUDIO_FEATURE_ENABLED_SOURCE_TRACKING := true
#AUDIO_FEATURE_ENABLED_GEF_SUPPORT := true
#AUDIO_FEATURE_ENABLED_QAF := true
BOARD_SUPPORTS_QAHW := true
#AUDIO_FEATURE_ENABLED_DYNAMIC_LOG := true
AUDIO_FEATURE_ENABLED_SND_MONITOR := true

## Audio Configuration Files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio_effects.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio_output_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_output_policy.conf \
    $(LOCAL_PATH)/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/listen_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/listen_platform_info.xml \
    $(LOCAL_PATH)/mixer_paths_tasha.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tasha.xml \
    $(LOCAL_PATH)/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/sound_trigger_mixer_paths_wcd9330.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9330.xml \
    $(LOCAL_PATH)/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

## Audio Props
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1\
    vendor.audio_hal.period_size=192\
    ro.vendor.audio.sdk.fluencetype=fluence\
    persist.vendor.audio.fluence.voicecall=true\
    persist.vendor.audio.fluence.voicerec=false\
    persist.vendor.audio.fluence.speaker=true\
    vendor.audio.tunnel.encode=false\
    vendor.audio.offload.buffer.size.kb=64\
    audio.offload.disable=true\
    audio.offload.video=true\
    vendor.audio.offload.pcm.16bit.enable=false\
    vendor.audio.offload.pcm.24bit.enable=false\
    vendor.audio.offload.track.enable=false\
    audio.deep_buffer.media=true\
    vendor.voice.path.for.pcm.voip=true\
    vendor.audio.offload.multiaac.enable=true\
    vendor.audio.dolby.ds2.enabled=false\
    vendor.audio.dolby.ds2.hardbypass=false\
    vendor.audio.offload.multiple.enabled=false\
    vendor.audio.offload.passthrough=false\
    ro.vendor.audio.sdk.ssr=false\
    vendor.audio.offload.gapless.enabled=false\
    vendor.audio.safx.pbe.enabled=true\
    vendor.audio.parser.ip.buffer.size=262144\
    vendor.audio.hw.aac.encoder=false\
    vendor.audio.use.sw.alac.decoder=true\
    vendor.audio.use.sw.ape.decoder=true\
    vendor.audio.flac.sw.decoder.24bit=true\
    persist.vendor.bt.enable.splita2dp=false

# Audio HALS/libs
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm8996 \
    audio.r_submix.default \
    audio.usb.default \
    audio_amplifier.msm8996 \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libvolumelistener \
    libaudioutils \
    tinymix

# for HIDL related packages
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-service \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.soundtrigger@2.0-impl
