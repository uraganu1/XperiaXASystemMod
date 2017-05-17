.class public Lcom/sonymobile/jms/setting/ImSettingManager;
.super Ljava/lang/Object;
.source "ImSettingManager.java"

# interfaces
.implements Lcom/sonymobile/jms/setting/ImSettingApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/jms/setting/ImSettingManager$1;,
        Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    }
.end annotation


# static fields
.field private static final CHAT_MESSAGE_CHARSET:Ljava/nio/charset/Charset;

.field private static final MILLI:Ljava/lang/Long;


# instance fields
.field private mImProvisioningChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/jms/setting/ImProvisioningChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

.field private mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager;->CHAT_MESSAGE_CHARSET:Ljava/nio/charset/Charset;

    const-wide/16 v0, 0x3e8

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager;->MILLI:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/provider/settings/RcsSettings;)V
    .locals 1
    .param p1, "rcsSettings"    # Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    .line 87
    new-instance v0, Lcom/sonymobile/jms/setting/SettingCache;

    invoke-direct {v0}, Lcom/sonymobile/jms/setting/SettingCache;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mImProvisioningChangeListeners:Ljava/util/Set;

    .line 90
    return-void
.end method


# virtual methods
.method public addSettingChangedListener(Lcom/sonymobile/jms/setting/SettingCache$SettingChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/jms/setting/SettingCache$SettingChangedListener;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/setting/SettingCache;->addSettingChangedListener(Lcom/sonymobile/jms/setting/SettingCache$SettingChangedListener;)V

    .line 118
    return-void
.end method

.method public cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    .line 94
    iget-object v0, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v0}, Lcom/sonymobile/jms/setting/SettingCache;->cleanup()V

    .line 95
    iput-object v1, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    .line 96
    iget-object v0, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mImProvisioningChangeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 97
    iput-object v1, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mImProvisioningChangeListeners:Ljava/util/Set;

    .line 98
    return-void
.end method

