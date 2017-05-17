.class public Lcom/android/mms/MmsConfig;
.super Ljava/lang/Object;
.source "MmsConfig.java"


# static fields
.field public static final DEBUG:Z

.field private static mResolution:Ljava/lang/String;

.field private static mVideoContainerFormat:Ljava/lang/String;

.field private static sComposerAttachmentPreviewEnabled:Z

.field private static sConversationsLinkifyEnabled:Z

.field private static sDeliveryReportEnabledByDefault:Z

.field private static sEnableIgnoreClass2Sms:Z

.field private static sGroupMmsEnabledByDefault:Z

.field private static sHttpSocketTimeout:I

.field private static sIsAutoAddSubjectEnable:Z

.field private static sIsMimeTypeFromFileExtension:Z

.field private static sMMSPreviewEnabled:Z

.field private static sMaxMessageSizeForTest:I

.field private static sMaxNbrMmsObjects:I

.field private static sMaxSmsSegments:I

.field private static sMaxSmsSegmentsForTest:I

.field private static sMmsEnabled:I

.field private static sMmsEnabledForTest:I

.field private static sMmsSubjectEnabled:Z

.field private static sMmsVersion:I

.field private static final sReadLock:Ljava/util/concurrent/locks/Lock;

.field private static final sReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static sSettings:Lcom/sonyericsson/conversations/settings/Settings;

.field private static sShowParticipantsInMessageHeader:Z

.field private static sSmsOAPattern:Ljava/lang/String;

.field private static sSmsOAReplacement:Ljava/lang/String;

.field private static sSmscEditableValue:I

.field private static sStackedMessagesDelayMillis:I

.field private static sStrictPhonenumberComparisonPrefix:Ljava/lang/String;

.field private static final sSubIdToMmsConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/mms/MmsConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static sUaProfUrl:Ljava/lang/String;

.field private static sUseSCTimestamp:Z

.field private static final sWriteLock:Ljava/util/concurrent/locks/Lock;

.field private static sXperiaTransferPromoEnabled:Z

.field private static sXperiaTransferPromoEnabledForTest:I


# instance fields
.field private final mSubId:I

.field private final mValues:Landroid/os/Bundle;


