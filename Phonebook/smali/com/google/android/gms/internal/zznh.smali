.class public final Lcom/google/android/gms/internal/zznh;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method public static zza([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    if-lt v1, v0, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_0
    array-length v0, p0

    goto :goto_0

    :cond_1
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static zza(Ljava/lang/StringBuilder;[D)V
    .locals 4

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    :goto_1
    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static zza(Ljava/lang/StringBuilder;[F)V
    .locals 3

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    :goto_1
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static zza(Ljava/lang/StringBuilder;[I)V
    .locals 3

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    :goto_1
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static zza(Ljava/lang/StringBuilder;[J)V
    .locals 4

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    :goto_1
    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static zza(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/StringBuilder;",
            "[TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    :goto_1
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static zza(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    :goto_1
    const-string/jumbo v2, "\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static zza(Ljava/lang/StringBuilder;[Z)V
    .locals 3

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    :goto_1
    aget-boolean v2, p1, v0

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static zza([I)[Ljava/lang/Integer;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    return-object v2

    :cond_0
    return-object v0

    :cond_1
    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static zzb([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    array-length v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static zzb([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zznh;->zza([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static zzrK()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
