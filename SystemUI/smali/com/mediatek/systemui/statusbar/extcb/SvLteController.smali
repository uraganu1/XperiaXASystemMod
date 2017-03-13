.class public Lcom/mediatek/systemui/statusbar/extcb/SvLteController;
.super Ljava/lang/Object;
.source "SvLteController.java"


# static fields
.field public static final ACTION_IRAT_PS_TYPE_CHANGED:Ljava/lang/String; = "com.mediatek.action.irat.ps.type.changed"

.field private static final DEBUG:Z = true

.field public static final EXTRA_PS_TYPE:Ljava/lang/String; = "extra_ps_type"

.field private static final LTE_SLOT:I = 0x0

.field private static final MTK_SRLTE_SUPPORT:Ljava/lang/String; = "ro.mtk_srlte_support"

.field private static final MTK_SVLTE_SUPPORT:Ljava/lang/String; = "ro.mtk_svlte_support"

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field public static final PS_SERVICE_ON_CDMA:I = 0x0

.field public static final PS_SERVICE_ON_LTE:I = 0x1

.field public static final PS_SERVICE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SvLteController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataActivity:I

.field private mDataNetType:I

.field private mDataState:I

.field private mPreciseDataConnectedState:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPsType:I

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private final mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 47
    const-string/jumbo v1, "gsm.ril.fulluicctype"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "gsm.ril.fulluicctype.2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "gsm.ril.fulluicctype.3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "gsm.ril.fulluicctype.4"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 46
    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mPsType:I

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mPreciseDataConnectedState:Ljava/util/HashSet;

    .line 73
    iput-object p1, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 72
    return-void
.end method

.method private static final getNWTypeByPriority(II)I
    .locals 2
    .param p0, "cs"    # I
    .param p1, "ps"    # I

    .prologue
    .line 517
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v0

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 518
    return p0

    .line 520
    :cond_0
    return p1
.end method

