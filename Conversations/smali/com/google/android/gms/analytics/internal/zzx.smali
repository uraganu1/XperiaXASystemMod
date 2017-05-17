.class public Lcom/google/android/gms/analytics/internal/zzx;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method public static version()I
    .locals 2

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Invalid version number"

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/zzae;->zzf(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zzbo(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/android/gms/analytics/internal/zzx;->version()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v3}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v3, v3}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v0, v2, v2}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z

    return v2

    :cond_0
    return v3
.end method
