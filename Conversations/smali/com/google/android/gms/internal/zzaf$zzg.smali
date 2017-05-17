.class public final Lcom/google/android/gms/internal/zzaf$zzg;
.super Lcom/google/android/gms/internal/zzso;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzso",
        "<",
        "Lcom/google/android/gms/internal/zzaf$zzg;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zziW:[Lcom/google/android/gms/internal/zzaf$zzg;


# instance fields
.field public zziX:[I

.field public zziY:[I

.field public zziZ:[I

.field public zzja:[I

.field public zzjb:[I

.field public zzjc:[I

.field public zzjd:[I

.field public zzje:[I

.field public zzjf:[I

.field public zzjg:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzso;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaf$zzg;->zzL()Lcom/google/android/gms/internal/zzaf$zzg;

    return-void
.end method

.method public static zzK()[Lcom/google/android/gms/internal/zzaf$zzg;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzaf$zzg;->zziW:[Lcom/google/android/gms/internal/zzaf$zzg;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/zzaf$zzg;->zziW:[Lcom/google/android/gms/internal/zzaf$zzg;

    return-object v0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/zzss;->zzbut:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzaf$zzg;->zziW:[Lcom/google/android/gms/internal/zzaf$zzg;

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
    new-array v0, v0, [Lcom/google/android/gms/internal/zzaf$zzg;

    sput-object v0, Lcom/google/android/gms/internal/zzaf$zzg;->zziW:[Lcom/google/android/gms/internal/zzaf$zzg;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/internal/zzaf$zzg;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/zzaf$zzg;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziX:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaf$zzg;->zziX:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziY:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaf$zzg;->zziY:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziZ:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaf$zzg;->zziZ:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzja:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaf$zzg;->zzja:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjb:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaf$zzg;->zzjb:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjc:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaf$zzg;->zzjc:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjd:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaf$zzg;->zzjd:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzje:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaf$zzg;->zzje:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjf:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaf$zzg;->zzjf:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjg:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaf$zzg;->zzjg:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v2, :cond_e

    :cond_0
    iget-object v2, p1, Lcom/google/android/gms/internal/zzaf$zzg;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v2, :cond_f

    :cond_1
    move v0, v1

    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    return v1

    :cond_3
    return v0

    .end local p1    # "o":Ljava/lang/Object;
    :cond_4
    return v0

    :cond_5
    return v0

    :cond_6
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
    return v0

    :cond_c
    return v0

    :cond_d
    return v0

    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaf$zzg;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsq;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_f
    iget-object v2, p1, Lcom/google/android/gms/internal/zzaf$zzg;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v1, v1, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziX:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzss;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziY:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzss;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziZ:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzss;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzja:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzss;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjb:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzss;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjc:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzss;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjd:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzss;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzje:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzss;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjf:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzss;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjg:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzss;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsq;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic mergeFrom(Lcom/google/android/gms/internal/zzsm;)Lcom/google/android/gms/internal/zzsu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaf$zzg;->zzg(Lcom/google/android/gms/internal/zzsm;)Lcom/google/android/gms/internal/zzaf$zzg;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/zzsn;)V
    .locals 4
    .param p1, "output"    # Lcom/google/android/gms/internal/zzsn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziX:[I

    if-nez v0, :cond_a

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziY:[I

    if-nez v0, :cond_b

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziZ:[I

    if-nez v0, :cond_c

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzja:[I

    if-nez v0, :cond_d

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjb:[I

    if-nez v0, :cond_e

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjc:[I

    if-nez v0, :cond_f

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjd:[I

    if-nez v0, :cond_10

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzje:[I

    if-nez v0, :cond_11

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjf:[I

    if-nez v0, :cond_12

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjg:[I

    if-nez v0, :cond_13

    :cond_9
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzso;->writeTo(Lcom/google/android/gms/internal/zzsn;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziX:[I

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziX:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziX:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziY:[I

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziY:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziY:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziZ:[I

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziZ:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziZ:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzja:[I

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzja:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzja:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjb:[I

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjb:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjb:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjc:[I

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    :goto_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjc:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjc:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjd:[I

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjd:[I

    array-length v2, v2

    if-ge v0, v2, :cond_6

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjd:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzje:[I

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    :goto_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzje:[I

    array-length v2, v2

    if-ge v0, v2, :cond_7

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzje:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjf:[I

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    :goto_8
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjf:[I

    array-length v2, v2

    if-ge v0, v2, :cond_8

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjf:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjg:[I

    array-length v0, v0

    if-lez v0, :cond_9

    :goto_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjg:[I

    array-length v0, v0

    if-ge v1, v0, :cond_9

    const/16 v0, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjg:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method public zzL()Lcom/google/android/gms/internal/zzaf$zzg;
    .locals 1

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuw:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziX:[I

    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuw:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziY:[I

    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuw:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziZ:[I

    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuw:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzja:[I

    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuw:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjb:[I

    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuw:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjc:[I

    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuw:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjd:[I

    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuw:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzje:[I

    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuw:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjf:[I

    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuw:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjg:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzbuu:I

    return-object p0
.end method

.method public zzg(Lcom/google/android/gms/internal/zzsm;)Lcom/google/android/gms/internal/zzaf$zzg;
    .locals 5
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

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzaf$zzg;->zza(Lcom/google/android/gms/internal/zzsm;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :pswitch_1
    return-object p0

    :pswitch_2
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzc(Lcom/google/android/gms/internal/zzsm;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziX:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziX:[I

    array-length v0, v0

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-nez v0, :cond_2

    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziX:[I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziX:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJf()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zzmq(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->getPosition()I

    move-result v2

    move v0, v1

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJk()I

    move-result v4

    if-gtz v4, :cond_4

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzsm;->zzms(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziX:[I

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziX:[I

    array-length v2, v2

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-nez v2, :cond_6

    :goto_5
    array-length v4, v0

    if-lt v2, v4, :cond_7

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziX:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzsm;->zzmr(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_4

    :cond_6
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziX:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :pswitch_4
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzc(Lcom/google/android/gms/internal/zzsm;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziY:[I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziY:[I

    array-length v0, v0

    :goto_6
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-nez v0, :cond_9

    :goto_7
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziY:[I

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto :goto_6

    :cond_9
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziY:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :pswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJf()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zzmq(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->getPosition()I

    move-result v2

    move v0, v1

    :goto_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJk()I

    move-result v4

    if-gtz v4, :cond_b

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzsm;->zzms(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziY:[I

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziY:[I

    array-length v2, v2

    :goto_9
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-nez v2, :cond_d

    :goto_a
    array-length v4, v0

    if-lt v2, v4, :cond_e

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziY:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzsm;->zzmr(I)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_c
    move v2, v1

    goto :goto_9

    :cond_d
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziY:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a

    :cond_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :pswitch_6
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzc(Lcom/google/android/gms/internal/zzsm;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziZ:[I

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziZ:[I

    array-length v0, v0

    :goto_b
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-nez v0, :cond_10

    :goto_c
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_11

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziZ:[I

    goto/16 :goto_0

    :cond_f
    move v0, v1

    goto :goto_b

    :cond_10
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziZ:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :pswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJf()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zzmq(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->getPosition()I

    move-result v2

    move v0, v1

    :goto_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJk()I

    move-result v4

    if-gtz v4, :cond_12

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzsm;->zzms(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziZ:[I

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziZ:[I

    array-length v2, v2

    :goto_e
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-nez v2, :cond_14

    :goto_f
    array-length v4, v0

    if-lt v2, v4, :cond_15

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziZ:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzsm;->zzmr(I)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_13
    move v2, v1

    goto :goto_e

    :cond_14
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziZ:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_f

    :cond_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :pswitch_8
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzc(Lcom/google/android/gms/internal/zzsm;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzja:[I

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzja:[I

    array-length v0, v0

    :goto_10
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-nez v0, :cond_17

    :goto_11
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_18

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzja:[I

    goto/16 :goto_0

    :cond_16
    move v0, v1

    goto :goto_10

    :cond_17
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzja:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_11

    :cond_18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :pswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJf()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zzmq(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->getPosition()I

    move-result v2

    move v0, v1

    :goto_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJk()I

    move-result v4

    if-gtz v4, :cond_19

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzsm;->zzms(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzja:[I

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzja:[I

    array-length v2, v2

    :goto_13
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-nez v2, :cond_1b

    :goto_14
    array-length v4, v0

    if-lt v2, v4, :cond_1c

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzja:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzsm;->zzmr(I)V

    goto/16 :goto_0

    :cond_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1a
    move v2, v1

    goto :goto_13

    :cond_1b
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzja:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_14

    :cond_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :pswitch_a
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzc(Lcom/google/android/gms/internal/zzsm;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjb:[I

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjb:[I

    array-length v0, v0

    :goto_15
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-nez v0, :cond_1e

    :goto_16
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_1f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjb:[I

    goto/16 :goto_0

    :cond_1d
    move v0, v1

    goto :goto_15

    :cond_1e
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjb:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_16

    :cond_1f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :pswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJf()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zzmq(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->getPosition()I

    move-result v2

    move v0, v1

    :goto_17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJk()I

    move-result v4

    if-gtz v4, :cond_20

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzsm;->zzms(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjb:[I

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjb:[I

    array-length v2, v2

    :goto_18
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-nez v2, :cond_22

    :goto_19
    array-length v4, v0

    if-lt v2, v4, :cond_23

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjb:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzsm;->zzmr(I)V

    goto/16 :goto_0

    :cond_20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_21
    move v2, v1

    goto :goto_18

    :cond_22
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjb:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_19

    :cond_23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :pswitch_c
    const/16 v0, 0x30

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzc(Lcom/google/android/gms/internal/zzsm;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjc:[I

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjc:[I

    array-length v0, v0

    :goto_1a
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-nez v0, :cond_25

    :goto_1b
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_26

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjc:[I

    goto/16 :goto_0

    :cond_24
    move v0, v1

    goto :goto_1a

    :cond_25
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjc:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1b

    :cond_26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :pswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJf()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zzmq(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->getPosition()I

    move-result v2

    move v0, v1

    :goto_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJk()I

    move-result v4

    if-gtz v4, :cond_27

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzsm;->zzms(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjc:[I

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjc:[I

    array-length v2, v2

    :goto_1d
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-nez v2, :cond_29

    :goto_1e
    array-length v4, v0

    if-lt v2, v4, :cond_2a

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjc:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzsm;->zzmr(I)V

    goto/16 :goto_0

    :cond_27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_28
    move v2, v1

    goto :goto_1d

    :cond_29
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjc:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1e

    :cond_2a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :pswitch_e
    const/16 v0, 0x38

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzc(Lcom/google/android/gms/internal/zzsm;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjd:[I

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjd:[I

    array-length v0, v0

    :goto_1f
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-nez v0, :cond_2c

    :goto_20
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_2d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjd:[I

    goto/16 :goto_0

    :cond_2b
    move v0, v1

    goto :goto_1f

    :cond_2c
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjd:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_20

    :cond_2d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :pswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJf()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zzmq(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->getPosition()I

    move-result v2

    move v0, v1

    :goto_21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJk()I

    move-result v4

    if-gtz v4, :cond_2e

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzsm;->zzms(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjd:[I

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjd:[I

    array-length v2, v2

    :goto_22
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-nez v2, :cond_30

    :goto_23
    array-length v4, v0

    if-lt v2, v4, :cond_31

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjd:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzsm;->zzmr(I)V

    goto/16 :goto_0

    :cond_2e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_2f
    move v2, v1

    goto :goto_22

    :cond_30
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjd:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_23

    :cond_31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :pswitch_10
    const/16 v0, 0x40

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzc(Lcom/google/android/gms/internal/zzsm;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzje:[I

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzje:[I

    array-length v0, v0

    :goto_24
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-nez v0, :cond_33

    :goto_25
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_34

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzje:[I

    goto/16 :goto_0

    :cond_32
    move v0, v1

    goto :goto_24

    :cond_33
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzje:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_25

    :cond_34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :pswitch_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJf()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zzmq(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->getPosition()I

    move-result v2

    move v0, v1

    :goto_26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJk()I

    move-result v4

    if-gtz v4, :cond_35

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzsm;->zzms(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzje:[I

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzje:[I

    array-length v2, v2

    :goto_27
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-nez v2, :cond_37

    :goto_28
    array-length v4, v0

    if-lt v2, v4, :cond_38

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzje:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzsm;->zzmr(I)V

    goto/16 :goto_0

    :cond_35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_36
    move v2, v1

    goto :goto_27

    :cond_37
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzje:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_28

    :cond_38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :pswitch_12
    const/16 v0, 0x48

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzc(Lcom/google/android/gms/internal/zzsm;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjf:[I

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjf:[I

    array-length v0, v0

    :goto_29
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-nez v0, :cond_3a

    :goto_2a
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_3b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjf:[I

    goto/16 :goto_0

    :cond_39
    move v0, v1

    goto :goto_29

    :cond_3a
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjf:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2a

    :cond_3b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :pswitch_13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJf()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zzmq(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->getPosition()I

    move-result v2

    move v0, v1

    :goto_2b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJk()I

    move-result v4

    if-gtz v4, :cond_3c

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzsm;->zzms(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjf:[I

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjf:[I

    array-length v2, v2

    :goto_2c
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-nez v2, :cond_3e

    :goto_2d
    array-length v4, v0

    if-lt v2, v4, :cond_3f

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjf:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzsm;->zzmr(I)V

    goto/16 :goto_0

    :cond_3c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_3d
    move v2, v1

    goto :goto_2c

    :cond_3e
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjf:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2d

    :cond_3f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :pswitch_14
    const/16 v0, 0x50

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzc(Lcom/google/android/gms/internal/zzsm;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjg:[I

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjg:[I

    array-length v0, v0

    :goto_2e
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-nez v0, :cond_41

    :goto_2f
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_42

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjg:[I

    goto/16 :goto_0

    :cond_40
    move v0, v1

    goto :goto_2e

    :cond_41
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjg:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2f

    :cond_42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :pswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJf()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zzmq(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->getPosition()I

    move-result v2

    move v0, v1

    :goto_30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJk()I

    move-result v4

    if-gtz v4, :cond_43

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzsm;->zzms(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjg:[I

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjg:[I

    array-length v2, v2

    :goto_31
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-nez v2, :cond_45

    :goto_32
    array-length v4, v0

    if-lt v2, v4, :cond_46

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjg:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzsm;->zzmr(I)V

    goto/16 :goto_0

    :cond_43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_44
    move v2, v1

    goto :goto_31

    :cond_45
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjg:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_32

    :cond_46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_15
    .end packed-switch
.end method

.method protected zzz()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzso;->zzz()I

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziX:[I

    if-nez v0, :cond_a

    :cond_0
    move v0, v3

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziY:[I

    if-nez v2, :cond_c

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziZ:[I

    if-nez v2, :cond_e

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzja:[I

    if-nez v2, :cond_10

    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjb:[I

    if-nez v2, :cond_12

    :cond_4
    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjc:[I

    if-nez v2, :cond_14

    :cond_5
    :goto_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjd:[I

    if-nez v2, :cond_16

    :cond_6
    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzje:[I

    if-nez v2, :cond_18

    :cond_7
    :goto_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjf:[I

    if-nez v2, :cond_1a

    :cond_8
    :goto_8
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjg:[I

    if-nez v2, :cond_1c

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziX:[I

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    move v2, v1

    :goto_a
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziX:[I

    array-length v4, v4

    if-lt v0, v4, :cond_b

    add-int v0, v3, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziX:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_0

    :cond_b
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziX:[I

    aget v4, v4, v0

    invoke-static {v4}, Lcom/google/android/gms/internal/zzsn;->zzmx(I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziY:[I

    array-length v2, v2

    if-lez v2, :cond_1

    move v2, v1

    move v3, v1

    :goto_b
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziY:[I

    array-length v4, v4

    if-lt v2, v4, :cond_d

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziY:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_1

    :cond_d
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziY:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/zzsn;->zzmx(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziZ:[I

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v1

    move v3, v1

    :goto_c
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziZ:[I

    array-length v4, v4

    if-lt v2, v4, :cond_f

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziZ:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_2

    :cond_f
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zziZ:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/zzsn;->zzmx(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_10
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzja:[I

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    move v3, v1

    :goto_d
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzja:[I

    array-length v4, v4

    if-lt v2, v4, :cond_11

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzja:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto/16 :goto_3

    :cond_11
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzja:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/zzsn;->zzmx(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_12
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjb:[I

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    move v3, v1

    :goto_e
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjb:[I

    array-length v4, v4

    if-lt v2, v4, :cond_13

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjb:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto/16 :goto_4

    :cond_13
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjb:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/zzsn;->zzmx(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjc:[I

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v1

    move v3, v1

    :goto_f
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjc:[I

    array-length v4, v4

    if-lt v2, v4, :cond_15

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjc:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto/16 :goto_5

    :cond_15
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjc:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/zzsn;->zzmx(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_16
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjd:[I

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v1

    move v3, v1

    :goto_10
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjd:[I

    array-length v4, v4

    if-lt v2, v4, :cond_17

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjd:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto/16 :goto_6

    :cond_17
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjd:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/zzsn;->zzmx(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_18
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzje:[I

    array-length v2, v2

    if-lez v2, :cond_7

    move v2, v1

    move v3, v1

    :goto_11
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzje:[I

    array-length v4, v4

    if-lt v2, v4, :cond_19

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzje:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto/16 :goto_7

    :cond_19
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzje:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/zzsn;->zzmx(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjf:[I

    array-length v2, v2

    if-lez v2, :cond_8

    move v2, v1

    move v3, v1

    :goto_12
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjf:[I

    array-length v4, v4

    if-lt v2, v4, :cond_1b

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjf:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto/16 :goto_8

    :cond_1b
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjf:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/zzsn;->zzmx(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjg:[I

    array-length v2, v2

    if-lez v2, :cond_9

    move v2, v1

    :goto_13
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjg:[I

    array-length v3, v3

    if-lt v1, v3, :cond_1d

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjg:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto/16 :goto_9

    :cond_1d
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzg;->zzjg:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/zzsn;->zzmx(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method