# direct methods
.method static synthetic -get0()Ljava/util/concurrent/locks/Lock;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sWriteLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/mms/MmsConfig;)V
    .locals 0
    .param p0, "mmsConfig"    # Lcom/android/mms/MmsConfig;

    .prologue
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->addMmsConfig(Lcom/android/mms/MmsConfig;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    sput-boolean v0, Lcom/android/mms/MmsConfig;->DEBUG:Z

    .line 62
    sput v4, Lcom/android/mms/MmsConfig;->sMmsEnabled:I

    .line 63
    const/16 v0, 0x12

    sput v0, Lcom/android/mms/MmsConfig;->sMmsVersion:I

    .line 66
    sput v2, Lcom/android/mms/MmsConfig;->sMaxNbrMmsObjects:I

    .line 68
    const/16 v0, 0x14

    sput v0, Lcom/android/mms/MmsConfig;->sMaxSmsSegments:I

    .line 70
    const v0, 0xea60

    sput v0, Lcom/android/mms/MmsConfig;->sHttpSocketTimeout:I

    .line 71
    sput v4, Lcom/android/mms/MmsConfig;->sMmsEnabledForTest:I

    .line 72
    sput v4, Lcom/android/mms/MmsConfig;->sMaxSmsSegmentsForTest:I

    .line 73
    sput v4, Lcom/android/mms/MmsConfig;->sXperiaTransferPromoEnabledForTest:I

    .line 74
    sput v4, Lcom/android/mms/MmsConfig;->sMaxMessageSizeForTest:I

    .line 75
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sMmsSubjectEnabled:Z

    .line 76
    sput-boolean v1, Lcom/android/mms/MmsConfig;->sUseSCTimestamp:Z

    .line 77
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sShowParticipantsInMessageHeader:Z

    .line 78
    sput-boolean v1, Lcom/android/mms/MmsConfig;->sIsMimeTypeFromFileExtension:Z

    .line 79
    sput-boolean v1, Lcom/android/mms/MmsConfig;->sMMSPreviewEnabled:Z

    .line 80
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sXperiaTransferPromoEnabled:Z

    .line 81
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDeliveryReportEnabledByDefault:Z

    .line 82
    sput-boolean v1, Lcom/android/mms/MmsConfig;->sGroupMmsEnabledByDefault:Z

    .line 84
    sput-boolean v1, Lcom/android/mms/MmsConfig;->sComposerAttachmentPreviewEnabled:Z

    .line 85
    sput-boolean v1, Lcom/android/mms/MmsConfig;->sIsAutoAddSubjectEnable:Z

    .line 86
    sput-boolean v1, Lcom/android/mms/MmsConfig;->sConversationsLinkifyEnabled:Z

    .line 87
    sput-object v3, Lcom/android/mms/MmsConfig;->sStrictPhonenumberComparisonPrefix:Ljava/lang/String;

    .line 88
    sput-object v3, Lcom/android/mms/MmsConfig;->sSmsOAPattern:Ljava/lang/String;

    .line 89
    sput-object v3, Lcom/android/mms/MmsConfig;->sSmsOAReplacement:Ljava/lang/String;

    .line 90
    sput v2, Lcom/android/mms/MmsConfig;->sSmscEditableValue:I

    .line 91
    sput-boolean v1, Lcom/android/mms/MmsConfig;->sEnableIgnoreClass2Sms:Z

    .line 104
    sput-object v3, Lcom/android/mms/MmsConfig;->mResolution:Ljava/lang/String;

    .line 107
    sput-object v3, Lcom/android/mms/MmsConfig;->mVideoContainerFormat:Ljava/lang/String;

    .line 109
    sput-object v3, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    .line 118
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/android/mms/MmsConfig;->sReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 119
    sget-object v0, Lcom/android/mms/MmsConfig;->sReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    sput-object v0, Lcom/android/mms/MmsConfig;->sReadLock:Ljava/util/concurrent/locks/Lock;

    .line 120
    sget-object v0, Lcom/android/mms/MmsConfig;->sReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    sput-object v0, Lcom/android/mms/MmsConfig;->sWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/MmsConfig;->sSubIdToMmsConfigMap:Ljava/util/Map;

    .line 55
    return-void
.end method

.method private constructor <init>(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "values"    # Landroid/os/Bundle;

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput p1, p0, Lcom/android/mms/MmsConfig;->mSubId:I

    .line 220
    iput-object p2, p0, Lcom/android/mms/MmsConfig;->mValues:Landroid/os/Bundle;

    .line 218
    return-void
.end method

.method synthetic constructor <init>(ILandroid/os/Bundle;Lcom/android/mms/MmsConfig;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "values"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/mms/MmsConfig;-><init>(ILandroid/os/Bundle;)V

    return-void
.end method

.method private static addMmsConfig(Lcom/android/mms/MmsConfig;)V
    .locals 2
    .param p0, "mmsConfig"    # Lcom/android/mms/MmsConfig;

    .prologue
    .line 215
    sget-object v0, Lcom/android/mms/MmsConfig;->sSubIdToMmsConfigMap:Ljava/util/Map;

    iget v1, p0, Lcom/android/mms/MmsConfig;->mSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-void
.end method

.method public static geDefaultUaProfUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    sget-object v0, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static get(I)Lcom/android/mms/MmsConfig;
    .locals 2
    .param p0, "subId"    # I

    .prologue
    .line 207
    :try_start_0
    sget-object v0, Lcom/android/mms/MmsConfig;->sReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 208
    sget-object v0, Lcom/android/mms/MmsConfig;->sSubIdToMmsConfigMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/MmsConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    sget-object v1, Lcom/android/mms/MmsConfig;->sReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 208
    return-object v0

    .line 209
    :catchall_0
    move-exception v0

    .line 210
    sget-object v1, Lcom/android/mms/MmsConfig;->sReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 209
    throw v0
.end method

.method public static getConversationsLinkifyEnabled()Z
    .locals 1

    .prologue
    .line 288
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sConversationsLinkifyEnabled:Z

    return v0
.end method

.method public static getDeliveryReportEnabled()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 652
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getActiveSubscriptionIds()Ljava/util/List;

    move-result-object v5

    .line 653
    .local v5, "subList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 654
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 655
    .local v0, "defaultSubId":I
    invoke-static {v0}, Lcom/android/mms/MmsConfig;->get(I)Lcom/android/mms/MmsConfig;

    move-result-object v1

    .line 656
    .local v1, "mmsConfig":Lcom/android/mms/MmsConfig;
    if-nez v1, :cond_1

    .line 657
    sget-boolean v6, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 658
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No available delivery report configuration for defaultSubId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 661
    :cond_0
    sget-boolean v6, Lcom/android/mms/MmsConfig;->sDeliveryReportEnabledByDefault:Z

    return v6

    .line 663
    :cond_1
    invoke-direct {v1}, Lcom/android/mms/MmsConfig;->isDeliveryReportEnabledInternal()Z

    move-result v6

    return v6

    .line 665
    .end local v0    # "defaultSubId":I
    .end local v1    # "mmsConfig":Lcom/android/mms/MmsConfig;
    :cond_2
    const/4 v2, 0x1

    .line 666
    .local v2, "returnDefaultValue":Z
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "subId$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 667
    .local v3, "subId":I
    invoke-static {v3}, Lcom/android/mms/MmsConfig;->get(I)Lcom/android/mms/MmsConfig;

    move-result-object v1

    .line 668
    .restart local v1    # "mmsConfig":Lcom/android/mms/MmsConfig;
    if-eqz v1, :cond_3

    .line 669
    const/4 v2, 0x0

    .line 670
    invoke-direct {v1}, Lcom/android/mms/MmsConfig;->isDeliveryReportEnabledInternal()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 671
    const/4 v6, 0x1

    return v6

    .line 675
    .end local v1    # "mmsConfig":Lcom/android/mms/MmsConfig;
    .end local v3    # "subId":I
    :cond_4
    if-eqz v2, :cond_5

    sget-boolean v6, Lcom/android/mms/MmsConfig;->sDeliveryReportEnabledByDefault:Z

    :goto_0
    return v6

    :cond_5
    move v6, v7

    goto :goto_0
.end method

.method public static getGroupMmsEnabled()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 687
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getActiveSubscriptionIds()Ljava/util/List;

    move-result-object v5

    .line 688
    .local v5, "subList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 689
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 690
    .local v0, "defaultSubId":I
    invoke-static {v0}, Lcom/android/mms/MmsConfig;->get(I)Lcom/android/mms/MmsConfig;

    move-result-object v1

    .line 691
    .local v1, "mmsConfig":Lcom/android/mms/MmsConfig;
    if-nez v1, :cond_1

    .line 692
    sget-boolean v6, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 693
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No available group mms configuration for defaultSubId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 696
    :cond_0
    sget-boolean v6, Lcom/android/mms/MmsConfig;->sGroupMmsEnabledByDefault:Z

    return v6

    .line 698
    :cond_1
    invoke-direct {v1}, Lcom/android/mms/MmsConfig;->getGroupMmsEnabledInternal()Z

    move-result v6

    return v6

    .line 700
    .end local v0    # "defaultSubId":I
    .end local v1    # "mmsConfig":Lcom/android/mms/MmsConfig;
    :cond_2
    const/4 v2, 0x1

    .line 701
    .local v2, "returnDefaultValue":Z
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "subId$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 702
    .local v3, "subId":I
    invoke-static {v3}, Lcom/android/mms/MmsConfig;->get(I)Lcom/android/mms/MmsConfig;

    move-result-object v1

    .line 703
    .restart local v1    # "mmsConfig":Lcom/android/mms/MmsConfig;
    if-eqz v1, :cond_3

    .line 704
    const/4 v2, 0x0

    .line 705
    invoke-direct {v1}, Lcom/android/mms/MmsConfig;->getGroupMmsEnabledInternal()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 706
    const/4 v6, 0x1

    return v6

    .line 710
    .end local v1    # "mmsConfig":Lcom/android/mms/MmsConfig;
    .end local v3    # "subId":I
    :cond_4
    if-eqz v2, :cond_5

    sget-boolean v6, Lcom/android/mms/MmsConfig;->sGroupMmsEnabledByDefault:Z

    :goto_0
    return v6

    :cond_5
    move v6, v7

    goto :goto_0
.end method

.method private getGroupMmsEnabledInternal()Z
    .locals 5

    .prologue
    .line 457
    iget-object v2, p0, Lcom/android/mms/MmsConfig;->mValues:Landroid/os/Bundle;

    const-string/jumbo v3, "enableGroupMms"

    .line 458
    sget-boolean v4, Lcom/android/mms/MmsConfig;->sGroupMmsEnabledByDefault:Z

    .line 457
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 461
    .local v0, "defaultValue":Z
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 460
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 462
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    const-string/jumbo v2, "pref_key_mms_group_conversation"

    .line 462
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getHttpSocketTimeout()I
    .locals 1

    .prologue
    .line 347
    sget v0, Lcom/android/mms/MmsConfig;->sHttpSocketTimeout:I

    return v0
.end method

.method public static getIgnoreClass2SmsEnabled()Z
    .locals 1

    .prologue
    .line 763
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableIgnoreClass2Sms:Z

    return v0
.end method

.method public static getIsMimeTypeFromFileExtension()Z
    .locals 1

    .prologue
    .line 359
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sIsMimeTypeFromFileExtension:Z

    return v0
.end method

.method public static getMaxImageHeight()I
    .locals 1

    .prologue
    .line 329
    sget-object v0, Lcom/android/mms/MmsConfig;->mResolution:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 330
    const-string/jumbo v0, "XGA"

    sput-object v0, Lcom/android/mms/MmsConfig;->mResolution:Ljava/lang/String;

    .line 332
    :cond_0
    sget-object v0, Lcom/android/mms/MmsConfig;->mResolution:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getResolutionHeight(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getMaxImageWidth()I
    .locals 1

    .prologue
    .line 336
    sget-object v0, Lcom/android/mms/MmsConfig;->mResolution:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 337
    const-string/jumbo v0, "XGA"

    sput-object v0, Lcom/android/mms/MmsConfig;->mResolution:Ljava/lang/String;

    .line 339
    :cond_0
    sget-object v0, Lcom/android/mms/MmsConfig;->mResolution:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getResolutionWidth(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getMaxMessageSize()I
    .locals 11

    .prologue
    const v9, 0x4b000

    .line 535
    sget v8, Lcom/android/mms/MmsConfig;->sMaxMessageSizeForTest:I

    const/4 v10, -0x1

    if-eq v8, v10, :cond_0

    .line 536
    sget v8, Lcom/android/mms/MmsConfig;->sMaxMessageSizeForTest:I

    return v8

    .line 538
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getActiveSubscriptionIds()Ljava/util/List;

    move-result-object v7

    .line 539
    .local v7, "subList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 540
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v1

    .line 541
    .local v1, "defaultSubId":I
    invoke-static {v1}, Lcom/android/mms/MmsConfig;->get(I)Lcom/android/mms/MmsConfig;

    move-result-object v3

    .line 542
    .local v3, "mmsConfig":Lcom/android/mms/MmsConfig;
    if-nez v3, :cond_2

    .line 543
    sget-boolean v8, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 544
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No available max message size configuration for defaultSubId "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 547
    :cond_1
    return v9

    .line 549
    :cond_2
    invoke-direct {v3}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeInternal()I

    move-result v8

    return v8

    .line 551
    .end local v1    # "defaultSubId":I
    .end local v3    # "mmsConfig":Lcom/android/mms/MmsConfig;
    :cond_3
    const v2, 0x7fffffff

    .line 552
    .local v2, "maxSize":I
    const/4 v4, 0x1

    .line 553
    .local v4, "returnDefaultValue":Z
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "subId$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 554
    .local v5, "subId":I
    invoke-static {v5}, Lcom/android/mms/MmsConfig;->get(I)Lcom/android/mms/MmsConfig;

    move-result-object v3

    .line 555
    .restart local v3    # "mmsConfig":Lcom/android/mms/MmsConfig;
    if-eqz v3, :cond_4

    .line 556
    const/4 v4, 0x0

    .line 557
    invoke-direct {v3}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeInternal()I

    move-result v0

    .line 558
    .local v0, "configuredSize":I
    if-ge v0, v2, :cond_4

    .line 559
    move v2, v0

    goto :goto_0

    .line 563
    .end local v0    # "configuredSize":I
    .end local v3    # "mmsConfig":Lcom/android/mms/MmsConfig;
    .end local v5    # "subId":I
    :cond_5
    if-eqz v4, :cond_6

    move v2, v9

    .end local v2    # "maxSize":I
    :cond_6
    return v2
.end method

.method private getMaxMessageSizeInternal()I
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/mms/MmsConfig;->mValues:Landroid/os/Bundle;

    const-string/jumbo v1, "maxMessageSize"

    const v2, 0x4b000

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaxMessageSizeWithOverhead()I
    .locals 11

    .prologue
    const v9, 0x480f0

    .line 613
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getActiveSubscriptionIds()Ljava/util/List;

    move-result-object v7

    .line 614
    .local v7, "subList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 615
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v1

    .line 616
    .local v1, "defaultSubId":I
    invoke-static {v1}, Lcom/android/mms/MmsConfig;->get(I)Lcom/android/mms/MmsConfig;

    move-result-object v3

    .line 617
    .local v3, "mmsConfig":Lcom/android/mms/MmsConfig;
    if-nez v3, :cond_1

    .line 618
    sget-boolean v8, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 619
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No available max message size configuration for defaultSubId "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 622
    :cond_0
    return v9

    .line 625
    :cond_1
    invoke-direct {v3}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverheadInternal()I

    move-result v8

    return v8

    .line 627
    .end local v1    # "defaultSubId":I
    .end local v3    # "mmsConfig":Lcom/android/mms/MmsConfig;
    :cond_2
    const v2, 0x7fffffff

    .line 628
    .local v2, "maxSize":I
    const/4 v4, 0x1

    .line 629
    .local v4, "returnDefaultValue":Z
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "subId$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 630
    .local v5, "subId":I
    invoke-static {v5}, Lcom/android/mms/MmsConfig;->get(I)Lcom/android/mms/MmsConfig;

    move-result-object v3

    .line 631
    .restart local v3    # "mmsConfig":Lcom/android/mms/MmsConfig;
    if-eqz v3, :cond_3

    .line 632
    const/4 v4, 0x0

    .line 633
    invoke-direct {v3}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverheadInternal()I

    move-result v0

    .line 634
    .local v0, "configuredSize":I
    if-ge v0, v2, :cond_3

    .line 635
    move v2, v0

    goto :goto_0

    .line 639
    .end local v0    # "configuredSize":I
    .end local v3    # "mmsConfig":Lcom/android/mms/MmsConfig;
    .end local v5    # "subId":I
    :cond_4
    if-eqz v4, :cond_5

    move v2, v9

    .end local v2    # "maxSize":I
    :cond_5
    return v2
.end method

.method private getMaxMessageSizeWithOverheadInternal()I
    .locals 1

    .prologue
    .line 301
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v0

    add-int/lit16 v0, v0, -0x2f10

    return v0
.end method

.method public static getMaxNbrMmsObjects()I
    .locals 1

    .prologue
    .line 306
    sget v0, Lcom/android/mms/MmsConfig;->sMaxNbrMmsObjects:I

    return v0
.end method

.method public static getMaxNbrMmsObjects(Z)I
    .locals 1
    .param p0, "hasLocation"    # Z

    .prologue
    .line 310
    if-eqz p0, :cond_0

    .line 311
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxNbrMmsObjects()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 313
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxNbrMmsObjects()I

    move-result v0

    return v0
.end method

.method public static getMaxRecipientCount()I
    .locals 11

    .prologue
    const/16 v9, 0x32

    .line 575
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getActiveSubscriptionIds()Ljava/util/List;

    move-result-object v7

    .line 576
    .local v7, "subList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 577
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v1

    .line 578
    .local v1, "defaultSubId":I
    invoke-static {v1}, Lcom/android/mms/MmsConfig;->get(I)Lcom/android/mms/MmsConfig;

    move-result-object v3

    .line 579
    .local v3, "mmsConfig":Lcom/android/mms/MmsConfig;
    if-nez v3, :cond_1

    .line 580
    sget-boolean v8, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 581
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No available max recipients configuration for defaultSubId "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 584
    :cond_0
    return v9

    .line 586
    :cond_1
    invoke-direct {v3}, Lcom/android/mms/MmsConfig;->getMaxRecipientsInternal()I

    move-result v8

    return v8

    .line 588
    .end local v1    # "defaultSubId":I
    .end local v3    # "mmsConfig":Lcom/android/mms/MmsConfig;
    :cond_2
    const v2, 0x7fffffff

    .line 589
    .local v2, "maxRecipients":I
    const/4 v4, 0x1

    .line 590
    .local v4, "returnDefaultValue":Z
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "subId$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 591
    .local v5, "subId":I
    invoke-static {v5}, Lcom/android/mms/MmsConfig;->get(I)Lcom/android/mms/MmsConfig;

    move-result-object v3

    .line 592
    .restart local v3    # "mmsConfig":Lcom/android/mms/MmsConfig;
    if-eqz v3, :cond_3

    .line 593
    const/4 v4, 0x0

    .line 594
    invoke-direct {v3}, Lcom/android/mms/MmsConfig;->getMaxRecipientsInternal()I

    move-result v0

    .line 595
    .local v0, "configuredValue":I
    if-ge v0, v2, :cond_3

    .line 596
    move v2, v0

    goto :goto_0

    .line 600
    .end local v0    # "configuredValue":I
    .end local v3    # "mmsConfig":Lcom/android/mms/MmsConfig;
    .end local v5    # "subId":I
    :cond_4
    if-eqz v4, :cond_5

    move v2, v9

    .end local v2    # "maxRecipients":I
    :cond_5
    return v2
.end method

.method private getMaxRecipientsInternal()I
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/MmsConfig;->mValues:Landroid/os/Bundle;

    const-string/jumbo v1, "recipientLimit"

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaxSmsSegments()I
    .locals 2

    .prologue
    .line 247
    sget v0, Lcom/android/mms/MmsConfig;->sMaxSmsSegmentsForTest:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget v0, Lcom/android/mms/MmsConfig;->sMaxSmsSegments:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/mms/MmsConfig;->sMaxSmsSegmentsForTest:I

    goto :goto_0
.end method

.method public static getMmsEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 256
    sget v2, Lcom/android/mms/MmsConfig;->sMmsEnabledForTest:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 257
    sget v2, Lcom/android/mms/MmsConfig;->sMmsEnabledForTest:I

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 259
    :cond_1
    sget v2, Lcom/android/mms/MmsConfig;->sMmsEnabled:I

    if-ne v2, v0, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static getMmsSubjectEnabled()Z
    .locals 1

    .prologue
    .line 264
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sMmsSubjectEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMmsTriggerRecipients()I
    .locals 1

    .prologue
    .line 452
    sget-object v0, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/Settings;->getMmsTriggerRecipients()I

    move-result v0

    return v0
.end method

.method public static getMmsTriggerSmsPduBytes()I
    .locals 1

    .prologue
    .line 477
    sget-object v0, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/Settings;->getMmsTriggerSmsPduBytes()I

    move-result v0

    return v0
.end method

.method public static getMmsTriggerSmsSegments()I
    .locals 11

    .prologue
    const/16 v9, 0x14

    .line 722
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getActiveSubscriptionIds()Ljava/util/List;

    move-result-object v7

    .line 723
    .local v7, "subList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 724
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v1

    .line 725
    .local v1, "defaultSubId":I
    invoke-static {v1}, Lcom/android/mms/MmsConfig;->get(I)Lcom/android/mms/MmsConfig;

    move-result-object v3

    .line 726
    .local v3, "mmsConfig":Lcom/android/mms/MmsConfig;
    if-nez v3, :cond_1

    .line 727
    sget-boolean v8, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 728
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No available trigger sms segments configuration for defaultSubId "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 731
    :cond_0
    return v9

    .line 733
    :cond_1
    invoke-direct {v3}, Lcom/android/mms/MmsConfig;->getMmsTriggerSmsSegmentsInternal()I

    move-result v8

    return v8

    .line 735
    .end local v1    # "defaultSubId":I
    .end local v3    # "mmsConfig":Lcom/android/mms/MmsConfig;
    :cond_2
    const v2, 0x7fffffff

    .line 736
    .local v2, "maxSize":I
    const/4 v4, 0x1

    .line 737
    .local v4, "returnDefaultValue":Z
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "subId$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 738
    .local v5, "subId":I
    invoke-static {v5}, Lcom/android/mms/MmsConfig;->get(I)Lcom/android/mms/MmsConfig;

    move-result-object v3

    .line 739
    .restart local v3    # "mmsConfig":Lcom/android/mms/MmsConfig;
    if-eqz v3, :cond_3

    .line 740
    const/4 v4, 0x0

    .line 741
    invoke-direct {v3}, Lcom/android/mms/MmsConfig;->getMmsTriggerSmsSegmentsInternal()I

    move-result v0

    .line 742
    .local v0, "configuredValue":I
    if-ge v0, v2, :cond_3

    .line 743
    move v2, v0

    goto :goto_0

    .line 747
    .end local v0    # "configuredValue":I
    .end local v3    # "mmsConfig":Lcom/android/mms/MmsConfig;
    .end local v5    # "subId":I
    :cond_4
    if-eqz v4, :cond_5

    move v2, v9

    .end local v2    # "maxSize":I
    :cond_5
    return v2
.end method

.method private getMmsTriggerSmsSegmentsInternal()I
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 467
    iget-object v1, p0, Lcom/android/mms/MmsConfig;->mValues:Landroid/os/Bundle;

    const-string/jumbo v2, "smsToMmsTextThreshold"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 469
    .local v0, "trigger":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 470
    return v0

    .line 472
    :cond_0
    return v3
.end method

.method public static getMmsUserAgentString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 757
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 758
    .local v0, "device":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 759
    .local v1, "osBuildNr":Ljava/lang/String;
    const-string/jumbo v2, "Sony%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMmsVersion()I
    .locals 1

    .prologue
    .line 498
    sget v0, Lcom/android/mms/MmsConfig;->sMmsVersion:I

    return v0
.end method

.method public static getSmsOAPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lcom/android/mms/MmsConfig;->sSmsOAPattern:Ljava/lang/String;

    return-object v0
.end method

.method public static getSmsOAReplacement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/android/mms/MmsConfig;->sSmsOAReplacement:Ljava/lang/String;

    return-object v0
.end method

.method public static getSmscEditableValue()I
    .locals 1

    .prologue
    .line 243
    sget v0, Lcom/android/mms/MmsConfig;->sSmscEditableValue:I

    return v0
.end method

.method public static getStackedMessagesDelayTimeMillis()J
    .locals 2

    .prologue
    .line 778
    sget v0, Lcom/android/mms/MmsConfig;->sStackedMessagesDelayMillis:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public static getStrictPhonenumberComparisonPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    sget-object v0, Lcom/android/mms/MmsConfig;->sStrictPhonenumberComparisonPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public static getTranslatedNotificationSound(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 518
    sget-object v1, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/settings/Settings;->getNotificationSoundUri()Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "sound":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 520
    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->notificationHasBeenIndexed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 521
    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->convertNotificationPathToInternalUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    :cond_0
    return-object v0
.end method

.method public static getUseSCTimestamp()Z
    .locals 1

    .prologue
    .line 351
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sUseSCTimestamp:Z

    return v0
.end method

.method public static getVideoContainerFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    sget-object v0, Lcom/android/mms/MmsConfig;->mVideoContainerFormat:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const-class v2, Lcom/android/mms/MmsConfig;

    monitor-enter v2

    .line 127
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v0

    .line 128
    .local v0, "settings":Lcom/sonyericsson/conversations/settings/Settings;
    invoke-static {p0, v0}, Lcom/android/mms/MmsConfig;->init(Landroid/content/Context;Lcom/sonyericsson/conversations/settings/Settings;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 126
    return-void

    .end local v0    # "settings":Lcom/sonyericsson/conversations/settings/Settings;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static init(Landroid/content/Context;Lcom/sonyericsson/conversations/settings/Settings;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/sonyericsson/conversations/settings/Settings;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 132
    sget-boolean v2, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 133
    const-string/jumbo v2, "MmsConfig.init()"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 136
    :cond_0
    sput-object p1, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    .line 137
    invoke-static {}, Lcom/sonymobile/multiuser/MultiUserUtils;->isUserOwner()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    sput v2, Lcom/android/mms/MmsConfig;->sMmsEnabled:I

    .line 139
    invoke-static {}, Lcom/android/mms/MmsConfig;->loadMmsCarrierConfigValuesAsync()V

    .line 141
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 142
    .local v0, "r":Landroid/content/res/Resources;
    const-string/jumbo v2, "config_useragentprofile_url"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "android"

    invoke-virtual {v0, v2, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 143
    .local v1, "urlRes":I
    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    .line 147
    :cond_1
    sget-object v2, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->isMmsSubjectEnabled()Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sMmsSubjectEnabled:Z

    .line 149
    sget-object v2, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->getMaxNbrMmsObjects()I

    move-result v2

    sput v2, Lcom/android/mms/MmsConfig;->sMaxNbrMmsObjects:I

    .line 151
    sget-object v2, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->getMaxSmsSegments()I

    move-result v2

    sput v2, Lcom/android/mms/MmsConfig;->sMaxSmsSegments:I

    .line 153
    sget-object v2, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->getImageResolution()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/MmsConfig;->mResolution:Ljava/lang/String;

    .line 155
    sget-object v2, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->getVideoContainerFormat()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/MmsConfig;->mVideoContainerFormat:Ljava/lang/String;

    .line 157
    sget-object v2, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->isUseSCTimestampEnabled()Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sUseSCTimestamp:Z

    .line 159
    sget-object v2, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->isShowParticipantsInMessageHeaderEnabled()Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sShowParticipantsInMessageHeader:Z

    .line 161
    sget-object v2, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->isMimeTypeFromFileExtension()Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sIsMimeTypeFromFileExtension:Z

    .line 163
    sget-object v2, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->isMMSPreviewEnabled()Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sMMSPreviewEnabled:Z

    .line 165
    sget-object v2, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->isXperiaTransferPromoEnabled()Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sXperiaTransferPromoEnabled:Z

    .line 167
    sget-object v2, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->isComposerAttachmentPreviewEnabled()Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sComposerAttachmentPreviewEnabled:Z

    .line 169
    sget-object v2, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->isAutoAddSubjectEnable()Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sIsAutoAddSubjectEnable:Z

    .line 171
    sget-object v2, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->isConversationsLinkifyEnabled()Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sConversationsLinkifyEnabled:Z

    .line 173
    sget-object v2, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->getSmsOAPattern()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/MmsConfig;->sSmsOAPattern:Ljava/lang/String;

    .line 175
    sget-object v2, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->getStrictNumberComparisonPrefix()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/MmsConfig;->sStrictPhonenumberComparisonPrefix:Ljava/lang/String;

    .line 177
    sget-object v2, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->getSmsOAReplacement()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/MmsConfig;->sSmsOAReplacement:Ljava/lang/String;

    .line 179
    sget-object v2, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->getSmscEditableValue()I

    move-result v2

    sput v2, Lcom/android/mms/MmsConfig;->sSmscEditableValue:I

    .line 181
    sget-object v2, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->getEnableIgnoreClass2Sms()Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableIgnoreClass2Sms:Z

    .line 183
    sget-object v2, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->getStackedMessagesDelay()I

    move-result v2

    sput v2, Lcom/android/mms/MmsConfig;->sStackedMessagesDelayMillis:I

    .line 185
    sget-boolean v2, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Image resolution:\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsConfig;->mResolution:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 190
    :cond_2
    sget-object v2, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->isMmsDisabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 191
    sput v4, Lcom/android/mms/MmsConfig;->sMmsEnabled:I

    .line 194
    :cond_3
    sget-object v2, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->getMmsVersion()I

    move-result v2

    sput v2, Lcom/android/mms/MmsConfig;->sMmsVersion:I

    .line 131
    return-void

    .end local v0    # "r":Landroid/content/res/Resources;
    .end local v1    # "urlRes":I
    :cond_4
    move v2, v4

    .line 137
    goto/16 :goto_0
.end method

.method public static isAutoCreateSubjectEnable()Z
    .locals 1

    .prologue
    .line 408
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sIsAutoAddSubjectEnable:Z

    return v0
.end method

.method public static isCellBroadcastEnabled()Z
    .locals 1

    .prologue
    .line 485
    sget-object v0, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/Settings;->isCellBroadcastEnabled()Z

    move-result v0

    return v0
.end method

.method public static isCharacterConversionEnabled()Z
    .locals 1

    .prologue
    .line 481
    sget-object v0, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/Settings;->isCharacterConversionEnabled()Z

    move-result v0

    return v0
.end method

.method public static isComposerAttachmentPreviewEnabled()Z
    .locals 1

    .prologue
    .line 404
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sComposerAttachmentPreviewEnabled:Z

    return v0
.end method

.method private isDeliveryReportEnabledInternal()Z
    .locals 4

    .prologue
    .line 440
    iget-object v2, p0, Lcom/android/mms/MmsConfig;->mValues:Landroid/os/Bundle;

    const-string/jumbo v3, "enableMMSDeliveryReports"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 441
    iget-object v2, p0, Lcom/android/mms/MmsConfig;->mValues:Landroid/os/Bundle;

    const-string/jumbo v3, "enableSMSDeliveryReports"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 443
    :goto_0
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 442
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 444
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "pref_key_delivery_reports"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2

    .line 440
    .end local v1    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_0
    const/4 v0, 0x1

    .local v0, "defaultValue":Z
    goto :goto_0
.end method

.method public static isEnableForceMessageType()Z
    .locals 1

    .prologue
    .line 448
    sget-object v0, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/Settings;->isForcedMessageTypeEnabled()Z

    move-result v0

    return v0
.end method

.method public static isEncodingChangedNotificationEnabled()Z
    .locals 1

    .prologue
    .line 489
    sget-object v0, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/Settings;->getShowEncodingChangedNotification()Z

    move-result v0

    return v0
.end method

.method public static isMMSPreviewEnabled()Z
    .locals 1

    .prologue
    .line 367
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sMMSPreviewEnabled:Z

    return v0
.end method

.method public static isNotificationEnabled()Z
    .locals 1

    .prologue
    .line 435
    sget-object v0, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/Settings;->isNotificationEnabled()Z

    move-result v0

    return v0
.end method

.method public static isNotificationLedEnabled()Z
    .locals 1

    .prologue
    .line 417
    sget-object v0, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/Settings;->isNotificationLedEnabled()Z

    move-result v0

    return v0
.end method

.method public static isNotificationVibrateEnabled()Z
    .locals 1

    .prologue
    .line 426
    sget-object v0, Lcom/android/mms/MmsConfig;->sSettings:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/Settings;->isNotificationVibrateEnabled()Z

    move-result v0

    return v0
.end method

.method public static isXperiaTransferPromoEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 371
    sget v1, Lcom/android/mms/MmsConfig;->sXperiaTransferPromoEnabledForTest:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 372
    sget v1, Lcom/android/mms/MmsConfig;->sXperiaTransferPromoEnabledForTest:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 374
    :cond_1
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sXperiaTransferPromoEnabled:Z

    return v0
.end method

.method private static loadMmsCarrierConfigValuesAsync()V
    .locals 2

    .prologue
    .line 782
    new-instance v0, Lcom/android/mms/MmsConfig$1;

    const-string/jumbo v1, "loadMmsCarrierConfigValuesAsync"

    invoke-direct {v0, v1}, Lcom/android/mms/MmsConfig$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/mms/MmsConfig$1;->start()V

    .line 781
    return-void
.end method

.method public static shallGeotagBeIncluded(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 773
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 774
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "pref_key_geotag"

    const/4 v3, 0x2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static shallWeAskWhetherGeotagShallBeIncluded(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    .line 767
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 768
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "pref_key_geotag"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static showParticipantsInMessageHeader()Z
    .locals 1

    .prologue
    .line 355
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sShowParticipantsInMessageHeader:Z

    return v0
.end method


# virtual methods
.method public getUaProfUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 317
    iget-object v1, p0, Lcom/android/mms/MmsConfig;->mValues:Landroid/os/Bundle;

    const-string/jumbo v2, "uaProfUrl"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "carrierContentUaProf":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    return-object v0

    .line 321
    :cond_0
    sget-object v1, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    return-object v1
.end method
