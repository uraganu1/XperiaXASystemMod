.class public final Lcom/google/android/gms/internal/zzaf$zzb;
.super Lcom/google/android/gms/internal/zzte;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzte",
        "<",
        "Lcom/google/android/gms/internal/zzaf$zzb;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzij:[Lcom/google/android/gms/internal/zzaf$zzb;


# instance fields
.field public name:I

.field public zzik:[I

.field public zzil:I

.field public zzim:Z

.field public zzin:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzte;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaf$zzb;->zzD()Lcom/google/android/gms/internal/zzaf$zzb;

    return-void
.end method

.method public static zzC()[Lcom/google/android/gms/internal/zzaf$zzb;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzaf$zzb;->zzij:[Lcom/google/android/gms/internal/zzaf$zzb;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/zzaf$zzb;->zzij:[Lcom/google/android/gms/internal/zzaf$zzb;

    return-object v0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/zzti;->zzbqa:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzaf$zzb;->zzij:[Lcom/google/android/gms/internal/zzaf$zzb;

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
    new-array v0, v0, [Lcom/google/android/gms/internal/zzaf$zzb;

    sput-object v0, Lcom/google/android/gms/internal/zzaf$zzb;->zzij:[Lcom/google/android/gms/internal/zzaf$zzb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/internal/zzaf$zzb;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/zzaf$zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzik:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaf$zzb;->zzik:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzti;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzil:I

    iget v3, p1, Lcom/google/android/gms/internal/zzaf$zzb;->zzil:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zzb;->name:I

    iget v3, p1, Lcom/google/android/gms/internal/zzaf$zzb;->name:I

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzim:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzaf$zzb;->zzim:Z

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzin:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzaf$zzb;->zzin:Z

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    if-nez v2, :cond_9

    :cond_0
    iget-object v2, p1, Lcom/google/android/gms/internal/zzaf$zzb;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    if-nez v2, :cond_a

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    return v1

    :cond_3
    return v0

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
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zztg;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaf$zzb;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztg;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_a
    iget-object v2, p1, Lcom/google/android/gms/internal/zzaf$zzb;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zztg;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    const/16 v1, 0x4d5

    const/16 v2, 0x4cf

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzik:[I

    invoke-static {v4}, Lcom/google/android/gms/internal/zzti;->hashCode([I)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzil:I

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/google/android/gms/internal/zzaf$zzb;->name:I

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzim:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzin:Z

    if-nez v4, :cond_2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    if-nez v0, :cond_3

    :cond_0
    move v0, v3

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztg;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztg;->hashCode()I

    move-result v0

    goto :goto_2
.end method

.method public synthetic mergeFrom(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zztk;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaf$zzb;->zzb(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zzaf$zzb;

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

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzin:Z

    if-nez v1, :cond_1

    :goto_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzil:I

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zztd;->zzG(II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzik:[I

    if-nez v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzaf$zzb;->name:I

    if-nez v0, :cond_3

    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzim:Z

    if-nez v0, :cond_4

    :goto_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzte;->writeTo(Lcom/google/android/gms/internal/zztd;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzin:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zztd;->zzb(IZ)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzik:[I

    array-length v1, v1

    if-lez v1, :cond_0

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzik:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzik:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zztd;->zzG(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/zzaf$zzb;->name:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzG(II)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzim:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzb(IZ)V

    goto :goto_2
.end method

.method public zzD()Lcom/google/android/gms/internal/zzaf$zzb;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zztn;->zzboD:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzik:[I

    iput v1, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzil:I

    iput v1, p0, Lcom/google/android/gms/internal/zzaf$zzb;->name:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzim:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzin:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzbqb:I

    return-object p0
.end method

.method public zzb(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zzaf$zzb;
    .locals 5
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzaf$zzb;->zza(Lcom/google/android/gms/internal/zztc;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHm()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzin:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzil:I

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zztn;->zzc(Lcom/google/android/gms/internal/zztc;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzik:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzik:[I

    array-length v0, v0

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-nez v0, :cond_2

    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzik:[I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzik:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHi()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHp()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztc;->zzmn(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->getPosition()I

    move-result v2

    move v0, v1

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHu()I

    move-result v4

    if-gtz v4, :cond_4

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zztc;->zzmp(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzik:[I

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzik:[I

    array-length v2, v2

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-nez v2, :cond_6

    :goto_5
    array-length v4, v0

    if-lt v2, v4, :cond_7

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzik:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zztc;->zzmo(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_4

    :cond_6
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzik:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zzb;->name:I

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHm()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzim:Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
        0x20 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method protected zzz()I
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzte;->zzz()I

    move-result v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzin:Z

    if-nez v2, :cond_1

    :goto_0
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzil:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zztd;->zzI(II)I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzik:[I

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/zzaf$zzb;->name:I

    if-nez v1, :cond_4

    :goto_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzim:Z

    if-nez v1, :cond_5

    :goto_3
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzin:Z

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zztd;->zzc(IZ)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzik:[I

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_4
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzik:[I

    array-length v3, v3

    if-lt v0, v3, :cond_3

    add-int v0, v2, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzik:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzik:[I

    aget v3, v3, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/zztd;->zzmu(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zzb;->name:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzI(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_5
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaf$zzb;->zzim:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzc(IZ)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3
.end method