.method public getCapabilityValidityPeriod()J
    .locals 6

    .prologue
    .line 575
    sget-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->CAP_VALIDITY_PERIOD:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 576
    .local v0, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v0}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 577
    .local v1, "value":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 581
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 578
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMsgCapValidityPeriod()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Lcom/sonymobile/jms/setting/ImSettingManager;->MILLI:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 579
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getClientMode()Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;
    .locals 4

    .prologue
    .line 294
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    sget-object v3, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->CLIENT_MODE:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    .line 295
    .local v1, "value":Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;
    if-eqz v1, :cond_0

    .line 320
    :goto_0
    return-object v1

    .line 296
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMessagingUX()I

    move-result v0

    .line 297
    .local v0, "rcsMessagingUx":I
    packed-switch v0, :pswitch_data_0

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unknown client mode detected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 315
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->NO_CLIENT:Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    .line 318
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    sget-object v3, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->CLIENT_MODE:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0

    .line 299
    :pswitch_0
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->INTEGRATED:Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    goto :goto_1

    .line 302
    :pswitch_1
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->CONVERGED:Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    goto :goto_1

    .line 305
    :pswitch_2
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->NO_CLIENT:Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    goto :goto_1

    .line 297
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getComposingTimeout()J
    .locals 6

    .prologue
    .line 177
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->COMPOSING_TIMEOUT:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 178
    .local v1, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 179
    .local v0, "composingTimeout":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 183
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 180
    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getIsComposingTimeout()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 181
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1, v0}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getDefaultFileTransferProtocol()Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;
    .locals 5

    .prologue
    .line 585
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->DEFAULT_FILE_TRANSFER_PROTOCOL:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 586
    .local v1, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v3, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v3, v1}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;

    .line 587
    .local v2, "value":Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;
    if-eqz v2, :cond_0

    .line 601
    :goto_0
    return-object v2

    .line 588
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getFtProtocol()Ljava/lang/String;

    move-result-object v0

    .local v0, "rcsDefaultFileTransferProtocol":Ljava/lang/String;
    const-string/jumbo v3, "MSRP"

    .line 589
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "HTTP"

    .line 591
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 594
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unknown file default protocol detected \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 597
    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;->MSRP:Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;

    .line 599
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v3, v1, v2}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0

    .line 590
    :cond_1
    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;->MSRP:Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;

    goto :goto_1

    .line 592
    :cond_2
    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;->HTTP:Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;

    goto :goto_1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 419
    sget-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->DISPLAY_NAME:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 420
    .local v0, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v0}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 421
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 425
    :goto_0
    return-object v1

    .line 422
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getUserProfileImsDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 423
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getFileMaxSize()I
    .locals 3

    .prologue
    .line 145
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->MAX_FILE_TRANSFER_SIZE:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 146
    .local v1, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 147
    .local v0, "maxFileTransferSize":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 156
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMaxFileTransferSize()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1, v0}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const v2, 0x7fffffff

    .line 152
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method public getFileResizeOption()Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;
    .locals 5

    .prologue
    .line 325
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->FILE_RESIZE_OPTION:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 326
    .local v1, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v3, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v3, v1}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    .line 327
    .local v2, "value":Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;
    if-eqz v2, :cond_0

    .line 348
    :goto_0
    return-object v2

    .line 328
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getFileResizeOption()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 329
    .local v0, "rcsFileResizeOption":I
    packed-switch v0, :pswitch_data_0

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unknown file resize option detected \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 343
    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ALWAYS_ASK:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    .line 346
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v3, v1, v2}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0

    .line 331
    :pswitch_0
    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ALWAYS_RESIZE:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    goto :goto_1

    .line 334
    :pswitch_1
    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ALWAYS_ASK:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    goto :goto_1

    .line 337
    :pswitch_2
    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->NEVER_RESIZE:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    goto :goto_1

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFileWarningSize()I
    .locals 3

    .prologue
    .line 161
    sget-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->WARNING_MAX_FILE_TRANSFER_SIZE:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 162
    .local v0, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v0}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 163
    .local v1, "warningMaxFileTransferSize":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 172
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getWarningMaxFileTransferSize()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const v2, 0x7fffffff

    .line 168
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1
.end method

.method public getImOne2OneMessageDeliveryTimeout()J
    .locals 6

    .prologue
    .line 515
    sget-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->MESSAGE_DELIVERY_TIMEOUT:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 516
    .local v0, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v0}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 517
    .local v1, "value":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 521
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 518
    :cond_0
    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingManager;->MILLI:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMsgDeliveryTimeout()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 519
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getImTextMessageCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/sonymobile/jms/setting/ImSettingManager;->CHAT_MESSAGE_CHARSET:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getManualAcceptModeForImTextConversation()Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;
    .locals 3

    .prologue
    .line 125
    iget-object v1, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getImSessionStartMode()I

    move-result v0

    .line 126
    .local v0, "imSessionStartMode":I
    packed-switch v0, :pswitch_data_0

    const-string/jumbo v1, "Detected an unsupported imSessionStateMode \'"

    .line 134
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' defaulting to "

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;->ACCEPT_ON_SEND_MESSAGE:Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 138
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;->ACCEPT_ON_SEND_MESSAGE:Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    return-object v1

    .line 128
    :pswitch_0
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;->ACCEPT_ON_CONVERSATION_OPEN:Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    return-object v1

    .line 130
    :pswitch_1
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;->ACCEPT_ON_TYPING_MESSAGE:Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    return-object v1

    .line 132
    :pswitch_2
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;->ACCEPT_ON_SEND_MESSAGE:Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    return-object v1

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMaxConcurrentOutgoingRcsFileTransfers()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 509
    return v0
.end method

