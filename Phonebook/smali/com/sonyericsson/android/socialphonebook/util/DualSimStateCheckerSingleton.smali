.class public Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;
.super Ljava/lang/Object;
.source "DualSimStateCheckerSingleton.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;


# static fields
.field private static final FLAG_SIM_1_ENABLE:I = 0x1

.field private static final FLAG_SIM_2_ENABLE:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;


# instance fields
.field private mIsMultiSim:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/util/SimStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSimsState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->mSimsState:I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->mListeners:Ljava/util/List;

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->mSimsState:I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->mListeners:Ljava/util/List;

    .line 58
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->checkSimsState(Landroid/content/Context;)V

    .line 60
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->getMtkGeminiSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->mIsMultiSim:Z

    .line 57
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->sInstance:Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->sInstance:Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    .line 33
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->sInstance:Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMtkGeminiSupport()Z
    .locals 3

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "ret":Z
    const-string/jumbo v1, "ro.mtk_gemini_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 148
    .local v0, "ret":Z
    return v0
.end method

.method public static declared-synchronized setInstance(Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;)V
    .locals 2
    .param p0, "instance"    # Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-class v0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;

    monitor-enter v0

    .line 38
    :try_start_0
    sput-object p0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->sInstance:Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 37
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized bothSimsAreEnabled()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 123
    :try_start_0
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->mSimsState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkSimsState(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    .line 70
    :try_start_0
    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->mSimsState:I

    .line 71
    .local v5, "simState":I
    and-int/lit8 v3, v5, 0x1

    .line 72
    .local v3, "sim1State":I
    and-int/lit8 v4, v5, 0x2

    .line 73
    .local v4, "sim2State":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 74
    const-string/jumbo v7, "msim_mode_setting"

    const/4 v8, 0x0

    .line 73
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 76
    .local v2, "modeFromSettings":I
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->isSimAbsent(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 77
    and-int/lit8 v3, v2, 0x1

    .line 80
    :cond_0
    const/4 v6, 0x1

    invoke-static {p1, v6}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->isSimAbsent(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 81
    and-int/lit8 v4, v2, 0x2

    .line 84
    :cond_1
    or-int v5, v3, v4

    .line 86
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->mSimsState:I

    if-eq v6, v5, :cond_3

    .line 87
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->mListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 88
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->mListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/util/SimStateChangedListener;

    .line 89
    .local v0, "listener":Lcom/sonyericsson/android/socialphonebook/util/SimStateChangedListener;
    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/util/SimStateChangedListener;->onSimStateChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "listener":Lcom/sonyericsson/android/socialphonebook/util/SimStateChangedListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    .end local v2    # "modeFromSettings":I
    .end local v3    # "sim1State":I
    .end local v4    # "sim2State":I
    .end local v5    # "simState":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 92
    .restart local v2    # "modeFromSettings":I
    .restart local v3    # "sim1State":I
    .restart local v4    # "sim2State":I
    .restart local v5    # "simState":I
    :cond_2
    :try_start_1
    iput v5, p0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->mSimsState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    .line 69
    return-void
.end method

.method public declared-synchronized getOnlyEnabledSim()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    monitor-enter p0

    .line 112
    :try_start_0
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->mSimsState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    .line 113
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 114
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->mSimsState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    monitor-exit p0

    .line 115
    return v2

    .line 117
    :cond_1
    const/high16 v0, -0x80000000

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSubscriptions()[I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->mIsMultiSim:Z

    if-eqz v0, :cond_0

    filled-new-array {v2, v1}, [I

    move-result-object v0

    :goto_0
    return-object v0

    .line 135
    :cond_0
    new-array v0, v1, [I

    .line 136
    const/4 v1, -0x1

    aput v1, v0, v2

    goto :goto_0
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->mIsMultiSim:Z

    return v0
.end method

.method public registerListener(Lcom/sonyericsson/android/socialphonebook/util/SimStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/util/SimStateChangedListener;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/sonyericsson/android/socialphonebook/util/SimStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/util/SimStateChangedListener;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    return-void
.end method
