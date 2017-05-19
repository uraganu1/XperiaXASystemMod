.class public Lcom/mediatek/contacts/ContactsSystemProperties;
.super Ljava/lang/Object;
.source "ContactsSystemProperties.java"


# static fields
.field public static DBG_CONTACTS_GROUP:Z

.field public static DBG_DIALER_SEARCH:Z

.field public static final MTK_DRM_SUPPORT:Z

.field public static final MTK_GEMINI_3G_SWITCH:Z

.field public static final MTK_GEMINI_SUPPORT:Z

.field public static final MTK_HOTKNOT_SUPPORT:Z

.field public static final MTK_IMS_SUPPORT:Z

.field public static final MTK_OWNER_SIM_SUPPORT:Z

.field public static final MTK_PERF_RESPONSE_TIME:Z

.field public static final MTK_VOLTE_SUPPORT:Z

.field public static final MTK_VT3G324M_SUPPORT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    .line 43
    :goto_0
    sput-boolean v0, Lcom/mediatek/contacts/ContactsSystemProperties;->MTK_GEMINI_SUPPORT:Z

    .line 45
    const-string/jumbo v0, "ro.mtk_vt3g324m_support"

    invoke-static {v0}, Lcom/mediatek/contacts/ContactsSystemProperties;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/contacts/ContactsSystemProperties;->MTK_VT3G324M_SUPPORT:Z

    .line 46
    const-string/jumbo v0, "ro.mtk_gemini_3g_switch"

    invoke-static {v0}, Lcom/mediatek/contacts/ContactsSystemProperties;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/contacts/ContactsSystemProperties;->MTK_GEMINI_3G_SWITCH:Z

    .line 47
    const-string/jumbo v0, "ro.mtk_oma_drm_support"

    invoke-static {v0}, Lcom/mediatek/contacts/ContactsSystemProperties;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/contacts/ContactsSystemProperties;->MTK_DRM_SUPPORT:Z

    .line 49
    const-string/jumbo v0, "ro.mtk_owner_sim_support"

    invoke-static {v0}, Lcom/mediatek/contacts/ContactsSystemProperties;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 48
    sput-boolean v0, Lcom/mediatek/contacts/ContactsSystemProperties;->MTK_OWNER_SIM_SUPPORT:Z

    .line 50
    const-string/jumbo v0, "ro.mtk_hotknot_support"

    invoke-static {v0}, Lcom/mediatek/contacts/ContactsSystemProperties;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/contacts/ContactsSystemProperties;->MTK_HOTKNOT_SUPPORT:Z

    .line 54
    const-string/jumbo v0, "ro.mtk_volte_support"

    invoke-static {v0}, Lcom/mediatek/contacts/ContactsSystemProperties;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/contacts/ContactsSystemProperties;->MTK_VOLTE_SUPPORT:Z

    .line 55
    const-string/jumbo v0, "ro.mtk_ims_support"

    invoke-static {v0}, Lcom/mediatek/contacts/ContactsSystemProperties;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/contacts/ContactsSystemProperties;->MTK_IMS_SUPPORT:Z

    .line 60
    const-string/jumbo v0, "ro.mtk_perf_response_time"

    invoke-static {v0}, Lcom/mediatek/contacts/ContactsSystemProperties;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 59
    sput-boolean v0, Lcom/mediatek/contacts/ContactsSystemProperties;->MTK_PERF_RESPONSE_TIME:Z

    .line 62
    sput-boolean v1, Lcom/mediatek/contacts/ContactsSystemProperties;->DBG_DIALER_SEARCH:Z

    .line 63
    sput-boolean v1, Lcom/mediatek/contacts/ContactsSystemProperties;->DBG_CONTACTS_GROUP:Z

    .line 41
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isPropertyEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p0, "propertyString"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string/jumbo v0, "1"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
