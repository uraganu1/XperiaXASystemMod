.class public Lcom/google/android/gms/ads/internal/reward/client/zzf;
.super Lcom/google/android/gms/dynamic/zzg;
.source "Unknown"


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzg",
        "<",
        "Lcom/google/android/gms/ads/internal/reward/client/zzc;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "com.google.android.gms.ads.reward.RewardedVideoAdCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzg;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected zzad(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/reward/client/zzc;
    .locals 1

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/reward/client/zzc$zza;->zzab(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/reward/client/zzc;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzd(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/reward/client/zzf;->zzad(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/reward/client/zzc;

    move-result-object v0

    return-object v0
.end method
