.class public Lcom/google/android/gms/internal/zzjd;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/zzjg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzjg",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private zzCy:Z

.field private zzNc:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private zzNd:Z

.field private final zzNe:Lcom/google/android/gms/internal/zzjh;

.field private final zzpV:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzpV:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzNc:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzjd;->zzNd:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzjd;->zzCy:Z

    new-instance v0, Lcom/google/android/gms/internal/zzjh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzjh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzNe:Lcom/google/android/gms/internal/zzjh;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 4
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjd;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjd;->zzNd:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjd;->zzCy:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjd;->zzNd:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzpV:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzNe:Lcom/google/android/gms/internal/zzjh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjh;->zzhK()V

    monitor-exit v1

    return v3

    :cond_0
    return v2

    :cond_1
    monitor-exit v1

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjd;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjd;->zzNd:Z

    if-eqz v0, :cond_0

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjd;->zzCy:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzNc:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzpV:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v2, "CallbackFuture was cancelled."

    invoke-direct {v0, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjd;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjd;->zzNd:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjd;->zzNd:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjd;->zzCy:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzNc:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzpV:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string/jumbo v2, "CallbackFuture timed out."

    invoke-direct {v0, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :try_start_3
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v2, "CallbackFuture was cancelled."

    invoke-direct {v0, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjd;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjd;->zzCy:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjd;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjd;->zzNd:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzc(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzNe:Lcom/google/android/gms/internal/zzjh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzjh;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzg(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjd;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjd;->zzCy:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjd;->zzNd:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjd;->zzNd:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjd;->zzNc:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzpV:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzNe:Lcom/google/android/gms/internal/zzjh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjh;->zzhK()V

    monitor-exit v1

    return-void

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Provided CallbackFuture with multiple values."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
