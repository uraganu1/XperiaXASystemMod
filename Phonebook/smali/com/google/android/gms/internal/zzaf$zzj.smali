.class public final Lcom/google/android/gms/internal/zzaf$zzj;
.super Lcom/google/android/gms/internal/zzte;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzj"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzte",
        "<",
        "Lcom/google/android/gms/internal/zzaf$zzj;",
        ">;"
    }
.end annotation


# instance fields
.field public zzjk:[Lcom/google/android/gms/internal/zzaf$zzi;

.field public zzjl:Lcom/google/android/gms/internal/zzaf$zzf;

.field public zzjm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzte;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaf$zzj;->zzP()Lcom/google/android/gms/internal/zzaf$zzj;

    return-void
.end method

.method public static zzd([B)Lcom/google/android/gms/internal/zzaf$zzj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zztj;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzaf$zzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaf$zzj;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zztk;->mergeFrom(Lcom/google/android/gms/internal/zztk;[B)Lcom/google/android/gms/internal/zztk;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaf$zzj;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_4

    instance-of v2, p1, Lcom/google/android/gms/internal/zzaf$zzj;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzaf$zzj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjk:[Lcom/google/android/gms/internal/zzaf$zzi;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaf$zzj;->zzjk:[Lcom/google/android/gms/internal/zzaf$zzi;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzti;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjl:Lcom/google/android/gms/internal/zzaf$zzf;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjl:Lcom/google/android/gms/internal/zzaf$zzf;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaf$zzj;->zzjl:Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaf$zzf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjm:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjm:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaf$zzj;->zzjm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    if-nez v2, :cond_b

    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/internal/zzaf$zzj;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    if-nez v2, :cond_c

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    return v1

    :cond_5
    return v0

    :cond_6
    return v0

    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/internal/zzaf$zzj;->zzjl:Lcom/google/android/gms/internal/zzaf$zzf;

    if-eqz v2, :cond_0

    return v0

    :cond_8
    return v0

    :cond_9
    iget-object v2, p1, Lcom/google/android/gms/internal/zzaf$zzj;->zzjm:Ljava/lang/String;

    if-eqz v2, :cond_1

    return v0

    :cond_a
    return v0

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zztg;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaf$zzj;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztg;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_c
    iget-object v2, p1, Lcom/google/android/gms/internal/zzaf$zzj;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zztg;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjk:[Lcom/google/android/gms/internal/zzaf$zzi;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzti;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjl:Lcom/google/android/gms/internal/zzaf$zzf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjl:Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaf$zzf;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjm:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzbpQ:Lcom/google/android/gms/internal/zztg;

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
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zztg;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zztg;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public synthetic mergeFrom(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zztk;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaf$zzj;->zzj(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zzaf$zzj;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/zztd;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjk:[Lcom/google/android/gms/internal/zzaf$zzi;

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjl:Lcom/google/android/gms/internal/zzaf$zzf;

    if-nez v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjm:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzte;->writeTo(Lcom/google/android/gms/internal/zztd;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjk:[Lcom/google/android/gms/internal/zzaf$zzi;

    array-length v1, v1

    if-lez v1, :cond_0

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjk:[Lcom/google/android/gms/internal/zzaf$zzi;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjk:[Lcom/google/android/gms/internal/zzaf$zzi;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zztd;->zza(ILcom/google/android/gms/internal/zztk;)V

    goto :goto_3

    :cond_3
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjl:Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zza(ILcom/google/android/gms/internal/zztk;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjm:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzb(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public zzP()Lcom/google/android/gms/internal/zzaf$zzj;
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zzaf$zzi;->zzN()[Lcom/google/android/gms/internal/zzaf$zzi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjk:[Lcom/google/android/gms/internal/zzaf$zzi;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjl:Lcom/google/android/gms/internal/zzaf$zzf;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjm:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzbqb:I

    return-object p0
.end method

.method public zzj(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zzaf$zzj;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHi()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzaf$zzj;->zza(Lcom/google/android/gms/internal/zztc;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zztn;->zzc(Lcom/google/android/gms/internal/zztc;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjk:[Lcom/google/android/gms/internal/zzaf$zzi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjk:[Lcom/google/android/gms/internal/zzaf$zzi;

    array-length v0, v0

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzaf$zzi;

    if-nez v0, :cond_2

    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/zzaf$zzi;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzaf$zzi;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztc;->zza(Lcom/google/android/gms/internal/zztk;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjk:[Lcom/google/android/gms/internal/zzaf$zzi;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjk:[Lcom/google/android/gms/internal/zzaf$zzi;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/zzaf$zzi;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzaf$zzi;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zztc;->zza(Lcom/google/android/gms/internal/zztk;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHi()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjl:Lcom/google/android/gms/internal/zzaf$zzf;

    if-eqz v0, :cond_4

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjl:Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztc;->zza(Lcom/google/android/gms/internal/zztk;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaf$zzf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjl:Lcom/google/android/gms/internal/zzaf$zzf;

    goto :goto_3

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjm:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method protected zzz()I
    .locals 4

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzte;->zzz()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjk:[Lcom/google/android/gms/internal/zzaf$zzi;

    if-nez v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjl:Lcom/google/android/gms/internal/zzaf$zzf;

    if-nez v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjm:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    return v1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjk:[Lcom/google/android/gms/internal/zzaf$zzi;

    array-length v2, v2

    if-lez v2, :cond_0

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjk:[Lcom/google/android/gms/internal/zzaf$zzi;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjk:[Lcom/google/android/gms/internal/zzaf$zzi;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zztd;->zzc(ILcom/google/android/gms/internal/zztk;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_3

    :cond_3
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjl:Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zztd;->zzc(ILcom/google/android/gms/internal/zztk;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzj;->zzjm:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zztd;->zzp(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1
.end method
