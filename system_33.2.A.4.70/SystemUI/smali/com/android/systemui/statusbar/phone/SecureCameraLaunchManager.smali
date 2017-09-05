.class public Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;
.super Ljava/lang/Object;
.source "SecureCameraLaunchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;
    }
.end annotation


# instance fields
.field private mCameraAvailabilityCallback:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;

.field private mCameraAvailabilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field private mLaunchCameraRunnable:Ljava/lang/Runnable;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mWaitingToLaunchSecureCamera:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mCameraAvailabilityMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mLaunchCameraRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mWaitingToLaunchSecureCamera:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mWaitingToLaunchSecureCamera:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->areAllCamerasAvailable()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardBottomArea"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mContext:Landroid/content/Context;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mHandler:Landroid/os/Handler;

    .line 123
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 124
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 126
    const-string/jumbo v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 127
    new-instance v0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;-><init>(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mCameraAvailabilityCallback:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mCameraAvailabilityMap:Ljava/util/Map;

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mWaitingToLaunchSecureCamera:Z

    .line 138
    new-instance v0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$1;-><init>(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mLaunchCameraRunnable:Ljava/lang/Runnable;

    .line 120
    return-void
.end method

.method private areAllCamerasAvailable()Z
    .locals 3

    .prologue
    .line 205
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mCameraAvailabilityMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cameraAvailable$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 206
    .local v0, "cameraAvailable":Z
    if-nez v0, :cond_0

    .line 207
    const/4 v2, 0x0

    return v2

    .line 210
    .end local v0    # "cameraAvailable":Z
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private targetWillWaitForCameraAvailable()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 226
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    const/high16 v6, 0x800000

    .line 226
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 228
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 232
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    const/high16 v6, 0x10000

    .line 231
    invoke-virtual {v2, v1, v6, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 233
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 235
    return v7

    .line 241
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    .line 240
    const v6, 0x10080

    .line 239
    invoke-virtual {v2, v1, v6, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 243
    .local v3, "resolved":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_2

    .line 244
    :cond_1
    return v7

    .line 249
    :cond_2
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 251
    return v7

    .line 255
    :cond_3
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_4

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 257
    :cond_4
    return v7

    .line 263
    :cond_5
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "com.android.systemui.statusbar.phone.will_wait_for_camera_available"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 267
    .local v4, "willWaitForCameraAvailability":Z
    return v4
.end method

.method private wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .locals 4
    .param p1, "resolved"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 275
    .local p2, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 276
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 277
    .local v1, "tmp":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 277
    if-eqz v2, :cond_0

    .line 279
    const/4 v2, 0x0

    return v2

    .line 275
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    .end local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public create()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mCameraAvailabilityCallback:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 153
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mCameraAvailabilityCallback:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 160
    return-void
.end method

.method public onSwipingStarted()V
    .locals 1

    .prologue
    .line 174
    new-instance v0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$2;-><init>(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

.method public startSecureCameraLaunch()V
    .locals 4

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->areAllCamerasAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->targetWillWaitForCameraAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera()V

    .line 191
    :goto_0
    return-void

    .line 196
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mWaitingToLaunchSecureCamera:Z

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mLaunchCameraRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