.method public getMaxGroupConversationMessageLength()I
    .locals 3

    .prologue
    .line 222
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->MAX_GROUP_CONVERSATION_MESSAGE_LENGTH:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 223
    .local v1, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 224
    .local v0, "maxGroupChatMessageLength":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 228
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMaxGroupChatMessageLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 226
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1, v0}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getMaxGroupConversationParticipants()I
    .locals 3

    .prologue
    .line 195
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->MAX_GROUP_CHAT_PARTICIPANTS:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 196
    .local v1, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 197
    .local v0, "maxChatParticipants":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 201
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMaxChatParticipants()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 199
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1, v0}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getMaxGroupConversationSubjectLength()I
    .locals 1

    .prologue
    const/16 v0, 0x32

    .line 235
    return v0
.end method

.method public getMaxNrOfChatSessions()I
    .locals 3

    .prologue
    .line 525
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->MAX_CHAT_SESSIONS:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 526
    .local v1, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 527
    .local v0, "maxChatSessions":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 536
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 528
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMaxChatSessions()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 531
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    .line 534
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1, v0}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const v2, 0x7fffffff

    .line 532
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method public getMaxNrOfFileSessions()I
    .locals 3

    .prologue
    .line 540
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->MAX_FILE_TRANSFER_SESSIONS:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 541
    .local v1, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 542
    .local v0, "maxFileTransferSessions":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 551
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 543
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMaxFileTransferSessions()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1, v0}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const v2, 0x7fffffff

    .line 547
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method public getMaxOne2OneConversationMessageLength()I
    .locals 3

    .prologue
    .line 211
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->MAX_ONE2ONE_CONVERSATION_MESSAGE_LENGTH:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 212
    .local v1, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 213
    .local v0, "maxChatMessageLength":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 217
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 214
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMaxChatMessageLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 215
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1, v0}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getMinGroupConversationParticipants()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 190
    return v0
.end method

.method public getUserProfileImsUserName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 555
    sget-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->USER_NAME:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 556
    .local v0, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v0}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 557
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 561
    :goto_0
    return-object v1

    .line 558
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getUserProfileImsUserName()Ljava/lang/String;

    move-result-object v1

    .line 559
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isDisplayedNotificationsEnabled()Z
    .locals 3

    .prologue
    .line 436
    sget-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IS_DISPLAYED_NOTIFICATION_ENABLED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 437
    .local v0, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v0}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 438
    .local v1, "value":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 442
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 439
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isReadNotification()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 440
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isFileTransferAutoAcceptSettingEnabled()Z
    .locals 3

    .prologue
    .line 373
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IS_FILE_TRANSFER_AUTO_ACCEPT_MODE_CHANGEABLE:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 374
    .local v1, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 375
    .local v0, "fileTransferAutoAcceptModeChangeable":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 379
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 376
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferAutoAcceptEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 377
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1, v0}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isFileTransfersAutoAccepted()Z
    .locals 3

    .prologue
    .line 384
    sget-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IS_FILE_TRANSFERS_AUTO_ACCEPTED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 385
    .local v0, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v0}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 386
    .local v1, "value":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 390
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 387
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferAutoAccept()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 388
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isFileTransfersAutoAcceptedWhileRoaming()Z
    .locals 3

    .prologue
    .line 401
    sget-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IS_FILE_TRANSFERS_AUTO_ACCEPTED_WHILE_ROAMING:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 402
    .local v0, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v0}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 403
    .local v1, "value":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 407
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 404
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferAutoAcceptInRoaming()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 405
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isFtAlwaysOn()Z
    .locals 3

    .prologue
    .line 249
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->FT_ALWAYS_ON:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 250
    .local v1, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 251
    .local v0, "isFTAlwaysOn":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 255
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFtAlwaysOn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 253
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1, v0}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isFtHttpAlwaysOn()Z
    .locals 3

    .prologue
    .line 259
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->FT_HTTP_CAP_ALWAYS_ON:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 260
    .local v1, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 261
    .local v0, "isFtHttpCapAlwaysOn":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 265
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 262
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFtHttpCapAlwaysOn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 263
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1, v0}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isGroupConversationActivated()Z
    .locals 3

    .prologue
    .line 565
    sget-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IS_GROUP_CHAT_ACTIVATED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 566
    .local v0, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v0}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 567
    .local v1, "value":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 571
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 568
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isGroupChatActivated()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 569
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isImAlwaysOn()Z
    .locals 3

    .prologue
    .line 239
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IM_ALWAYS_ON:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 240
    .local v1, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 241
    .local v0, "isImAlwaysOn":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 245
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isImAlwaysOn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 243
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1, v0}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isImConfigured()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 280
    sget-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->KEY_IM_CONFIGURED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 281
    .local v0, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v4, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v4, v0}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 282
    .local v1, "value":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 283
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isConfigValid()I

    move-result v4

    if-eq v4, v3, :cond_2

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 284
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 283
    goto :goto_1
