.class public Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VilteUnsupportedPlugin;
.super Lcom/sonyericsson/android/socialphonebook/vilte/AbstractViltePlugin;
.source "VilteUnsupportedPlugin.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/vilte/AbstractViltePlugin;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method public addListener(Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;

    .prologue
    .line 75
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
    .line 44
    .local p1, "numbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v0
.end method

.method public getMyselfSettingsVisibility()Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v0
.end method

.method public getVideoCallEntityVisibility(Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;Ljava/lang/String;Z)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .locals 1
    .param p1, "type"    # Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "isContactNumber"    # Z

    .prologue
    .line 54
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v0
.end method

.method public getVideoCallFilterVisibility()Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v0
.end method

.method public getVideoCallVisibility(Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .locals 1
    .param p1, "type"    # Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    .prologue
    .line 80
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v0
.end method

.method public isVilteEnabled()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public isVilteSupported()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public onApplicationCreate()V
    .locals 0

    .prologue
    .line 63
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
    .line 48
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
    .line 67
    .local p1, "numbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method public removeListener(Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;

    .prologue
    .line 71
    return-void
.end method
