.class public Lcom/sonyericsson/android/socialphonebook/util/SystemResourcesHelper;
.super Ljava/lang/Object;
.source "SystemResourcesHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSmsCapable()Z
    .locals 6

    .prologue
    .line 36
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 37
    .local v2, "systemResources":Landroid/content/res/Resources;
    const-string/jumbo v3, "config_sms_capable"

    const-string/jumbo v4, "bool"

    .line 38
    const-string/jumbo v5, "android"

    .line 37
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 39
    .local v1, "smsCapableResId":I
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 40
    .end local v1    # "smsCapableResId":I
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v3, 0x1

    return v3
.end method

.method public static isVoiceCapable()Z
    .locals 6

    .prologue
    .line 19
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 20
    .local v1, "systemResources":Landroid/content/res/Resources;
    const-string/jumbo v3, "config_voice_capable"

    .line 21
    const-string/jumbo v4, "bool"

    const-string/jumbo v5, "android"

    .line 20
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 22
    .local v2, "voiceCapableResId":I
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 23
    .end local v2    # "voiceCapableResId":I
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v3, 0x1

    return v3
.end method