.end method

.method public isImServiceActivated()Z
    .locals 3

    .prologue
    .line 605
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IM_SERVICE_ACTIVATED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 606
    .local v1, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1}, Lcom/sonymobile/jms/setting/SettingCache;->getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 607
    .local v0, "rcseEnabled":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 611
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 608
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isRcseEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 609
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2, v1, v0}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onImsProvisioningChange()V
    .locals 3

    .prologue
    .line 101
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v2}, Lcom/sonymobile/jms/setting/SettingCache;->clear()V

    .line 102
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->reloadRcsSettingsCache()V

    .line 103
    iget-object v2, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mImProvisioningChangeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    return-void

    .line 103
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/jms/setting/ImProvisioningChangeListener;

    .line 104
    .local v1, "listener":Lcom/sonymobile/jms/setting/ImProvisioningChangeListener;
    invoke-interface {v1}, Lcom/sonymobile/jms/setting/ImProvisioningChangeListener;->onProvisioningChanged()V

    goto :goto_0
.end method

.method public removeSettingChangedListener(Lcom/sonymobile/jms/setting/SettingCache$SettingChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/jms/setting/SettingCache$SettingChangedListener;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/setting/SettingCache;->removeSettingChangedListener(Lcom/sonymobile/jms/setting/SettingCache$SettingChangedListener;)V

    .line 122
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setUserProfileImsDisplayName(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->DISPLAY_NAME:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    .line 432
    return-void
.end method

.method public setDisplayedNotificationEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 447
    iget-object v0, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setReadNotification(Z)V

    .line 448
    iget-object v0, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IS_DISPLAYED_NOTIFICATION_ENABLED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    .line 449
    return-void
.end method

.method public setFileResizeOption(Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;)V
    .locals 2
    .param p1, "fileResizeOption"    # Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    .prologue
    .line 353
    sget-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$1;->$SwitchMap$com$sonymobile$jms$setting$ImSettingApi$FileResizeOption:[I

    invoke-virtual {p1}, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unknown file resize option detected \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 368
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->FILE_RESIZE_OPTION:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    .line 369
    return-void

    .line 355
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setFileResizeOption(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setFileResizeOption(Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setFileResizeOption(Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setFileTransfersAutoAccepted(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 395
    iget-object v0, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setFileTransferAutoAccept(Z)V

    .line 396
    iget-object v0, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IS_FILE_TRANSFERS_AUTO_ACCEPTED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    .line 397
    return-void
.end method

.method public setFileTransfersAutoAcceptedWhileRoaming(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 412
    iget-object v0, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setFileTransferAutoAcceptInRoaming(Z)V

    .line 413
    iget-object v0, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IS_FILE_TRANSFERS_AUTO_ACCEPTED_WHILE_ROAMING:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    .line 415
    return-void
.end method

.method public setImServiceActivationState(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 615
    iget-object v0, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mSettingCache:Lcom/sonymobile/jms/setting/SettingCache;

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IM_SERVICE_ACTIVATED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    .line 616
    iget-object v0, p0, Lcom/sonymobile/jms/setting/ImSettingManager;->mRcsSettings:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setRcseEnabled(Z)V

    .line 617
    return-void
.end method
