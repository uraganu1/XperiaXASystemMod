.class final Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
.super Lcom/google/common/hash/AbstractCompositeHashFunction;
.source "Hashing.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatenatedHashFunction"
.end annotation


# instance fields
.field private final bits:I


# direct methods
.method varargs constructor <init>([Lcom/google/common/hash/HashFunction;)V
    .locals 5
    .param p1, "functions"    # [Lcom/google/common/hash/HashFunction;

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction;-><init>([Lcom/google/common/hash/HashFunction;)V

    .line 418
    const/4 v0, 0x0

    .line 419
    .local v0, "bitSum":I
    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p1, v2

    .line 420
    .local v1, "function":Lcom/google/common/hash/HashFunction;
    invoke-interface {v1}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v4

    add-int/2addr v0, v4

    .line 419
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    .end local v1    # "function":Lcom/google/common/hash/HashFunction;
    :cond_0
    iput v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    .line 416
    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 443
    instance-of v2, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    if-eqz v2, :cond_4

    move-object v1, p1

    .line 444
    check-cast v1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    .line 445
    .local v1, "other":Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
    iget v2, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    iget v3, v1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v2, v2

    iget-object v3, v1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v3, v3

    if-eq v2, v3, :cond_1

    .line 446
    :cond_0
    return v4

    .line 448
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 449
    iget-object v2, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v2, v2, v0

    iget-object v3, v1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 450
    return v4

    .line 448
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 455
    .end local v0    # "i":I
    .end local v1    # "other":Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
    :cond_4
    return v4
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 460
    iget v1, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    .line 461
    .local v1, "hash":I
    iget-object v3, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 462
    .local v0, "function":Lcom/google/common/hash/HashFunction;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v1, v5

    .line 461
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 464
    .end local v0    # "function":Lcom/google/common/hash/HashFunction;
    :cond_0
    return v1
.end method

.method makeHash([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;
    .locals 7
    .param p1, "hashers"    # [Lcom/google/common/hash/Hasher;

    .prologue
    .line 427
    iget v4, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    div-int/lit8 v4, v4, 0x8

    new-array v0, v4, [B

    .line 428
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .line 429
    .local v2, "i":I
    const/4 v4, 0x0

    array-length v5, p1

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, p1, v4

    .line 430
    .local v1, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v1}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v3

    .line 431
    .local v3, "newHash":Lcom/google/common/hash/HashCode;
    invoke-virtual {v3}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    invoke-virtual {v3, v0, v2, v6}, Lcom/google/common/hash/HashCode;->writeBytesTo([BII)I

    move-result v6

    add-int/2addr v2, v6

    .line 429
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 433
    .end local v1    # "hasher":Lcom/google/common/hash/Hasher;
    .end local v3    # "newHash":Lcom/google/common/hash/HashCode;
    :cond_0
    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v4

    return-object v4
.end method
