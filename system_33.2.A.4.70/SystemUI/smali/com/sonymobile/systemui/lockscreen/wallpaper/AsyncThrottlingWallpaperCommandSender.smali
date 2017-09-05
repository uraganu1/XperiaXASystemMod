.class public Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;
.super Ljava/lang/Object;
.source "AsyncThrottlingWallpaperCommandSender.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DEBUG_SIMULATE_SLOW_SEND_WALLPAPER_COMMAND_IN_UPPER_200PX:Z

.field private final MAX_COMMAND_AGE_IN_MS:J

.field private final mBgHandler:Landroid/os/Handler;

.field private final mClock:Lcom/sonymobile/keyguard/time/Clock;

.field private final mQueueSpaceLeft:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;)Lcom/sonymobile/keyguard/time/Clock;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->mClock:Lcom/sonymobile/keyguard/time/Clock;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;I)V
    .locals 0
    .param p1, "term"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->queueSpaceLeftAdd(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;JJLjava/lang/ref/WeakReference;Ljava/lang/String;II)V
    .locals 1
    .param p1, "postTimestamp"    # J
    .param p3, "executeTimestamp"    # J
    .param p5, "weakView"    # Ljava/lang/ref/WeakReference;
    .param p6, "command"    # Ljava/lang/String;
    .param p7, "x"    # I
    .param p8, "y"    # I

    .prologue
    invoke-direct/range {p0 .. p8}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->safelySendWallpaperCommand(JJLjava/lang/ref/WeakReference;Ljava/lang/String;II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/app/WallpaperManager;Landroid/os/Handler;Lcom/sonymobile/keyguard/time/Clock;)V
    .locals 2
    .param p1, "wallpaperManager"    # Landroid/app/WallpaperManager;
    .param p2, "bgHandler"    # Landroid/os/Handler;
    .param p3, "clock"    # Lcom/sonymobile/keyguard/time/Clock;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->DEBUG_SIMULATE_SLOW_SEND_WALLPAPER_COMMAND_IN_UPPER_200PX:Z

    .line 51
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->MAX_COMMAND_AGE_IN_MS:J

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->mQueueSpaceLeft:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 88
    iput-object p2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->mBgHandler:Landroid/os/Handler;

    .line 89
    iput-object p3, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->mClock:Lcom/sonymobile/keyguard/time/Clock;

    .line 86
    return-void
.end method

.method private postSendWallpaperCommandRunnable(Landroid/view/View;Ljava/lang/String;II)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 142
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 143
    .local v4, "weakView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->mClock:Lcom/sonymobile/keyguard/time/Clock;

    invoke-interface {v1}, Lcom/sonymobile/keyguard/time/Clock;->getTimeInMillis()J

    move-result-wide v2

    .line 144
    .local v2, "postTimestamp":J
    new-instance v0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;-><init>(Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;JLjava/lang/ref/WeakReference;Ljava/lang/String;II)V

    .line 155
    .local v0, "sendWallpaperCommandRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->queueSpaceLeftAdd(I)V

    .line 141
    :cond_0
    return-void
.end method

.method private queueSpaceLeftAdd(I)V
    .locals 1
    .param p1, "term"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->mQueueSpaceLeft:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 167
    return-void
.end method

.method private safelySendWallpaperCommand(JJLjava/lang/ref/WeakReference;Ljava/lang/String;II)V
    .locals 13
    .param p1, "postTimestamp"    # J
    .param p3, "executeTimestamp"    # J
    .param p6, "command"    # Ljava/lang/String;
    .param p7, "x"    # I
    .param p8, "y"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p5, "weakView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    sub-long v4, p3, p1

    .line 199
    .local v4, "ageInMs":J
    const-wide/16 v10, 0x1f4

    cmp-long v9, v4, v10

    if-lez v9, :cond_1

    const/4 v6, 0x1

    .line 200
    .local v6, "tooOld":Z
    :goto_0
    if-nez v6, :cond_0

    .line 203
    invoke-virtual/range {p5 .. p5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 204
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    .line 205
    :goto_1
    if-eqz v8, :cond_0

    .line 206
    move-object/from16 v0, p6

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-direct {p0, v8, v0, v1, v2}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 197
    .end local v7    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 199
    .end local v6    # "tooOld":Z
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "tooOld":Z
    goto :goto_0

    .line 204
    .restart local v7    # "view":Landroid/view/View;
    :cond_2
    const/4 v8, 0x0

    .local v8, "windowToken":Landroid/os/IBinder;
    goto :goto_1
.end method

.method private sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;II)V
    .locals 7
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 216
    return-void
.end method


# virtual methods
.method public sendWallpaperCommand(Landroid/view/View;Ljava/lang/String;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 112
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->mQueueSpaceLeft:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 113
    .local v0, "queueSpaceLeft":I
    if-lez v0, :cond_0

    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->postSendWallpaperCommandRunnable(Landroid/view/View;Ljava/lang/String;II)V

    .line 111
    :cond_0
    return-void
.end method
