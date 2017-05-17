.class public Lcom/google/android/gms/ads/internal/client/zzab;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

.field private zzuo:[Lcom/google/android/gms/ads/AdSize;


# virtual methods
.method public getAdSize()Lcom/google/android/gms/ads/AdSize;
    .locals 3

    .prologue
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuo:[Lcom/google/android/gms/ads/AdSize;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuL:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zzaN()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzcQ()Lcom/google/android/gms/ads/AdSize;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Failed to get the current AdSize."

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzab;->zzuo:[Lcom/google/android/gms/ads/AdSize;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_1
.end method
