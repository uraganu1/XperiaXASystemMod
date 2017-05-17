.class Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$ThreadLock;
.super Ljava/lang/Object;
.source "CommonCodeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadLock"
.end annotation


# static fields
.field private static final MAX_WAIT_TIME:J = 0x7d0L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$ThreadLock;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$ThreadLock;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized lock()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 378
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$ThreadLock;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 375
    return-void

    .line 379
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unlock()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 385
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$ThreadLock;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 384
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
