.class public final Lcom/google/android/gms/internal/zzaf$zzh;
.super Lcom/google/android/gms/internal/zzso;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzso",
        "<",
        "Lcom/google/android/gms/internal/zzaf$zzh;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzjh:Lcom/google/android/gms/internal/zzsp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzsp",
            "<",
            "Lcom/google/android/gms/internal/zzag$zza;",
            "Lcom/google/android/gms/internal/zzaf$zzh;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzji:[Lcom/google/android/gms/internal/zzaf$zzh;


# instance fields
.field public zzjj:[I

.field public zzjk:[I

.field public zzjl:[I

.field public zzjm:I

.field public zzjn:[I

.field public zzjo:I

.field public zzjp:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    const-class v1, Lcom/google/android/gms/internal/zzaf$zzh;

    const-wide/16 v2, 0x32a

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzsp;->zza(ILjava/lang/Class;J)Lcom/google/android/gms/internal/zzsp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjh:Lcom/google/android/gms/internal/zzsp;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzaf$zzh;

    sput-object v0, Lcom/google/android/gms/internal/zzaf$zzh;->zzji:[Lcom/google/android/gms/internal/zzaf$zzh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzso;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaf$zzh;->zzM()Lcom/google/android/gms/internal/zzaf$zzh;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/internal/zzaf$zzh;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/zzaf$zzh;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjj:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaf$zzh;->zzjj:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjk:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaf$zzh;->zzjk:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjl:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaf$zzh;->zzjl:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjm:I

    iget v3, p1, Lcom/google/android/gms/internal/zzaf$zzh;->zzjm:I

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjn:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaf$zzh;->zzjn:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjo:I

    iget v3, p1, Lcom/google/android/gms/internal/zzaf$zzh;->zzjo:I

    if-ne v2, v3, :cond_9

    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjp:I

    iget v3, p1, Lcom/google/android/gms/internal/zzaf$zzh;->zzjp:I

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v2, :cond_b

    :cond_0
    iget-object v2, p1, Lcom/google/android/gms/internal/zzaf$zzh;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v2, :cond_c

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
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaf$zzh;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsq;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_c
    iget-object v2, p1, Lcom/google/android/gms/internal/zzaf$zzh;->zzbuj:Lcom/google/android/gms/internal/zzsq;

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

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjj:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzss;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjk:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzss;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjl:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzss;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjm:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjn:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzss;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjo:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjp:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzbuj:Lcom/google/android/gms/internal/zzsq;

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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaf$zzh;->zzh(Lcom/google/android/gms/internal/zzsm;)Lcom/google/android/gms/internal/zzaf$zzh;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjj:[I

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjk:[I

    if-nez v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjl:[I

    if-nez v0, :cond_6

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjm:I

    if-nez v0, :cond_7

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjn:[I

    if-nez v0, :cond_8

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjo:I

    if-nez v0, :cond_9

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjp:I

    if-nez v0, :cond_a

    :goto_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzso;->writeTo(Lcom/google/android/gms/internal/zzsn;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjj:[I

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjj:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjj:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjk:[I

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjk:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjk:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjl:[I

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjl:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjl:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjm:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjn:[I

    array-length v0, v0

    if-lez v0, :cond_3

    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjn:[I

    array-length v0, v0

    if-ge v1, v0, :cond_3

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjn:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjo:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    goto :goto_1

    :cond_a
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjp:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    goto :goto_2
.end method

.method public zzM()Lcom/google/android/gms/internal/zzaf$zzh;
    .locals 2

    .prologue
    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuw:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjj:[I

    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuw:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjk:[I

    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuw:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjl:[I

    iput v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjm:I

    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuw:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjn:[I

    iput v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjo:I

    iput v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjp:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzbuu:I

    return-object p0
.end method

.method public zzh(Lcom/google/android/gms/internal/zzsm;)Lcom/google/android/gms/internal/zzaf$zzh;
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

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzaf$zzh;->zza(Lcom/google/android/gms/internal/zzsm;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzc(Lcom/google/android/gms/internal/zzsm;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjj:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjj:[I

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

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjj:[I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjj:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :sswitch_2
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

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjj:[I

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjj:[I

    array-length v2, v2

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-nez v2, :cond_6

    :goto_5
    array-length v4, v0

    if-lt v2, v4, :cond_7

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjj:[I

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
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjj:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :sswitch_3
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzc(Lcom/google/android/gms/internal/zzsm;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjk:[I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjk:[I

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

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjk:[I

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto :goto_6

    :cond_9
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjk:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :sswitch_4
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

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjk:[I

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjk:[I

    array-length v2, v2

    :goto_9
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-nez v2, :cond_d

    :goto_a
    array-length v4, v0

    if-lt v2, v4, :cond_e

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjk:[I

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
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjk:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a

    :cond_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :sswitch_5
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzc(Lcom/google/android/gms/internal/zzsm;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjl:[I

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjl:[I

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

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjl:[I

    goto/16 :goto_0

    :cond_f
    move v0, v1

    goto :goto_b

    :cond_10
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjl:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :sswitch_6
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

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjl:[I

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjl:[I

    array-length v2, v2

    :goto_e
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-nez v2, :cond_14

    :goto_f
    array-length v4, v0

    if-lt v2, v4, :cond_15

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjl:[I

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
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjl:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_f

    :cond_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjm:I

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzc(Lcom/google/android/gms/internal/zzsm;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjn:[I

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjn:[I

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

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjn:[I

    goto/16 :goto_0

    :cond_16
    move v0, v1

    goto :goto_10

    :cond_17
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjn:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_11

    :cond_18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :sswitch_9
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

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjn:[I

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjn:[I

    array-length v2, v2

    :goto_13
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-nez v2, :cond_1b

    :goto_14
    array-length v4, v0

    if-lt v2, v4, :cond_1c

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjn:[I

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
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjn:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_14

    :cond_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjo:I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjp:I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x12 -> :sswitch_4
        0x18 -> :sswitch_5
        0x1a -> :sswitch_6
        0x20 -> :sswitch_7
        0x28 -> :sswitch_8
        0x2a -> :sswitch_9
        0x30 -> :sswitch_a
        0x38 -> :sswitch_b
    .end sparse-switch
.end method

.method protected zzz()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzso;->zzz()I

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjj:[I

    if-nez v0, :cond_4

    :cond_0
    move v0, v3

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjk:[I

    if-nez v2, :cond_6

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjl:[I

    if-nez v2, :cond_8

    :cond_2
    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjm:I

    if-nez v2, :cond_a

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjn:[I

    if-nez v2, :cond_b

    :cond_3
    :goto_4
    iget v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjo:I

    if-nez v1, :cond_d

    :goto_5
    iget v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjp:I

    if-nez v1, :cond_e

    :goto_6
    return v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjj:[I

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    move v2, v1

    :goto_7
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjj:[I

    array-length v4, v4

    if-lt v0, v4, :cond_5

    add-int v0, v3, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjj:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjj:[I

    aget v4, v4, v0

    invoke-static {v4}, Lcom/google/android/gms/internal/zzsn;->zzmx(I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjk:[I

    array-length v2, v2

    if-lez v2, :cond_1

    move v2, v1

    move v3, v1

    :goto_8
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjk:[I

    array-length v4, v4

    if-lt v2, v4, :cond_7

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjk:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjk:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/zzsn;->zzmx(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjl:[I

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v1

    move v3, v1

    :goto_9
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjl:[I

    array-length v4, v4

    if-lt v2, v4, :cond_9

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjl:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_2

    :cond_9
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjl:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/zzsn;->zzmx(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_a
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjm:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzC(II)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_3

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjn:[I

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    :goto_a
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjn:[I

    array-length v3, v3

    if-lt v1, v3, :cond_c

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjn:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto/16 :goto_4

    :cond_c
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjn:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/zzsn;->zzmx(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_d
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjo:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzC(II)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_5

    :cond_e
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzjp:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzC(II)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_6
.end method
