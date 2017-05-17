.class Lcom/google/android/gms/common/internal/zze$11;
.super Lcom/google/android/gms/common/internal/zze;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/internal/zze;->zzc(C)Lcom/google/android/gms/common/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzajp:C


# direct methods
.method constructor <init>(C)V
    .locals 1

    int-to-char v0, p1

    iput-char v0, p0, Lcom/google/android/gms/common/internal/zze$11;->zzajp:C

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zze;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/internal/zze;)Lcom/google/android/gms/common/internal/zze;
    .locals 1

    iget-char v0, p0, Lcom/google/android/gms/common/internal/zze$11;->zzajp:C

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/internal/zze;->zzd(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/zze;->zza(Lcom/google/android/gms/common/internal/zze;)Lcom/google/android/gms/common/internal/zze;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public zzd(C)Z
    .locals 1

    iget-char v0, p0, Lcom/google/android/gms/common/internal/zze$11;->zzajp:C

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
