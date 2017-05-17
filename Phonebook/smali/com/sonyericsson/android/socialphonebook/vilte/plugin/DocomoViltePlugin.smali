.class public Lcom/sonyericsson/android/socialphonebook/vilte/plugin/DocomoViltePlugin;
.super Lcom/sonyericsson/android/socialphonebook/vilte/AbstractViltePlugin;
.source "DocomoViltePlugin.java"


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_vilte_VideoCallEntityTypeSwitchesValues:[I = null

.field private static final VILTE_SYSTEM_SETTING:Ljava/lang/String; = "ro.com.nttdocomo.videocall"


# instance fields
.field private mIsVilteSupported:Z


# direct methods
.method private static synthetic -getcom_sonyericsson_android_socialphonebook_vilte_VideoCallEntityTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/DocomoViltePlugin;->-com_sonyericsson_android_socialphonebook_vilte_VideoCallEntityTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/DocomoViltePlugin;->-com_sonyericsson_android_socialphonebook_vilte_VideoCallEntityTypeSwitchesValues:[I

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
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/DocomoViltePlugin;->-com_sonyericsson_android_socialphonebook_vilte_VideoCallEntityTypeSwitchesValues:[I

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
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/vilte/AbstractViltePlugin;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public addListener(Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;

    .prologue
    .line 92
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
    .line 66
    .local p1, "numbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v0
.end method

.method public getMyselfSettingsVisibility()Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v0
.end method

.method public getVideoCallEntityVisibility(Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;Ljava/lang/String;Z)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .locals 4
    .param p1, "type"    # Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "isContactNumber"    # Z

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/DocomoViltePlugin;->isVilteSupported()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v1

    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 49
    .local v0, "visibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/DocomoViltePlugin;->-getcom_sonyericsson_android_socialphonebook_vilte_VideoCallEntityTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->NORMAL:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    .line 61
    .local v0, "visibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    return-object v0

    .line 49
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

.method public getVideoCallFilterVisibility()Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v0
.end method

.method public getVideoCallVisibility(Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .locals 2
    .param p1, "type"    # Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    .prologue
    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/DocomoViltePlugin;->getVideoCallEntityVisibility(Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;Ljava/lang/String;Z)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    move-result-object v0

    return-object v0
.end method

.method public isVilteEnabled()Z
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/DocomoViltePlugin;->isVilteSupported()Z

    move-result v0

    return v0
.end method

.method public isVilteSupported()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/DocomoViltePlugin;->mIsVilteSupported:Z

    return v0
.end method

.method public onApplicationCreate()V
    .locals 2

    .prologue
    .line 84
    const-string/jumbo v0, "ro.com.nttdocomo.videocall"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/DocomoViltePlugin;->mIsVilteSupported:Z

    .line 83
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
    .line 70
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
    .line 79
    .local p1, "numbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method public removeListener(Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;

    .prologue
    .line 88
    return-void
.end method
