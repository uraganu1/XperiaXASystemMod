.class public Lcom/google/android/gms/internal/zzbv;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field zzxl:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/zzcb;",
            ">;"
        }
    .end annotation
.end field

.field zzxo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzby;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/zzby;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbv;->zzxo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzby;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzby;->zzxs:Lcom/google/android/gms/internal/zzby;

    :cond_0
    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzcb;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbv;->zzxl:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
