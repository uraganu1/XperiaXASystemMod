.class public Lcom/mediatek/settings/FeatureOption;
.super Ljava/lang/Object;
.source "FeatureOption.java"


# static fields
.field public static final MTK_A1_FEATURE:Z

.field public static final MTK_AGPS_APP:Z

.field public static final MTK_AUDIO_PROFILES:Z

.field public static final MTK_BEAM_PLUS_SUPPORT:Z

.field public static final MTK_BESLOUDNESS_SUPPORT:Z

.field public static final MTK_BESSURROUND_SUPPORT:Z

.field public static final MTK_BG_POWER_SAVING_SUPPORT:Z

.field public static final MTK_BG_POWER_SAVING_UI_SUPPORT:Z

.field public static final MTK_C2K_SLOT2_SUPPORT:Z

.field public static final MTK_C2K_SUPPORT:Z

.field public static final MTK_CLEARMOTION_SUPPORT:Z

.field public static final MTK_CT6M_SUPPORT:Z

.field public static final MTK_DHCPV6C_WIFI:Z

.field public static final MTK_DISABLE_CAPABILITY_SWITCH:Z

.field public static final MTK_DRM_APP:Z

.field public static final MTK_FOTA_ENTRY:Z

.field public static final MTK_GMO_RAM_OPTIMIZE:Z

.field public static final MTK_GPS_SUPPORT:Z

.field public static final MTK_IPO_SUPPORT:Z

.field public static final MTK_LOSSLESS_SUPPORT:Z

.field public static final MTK_LTE_SUPPORT:Z

.field public static final MTK_MDM_FUMO:Z

.field public static final MTK_MDM_SCOMO:Z

.field public static final MTK_MIRAVISION_SETTING_SUPPORT:Z

.field public static final MTK_MULTISIM_RINGTONE_SUPPORT:Z

.field public static final MTK_NFC_ADDON_SUPPORT:Z

.field public static final MTK_OMACP_SUPPORT:Z

.field public static final MTK_OPEN_AP_WPS_SUPPORT:Z

.field public static final MTK_POWER_PERFORMANCE_STRATEGY_SUPPORT:Z

.field public static final MTK_PRODUCT_IS_TABLET:Z

.field public static final MTK_RUNTIME_PERMISSION_SUPPORT:Z

.field public static final MTK_SCOMO_ENTRY:Z

.field public static final MTK_SYSTEM_UPDATE_SUPPORT:Z

.field public static final MTK_TETHERINGIPV6_SUPPORT:Z

.field public static final MTK_TETHERING_EEM_SUPPORT:Z

.field public static final MTK_VOICE_UI_SUPPORT:Z

.field public static final MTK_VOICE_UNLOCK_SUPPORT:Z

.field public static final MTK_VOLTE_SUPPORT:Z

.field public static final MTK_WAPI_SUPPORT:Z

.field public static final MTK_WFD_SINK_SUPPORT:Z

.field public static final MTK_WFD_SINK_UIBC_SUPPORT:Z

.field public static final MTK_WFD_SUPPORT:Z

