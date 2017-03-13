.class public Lcom/mediatek/systemui/statusbar/util/SIMHelper;
.super Ljava/lang/Object;
.source "SIMHelper.java"


# static fields
.field private static bMtkAudioProfilesSupport:Z

.field private static bMtkHotKnotSupport:Z

.field public static sContext:Landroid/content/Context;

.field private static sSimInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 137
    const-string/jumbo v1, "ro.mtk_hotknot_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 136
    sput-boolean v1, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->bMtkHotKnotSupport:Z

    .line 146
    const-string/jumbo v1, "ro.mtk_audio_profiles"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const-string/jumbo v1, "ro.mtk_a1_feature"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    sput-boolean v0, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->bMtkAudioProfilesSupport:Z

    .line 42
    return-void

    .line 147
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFirstSubInSlot(I)I
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 84
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 85
    aget v1, v0, v2

    return v1

    .line 87
    :cond_0
    const-string/jumbo v1, "SIMHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot get first sub in slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v1, -0x1

    return v1
.end method

.method public static getSlotCount()I
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public static getSubInfoBySlot(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    .line 60
    sget-object v2, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->sSimInfos:Ljava/util/List;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->sSimInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 61
    :cond_0
    const-string/jumbo v2, "@M_SIMHelper"

    const-string/jumbo v3, "getSubInfoBySlot, SubscriptionInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-object v4

    .line 65
    :cond_1
    sget-object v2, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->sSimInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 66
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 67
    return-object v0

    .line 70
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_3
    return-object v4
.end method

.method public static final isMtkAudioProfilesSupport()Z
    .locals 1

    .prologue
    .line 150
    sget-boolean v0, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->bMtkAudioProfilesSupport:Z

    return v0
.end method

.method public static final isMtkHotKnotSupport()Z
    .locals 3

    .prologue
    .line 139
    const-string/jumbo v0, "@M_SIMHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isMtkHotKnotSupport, bMtkHotKnotSupport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->bMtkHotKnotSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-boolean v0, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->bMtkHotKnotSupport:Z

    return v0
.end method

.method public static isRadioOn(I)Z
    .locals 4
    .param p0, "subId"    # I

    .prologue
    .line 187
    const-string/jumbo v2, "phone"

    .line 186
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 189
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 190
    :try_start_0
    sget-object v2, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SIMHelper"

    const-string/jumbo v3, "mTelephony exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static isSimInsertedBySlot(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 117
    sget-object v1, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->sSimInfos:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 118
    invoke-static {}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->getSlotCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_1

    .line 119
    invoke-static {p0, p1}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->getSubInfoBySlot(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 120
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_0

    .line 121
    const/4 v1, 0x1

    return v1

    .line 123
    :cond_0
    return v3

    .line 126
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return v3

    .line 129
    :cond_2
    const-string/jumbo v1, "@M_SIMHelper"

    const-string/jumbo v2, "isSimInsertedBySlot, SubscriptionInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v3
.end method

.method public static isWifiOnlyDevice()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 160
    sget-object v2, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->sContext:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 161
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    sput-object p0, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->sContext:Landroid/content/Context;

    .line 154
    return-void
.end method

.method public static updateSIMInfos(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->sSimInfos:Ljava/util/List;

    .line 78
    return-void
.end method
