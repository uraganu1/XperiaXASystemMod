.class public Lcom/android/incallui/SomcAmUtils;
.super Ljava/lang/Object;
.source "SomcAmUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SomcAmUtils$AmAvailability;
    }
.end annotation


# static fields
.field private static mIsAmConfig:Z

.field private static mIsAmConfigCache:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cacheAmConfig(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    sget-boolean v3, Lcom/android/incallui/SomcAmUtils;->mIsAmConfigCache:Z

    if-eqz v3, :cond_0

    .line 243
    return-void

    .line 246
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 247
    const-string/jumbo v4, "com.android.server.telecom"

    .line 246
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 248
    .local v1, "res":Landroid/content/res/Resources;
    const-string/jumbo v3, "config_enable_answering_machine"

    const-string/jumbo v4, "bool"

    .line 249
    const-string/jumbo v5, "com.android.server.telecom"

    .line 248
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 250
    .local v2, "resId":I
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    sput-boolean v3, Lcom/android/incallui/SomcAmUtils;->mIsAmConfig:Z

    .line 251
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/incallui/SomcAmUtils;->mIsAmConfigCache:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "resId":I
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "InCall"

    const-string/jumbo v4, "Get config_enable_answering_machine failed!"

    invoke-static {v3, v4, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static getAmAvailability()Lcom/android/incallui/SomcAmUtils$AmAvailability;
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmConfig()Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    sget-object v1, Lcom/android/incallui/SomcAmUtils$AmAvailability;->NOT_AVAILABLE:Lcom/android/incallui/SomcAmUtils$AmAvailability;

    return-object v1

    .line 167
    :cond_0
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/incallui/SomcAmUtils;->getStringCommandServiceAm(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "temp":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/incallui/SomcAmUtils$AmAvailability;->valueOf(Ljava/lang/String;)Lcom/android/incallui/SomcAmUtils$AmAvailability;

    move-result-object v1

    return-object v1
.end method

.method private static getBoolCommandServiceAm(I)Z
    .locals 4
    .param p0, "commandType"    # I

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, "ret":Z
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "parameter":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 64
    .end local v1    # "ret":Z
    :goto_0
    return v1

    .line 58
    .restart local v1    # "ret":Z
    :pswitch_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    .line 59
    const/4 v3, 0x3

    .line 58
    invoke-virtual {v2, v3, v0}, Lcom/android/incallui/TelecomAdapter;->somcGetBoolCommand(ILjava/lang/String;)Z

    move-result v1

    .local v1, "ret":Z
    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static getSelectedGreetingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmConfig()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/incallui/SomcAmUtils;->getStringCommandServiceAm(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getStringCommandServiceAm(I)Ljava/lang/String;
    .locals 4
    .param p0, "commandType"    # I

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, "ret":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "parameter":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 85
    .end local v1    # "ret":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 79
    .restart local v1    # "ret":Ljava/lang/String;
    :pswitch_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    .line 80
    const/4 v3, 0x3

    .line 79
    invoke-virtual {v2, v3, v0}, Lcom/android/incallui/TelecomAdapter;->somcGetStringCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "ret":Ljava/lang/String;
    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static isAmConfig()Z
    .locals 1

    .prologue
    .line 233
    sget-boolean v0, Lcom/android/incallui/SomcAmUtils;->mIsAmConfig:Z

    return v0
.end method

.method static isAmPlaying()Z
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmConfig()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x0

    return v0

    .line 131
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/incallui/SomcAmUtils;->getBoolCommandServiceAm(I)Z

    move-result v0

    return v0
.end method

.method static isAmRecording()Z
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmConfig()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    return v0

    .line 143
    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/incallui/SomcAmUtils;->getBoolCommandServiceAm(I)Z

    move-result v0

    return v0
.end method

.method static isAmWorking()Z
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmConfig()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    return v0

    .line 119
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/SomcAmUtils;->getBoolCommandServiceAm(I)Z

    move-result v0

    return v0
.end method

.method static setAmActivateByUser()V
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmConfig()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    return-void

    .line 223
    :cond_0
    const/16 v0, 0x69

    invoke-static {v0}, Lcom/android/incallui/SomcAmUtils;->setCommandServiceAm(I)V

    .line 219
    return-void
.end method

.method static setAmHangupByUser()V
    .locals 1

    .prologue
    .line 187
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmConfig()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    return-void

    .line 190
    :cond_0
    const/16 v0, 0x66

    invoke-static {v0}, Lcom/android/incallui/SomcAmUtils;->setCommandServiceAm(I)V

    .line 186
    return-void
.end method

.method static setAmPickupByUser()V
    .locals 1

    .prologue
    .line 176
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmConfig()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    return-void

    .line 179
    :cond_0
    const/16 v0, 0x65

    invoke-static {v0}, Lcom/android/incallui/SomcAmUtils;->setCommandServiceAm(I)V

    .line 175
    return-void
.end method

.method private static setCommandServiceAm(I)V
    .locals 3
    .param p0, "commandType"    # I

    .prologue
    .line 94
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 95
    .local v0, "parameter":[Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 101
    :pswitch_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    .line 102
    const/4 v2, 0x3

    .line 101
    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/TelecomAdapter;->somcExecuteCommandAsync(I[Ljava/lang/String;)V

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static setRxMuteOff()V
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmConfig()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    return-void

    .line 201
    :cond_0
    const/16 v0, 0x67

    invoke-static {v0}, Lcom/android/incallui/SomcAmUtils;->setCommandServiceAm(I)V

    .line 197
    return-void
.end method
