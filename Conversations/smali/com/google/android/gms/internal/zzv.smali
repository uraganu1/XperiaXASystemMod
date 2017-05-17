.class public Lcom/google/android/gms/internal/zzv;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/zzb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzv$1;,
        Lcom/google/android/gms/internal/zzv$zzb;,
        Lcom/google/android/gms/internal/zzv$zza;
    }
.end annotation


# instance fields
.field private final zzaA:I

.field private final zzax:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzv$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzay:J

.field private final zzaz:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    const/high16 v0, 0x500000

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzv;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzax:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzv;->zzay:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzv;->zzaz:Ljava/io/File;

    iput p2, p0, Lcom/google/android/gms/internal/zzv;->zzaA:I

    return-void
.end method

.method private removeEntry(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzax:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzv$zza;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzv;->zzay:J

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzv$zza;->zzaB:J

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzv;->zzay:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzax:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static zza(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method static zza(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static zza(Ljava/io/OutputStream;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static zza(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    int-to-long v2, v1

    invoke-static {p0, v2, v3}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/OutputStream;J)V

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method private zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzv$zza;)V
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzax:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzax:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzv$zza;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzv;->zzay:J

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzv$zza;->zzaB:J

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzv$zza;->zzaB:J

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzv;->zzay:J

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzax:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzv;->zzay:J

    iget-wide v2, p2, Lcom/google/android/gms/internal/zzv$zza;->zzaB:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzv;->zzay:J

    goto :goto_0
.end method

.method static zza(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/OutputStream;I)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/OutputStream;I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static zza(Ljava/io/InputStream;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v1, p1, [B

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_1

    :cond_0
    if-ne v0, p1, :cond_2

    return-object v1

    :cond_1
    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytes, read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static zzb(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x0

    or-int/lit8 v0, v0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static zzc(Ljava/io/InputStream;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0xff

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/4 v2, 0x0

    shl-long/2addr v0, v2

    const-wide/16 v2, 0x0

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private zzc(I)V
    .locals 12

    .prologue
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzv;->zzay:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/zzv;->zzaA:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/google/android/gms/internal/zzs;->DEBUG:Z

    if-nez v0, :cond_3

    :goto_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzv;->zzay:J

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzv;->zzax:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    move v1, v0

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    sget-boolean v0, Lcom/google/android/gms/internal/zzs;->DEBUG:Z

    if-nez v0, :cond_6

    :goto_3
    return-void

    :cond_3
    const-string/jumbo v0, "Pruning old cache entries."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzs;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzv$zza;

    iget-object v7, v0, Lcom/google/android/gms/internal/zzv$zza;->key:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/zzv;->zzf(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_5

    const-string/jumbo v7, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzv$zza;->key:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzv$zza;->key:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzv;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/zzs;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v1, 0x1

    iget-wide v8, p0, Lcom/google/android/gms/internal/zzv;->zzay:J

    int-to-long v10, p1

    add-long/2addr v8, v10

    long-to-float v1, v8

    iget v7, p0, Lcom/google/android/gms/internal/zzv;->zzaA:I

    int-to-float v7, v7

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v7, v8

    cmpg-float v1, v1, v7

    if-gez v1, :cond_2

    move v1, v0

    goto :goto_2

    :cond_5
    iget-wide v8, p0, Lcom/google/android/gms/internal/zzv;->zzay:J

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzv$zza;->zzaB:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/google/android/gms/internal/zzv;->zzay:J

    goto :goto_4

    :cond_6
    const-string/jumbo v0, "pruned %d files, %d bytes, %d ms"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x1

    iget-wide v8, p0, Lcom/google/android/gms/internal/zzv;->zzay:J

    sub-long v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/zzs;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method static zzd(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zzc(Ljava/io/InputStream;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;I)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private zze(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static zze(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zzb(Ljava/io/InputStream;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    if-lt v1, v2, :cond_1

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zzd(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zzd(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzv;->zzf(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzv;->removeEntry(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzv;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzs;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zza(Ljava/lang/String;)Lcom/google/android/gms/internal/zzb$zza;
    .locals 8

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzax:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzv$zza;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzv;->zzf(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/zzv$zzb;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/google/android/gms/internal/zzv$zzb;-><init>(Ljava/io/InputStream;Lcom/google/android/gms/internal/zzv$1;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1}, Lcom/google/android/gms/internal/zzv$zza;->zzf(Ljava/io/InputStream;)Lcom/google/android/gms/internal/zzv$zza;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v1}, Lcom/google/android/gms/internal/zzv$zzb;->zza(Lcom/google/android/gms/internal/zzv$zzb;)I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzv$zza;->zzb([B)Lcom/google/android/gms/internal/zzb$zza;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    if-nez v1, :cond_1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzv$zzb;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    monitor-exit p0

    return-object v2

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_4
    const-string/jumbo v4, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzs;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzv;->remove(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v1, :cond_2

    :goto_2
    monitor-exit p0

    return-object v2

    :cond_2
    :try_start_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzv$zzb;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-nez v1, :cond_3

    :goto_4
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzv$zzb;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    :catch_3
    move-exception v0

    monitor-exit p0

    return-object v2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized zza()V
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzv;->zzaz:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzv;->zzaz:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_3

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzaz:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string/jumbo v0, "Unable to create cache dir %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzv;->zzaz:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzs;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    aget-object v5, v3, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {v0}, Lcom/google/android/gms/internal/zzv$zza;->zzf(Ljava/io/InputStream;)Lcom/google/android/gms/internal/zzv$zza;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/google/android/gms/internal/zzv$zza;->zzaB:J

    iget-object v7, v6, Lcom/google/android/gms/internal/zzv$zza;->key:Ljava/lang/String;

    invoke-direct {p0, v7, v6}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzv$zza;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v0, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_5
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_3
    if-nez v5, :cond_6

    :goto_4
    if-eqz v0, :cond_4

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_6
    :try_start_8
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_5
    if-nez v1, :cond_7

    :goto_6
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_7
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v6

    goto :goto_3
.end method

.method public declared-synchronized zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzb$zza;)V
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p2, Lcom/google/android/gms/internal/zzb$zza;->data:[B

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzv;->zzc(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzv;->zzf(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Lcom/google/android/gms/internal/zzv$zza;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/zzv$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzb$zza;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzv$zza;->zza(Ljava/io/OutputStream;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/google/android/gms/internal/zzb$zza;->data:[B

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzv$zza;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const-string/jumbo v1, "Failed to write header for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzs;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_4
    const-string/jumbo v1, "Could not clean up file %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzs;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public zzf(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzv;->zzaz:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzv;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
