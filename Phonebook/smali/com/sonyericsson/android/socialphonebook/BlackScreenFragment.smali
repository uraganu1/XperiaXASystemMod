.class public Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;
.super Landroid/app/Fragment;
.source "BlackScreenFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mIsDualPane:Z

.field private mProximitySensorManager:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;

.field private mProximityUIController:Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public disableProximitySensor(Z)V
    .locals 1
    .param p1, "waitForFarState"    # Z

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;->mIsDualPane:Z

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;->mProximitySensorManager:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;->disable(Z)V

    .line 59
    :cond_0
    return-void
.end method

.method public enableProximitySensor()V
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;->mIsDualPane:Z

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;->mProximitySensorManager:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;->enable()V

    .line 52
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 37
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;->mProximityUIController:Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;->mProximityUIController:Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$Listener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;->mProximitySensorManager:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;

    .line 39
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;->mIsDualPane:Z

    .line 35
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;->disableProximitySensor(Z)V

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;->mProximityUIController:Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->reset()V

    .line 48
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 43
    return-void
.end method
