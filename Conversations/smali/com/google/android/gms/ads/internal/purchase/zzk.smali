.class public Lcom/google/android/gms/ads/internal/purchase/zzk;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private final zzuM:Ljava/lang/String;


# virtual methods
.method public zza(Ljava/lang/String;ILandroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    return v3

    :cond_1
    if-eqz p3, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbM()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zze(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbM()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zzf(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_3

    :cond_2
    return v3

    :cond_3
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbM()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zzaq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zzk;->zzuM:Ljava/lang/String;

    if-nez v2, :cond_6

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    const-string/jumbo v0, "Developer payload not match."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    return v3

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zzk;->zzuM:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/ads/internal/purchase/zzl;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "Fail to verify signature."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    return v3
.end method

.method public zzfZ()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzir;->zzhs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
