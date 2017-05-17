.class Lcom/google/android/gms/internal/zziq$4;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zziq;->zza(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzjg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzLX:Lcom/google/android/gms/internal/zzjd;

.field final synthetic zzLZ:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjd;Ljava/util/concurrent/Future;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/internal/zziq$4;->zzLX:Lcom/google/android/gms/internal/zzjd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zziq$4;->zzLZ:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zziq$4;->zzLX:Lcom/google/android/gms/internal/zzjd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjd;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zziq$4;->zzLZ:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0
.end method
