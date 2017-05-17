.class public abstract Lcom/google/android/gms/analytics/internal/zzd;
.super Lcom/google/android/gms/analytics/internal/zzc;
.source "Unknown"


# instance fields
.field private zzOQ:Z

.field private zzOR:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzc;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-void
.end method


# virtual methods
.method public isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/analytics/internal/zzd;->zzOQ:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/analytics/internal/zzd;->zzOR:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public zza()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzd;->zzir()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzd;->zzOQ:Z

    return-void
.end method

.method protected abstract zzir()V
.end method

.method protected zzje()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzd;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
