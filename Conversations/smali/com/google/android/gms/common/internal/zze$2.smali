.class Lcom/google/android/gms/common/internal/zze$2;
.super Lcom/google/android/gms/common/internal/zze;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/internal/zze;->zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/common/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzakU:C

.field final synthetic zzakV:C


# direct methods
.method constructor <init>(CC)V
    .locals 1

    .prologue
    int-to-char v0, p1

    iput-char v0, p0, Lcom/google/android/gms/common/internal/zze$2;->zzakU:C

    int-to-char v0, p2

    iput-char v0, p0, Lcom/google/android/gms/common/internal/zze$2;->zzakV:C

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zze;-><init>()V

    return-void
.end method


# virtual methods
.method public zzd(C)Z
    .locals 1

    .prologue
    iget-char v0, p0, Lcom/google/android/gms/common/internal/zze$2;->zzakU:C

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-char v0, p0, Lcom/google/android/gms/common/internal/zze$2;->zzakV:C

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
