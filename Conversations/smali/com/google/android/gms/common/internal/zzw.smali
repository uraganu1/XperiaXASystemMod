.class public final Lcom/google/android/gms/common/internal/zzw;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/zzw$1;,
        Lcom/google/android/gms/common/internal/zzw$zza;
    }
.end annotation


# direct methods
.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    if-ne p0, p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static varargs hashCode([Ljava/lang/Object;)I
    .locals 1
    .param p0, "objects"    # [Ljava/lang/Object;

    .prologue
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static zzy(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/internal/zzw$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/internal/zzw$zza;-><init>(Ljava/lang/Object;Lcom/google/android/gms/common/internal/zzw$1;)V

    return-object v0
.end method
