.class public Lcom/sonyericsson/conversations/settings/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field static sInstance:Lcom/sonyericsson/conversations/settings/Settings;


# instance fields
.field private mPreferences:Landroid/content/SharedPreferences;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    .local v0, "c":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 77
    move-object v0, p1

    .line 79
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    .line 80
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    .line 74
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-class v1, Lcom/sonyericsson/conversations/settings/Settings;

    monitor-enter v1

    .line 63
    if-nez p0, :cond_0

    .line 64
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Null context not accepted."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 67
    :cond_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/conversations/settings/Settings;->sInstance:Lcom/sonyericsson/conversations/settings/Settings;

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Lcom/sonyericsson/conversations/settings/Settings;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/settings/Settings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonyericsson/conversations/settings/Settings;->sInstance:Lcom/sonyericsson/conversations/settings/Settings;

    .line 71
    :cond_1
    sget-object v0, Lcom/sonyericsson/conversations/settings/Settings;->sInstance:Lcom/sonyericsson/conversations/settings/Settings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method


# virtual methods
.method public getEnableIgnoreClass2Sms()Z
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImageResolution()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxNbrMmsObjects()I
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaxSmsSegments()I
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMmsTriggerRecipients()I
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMmsTriggerSmsPduBytes()I
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMmsVersion()I
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getNotificationSoundUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "defaultValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "pref_key_ringtone"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getShowEncodingChangedNotification()Z
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getSmsOAPattern()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmsOAReplacement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmscEditableValue()I
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getStackedMessagesDelay()I
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getStrictNumberComparisonPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoContainerFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAutoAddSubjectEnable()Z
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isCellBroadcastEnabled()Z
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0f0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 112
    .local v0, "defaultValue":Z
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "semc_pref_key_cellbroadcast_enabled"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isCellBroadcastSettingVisible()Z
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isCharacterConversionEnabled()Z
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0f000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 107
    .local v0, "defaultValue":Z
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "semc_pref_key_character_conversion"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isCharacterConversionSettingVisible()Z
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isComposerAttachmentPreviewEnabled()Z
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isConversationsLinkifyEnabled()Z
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isDefaultSmsAppNotificationEnabled()Z
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isForcedMessageTypeEnabled()Z
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isMMSPreviewEnabled()Z
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isMimeTypeFromFileExtension()Z
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isMmsAutoRetrievalEnabled()Z
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0f0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 87
    .local v0, "defaultValue":Z
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "pref_key_mms_auto_retrieval"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isMmsAutoRetrievalSettingVisible()Z
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isMmsDisabled()Z
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isMmsRetrievalDuringRoamingEnabled()Z
    .locals 3

    .prologue
    .line 91
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0f0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 92
    .local v0, "defaultValue":Z
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "pref_key_mms_retrieval_during_roaming"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isMmsRetrievalDuringRoamingSettingVisible()Z
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isMmsSubjectEnabled()Z
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isNotificationEnabled()Z
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0f0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 117
    .local v0, "defaultValue":Z
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "pref_key_enable_notifications"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isNotificationLedEnabled()Z
    .locals 3

    .prologue
    .line 121
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0f0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 122
    .local v0, "defaultValue":Z
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "semc_pref_key_notification_led_enabled"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isNotificationLedSettingVisible()Z
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isNotificationSettingVisible()Z
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isNotificationVibrateEnabled()Z
    .locals 3

    .prologue
    .line 101
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0f000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 102
    .local v0, "defaultValue":Z
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "pref_key_vibrate"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isPreferenceVisible(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 164
    const-string/jumbo v0, "pref_key_mms_auto_retrieval"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/settings/Settings;->isMmsAutoRetrievalSettingVisible()Z

    move-result v0

    return v0

    .line 166
    :cond_0
    const-string/jumbo v0, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/settings/Settings;->isMmsRetrievalDuringRoamingSettingVisible()Z

    move-result v0

    return v0

    .line 168
    :cond_1
    const-string/jumbo v0, "semc_pref_key_character_conversion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/settings/Settings;->isCharacterConversionSettingVisible()Z

    move-result v0

    return v0

    .line 170
    :cond_2
    const-string/jumbo v0, "semc_pref_key_cellbroadcast_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/settings/Settings;->isCellBroadcastSettingVisible()Z

    move-result v0

    return v0

    .line 172
    :cond_3
    const-string/jumbo v0, "pref_key_enable_notifications"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/settings/Settings;->isNotificationSettingVisible()Z

    move-result v0

    return v0

    .line 174
    :cond_4
    const-string/jumbo v0, "semc_pref_key_notification_led_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 175
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/settings/Settings;->isNotificationLedSettingVisible()Z

    move-result v0

    return v0

    .line 178
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public isReadReportEnabled()Z
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "pref_key_mms_read_reports"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowParticipantsInMessageHeaderEnabled()Z
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isUseSCTimestampEnabled()Z
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isXperiaTransferPromoEnabled()Z
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
