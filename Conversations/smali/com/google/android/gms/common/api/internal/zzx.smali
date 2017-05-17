.class public Lcom/google/android/gms/common/api/internal/zzx;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/zzx$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/TransformedResult",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final zzagI:Ljava/lang/Object;

.field private final zzagK:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private zzaiN:Lcom/google/android/gms/common/api/ResultTransform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultTransform",
            "<-TR;+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation
.end field

.field private zzaiO:Lcom/google/android/gms/common/api/internal/zzx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzx",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation
.end field

.field private zzaiP:Lcom/google/android/gms/common/api/ResultCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallbacks",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private zzaiQ:Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TR;>;"
        }
    .end annotation
.end field

.field private zzaiR:Lcom/google/android/gms/common/api/Status;

.field private final zzaiS:Lcom/google/android/gms/common/api/internal/zzx$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzx",
            "<TR;>.zza;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic zza(Lcom/google/android/gms/common/api/internal/zzx;Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzx;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/internal/zzx;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzx;->zzy(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/api/internal/zzx;)Lcom/google/android/gms/common/api/ResultTransform;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzaiN:Lcom/google/android/gms/common/api/ResultTransform;

    return-object v0
.end method

.method private zzc(Lcom/google/android/gms/common/api/Result;)V
    .locals 5

    .prologue
    instance-of v1, p1, Lcom/google/android/gms/common/api/Releasable;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/Releasable;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Releasable;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "TransformedResultImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to release "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/api/internal/zzx;)Lcom/google/android/gms/common/api/internal/zzx$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzaiS:Lcom/google/android/gms/common/api/internal/zzx$zza;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/api/internal/zzx;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzagK:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/common/api/internal/zzx;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzagI:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/common/api/internal/zzx;)Lcom/google/android/gms/common/api/internal/zzx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzaiO:Lcom/google/android/gms/common/api/internal/zzx;

    return-object v0
.end method

.method private zzpT()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzaiN:Lcom/google/android/gms/common/api/ResultTransform;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzagK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzaiN:Lcom/google/android/gms/common/api/ResultTransform;

    if-nez v1, :cond_3

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzaiR:Lcom/google/android/gms/common/api/Status;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzaiQ:Lcom/google/android/gms/common/api/PendingResult;

    if-nez v0, :cond_5

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzaiP:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-nez v0, :cond_0

    return-void

    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/internal/zzx;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzaiR:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zzx;->zzz(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzaiQ:Lcom/google/android/gms/common/api/PendingResult;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_1
.end method

.method private zzpV()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzagK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzaiP:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private zzy(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzagI:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzaiR:Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzaiR:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zzx;->zzz(Lcom/google/android/gms/common/api/Status;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private zzz(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzagI:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzaiN:Lcom/google/android/gms/common/api/ResultTransform;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzx;->zzpV()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzaiN:Lcom/google/android/gms/common/api/ResultTransform;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/ResultTransform;->onFailure(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    const-string/jumbo v2, "onFailure must not return null"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzaiO:Lcom/google/android/gms/common/api/internal/zzx;

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/api/internal/zzx;->zzy(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzaiP:Lcom/google/android/gms/common/api/ResultCallbacks;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/ResultCallbacks;->onFailure(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Lcom/google/android/gms/common/api/Result;, "TR;"
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzagI:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zzx;->zzy(Lcom/google/android/gms/common/api/Status;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzx;->zzc(Lcom/google/android/gms/common/api/Result;)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzaiN:Lcom/google/android/gms/common/api/ResultTransform;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzx;->zzpV()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzaiP:Lcom/google/android/gms/common/api/ResultCallbacks;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/ResultCallbacks;->onSuccess(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/zzs;->zzpN()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/api/internal/zzx$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/common/api/internal/zzx$1;-><init>(Lcom/google/android/gms/common/api/internal/zzx;Lcom/google/android/gms/common/api/Result;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/common/api/PendingResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<*>;)V"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzagI:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzaiQ:Lcom/google/android/gms/common/api/PendingResult;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzx;->zzpT()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