.method private final getSvlteRatMode(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 491
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 492
    const-string/jumbo v2, "lte_on_cdma_rat_mode"

    .line 493
    const/16 v3, 0x8

    .line 490
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 495
    .local v0, "svlteRatMode":I
    const-string/jumbo v1, "SvLteController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSvlteRatMode(), svlteRatMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return v0
.end method

.method public static getSvlteSlot()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public static final hasServiceInSvlte(Landroid/telephony/ServiceState;)Z
    .locals 3
    .param p0, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 442
    if-eqz p0, :cond_1

    .line 447
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 453
    return v0

    .line 451
    :pswitch_0
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 456
    :cond_1
    return v1

    .line 447
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static final is4GUiccCard()Z
    .locals 7

    .prologue
    .line 501
    const/4 v3, 0x0

    .line 502
    .local v3, "is4GUiccCard":Z
    sget-object v4, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, "cardType":Ljava/lang/String;
    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "appType":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 505
    const-string/jumbo v4, "USIM"

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 506
    const/4 v3, 0x1

    .line 511
    :cond_0
    const-string/jumbo v4, "SvLteController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "is4GUiccCard cardType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", is4GUiccCard="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return v3

    .line 504
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final isApIratSupport()Z
    .locals 2

    .prologue
    .line 418
    const-string/jumbo v0, "ro.mtk_svlte_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    const-string/jumbo v0, "ro.c2k.md.irat.support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 420
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final isBehaviorSet(Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;)Z
    .locals 1
    .param p1, "behaviorSet"    # Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->customizeBehaviorSet()Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isMediatekSRLteDcSupport()Z
    .locals 2

    .prologue
    .line 376
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "ro.mtk_srlte_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const/4 v0, 0x1

    return v0

    .line 379
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final isMediatekSRLteDcSupport(Landroid/telephony/SubscriptionInfo;)Z
    .locals 1
    .param p0, "info"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 410
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->isMediatekSRLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->isSvlteSlot(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isMediatekSVLteDcSupport()Z
    .locals 2

    .prologue
    .line 363
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "ro.mtk_svlte_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const/4 v0, 0x1

    return v0

    .line 366
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final isMediatekSVLteDcSupport(I)Z
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 390
    invoke-static {}, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->isMediatekSVLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->isSvlteSlot(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isMediatekSVLteDcSupport(Landroid/telephony/SubscriptionInfo;)Z
    .locals 1
    .param p0, "info"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 400
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->isMediatekSVLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->isSvlteSlot(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isSvlteSlot(I)Z
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 432
    invoke-static {}, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->getSvlteSlot()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cleanPhoneState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 170
    iput-object v1, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 172
    iput-object v1, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mServiceState:Landroid/telephony/ServiceState;

    .line 174
    iput v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mDataNetType:I

    .line 175
    iput v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mDataState:I

    .line 168
    return-void
.end method

.method public getDataNetType()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mDataNetType:I

    return v0
.end method

.method public getDataNetTypeWithLTEService(I)I
    .locals 6
    .param p1, "oneSubDataNetType"    # I

    .prologue
    .line 307
    move v1, p1

    .line 309
    .local v1, "retDataNetType":I
    iget-object v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mServiceState:Landroid/telephony/ServiceState;

    .line 310
    .local v0, "lteServiceState":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v3

    .line 313
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v4

    .line 311
    invoke-static {v3, v4}, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->getNWTypeByPriority(II)I

    move-result v2

    .line 318
    .local v2, "tempDataNetType":I
    :goto_0
    const-string/jumbo v3, "SvLteController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDataNetTypeWithLTEService, lteServiceState ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 319
    const-string/jumbo v5, " mDataNetType="

    .line 318
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 319
    iget v5, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mDataNetType:I

    .line 318
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 319
    const-string/jumbo v5, " tempDataNetType="

    .line 318
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-static {p1, v2}, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->getNWTypeByPriority(II)I

    move-result v1

    .line 324
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 330
    :cond_0
    :goto_1
    const-string/jumbo v3, "SvLteController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDataNetTypeWithLTEService, oneSubDataNetType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 331
    const-string/jumbo v5, " retDataNetType="

    .line 330
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return v1

    .line 315
    .end local v2    # "tempDataNetType":I
    :cond_1
    iget v2, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mDataNetType:I

    .restart local v2    # "tempDataNetType":I
    goto :goto_0

    .line 324
    :cond_2
    invoke-static {}, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->isApIratSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    iget v3, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mPsType:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 326
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    goto :goto_1
.end method

.method public getDataState()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mDataState:I

    return v0
.end method

.method public getPsType()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mPsType:I

    return v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method public getSignalStrengthLevel(Lcom/mediatek/systemui/statusbar/extcb/NetworkType;Z)I
    .locals 2
    .param p1, "networkType"    # Lcom/mediatek/systemui/statusbar/extcb/NetworkType;
    .param p2, "alwaysShowCdmaRssi"    # Z

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_0

    .line 203
    return v1

    .line 206
    :cond_0
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_4G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    if-ne p1, v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    return v0

    .line 209
    :cond_1
    if-eqz p2, :cond_2

    .line 210
    iget-object v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    return v0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    return v0

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    return v0
.end method

.method public hasService()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v0}, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->hasServiceInSvlte(Landroid/telephony/ServiceState;)Z

    move-result v0

    return v0
.end method

.method public final is4GDataEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 466
    invoke-direct {p0, p1}, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->getSvlteRatMode(Landroid/content/Context;)I

    move-result v1

    .line 467
    .local v1, "svlteRatMode":I
    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 468
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 470
    .local v0, "is4GDataEnabled":Z
    :goto_0
    const-string/jumbo v2, "SvLteController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "is4GDataEnabled(), is4GDataEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return v0

    .line 467
    .end local v0    # "is4GDataEnabled":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "is4GDataEnabled":Z
    goto :goto_0

    .line 468
    .end local v0    # "is4GDataEnabled":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "is4GDataEnabled":Z
    goto :goto_0
.end method

.method public final is4GDataOnlyMode(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->getSvlteRatMode(Landroid/content/Context;)I

    move-result v1

    .line 482
    const/16 v2, 0x1f

    .line 481
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 484
    .local v0, "is4GDataOnly":Z
    :goto_0
    const-string/jumbo v1, "SvLteController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "is4GDataOnlyMode, is4GDataOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return v0

    .line 481
    .end local v0    # "is4GDataOnly":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "is4GDataOnly":Z
    goto :goto_0
.end method

.method public isDataConnected()Z
    .locals 4

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "bSvlteDataConnected":Z
    iget-object v1, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-nez v1, :cond_2

    .line 293
    iget v1, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mDataState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 295
    :cond_0
    :goto_0
    const-string/jumbo v1, "SvLteController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSvlteDataConnected, bSvlteDataConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 296
    const-string/jumbo v3, " serviceState="

    .line 295
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 296
    iget-object v3, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mServiceState:Landroid/telephony/ServiceState;

    .line 295
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return v0

    .line 293
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 292
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmergencyOnly()Z
    .locals 4

    .prologue
    .line 242
    iget-object v1, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    .line 244
    :goto_0
    const-string/jumbo v1, "SvLteController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isOnlyEmergency, slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 245
    const-string/jumbo v3, ", isOnlyEmergency = "

    .line 244
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return v0

    .line 242
    :cond_0
    const/4 v0, 0x0

    .local v0, "isOnlyEmergency":Z
    goto :goto_0
.end method

.method public isOffline(Lcom/mediatek/systemui/statusbar/extcb/NetworkType;)Z
    .locals 7
    .param p1, "networkType"    # Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->isEmergencyOnly()Z

    move-result v1

    .line 257
    .local v1, "isEmergencyOnly":Z
    const/4 v2, 0x0

    .line 258
    .local v2, "isOffline":Z
    iget-object v4, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->isRadioOn(I)Z

    move-result v3

    .line 259
    .local v3, "isRadioOn":Z
    iget-object v4, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v4

    .line 260
    const/4 v5, 0x3

    .line 259
    if-eq v4, v5, :cond_1

    const/4 v0, 0x1

    .line 262
    .local v0, "extraSubRadioOn":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 263
    const/4 v2, 0x1

    .line 264
    sget-object v4, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_4G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    if-ne p1, v4, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->isShow4GDataOnlyForLTE()Z

    move-result v4

    .line 264
    if-eqz v4, :cond_0

    .line 266
    const/4 v2, 0x0

    .line 267
    const-string/jumbo v4, "SvLteController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SvLteController.isOffline,networkType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 268
    const-string/jumbo v6, ", set isOffline false"

    .line 267
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    :goto_1
    const-string/jumbo v4, "SvLteController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isOffline(), slotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 276
    const-string/jumbo v6, ", isOffline = "

    .line 275
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 277
    const-string/jumbo v6, ", isEmergencyOnly = "

    .line 275
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 278
    const-string/jumbo v6, ", isRadioOn = "

    .line 275
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 279
    const-string/jumbo v6, ", extraSubRadioOn = "

    .line 275
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 280
    const-string/jumbo v6, ", mServiceState = "

    .line 275
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 280
    iget-object v6, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mServiceState:Landroid/telephony/ServiceState;

    .line 275
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return v2

    .line 259
    .end local v0    # "extraSubRadioOn":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "extraSubRadioOn":Z
    goto/16 :goto_0

    .line 271
    :cond_2
    if-nez v3, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public isShow4GDataOnlyForLTE()Z
    .locals 4

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "isShow4GDataOnly":Z
    iget-object v1, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-nez v1, :cond_1

    .line 344
    const/4 v0, 0x1

    .line 351
    .end local v0    # "isShow4GDataOnly":Z
    :cond_0
    :goto_0
    const-string/jumbo v1, "SvLteController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isShow4GDataOnlyForLTE: isShow4GDataOnlyForLTE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 352
    const-string/jumbo v3, ", mServiceState="

    .line 351
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 352
    iget-object v3, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mServiceState:Landroid/telephony/ServiceState;

    .line 351
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return v0

    .line 345
    .restart local v0    # "isShow4GDataOnly":Z
    :cond_1
    iget-object v1, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->is4GDataOnlyMode(Landroid/content/Context;)Z

    move-result v0

    .local v0, "isShow4GDataOnly":Z
    goto :goto_0
.end method

.method public isShowDataActivityIcon()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 145
    iget-object v1, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mPreciseDataConnectedState:Ljava/util/HashSet;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mPreciseDataConnectedState:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 147
    iget-object v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mPreciseDataConnectedState:Ljava/util/HashSet;

    const-string/jumbo v2, "ims"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mPreciseDataConnectedState:Ljava/util/HashSet;

    const-string/jumbo v2, "emergency"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 147
    if-eqz v0, :cond_2

    .line 149
    :cond_0
    const-string/jumbo v0, "SvLteController"

    const-string/jumbo v2, "isShowDataActivityIcon(), return false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 150
    return v3

    .line 152
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mPreciseDataConnectedState:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 153
    iget-object v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mPreciseDataConnectedState:Ljava/util/HashSet;

    const-string/jumbo v2, "ims"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mPreciseDataConnectedState:Ljava/util/HashSet;

    const-string/jumbo v2, "emergency"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 153
    if-eqz v0, :cond_2

    .line 155
    const-string/jumbo v0, "SvLteController"

    const-string/jumbo v2, "isShowDataActivityIcon(), return false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 156
    return v3

    :cond_2
    monitor-exit v1

    .line 160
    const-string/jumbo v0, "SvLteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isShowDataActivityIcon(), return true, mPreciseDataConnectedState.size(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mPreciseDataConnectedState:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return v4

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDataActivity(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mDataActivity:I

    .line 111
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mDataState:I

    .line 104
    iput p2, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mDataNetType:I

    .line 102
    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 6
    .param p1, "state"    # Landroid/telephony/PreciseDataConnectionState;

    .prologue
    .line 120
    const-string/jumbo v2, "SvLteController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPreciseDataConnectionStateChanged: state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionAPNType()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "apnType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionState()I

    move-result v1

    .line 123
    .local v1, "dataState":I
    iget-object v3, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mPreciseDataConnectedState:Ljava/util/HashSet;

    monitor-enter v3

    .line 124
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 125
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mPreciseDataConnectedState:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mPreciseDataConnectedState:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    const-string/jumbo v2, "SvLteController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPreciseDataConnectionStateChanged: put apnType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 128
    const-string/jumbo v5, ", dataState: "

    .line 127
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 128
    const-string/jumbo v5, " into mPreciseDataConnectedState"

    .line 127
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v3

    .line 119
    return-void

    .line 131
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mPreciseDataConnectedState:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mPreciseDataConnectedState:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 133
    const-string/jumbo v2, "SvLteController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPreciseDataConnectionStateChanged: remove apnType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 134
    const-string/jumbo v5, ", dataState: "

    .line 133
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 134
    const-string/jumbo v5, " from mPreciseDataConnectedState"

    .line 133
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mServiceState:Landroid/telephony/ServiceState;

    .line 93
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 85
    return-void
.end method

.method public setPsType(I)V
    .locals 0
    .param p1, "psType"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->mPsType:I

    .line 223
    return-void
.end method
