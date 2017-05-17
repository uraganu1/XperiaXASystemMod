.class public Lcom/sonyericsson/android/socialphonebook/vilte/plugin/GenericViltePlugin;
.super Lcom/sonyericsson/android/socialphonebook/vilte/AbstractViltePlugin;
.source "GenericViltePlugin.java"


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_vilte_VideoCallEntityTypeSwitchesValues:[I


# instance fields
.field private mContentHelper:Lcom/sonyericsson/android/socialphonebook/vilte/helper/GenericVilteDBContentHelper;

.field private mContext:Landroid/content/Context;

.field private mIsVilteSupported:Z


# direct methods
.method private static synthetic -getcom_sonyericsson_android_socialphonebook_vilte_VideoCallEntityTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/GenericViltePlugin;->-com_sonyericsson_android_socialphonebook_vilte_VideoCallEntityTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/GenericViltePlugin;->-com_sonyericsson_android_socialphonebook_vilte_VideoCallEntityTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->values()[Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->CALL_LOG_CONTEXT_MENU:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->CALL_LOG_DETAIL:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->CALL_LOG_LIST:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->DIALPAD_FRAGMENT:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->QUICK_CONTACT:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/GenericViltePlugin;->-com_sonyericsson_android_socialphonebook_vilte_VideoCallEntityTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/vilte/AbstractViltePlugin;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/GenericViltePlugin;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/GenericVilteDBContentHelper;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/GenericVilteDBContentHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/GenericViltePlugin;->mContentHelper:Lcom/sonyericsson/android/socialphonebook/vilte/helper/GenericVilteDBContentHelper;

    .line 25
    return-void
.end method

.method private isEntityTypeSupported(Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;)Z
    .locals 3
    .param p1, "type"    # Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "result":Z
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/GenericViltePlugin;->-getcom_sonyericsson_android_socialphonebook_vilte_VideoCallEntityTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 119
    :goto_0
    return v0

    .line 114
    :pswitch_0
    const/4 v0, 0x1

    .line 115
    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addListener(Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;

    .prologue
    .line 95
    return-void
.end method

.method public getContactDetailOptionMenuRefreshVisibility(Ljava/util/Set;)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "numbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v0
.end method

.method public getMyselfSettingsVisibility()Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v0
.end method

.method public getVideoCallEntityVisibility(Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;Ljava/lang/String;Z)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .locals 5
    .param p1, "type"    # Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "isContactNumber"    # Z

    .prologue
    .line 44
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/GenericViltePlugin;->isVilteSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/GenericViltePlugin;->isEntityTypeSupported(Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/GenericViltePlugin;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 49
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCallingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->NORMAL:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v3

    .line 45
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v3

    .line 53
    .restart local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    .line 54
    .local v2, "visibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/GenericViltePlugin;->mContentHelper:Lcom/sonyericsson/android/socialphonebook/vilte/helper/GenericVilteDBContentHelper;

    invoke-virtual {v3, p2}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/GenericVilteDBContentHelper;->getNumberCapability(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "videoCallCapability":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 58
    :cond_2
    :goto_0
    return-object v2

    .line 56
    :cond_3
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->NORMAL:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    goto :goto_0
.end method

.method public getVideoCallFilterVisibility()Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/GenericViltePlugin;->isVilteSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->NORMAL:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    goto :goto_0
.end method

.method public getVideoCallVisibility(Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .locals 1
    .param p1, "type"    # Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/GenericViltePlugin;->isVilteSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/GenericViltePlugin;->isEntityTypeSupported(Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->NORMAL:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v0

    .line 64
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v0
.end method

.method public isVilteEnabled()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/GenericViltePlugin;->mIsVilteSupported:Z

    return v0
.end method

.method public isVilteSupported()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/GenericViltePlugin;->mIsVilteSupported:Z

    return v0
.end method

.method public onApplicationCreate()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/GenericViltePlugin;->mIsVilteSupported:Z

    .line 90
    return-void
.end method

.method public refreshCapability(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public registerForVideoCallEntityStatus(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "numbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method public removeListener(Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;

    .prologue
    .line 103
    return-void
.end method
