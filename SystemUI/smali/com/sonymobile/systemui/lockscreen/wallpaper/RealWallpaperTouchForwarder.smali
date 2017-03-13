.class public Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;
.super Ljava/lang/Object;
.source "RealWallpaperTouchForwarder.java"

# interfaces
.implements Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperTouchForwarder;
.implements Lcom/sonymobile/systemui/lockscreen/wallpaper/OnLiveWallpaperCheckCompleted;


# instance fields
.field private final mAsyncThrottlingWallpaperCommandSender:Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;

.field private final mLockscreenBackgroundDrawChecker:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenBackgroundDrawChecker;

.field private final mPreAllocatedRam:[I

.field private final mStoredMotionEventData:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;

.field private mUsingPS4Wallpaper:Z

.field private final mWallpaperManagerProxy:Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperManagerProxy;


# direct methods
.method public constructor <init>(Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperManagerProxy;Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenBackgroundDrawChecker;Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenLiveWallpaperChecker;Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;)V
    .locals 1
    .param p1, "wallpaperManagerProxy"    # Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperManagerProxy;
    .param p2, "asyncThrottlingWallpaperCommandSender"    # Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;
    .param p3, "lockscreenBackgroundDrawChecker"    # Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenBackgroundDrawChecker;
    .param p4, "lockscreenLiveWallpaperChecker"    # Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenLiveWallpaperChecker;
    .param p5, "lockscreenWallpaperStoredMotionEventData"    # Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mPreAllocatedRam:[I

    .line 46
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mWallpaperManagerProxy:Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperManagerProxy;

    .line 47
    iput-object p2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mAsyncThrottlingWallpaperCommandSender:Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;

    .line 48
    iput-object p3, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mLockscreenBackgroundDrawChecker:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenBackgroundDrawChecker;

    .line 49
    iput-object p5, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mStoredMotionEventData:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;

    .line 50
    invoke-virtual {p0, p4}, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->refreshSystemWallpaperInfo(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenLiveWallpaperChecker;)V

    .line 45
    return-void
.end method

.method private shouldForwardWallpaperEvents()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 61
    iget-boolean v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mUsingPS4Wallpaper:Z

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mLockscreenBackgroundDrawChecker:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenBackgroundDrawChecker;

    invoke-interface {v1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenBackgroundDrawChecker;->isLockscreenBackgroundDrawn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public ensureEndCommandIsSent()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 88
    iget-object v2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mStoredMotionEventData:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;

    invoke-virtual {v2}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;->getStoredMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 89
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mStoredMotionEventData:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;

    invoke-virtual {v2}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;->getStoredView()Landroid/view/View;

    move-result-object v1

    .line 90
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 92
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 93
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->handleWallpaperTap(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 95
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 87
    return-void
.end method

.method public getWallpaperManagerProxy()Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperManagerProxy;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mWallpaperManagerProxy:Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperManagerProxy;

    return-object v0
.end method

.method public handleWallpaperTap(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 100
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->shouldForwardWallpaperEvents()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p2, :cond_1

    .line 101
    :cond_0
    return v6

    .line 100
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 103
    const/4 v1, 0x1

    .line 104
    .local v1, "handled":Z
    const/4 v0, 0x0

    .line 106
    .local v0, "command":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 120
    const/4 v1, 0x0

    .line 129
    .end local v0    # "command":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    .line 130
    iget-object v3, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mPreAllocatedRam:[I

    .line 131
    .local v3, "position":[I
    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 134
    .local v2, "pointerIndex":I
    aget v4, v3, v6

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    aput v4, v3, v6

    .line 135
    aget v4, v3, v7

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    aput v4, v3, v7

    .line 137
    iget-object v4, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mAsyncThrottlingWallpaperCommandSender:Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;

    .line 138
    aget v5, v3, v6

    aget v6, v3, v7

    .line 137
    invoke-virtual {v4, p2, v0, v5, v6}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->sendWallpaperCommand(Landroid/view/View;Ljava/lang/String;II)V

    .line 139
    iget-object v4, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mStoredMotionEventData:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;

    invoke-virtual {v4, p1, p2}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;->updateWithMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 141
    .end local v2    # "pointerIndex":I
    .end local v3    # "position":[I
    :cond_2
    return v1

    .line 108
    .restart local v0    # "command":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "com.sonymobile.lockscreen.wallpaper.command.POINTER_DOWN"

    .local v0, "command":Ljava/lang/String;
    goto :goto_0

    .line 112
    .local v0, "command":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "com.sonymobile.lockscreen.wallpaper.command.POINTER_UP"

    .local v0, "command":Ljava/lang/String;
    goto :goto_0

    .line 116
    .local v0, "command":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "com.sonymobile.lockscreen.wallpaper.command.POINTER_MOVE"

    .local v0, "command":Ljava/lang/String;
    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCheckLiveWallpaperCheckCompleted(Z)V
    .locals 0
    .param p1, "usingPS4Wallpaper"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mUsingPS4Wallpaper:Z

    .line 73
    return-void
.end method

.method public refreshSystemWallpaperInfo(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenLiveWallpaperChecker;)V
    .locals 1
    .param p1, "lockscreenLiveWallpaperChecker"    # Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenLiveWallpaperChecker;

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1, p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenLiveWallpaperChecker;->setOnTaskCompleteListener(Lcom/sonymobile/systemui/lockscreen/wallpaper/OnLiveWallpaperCheckCompleted;)V

    .line 82
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenLiveWallpaperChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    :cond_0
    return-void
.end method
