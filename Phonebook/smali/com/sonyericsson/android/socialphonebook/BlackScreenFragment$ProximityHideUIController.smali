.class Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;
.super Ljava/lang/Object;
.source "BlackScreenFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProximityHideUIController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController$1;,
        Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController$2;
    }
.end annotation


# static fields
.field protected static final PROXIMITY_SCREEN_OFF_POST_DELAY:J = 0x64L

.field protected static final PROXIMITY_SCREEN_ON_POST_DELAY:J = 0x1f4L


# instance fields
.field private mBlackView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mScreenOffRunnable:Ljava/lang/Runnable;

.field private final mScreenOnRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->mBlackView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->hideUI()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->showUI()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController$1;-><init>(Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->mScreenOffRunnable:Ljava/lang/Runnable;

    .line 99
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController$2;-><init>(Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->mScreenOnRunnable:Ljava/lang/Runnable;

    .line 85
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->mHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method private declared-synchronized clearPendingRequests()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->mScreenOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->mScreenOnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 119
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hideUI()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 156
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 157
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Blank view must be tied to Activity and its root view."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void

    .line 160
    :cond_0
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/ui/widget/BlackView;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/socialphonebook/ui/widget/BlackView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->mBlackView:Landroid/view/View;

    .line 161
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 163
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 165
    .local v1, "rootLayout":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->mBlackView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->mBlackView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 155
    return-void
.end method

.method private declared-synchronized postDelayed(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 124
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showUI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->mBlackView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->mBlackView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 142
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 144
    .local v0, "rootLayout":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->mBlackView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 145
    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->mBlackView:Landroid/view/View;

    .line 139
    .end local v0    # "rootLayout":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized onFar()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 115
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->clearPendingRequests()V

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->mScreenOnRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-direct {p0, v0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 114
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

    .line 109
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->clearPendingRequests()V

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->mScreenOffRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-direct {p0, v0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 108
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->clearPendingRequests()V

    .line 133
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->showUI()V

    .line 131
    return-void
.end method
