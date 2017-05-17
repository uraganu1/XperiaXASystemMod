.class final Lcom/google/android/gms/internal/zzlt$zze;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zze"
.end annotation


# instance fields
.field private mSize:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzlt$zze;->mSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzlt$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlt$zze;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(JLjava/util/concurrent/TimeUnit;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    monitor-enter p0

    :goto_0
    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/zzlt$zze;->mSize:I

    if-eqz v2, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v2, v0, v8

    if-lez v2, :cond_1

    move v2, v3

    :goto_1
    if-nez v2, :cond_2

    monitor-exit p0

    return v4

    :cond_0
    monitor-exit p0

    return v3

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    sub-long/2addr v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized zzop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzlt$zze;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzlt$zze;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzoq()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzlt$zze;->mSize:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzlt$zze;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzlt$zze;->mSize:I

    iget v0, p0, Lcom/google/android/gms/internal/zzlt$zze;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "too many decrements"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
