.class public final Lcom/google/android/gms/internal/zzag$zza;
.super Lcom/google/android/gms/internal/zzso;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzso",
        "<",
        "Lcom/google/android/gms/internal/zzag$zza;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzjw:[Lcom/google/android/gms/internal/zzag$zza;


# instance fields
.field public type:I

.field public zzjA:[Lcom/google/android/gms/internal/zzag$zza;

.field public zzjB:Ljava/lang/String;

.field public zzjC:Ljava/lang/String;

.field public zzjD:J

.field public zzjE:Z

.field public zzjF:[Lcom/google/android/gms/internal/zzag$zza;

.field public zzjG:[I

.field public zzjH:Z

.field public zzjx:Ljava/lang/String;

.field public zzjy:[Lcom/google/android/gms/internal/zzag$zza;

.field public zzjz:[Lcom/google/android/gms/internal/zzag$zza;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzso;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzag$zza;->zzR()Lcom/google/android/gms/internal/zzag$zza;

    return-void
.end method

.method public static zzQ()[Lcom/google/android/gms/internal/zzag$zza;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    return-object v0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/zzss;->zzbut:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v0, :cond_1

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Lcom/google/android/gms/internal/zzag$zza;

    sput-object v0, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_3

    instance-of v2, p1, Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v2, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/zzag$zza;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    iget v3, p1, Lcom/google/android/gms/internal/zzag$zza;->type:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjx:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjy:[Lcom/google/android/gms/internal/zzag$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjy:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjz:[Lcom/google/android/gms/internal/zzag$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjz:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjA:[Lcom/google/android/gms/internal/zzag$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjA:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjB:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjB:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjB:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjC:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjC:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjD:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjD:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_3
    return v1

    :cond_4
    return v0

    .end local p1    # "o":Ljava/lang/Object;
    :cond_5
    return v0

    :cond_6
    iget-object v2, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjx:Ljava/lang/String;

    if-eqz v2, :cond_0

    return v0

    :cond_7
    return v0

    :cond_8
    return v0

    :cond_9
    return v0

    :cond_a
    return v0

    :cond_b
    iget-object v2, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjB:Ljava/lang/String;

    if-eqz v2, :cond_1

    return v0

    :cond_c
    return v0

    :cond_d
    iget-object v2, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjC:Ljava/lang/String;

    if-eqz v2, :cond_2

    return v0

    :cond_e
    return v0

    :cond_f
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjE:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjE:Z

    if-ne v2, v3, :cond_12

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjF:[Lcom/google/android/gms/internal/zzag$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjF:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjG:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjG:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjH:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjH:Z

    if-ne v2, v3, :cond_15

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v2, :cond_16

    :cond_10
    iget-object v2, p1, Lcom/google/android/gms/internal/zzag$zza;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v2, :cond_17

    :cond_11
    move v0, v1

    :goto_0
    return v0

    :cond_12
    return v0

    :cond_13
    return v0

    :cond_14
    return v0

    :cond_15
    return v0

    :cond_16
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzag$zza;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsq;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_17
    iget-object v2, p1, Lcom/google/android/gms/internal/zzag$zza;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v2, 0x4d5

    const/16 v3, 0x4cf

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjy:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzss;->hashCode([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjz:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzss;->hashCode([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjA:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzss;->hashCode([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjB:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjB:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjC:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjC:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjD:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjD:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjE:Z

    if-nez v0, :cond_4

    move v0, v2

    :goto_3
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjF:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzss;->hashCode([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjG:[I

    invoke-static {v4}, Lcom/google/android/gms/internal/zzss;->hashCode([I)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjH:Z

    if-nez v4, :cond_5

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v2, :cond_6

    :cond_0
    :goto_5
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_3

    :cond_5
    move v2, v3

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsq;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public synthetic mergeFrom(Lcom/google/android/gms/internal/zzsm;)Lcom/google/android/gms/internal/zzsu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzag$zza;->zzk(Lcom/google/android/gms/internal/zzsm;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/zzsn;)V
    .locals 6
    .param p1, "output"    # Lcom/google/android/gms/internal/zzsn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjy:[Lcom/google/android/gms/internal/zzag$zza;

    if-nez v0, :cond_7

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjz:[Lcom/google/android/gms/internal/zzag$zza;

    if-nez v0, :cond_9

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjA:[Lcom/google/android/gms/internal/zzag$zza;

    if-nez v0, :cond_b

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjB:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjC:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjD:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjD:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjH:Z

    if-nez v0, :cond_f

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjG:[I

    if-nez v0, :cond_10

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjF:[Lcom/google/android/gms/internal/zzag$zza;

    if-nez v0, :cond_11

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjE:Z

    if-nez v0, :cond_13

    :goto_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzso;->writeTo(Lcom/google/android/gms/internal/zzsn;)V

    return-void

    :cond_6
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsn;->zzn(ILjava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjy:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjy:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjy:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v2, v2, v0

    if-nez v2, :cond_8

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzsn;->zza(ILcom/google/android/gms/internal/zzsu;)V

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjz:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjz:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjz:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v2, v2, v0

    if-nez v2, :cond_a

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzsn;->zza(ILcom/google/android/gms/internal/zzsu;)V

    goto :goto_8

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjA:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_9
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjA:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjA:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v2, v2, v0

    if-nez v2, :cond_c

    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_c
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzsn;->zza(ILcom/google/android/gms/internal/zzsu;)V

    goto :goto_a

    :cond_d
    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjB:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsn;->zzn(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjC:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsn;->zzn(ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    const/16 v0, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjH:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsn;->zze(IZ)V

    goto :goto_3

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjG:[I

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjG:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjG:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjF:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    if-lez v0, :cond_5

    :goto_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjF:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjF:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v0, v0, v1

    if-nez v0, :cond_12

    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_12
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zzsn;->zza(ILcom/google/android/gms/internal/zzsu;)V

    goto :goto_d

    :cond_13
    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjE:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zze(IZ)V

    goto/16 :goto_4
.end method

.method public zzR()Lcom/google/android/gms/internal/zzag$zza;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzag$zza;->zzQ()[Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjy:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzag$zza;->zzQ()[Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjz:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzag$zza;->zzQ()[Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjA:[Lcom/google/android/gms/internal/zzag$zza;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjB:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjC:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjD:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjE:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzag$zza;->zzQ()[Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjF:[Lcom/google/android/gms/internal/zzag$zza;

    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuw:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjG:[I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjH:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzbuu:I

    return-object p0
.end method

.method public zzk(Lcom/google/android/gms/internal/zzsm;)Lcom/google/android/gms/internal/zzag$zza;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzag$zza;->zza(Lcom/google/android/gms/internal/zzsm;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzc(Lcom/google/android/gms/internal/zzsm;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjy:[Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjy:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzag$zza;

    if-nez v0, :cond_2

    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zza(Lcom/google/android/gms/internal/zzsu;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjy:[Lcom/google/android/gms/internal/zzag$zza;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjy:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzsm;->zza(Lcom/google/android/gms/internal/zzsu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzc(Lcom/google/android/gms/internal/zzsm;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjz:[Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjz:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzag$zza;

    if-nez v0, :cond_5

    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_6

    new-instance v3, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zza(Lcom/google/android/gms/internal/zzsu;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjz:[Lcom/google/android/gms/internal/zzag$zza;

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjz:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_6
    new-instance v3, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzsm;->zza(Lcom/google/android/gms/internal/zzsu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzc(Lcom/google/android/gms/internal/zzsm;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjA:[Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjA:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzag$zza;

    if-nez v0, :cond_8

    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_9

    new-instance v3, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zza(Lcom/google/android/gms/internal/zzsu;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjA:[Lcom/google/android/gms/internal/zzag$zza;

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjA:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    :cond_9
    new-instance v3, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzsm;->zza(Lcom/google/android/gms/internal/zzsu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjB:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjC:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjD:J

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJc()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjH:Z

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x50

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzc(Lcom/google/android/gms/internal/zzsm;I)I

    move-result v4

    new-array v5, v4, [I

    move v3, v1

    move v0, v1

    :goto_7
    if-lt v3, v4, :cond_b

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjG:[I

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjG:[I

    array-length v2, v2

    :goto_8
    if-eqz v2, :cond_e

    :cond_a
    add-int v3, v2, v0

    new-array v3, v3, [I

    if-nez v2, :cond_f

    :goto_9
    invoke-static {v5, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjG:[I

    goto/16 :goto_0

    :cond_b
    if-nez v3, :cond_c

    :goto_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :goto_b
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_7

    :cond_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    goto :goto_a

    :pswitch_1
    add-int/lit8 v2, v0, 0x1

    aput v6, v5, v0

    move v0, v2

    goto :goto_b

    :cond_d
    move v2, v1

    goto :goto_8

    :cond_e
    array-length v3, v5

    if-ne v0, v3, :cond_a

    iput-object v5, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjG:[I

    goto/16 :goto_0

    :cond_f
    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjG:[I

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJf()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zzmq(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->getPosition()I

    move-result v2

    move v0, v1

    :goto_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJk()I

    move-result v4

    if-gtz v4, :cond_10

    if-nez v0, :cond_11

    :goto_d
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzsm;->zzmr(I)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    goto :goto_c

    :pswitch_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_11
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzsm;->zzms(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjG:[I

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjG:[I

    array-length v2, v2

    :goto_e
    add-int/2addr v0, v2

    new-array v4, v0, [I

    if-nez v2, :cond_13

    :goto_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJk()I

    move-result v0

    if-gtz v0, :cond_14

    iput-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjG:[I

    goto :goto_d

    :cond_12
    move v2, v1

    goto :goto_e

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjG:[I

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_f

    :cond_14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v5

    packed-switch v5, :pswitch_data_3

    goto :goto_f

    :pswitch_3
    add-int/lit8 v0, v2, 0x1

    aput v5, v4, v2

    move v2, v0

    goto :goto_f

    :sswitch_c
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzc(Lcom/google/android/gms/internal/zzsm;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjF:[Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjF:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    :goto_10
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzag$zza;

    if-nez v0, :cond_16

    :goto_11
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_17

    new-instance v3, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zza(Lcom/google/android/gms/internal/zzsu;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjF:[Lcom/google/android/gms/internal/zzag$zza;

    goto/16 :goto_0

    :cond_15
    move v0, v1

    goto :goto_10

    :cond_16
    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjF:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_11

    :cond_17
    new-instance v3, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzsm;->zza(Lcom/google/android/gms/internal/zzsu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJc()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjE:Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x52 -> :sswitch_b
        0x5a -> :sswitch_c
        0x60 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected zzz()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzso;->zzz()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzsn;->zzC(II)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjy:[Lcom/google/android/gms/internal/zzag$zza;

    if-nez v2, :cond_7

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjz:[Lcom/google/android/gms/internal/zzag$zza;

    if-nez v2, :cond_a

    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjA:[Lcom/google/android/gms/internal/zzag$zza;

    if-nez v2, :cond_d

    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjB:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjC:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :goto_5
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjD:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjD:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjH:Z

    if-nez v2, :cond_12

    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjG:[I

    if-nez v2, :cond_13

    :cond_4
    :goto_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjF:[Lcom/google/android/gms/internal/zzag$zza;

    if-nez v2, :cond_15

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjE:Z

    if-nez v1, :cond_17

    :goto_8
    return v0

    :cond_6
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzo(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjy:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    if-lez v2, :cond_0

    move v2, v0

    move v0, v1

    :goto_9
    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjy:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v3, v3

    if-lt v0, v3, :cond_8

    move v0, v2

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjy:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v3, v3, v0

    if-nez v3, :cond_9

    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_9
    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzsn;->zzc(ILcom/google/android/gms/internal/zzsu;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_a

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjz:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    if-lez v2, :cond_1

    move v2, v0

    move v0, v1

    :goto_b
    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjz:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v3, v3

    if-lt v0, v3, :cond_b

    move v0, v2

    goto :goto_2

    :cond_b
    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjz:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v3, v3, v0

    if-nez v3, :cond_c

    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_c
    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzsn;->zzc(ILcom/google/android/gms/internal/zzsu;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_c

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjA:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    :goto_d
    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjA:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v3, v3

    if-lt v0, v3, :cond_e

    move v0, v2

    goto/16 :goto_3

    :cond_e
    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjA:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v3, v3, v0

    if-nez v3, :cond_f

    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_f
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzsn;->zzc(ILcom/google/android/gms/internal/zzsu;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_e

    :cond_10
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjB:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzo(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_4

    :cond_11
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjC:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzo(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_5

    :cond_12
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjH:Z

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzf(IZ)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_6

    :cond_13
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjG:[I

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    move v3, v1

    :goto_f
    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjG:[I

    array-length v4, v4

    if-lt v2, v4, :cond_14

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjG:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto/16 :goto_7

    :cond_14
    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjG:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/zzsn;->zzmx(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_15
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjF:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    if-lez v2, :cond_5

    :goto_10
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjF:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjF:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v2, v2, v1

    if-nez v2, :cond_16

    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_16
    const/16 v3, 0xb

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzsn;->zzc(ILcom/google/android/gms/internal/zzsu;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_11

    :cond_17
    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjE:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzf(IZ)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_8
.end method
