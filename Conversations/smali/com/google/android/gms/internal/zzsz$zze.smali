.class public final Lcom/google/android/gms/internal/zzsz$zze;
.super Lcom/google/android/gms/internal/zzso;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzso",
        "<",
        "Lcom/google/android/gms/internal/zzsz$zze;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbvj:[Lcom/google/android/gms/internal/zzsz$zze;


# instance fields
.field public key:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzso;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz$zze;->zzJH()Lcom/google/android/gms/internal/zzsz$zze;

    return-void
.end method

.method public static zzJG()[Lcom/google/android/gms/internal/zzsz$zze;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzsz$zze;->zzbvj:[Lcom/google/android/gms/internal/zzsz$zze;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/zzsz$zze;->zzbvj:[Lcom/google/android/gms/internal/zzsz$zze;

    return-object v0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/zzss;->zzbut:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzsz$zze;->zzbvj:[Lcom/google/android/gms/internal/zzsz$zze;

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
    new-array v0, v0, [Lcom/google/android/gms/internal/zzsz$zze;

    sput-object v0, Lcom/google/android/gms/internal/zzsz$zze;->zzbvj:[Lcom/google/android/gms/internal/zzsz$zze;
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

    if-eq p1, p0, :cond_4

    instance-of v2, p1, Lcom/google/android/gms/internal/zzsz$zze;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzsz$zze;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zze;->key:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zze;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsz$zze;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zze;->value:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zze;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsz$zze;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zze;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v2, :cond_a

    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/internal/zzsz$zze;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v2, :cond_b

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_4
    return v1

    :cond_5
    return v0

    .end local p1    # "o":Ljava/lang/Object;
    :cond_6
    iget-object v2, p1, Lcom/google/android/gms/internal/zzsz$zze;->key:Ljava/lang/String;

    if-eqz v2, :cond_0

    return v0

    :cond_7
    return v0

    :cond_8
    iget-object v2, p1, Lcom/google/android/gms/internal/zzsz$zze;->value:Ljava/lang/String;

    if-eqz v2, :cond_1

    return v0

    :cond_9
    return v0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zze;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zze;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsz$zze;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsq;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_b
    iget-object v2, p1, Lcom/google/android/gms/internal/zzsz$zze;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zze;->key:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zze;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zze;->value:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zze;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zze;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v2, :cond_3

    :cond_0
    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zze;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsz$zze;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsq;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public synthetic mergeFrom(Lcom/google/android/gms/internal/zzsm;)Lcom/google/android/gms/internal/zzsu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsz$zze;->zzW(Lcom/google/android/gms/internal/zzsm;)Lcom/google/android/gms/internal/zzsz$zze;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/zzsn;)V
    .locals 2
    .param p1, "output"    # Lcom/google/android/gms/internal/zzsn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zze;->key:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zze;->value:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzso;->writeTo(Lcom/google/android/gms/internal/zzsn;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsz$zze;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zzn(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsz$zze;->value:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zzn(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public zzJH()Lcom/google/android/gms/internal/zzsz$zze;
    .locals 1

    .prologue
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zze;->key:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zze;->value:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zze;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsz$zze;->zzbuu:I

    return-object p0
.end method

.method public zzW(Lcom/google/android/gms/internal/zzsm;)Lcom/google/android/gms/internal/zzsz$zze;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzsz$zze;->zza(Lcom/google/android/gms/internal/zzsm;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zze;->key:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zze;->value:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method protected zzz()I
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/google/android/gms/internal/zzso;->zzz()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsz$zze;->key:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsz$zze;->value:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return v0

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zze;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zze;->value:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1
.end method
