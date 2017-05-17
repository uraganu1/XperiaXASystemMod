.class Lcom/google/android/gms/common/internal/zze$3;
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
.field final synthetic zzakW:[C


# direct methods
.method constructor <init>([C)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zze$3;->zzakW:[C

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zze;-><init>()V

    return-void
.end method


# virtual methods
.method public zzd(C)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze$3;->zzakW:[C

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v1

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
