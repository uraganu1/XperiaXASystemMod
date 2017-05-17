.class Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;
.super Ljava/lang/Object;
.source "BlackScreenController.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/BlackScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProximityHideUIController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController$1;,
        Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController$2;
    }
.end annotation


# static fields
.field private static final PM_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "android.permission.SYSTEM_ALERT_WINDOW"

.field protected static final PROXIMITY_SCREEN_OFF_POST_DELAY:J = 0x64L

.field protected static final PROXIMITY_SCREEN_ON_POST_DELAY:J = 0x1f4L


# instance fields
.field private mBlackView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImmersiveModeVolumeController:Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ImmersiveModeVolumeController;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private final mScreenOffRunnable:Ljava/lang/Runnable;

.field private final mScreenOnRunnable:Ljava/lang/Runnable;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mBlackView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->hideUI()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->reset()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->showUI()V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ImmersiveModeVolumeController;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "immersiveModeVolumeController"    # Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ImmersiveModeVolumeController;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController$1;-><init>(Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mScreenOffRunnable:Ljava/lang/Runnable;

    .line 111
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController$2;-><init>(Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mScreenOnRunnable:Ljava/lang/Runnable;

    .line 94
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mHandler:Landroid/os/Handler;

    .line 96
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mImmersiveModeVolumeController:Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ImmersiveModeVolumeController;

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mWindowManager:Landroid/view/WindowManager;

    .line 98
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    .line 99
    const/16 v2, 0x400

    .line 98
    invoke-direct {v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 93
    return-void
.end method

.method private canDrawOverlay()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 178
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 180
    .local v0, "appContext":Landroid/content/Context;
    const-string/jumbo v3, "appops"

    .line 179
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 181
    .local v1, "appOpsManager":Landroid/app/AppOpsManager;
    const-string/jumbo v3, "android:system_alert_window"

    .line 182
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 183
    .local v2, "result":I
    packed-switch v2, :pswitch_data_0

    .line 200
    :pswitch_0
    return v6

    .line 185
    :pswitch_1
    return v7

    .line 190
    :pswitch_2
    const-string/jumbo v3, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 193
    return v7

    .line 195
    :cond_0
    return v6

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized clearPendingRequests()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mScreenOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mScreenOnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 132
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hideUI()V
    .locals 3

    .prologue
    .line 166
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/BlackView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mImmersiveModeVolumeController:Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ImmersiveModeVolumeController;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/widget/BlackView;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ImmersiveModeVolumeController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mBlackView:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mBlackView:Landroid/view/View;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mBlackView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 165
    return-void
.end method

.method private declared-synchronized postDelayed(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 137
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reset()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->clearPendingRequests()V

    .line 146
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->showUI()V

    .line 144
    return-void
.end method

.method private showUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mBlackView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mBlackView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mBlackView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 156
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mBlackView:Landroid/view/View;

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized onFar()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->clearPendingRequests()V

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mScreenOnRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-direct {p0, v0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 127
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNear()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 120
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->clearPendingRequests()V

    .line 121
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->canDrawOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->mScreenOffRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-direct {p0, v0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 119
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
