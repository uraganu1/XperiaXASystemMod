.class public final Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;
.super Ljava/lang/Object;
.source "GaGtmHelperWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;,
        Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;
    }
.end annotation


# static fields
.field private static final MY_WANTED_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;


# instance fields
.field private mActivitySessionCount:I

.field private mContext:Landroid/content/Context;

.field private mCustomQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;",
            ">;"
        }
    .end annotation
.end field

.field private mEventQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private volatile mInitialized:Z

.field private final mLock:Ljava/lang/Object;

.field private mPageViewQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)Ljava/util/ArrayDeque;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mCustomQueue:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)Ljava/util/ArrayDeque;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mEventQueue:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)Ljava/util/ArrayDeque;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mPageViewQueue:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mInitialized:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appScreen"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushAppViewImpl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appScreen"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushAppView(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "value"    # J

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEventImpl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "value"    # J

    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEventImpl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "map"    # Ljava/util/Map;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushToDataLayerImpl(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dimension"    # Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushToDataLayer(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->setupGtmImpl(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->subscribeGaSettingChangesImpl()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->unsubscribeGaSettingChangesImpl()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->sInstance:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mLock:Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mInitialized:Z

    .line 85
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mPageViewQueue:Ljava/util/ArrayDeque;

    .line 87
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mEventQueue:Ljava/util/ArrayDeque;

    .line 89
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mCustomQueue:Ljava/util/ArrayDeque;

    .line 91
    return-void
.end method

.method private disable(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 139
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Disable GaGtmHelperWrapper"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mInitialized:Z

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setAppOptOut(Z)V

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 150
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 151
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 152
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    .line 154
    if-eqz v0, :cond_1

    .line 155
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 157
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 137
    return-void

    .line 143
    .end local v0    # "executor":Ljava/util/concurrent/ExecutorService;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 150
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private executeOnExecutor(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 654
    if-nez p1, :cond_0

    .line 655
    return-void

    .line 658
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    monitor-exit v1

    .line 653
    return-void

    .line 660
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 658
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getContainer()Lcom/google/android/gms/tagmanager/Container;
    .locals 3

    .prologue
    .line 533
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getContainerHolder()Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v1

    .line 534
    .local v1, "holder":Lcom/google/android/gms/tagmanager/ContainerHolder;
    const/4 v0, 0x0

    .line 535
    .local v0, "container":Lcom/google/android/gms/tagmanager/Container;
    if-eqz v1, :cond_0

    .line 536
    invoke-interface {v1}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v0

    .line 538
    .end local v0    # "container":Lcom/google/android/gms/tagmanager/Container;
    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->sInstance:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    return-object v0
.end method

.method private pushAppView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appScreen"    # Ljava/lang/String;

    .prologue
    .line 542
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pushAppView appScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$5;-><init>(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->executeOnExecutor(Ljava/lang/Runnable;)V

    .line 541
    return-void
.end method

.method private pushAppViewImpl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appScreen"    # Ljava/lang/String;

    .prologue
    .line 553
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 554
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushAppView(Ljava/lang/String;)V

    .line 552
    :goto_0
    return-void

    .line 556
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pushAppView is not sent."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pushEvent(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;

    .prologue
    .line 574
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pushEvent key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 575
    const-string/jumbo v2, ", action="

    .line 574
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 575
    iget-object v2, p2, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;->mAction:Ljava/lang/String;

    .line 574
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 575
    const-string/jumbo v2, ", label="

    .line 574
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 575
    iget-object v2, p2, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;->mLabel:Ljava/lang/String;

    .line 574
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 575
    const-string/jumbo v2, ", value="

    .line 574
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 575
    iget-wide v2, p2, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;->mValue:J

    .line 574
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$7;-><init>(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->executeOnExecutor(Ljava/lang/Runnable;)V

    .line 573
    return-void
.end method

.method private pushEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "value"    # J

    .prologue
    .line 562
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pushEvent category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 563
    const-string/jumbo v2, ", value="

    .line 562
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$6;-><init>(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->executeOnExecutor(Ljava/lang/Runnable;)V

    .line 561
    return-void
.end method

.method private pushEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "value"    # J

    .prologue
    .line 594
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pushEvent key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", category="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 595
    const-string/jumbo v4, ", action="

    .line 594
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 595
    const-string/jumbo v4, ", label="

    .line 594
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 595
    const-string/jumbo v4, ", value="

    .line 594
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$8;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    invoke-direct/range {v3 .. v11}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$8;-><init>(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->executeOnExecutor(Ljava/lang/Runnable;)V

    .line 593
    return-void
.end method

.method private pushEventImpl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "value"    # J

    .prologue
    .line 607
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 608
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 609
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 613
    :goto_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 606
    return-void

    .line 611
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pushEventImpl is not sent."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pushEventImpl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "value"    # J

    .prologue
    .line 620
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "event"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string/jumbo v1, "gagtm-eventCategory"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p3, v0, v1

    .line 621
    const-string/jumbo v1, "gagtm-eventAction"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    aput-object p4, v0, v1

    const-string/jumbo v1, "gagtm-eventLabel"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x7

    aput-object p5, v0, v1

    .line 622
    const-string/jumbo v1, "gagtm-eventValue"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 619
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushToDataLayerImpl(Landroid/content/Context;Ljava/util/Map;)V

    .line 618
    return-void
.end method

.method private pushToDataLayer(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dimension"    # Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;

    .prologue
    .line 626
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$9;-><init>(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->executeOnExecutor(Ljava/lang/Runnable;)V

    .line 625
    return-void
.end method

.method private pushToDataLayer(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 635
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$10;-><init>(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->executeOnExecutor(Ljava/lang/Runnable;)V

    .line 634
    return-void
.end method

.method private pushToDataLayerImpl(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 644
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 645
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 646
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    .line 650
    :goto_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 643
    return-void

    .line 648
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pushToDataLayer is not sent."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupGtm(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 425
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 426
    if-nez p1, :cond_0

    .line 427
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "GaGtmHelperWrapper is disabled."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 429
    return-void

    .line 431
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$3;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$3;-><init>(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->executeOnExecutor(Ljava/lang/Runnable;)V

    .line 437
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method private setupGtmImpl(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 441
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 442
    invoke-static {p1}, Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;->isSomcGaEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "GaGtmSystemSetting is disabled."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->disable(Landroid/content/Context;)V

    .line 445
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 446
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    if-nez v0, :cond_1

    .line 450
    new-instance v0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    .line 455
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 457
    invoke-static {v4}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->enable(Z)V

    .line 460
    :cond_2
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 463
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v7

    .line 464
    .local v7, "tagManager":Lcom/google/android/gms/tagmanager/TagManager;
    invoke-virtual {v7, v4}, Lcom/google/android/gms/tagmanager/TagManager;->setVerboseLoggingEnabled(Z)V

    .line 468
    .end local v7    # "tagManager":Lcom/google/android/gms/tagmanager/TagManager;
    :cond_3
    invoke-static {p1}, Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;->readAndSetSomcGa(Landroid/content/Context;)V

    .line 471
    invoke-static {p1}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->enableExceptionParsing(Landroid/content/Context;)V

    .line 475
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, "container_id":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    .line 477
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;

    invoke-direct {v6, p0, p1}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;-><init>(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;)V

    .line 476
    const v3, 0x7f070001

    .line 477
    const/4 v5, 0x2

    .line 476
    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->init(Landroid/content/Context;Ljava/lang/String;IZILcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;)Z

    .line 529
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method private subscribeGaSettingChangesImpl()V
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 181
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mActivitySessionCount:I

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    invoke-virtual {v0}, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->subscribeGaSettingChanges()V

    .line 186
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mActivitySessionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mActivitySessionCount:I

    .line 187
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method private unsubscribeGaSettingChangesImpl()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 210
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 211
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mActivitySessionCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mActivitySessionCount:I

    .line 212
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mActivitySessionCount:I

    if-gez v0, :cond_0

    .line 213
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mActivitySessionCount:I

    .line 214
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 215
    return-void

    .line 217
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mActivitySessionCount:I

    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    invoke-virtual {v0}, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->unsubscribeGaSettingChanges()V

    .line 222
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 209
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 110
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "GaGtmHelperWrapper has already initialized."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 113
    return-void

    .line 116
    :cond_0
    if-nez p1, :cond_1

    .line 117
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context not allowed to be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "GaGtmHelperWrapper init"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mActivitySessionCount:I

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    .line 127
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    :cond_2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v1

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->setupGtm(Landroid/content/Context;)V

    .line 134
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 108
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public pushAppView(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 292
    if-nez p1, :cond_0

    .line 293
    return-void

    .line 296
    :cond_0
    const-string/jumbo v1, "bundle_key_track_screen"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "eventScreen":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 298
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushAppView(Ljava/lang/String;)V

    .line 291
    :cond_1
    return-void
.end method

.method public declared-synchronized pushAppView(Ljava/lang/String;)V
    .locals 2
    .param p1, "appScreen"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 267
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "GaGtmHelperWrapper is disabled."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 269
    return-void

    .line 271
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pushAppView is not sent."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 274
    return-void

    .line 276
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mInitialized:Z

    if-nez v0, :cond_2

    .line 277
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Put pushAppView into Queue."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mPageViewQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 280
    return-void

    .line 283
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushAppView(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 265
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pushEvent(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 308
    if-nez p1, :cond_0

    .line 309
    return-void

    .line 312
    :cond_0
    const-string/jumbo v0, "bundle_key_track_event_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "eventType":Ljava/lang/String;
    const-string/jumbo v0, "bundle_key_track_event_action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "eventAction":Ljava/lang/String;
    const-string/jumbo v0, "bundle_key_track_event_label"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "eventLabel":Ljava/lang/String;
    const-string/jumbo v0, "bundle_key_track_event_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 316
    .local v4, "eventValue":J
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p0

    .line 317
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public declared-synchronized pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    monitor-enter p0

    .line 330
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 332
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "GaGtmHelperWrapper is disabled."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 334
    return-void

    .line 336
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_2

    .line 337
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pushEvent is not sent."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 339
    return-void

    .line 336
    :cond_2
    if-eqz p3, :cond_1

    .line 341
    :try_start_2
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mInitialized:Z

    if-nez v0, :cond_3

    .line 342
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Put pushEvent into Queue."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mEventQueue:Ljava/util/ArrayDeque;

    .line 344
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    const v3, 0x7f0901c2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 343
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 346
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 347
    return-void

    .line 350
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 351
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 329
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "value"    # J

    .prologue
    monitor-enter p0

    .line 365
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 367
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "GaGtmHelperWrapper is disabled."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 369
    return-void

    .line 371
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_2

    .line 373
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pushEvent is not sent."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 375
    return-void

    .line 372
    :cond_2
    if-eqz p4, :cond_1

    .line 377
    :try_start_2
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mInitialized:Z

    if-nez v0, :cond_3

    .line 378
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Put pushEvent into Queue."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mEventQueue:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 380
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 381
    return-void

    .line 384
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 385
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 364
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pushOneTimeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    monitor-enter p0

    .line 398
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 400
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "GaGtmHelperWrapper is disabled."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 402
    return-void

    .line 404
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_2

    .line 405
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pushOneTimeEvent is not sent."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 407
    return-void

    .line 404
    :cond_2
    if-eqz p3, :cond_1

    .line 409
    :try_start_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->isGoogleAnalyticsEventSent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 410
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mInitialized:Z

    if-nez v0, :cond_3

    .line 411
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Put pushOneTimeEvent into Queue."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mEventQueue:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    const v3, 0x7f0901c3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->setGoogleAnalyticsEventSent(Landroid/content/Context;Ljava/lang/String;)V

    .line 415
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 416
    return-void

    .line 418
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    const v2, 0x7f0901c3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 419
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->setGoogleAnalyticsEventSent(Landroid/content/Context;Ljava/lang/String;)V

    .line 421
    :cond_4
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 397
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCustomDimension(ILjava/lang/String;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 232
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 234
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "GaGtmHelperWrapper is disabled."

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 236
    return-void

    .line 238
    :cond_0
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setCustomDimension is not sent."

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 241
    return-void

    .line 243
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sonyericsson/android/socialphonebook/analytics/CustomDimension;->convertDimensionIndexToKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "key":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mInitialized:Z

    if-nez v1, :cond_3

    .line 245
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Put setCustomDimension into Queue."

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 247
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mCustomQueue:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;

    invoke-direct {v2, v0, p2}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 250
    return-void

    .line 252
    :cond_3
    :try_start_3
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCustomDimension index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 255
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushToDataLayer(Landroid/content/Context;Ljava/util/Map;)V

    .line 257
    :cond_4
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 231
    return-void

    .end local v0    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized subscribeGaSettingChanges()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 164
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 166
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "GaGtmHelperWrapper is disabled."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 168
    return-void

    .line 170
    :cond_0
    :try_start_1
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$1;-><init>(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->executeOnExecutor(Ljava/lang/Runnable;)V

    .line 176
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 163
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unsubscribeGaSettingChanges()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 194
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 196
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "GaGtmHelperWrapper is disabled."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 198
    return-void

    .line 200
    :cond_0
    :try_start_1
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$2;-><init>(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->executeOnExecutor(Ljava/lang/Runnable;)V

    .line 206
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 193
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
