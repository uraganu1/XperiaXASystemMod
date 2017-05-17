.class final Lcom/google/android/gms/internal/zzsw;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field final tag:I

.field final zzbuv:[B


# direct methods
.method constructor <init>(I[B)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzsw;->tag:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzsw;->zzbuv:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p0, :cond_1

    instance-of v2, p1, Lcom/google/android/gms/internal/zzsw;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/zzsw;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/google/android/gms/internal/zzsw;->tag:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsw;->tag:I

    if-eq v2, v3, :cond_3

    :goto_0
    move v0, v1

    :cond_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    return v0

    :cond_2
    return v1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsw;->zzbuv:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsw;->zzbuv:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/zzsw;->tag:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsw;->zzbuv:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method writeTo(Lcom/google/android/gms/internal/zzsn;)V
    .locals 1
    .param p1, "output"    # Lcom/google/android/gms/internal/zzsn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/zzsw;->tag:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsn;->zzmB(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsw;->zzbuv:[B

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsn;->zzH([B)V

    return-void
.end method

.method zzz()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/zzsw;->tag:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsn;->zzmC(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsw;->zzbuv:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method
