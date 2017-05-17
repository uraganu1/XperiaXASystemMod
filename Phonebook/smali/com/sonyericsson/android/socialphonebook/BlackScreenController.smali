.class public Lcom/sonyericsson/android/socialphonebook/BlackScreenController;
.super Ljava/lang/Object;
.source "BlackScreenController.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;,
        Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ImmersiveModeVolumeController;
    }
.end annotation


# instance fields
.field private mIsDualPane:Z

.field private mProximitySensorManager:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;

.field private mProximityUIController:Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ImmersiveModeVolumeController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "immersiveModeVolumeController"    # Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ImmersiveModeVolumeController;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;

    invoke-direct {v0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ImmersiveModeVolumeController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController;->mProximityUIController:Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;

    .line 44
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController;->mProximityUIController:Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$Listener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController;->mProximitySensorManager:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;

    .line 45
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController;->mIsDualPane:Z

    .line 41
    return-void
.end method


# virtual methods
.method public destroySelf()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenController;->disableProximitySensor(Z)V

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController;->mProximityUIController:Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->-wrap1(Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;)V

    .line 62
    return-void
.end method

.method public disableProximitySensor(Z)V
    .locals 1
    .param p1, "waitForFarState"    # Z

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController;->mIsDualPane:Z

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController;->mProximitySensorManager:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;->disable(Z)V

    .line 56
    :cond_0
    return-void
.end method

.method public enableProximitySensor()V
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController;->mIsDualPane:Z

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController;->mProximitySensorManager:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;->enable()V

    .line 49
    :cond_0
    return-void
.end method
