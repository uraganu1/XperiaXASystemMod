.class public Lcom/android/systemui/keyguard/KeyguardService;
.super Landroid/app/Service;
.source "KeyguardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardService$1;
    }
.end annotation


# instance fields
.field private final mBinder:Lcom/android/internal/policy/IKeyguardService$Stub;

.field private mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 88
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardService$1;-><init>(Lcom/android/systemui/keyguard/KeyguardService;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mBinder:Lcom/android/internal/policy/IKeyguardService$Stub;

    .line 43
    return-void
.end method


# virtual methods
.method checkPermission()V
    .locals 3

    .prologue
    .line 78
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.CONTROL_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const-string/jumbo v0, "KeyguardService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Caller needs permission \'android.permission.CONTROL_KEYGUARD\' to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 84
    const-string/jumbo v2, ", must have permission "

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 84
    const-string/jumbo v2, "android.permission.CONTROL_KEYGUARD"

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mBinder:Lcom/android/internal/policy/IKeyguardService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded()V

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 52
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 50
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 62
    .local v1, "trimLevel":I
    if-lt p1, v1, :cond_0

    const/16 v2, 0x14

    if-eq p1, v2, :cond_0

    .line 63
    invoke-static {}, Lcom/sonymobile/systemui/lockscreen/wallpaper/ObjectGraphFactory;->getSharedLockscreenWallpaperController()Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;

    move-result-object v0

    .line 65
    .local v0, "lwc":Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->pruneMemory()V

    .line 57
    .end local v0    # "lwc":Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;
    :cond_0
    return-void
.end method
