.class public Lcom/google/android/gms/common/internal/zzj$zzf;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "zzf"
.end annotation


# instance fields
.field final synthetic zzajU:Lcom/google/android/gms/common/internal/zzj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj$zzf;->zzajU:Lcom/google/android/gms/common/internal/zzj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzf;->zzajU:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzj;->zze(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzf;->zzajU:Lcom/google/android/gms/common/internal/zzj;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj$zzf;->zzajU:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzj;->zzd(Lcom/google/android/gms/common/internal/zzj;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzp;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzf;->zzajU:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzj;->zze(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Legacy GmsClient received onReportAccountValidation callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