.field public static final MTK_WIFIWPSP2P_NFC_SUPPORT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    const-string/jumbo v0, "ro.mtk_dhcpv6c_wifi"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_DHCPV6C_WIFI:Z

    .line 8
    const-string/jumbo v0, "ro.mtk_wapi_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WAPI_SUPPORT:Z

    .line 9
    const-string/jumbo v0, "mediatek.wlan.openap.wps"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_OPEN_AP_WPS_SUPPORT:Z

    .line 10
    const-string/jumbo v0, "ro.mtk_ipo_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_IPO_SUPPORT:Z

    .line 12
    const-string/jumbo v0, "ro.mtk_wifiwpsp2p_nfc_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 11
    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WIFIWPSP2P_NFC_SUPPORT:Z

    .line 13
    const-string/jumbo v0, "ro.mtk_wfd_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SUPPORT:Z

    .line 14
    const-string/jumbo v0, "ro.mtk_wfd_sink_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_SUPPORT:Z

    .line 16
    const-string/jumbo v0, "ro.mtk_wfd_sink_uibc_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 15
    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_UIBC_SUPPORT:Z

    .line 17
    const-string/jumbo v0, "ro.mtk_audio_profiles"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_AUDIO_PROFILES:Z

    .line 19
    const-string/jumbo v0, "ro.mtk_multisim_ringtone"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 18
    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_MULTISIM_RINGTONE_SUPPORT:Z

    .line 21
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 20
    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_PRODUCT_IS_TABLET:Z

    .line 22
    const-string/jumbo v0, "ro.mtk_besloudness_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_BESLOUDNESS_SUPPORT:Z

    .line 23
    const-string/jumbo v0, "ro.mtk_bessurround_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_BESSURROUND_SUPPORT:Z

    .line 24
    const-string/jumbo v0, "ro.mtk_lossless_bt_audio"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_LOSSLESS_SUPPORT:Z

    .line 25
    const-string/jumbo v0, "ro.mtk_nfc_addon_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_NFC_ADDON_SUPPORT:Z

    .line 26
    const-string/jumbo v0, "ro.mtk_beam_plus_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_BEAM_PLUS_SUPPORT:Z

    .line 29
    const-string/jumbo v0, "ro.mtk_tethering_eem_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 28
    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERING_EEM_SUPPORT:Z

    .line 31
    const-string/jumbo v0, "ro.mtk_tetheringipv6_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 30
    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERINGIPV6_SUPPORT:Z

    .line 34
    const-string/jumbo v0, "ro.mtk_system_update_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 33
    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_SYSTEM_UPDATE_SUPPORT:Z

    .line 35
    const-string/jumbo v0, "ro.mtk_scomo_entry"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_SCOMO_ENTRY:Z

    .line 36
    const-string/jumbo v0, "ro.mtk_mdm_scomo"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_MDM_SCOMO:Z

    .line 37
    const-string/jumbo v0, "ro.mtk_fota_entry"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_FOTA_ENTRY:Z

    .line 38
    const-string/jumbo v0, "ro.mtk_mdm_fumo"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_MDM_FUMO:Z

    .line 39
    const-string/jumbo v0, "ro.mtk_oma_drm_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_DRM_APP:Z

    .line 41
    const-string/jumbo v0, "ro.mtk_miravision_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 40
    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_MIRAVISION_SETTING_SUPPORT:Z

    .line 42
    const-string/jumbo v0, "ro.mtk_clearmotion_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_CLEARMOTION_SUPPORT:Z

    .line 44
    const-string/jumbo v0, "ro.mtk_agps_app"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_AGPS_APP:Z

    .line 45
    const-string/jumbo v0, "ro.mtk_omacp_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_OMACP_SUPPORT:Z

    .line 46
    const-string/jumbo v0, "ro.mtk_gps_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_GPS_SUPPORT:Z

    .line 47
    const-string/jumbo v0, "ro.mtk_voice_ui_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_VOICE_UI_SUPPORT:Z

    .line 49
    const-string/jumbo v0, "ro.mtk_bg_power_saving_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 48
    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_BG_POWER_SAVING_SUPPORT:Z

    .line 51
    const-string/jumbo v0, "ro.mtk_bg_power_saving_ui"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 50
    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_BG_POWER_SAVING_UI_SUPPORT:Z

    .line 52
    const-string/jumbo v0, "ro.mtk_gmo_ram_optimize"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_GMO_RAM_OPTIMIZE:Z

    .line 54
    const-string/jumbo v0, "ro.mtk_volte_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_VOLTE_SUPPORT:Z

    .line 56
    const-string/jumbo v0, "ro.mtk_c2k_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_C2K_SUPPORT:Z

    .line 58
    const-string/jumbo v0, "ro.mtk_voice_unlock_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_VOICE_UNLOCK_SUPPORT:Z

    .line 61
    const-string/jumbo v0, "ro.ct6m_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_CT6M_SUPPORT:Z

    .line 64
    const-string/jumbo v0, "ro.mtk_runtime_permission"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 63
    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_RUNTIME_PERMISSION_SUPPORT:Z

    .line 67
    const-string/jumbo v0, "ro.mtk.c2k.slot2.support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_C2K_SLOT2_SUPPORT:Z

    .line 68
    const-string/jumbo v0, "ro.mtk_lte_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_LTE_SUPPORT:Z

    .line 70
    const-string/jumbo v0, "ro.mtk_disable_cap_switch"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 69
    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_DISABLE_CAPABILITY_SWITCH:Z

    .line 74
    const-string/jumbo v0, "ro.mtk_a1_feature"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_A1_FEATURE:Z

    .line 79
    const-string/jumbo v0, "ro.mtk_pow_perf_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 78
    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_POWER_PERFORMANCE_STRATEGY_SUPPORT:Z

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getValue(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
