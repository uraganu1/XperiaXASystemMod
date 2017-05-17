.class public final Lcom/google/common/hash/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Hashing$Murmur3_32Holder;,
        Lcom/google/common/hash/Hashing$Murmur3_128Holder;,
        Lcom/google/common/hash/Hashing$SipHash24Holder;,
        Lcom/google/common/hash/Hashing$Md5Holder;,
        Lcom/google/common/hash/Hashing$Sha1Holder;,
        Lcom/google/common/hash/Hashing$Sha256Holder;,
        Lcom/google/common/hash/Hashing$Sha512Holder;,
        Lcom/google/common/hash/Hashing$Crc32Holder;,
        Lcom/google/common/hash/Hashing$Adler32Holder;,
        Lcom/google/common/hash/Hashing$ChecksumType;,
        Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;,
        Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;
    }
.end annotation


# static fields
.field private static final GOOD_FAST_HASH_SEED:I


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/google/common/hash/Hashing$ChecksumType;Ljava/lang/String;)Lcom/google/common/hash/HashFunction;
    .locals 1
    .param p0, "type"    # Lcom/google/common/hash/Hashing$ChecksumType;
    .param p1, "toString"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/google/common/hash/Hashing;->checksumHashFunction(Lcom/google/common/hash/Hashing$ChecksumType;Ljava/lang/String;)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adler32()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/google/common/hash/Hashing$Adler32Holder;->ADLER_32:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method static checkPositiveAndMakeMultipleOf32(I)I
    .locals 2
    .param p0, "bits"    # I

    .prologue
    const/4 v0, 0x0

    .line 407
    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string/jumbo v1, "Number of bits must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 408
    add-int/lit8 v0, p0, 0x1f

    and-int/lit8 v0, v0, -0x20

    return v0
.end method

.method private static checksumHashFunction(Lcom/google/common/hash/Hashing$ChecksumType;Ljava/lang/String;)Lcom/google/common/hash/HashFunction;
    .locals 2
    .param p0, "type"    # Lcom/google/common/hash/Hashing$ChecksumType;
    .param p1, "toString"    # Ljava/lang/String;

    .prologue
    .line 265
    new-instance v0, Lcom/google/common/hash/ChecksumHashFunction;

    invoke-static {p0}, Lcom/google/common/hash/Hashing$ChecksumType;->-get0(Lcom/google/common/hash/Hashing$ChecksumType;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/common/hash/ChecksumHashFunction;-><init>(Lcom/google/common/base/Supplier;ILjava/lang/String;)V

    return-object v0
.end method

.method public static combineOrdered(Ljava/lang/Iterable;)Lcom/google/common/hash/HashCode;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/hash/HashCode;",
            ">;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "hashCodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 364
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string/jumbo v8, "Must be at least 1 hash code to combine."

    invoke-static {v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 365
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/hash/HashCode;

    invoke-virtual {v7}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v0

    .line 366
    .local v0, "bits":I
    div-int/lit8 v7, v0, 0x8

    new-array v6, v7, [B

    .line 367
    .local v6, "resultBytes":[B
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "hashCode$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/hash/HashCode;

    .line 368
    .local v1, "hashCode":Lcom/google/common/hash/HashCode;
    invoke-virtual {v1}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v5

    .line 369
    .local v5, "nextBytes":[B
    array-length v7, v5

    array-length v8, v6

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    .line 370
    :goto_0
    const-string/jumbo v8, "All hashcodes must have the same bit length."

    .line 369
    invoke-static {v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 371
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v5

    if-ge v3, v7, :cond_0

    .line 372
    aget-byte v7, v6, v3

    mul-int/lit8 v7, v7, 0x25

    aget-byte v8, v5, v3

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    .line 371
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 369
    .end local v3    # "i":I
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 375
    .end local v1    # "hashCode":Lcom/google/common/hash/HashCode;
    .end local v5    # "nextBytes":[B
    :cond_2
    invoke-static {v6}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v7

    return-object v7
.end method

.method public static combineUnordered(Ljava/lang/Iterable;)Lcom/google/common/hash/HashCode;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/hash/HashCode;",
            ">;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "hashCodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 390
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string/jumbo v7, "Must be at least 1 hash code to combine."

    invoke-static {v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 391
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/hash/HashCode;

    invoke-virtual {v6}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    new-array v5, v6, [B

    .line 392
    .local v5, "resultBytes":[B
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "hashCode$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/HashCode;

    .line 393
    .local v0, "hashCode":Lcom/google/common/hash/HashCode;
    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v4

    .line 394
    .local v4, "nextBytes":[B
    array-length v6, v4

    array-length v7, v5

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    .line 395
    :goto_0
    const-string/jumbo v7, "All hashcodes must have the same bit length."

    .line 394
    invoke-static {v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 396
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v4

    if-ge v2, v6, :cond_0

    .line 397
    aget-byte v6, v5, v2

    aget-byte v7, v4, v2

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 396
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 394
    .end local v2    # "i":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 400
    .end local v0    # "hashCode":Lcom/google/common/hash/HashCode;
    .end local v4    # "nextBytes":[B
    :cond_2
    invoke-static {v5}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v6

    return-object v6
.end method

.method public static consistentHash(JI)I
    .locals 8
    .param p0, "input"    # J
    .param p2, "buckets"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 336
    if-lez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "buckets must be positive: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v6, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 337
    new-instance v1, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;

    invoke-direct {v1, p0, p1}, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;-><init>(J)V

    .line 338
    .local v1, "generator":Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;
    const/4 v0, 0x0

    .line 343
    .local v0, "candidate":I
    :goto_1
    add-int/lit8 v3, v0, 0x1

    int-to-double v4, v3

    invoke-virtual {v1}, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;->nextDouble()D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-int v2, v4

    .line 344
    .local v2, "next":I
    if-ltz v2, :cond_1

    if-ge v2, p2, :cond_1

    .line 345
    move v0, v2

    .line 344
    goto :goto_1

    .end local v0    # "candidate":I
    .end local v1    # "generator":Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;
    .end local v2    # "next":I
    :cond_0
    move v3, v5

    .line 336
    goto :goto_0

    .line 347
    .restart local v0    # "candidate":I
    .restart local v1    # "generator":Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;
    .restart local v2    # "next":I
    :cond_1
    return v0
.end method

.method public static consistentHash(Lcom/google/common/hash/HashCode;I)I
    .locals 2
    .param p0, "hashCode"    # Lcom/google/common/hash/HashCode;
    .param p1, "buckets"    # I

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->padToLong()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/common/hash/Hashing;->consistentHash(JI)I

    move-result v0

    return v0
.end method

.method public static crc32()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lcom/google/common/hash/Hashing$Crc32Holder;->CRC_32:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static goodFastHash(I)Lcom/google/common/hash/HashFunction;
    .locals 7
    .param p0, "minimumBits"    # I

    .prologue
    .line 61
    invoke-static {p0}, Lcom/google/common/hash/Hashing;->checkPositiveAndMakeMultipleOf32(I)I

    move-result v0

    .line 63
    .local v0, "bits":I
    const/16 v5, 0x20

    if-ne v0, v5, :cond_0

    .line 64
    sget-object v5, Lcom/google/common/hash/Hashing$Murmur3_32Holder;->GOOD_FAST_HASH_FUNCTION_32:Lcom/google/common/hash/HashFunction;

    return-object v5

    .line 66
    :cond_0
    const/16 v5, 0x80

    if-gt v0, v5, :cond_1

    .line 67
    sget-object v5, Lcom/google/common/hash/Hashing$Murmur3_128Holder;->GOOD_FAST_HASH_FUNCTION_128:Lcom/google/common/hash/HashFunction;

    return-object v5

    .line 71
    :cond_1
    add-int/lit8 v5, v0, 0x7f

    div-int/lit16 v2, v5, 0x80

    .line 72
    .local v2, "hashFunctionsNeeded":I
    new-array v1, v2, [Lcom/google/common/hash/HashFunction;

    .line 73
    .local v1, "hashFunctions":[Lcom/google/common/hash/HashFunction;
    sget-object v5, Lcom/google/common/hash/Hashing$Murmur3_128Holder;->GOOD_FAST_HASH_FUNCTION_128:Lcom/google/common/hash/HashFunction;

    const/4 v6, 0x0

    aput-object v5, v1, v6

    .line 74
    sget v4, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    .line 75
    .local v4, "seed":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 76
    const v5, 0x596f0ddf

    add-int/2addr v4, v5

    .line 77
    invoke-static {v4}, Lcom/google/common/hash/Hashing;->murmur3_128(I)Lcom/google/common/hash/HashFunction;

    move-result-object v5

    aput-object v5, v1, v3

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    :cond_2
    new-instance v5, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    invoke-direct {v5, v1}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;)V

    return-object v5
.end method

.method public static md5()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/google/common/hash/Hashing$Md5Holder;->MD5:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_128()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/google/common/hash/Hashing$Murmur3_128Holder;->MURMUR3_128:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_128(I)Lcom/google/common/hash/HashFunction;
    .locals 1
    .param p0, "seed"    # I

    .prologue
    .line 128
    new-instance v0, Lcom/google/common/hash/Murmur3_128HashFunction;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_128HashFunction;-><init>(I)V

    return-object v0
.end method

.method public static murmur3_32()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/google/common/hash/Hashing$Murmur3_32Holder;->MURMUR3_32:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_32(I)Lcom/google/common/hash/HashFunction;
    .locals 1
    .param p0, "seed"    # I

    .prologue
    .line 97
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(I)V

    return-object v0
.end method

.method public static padToLong(Lcom/google/common/hash/HashCode;)J
    .locals 2
    .param p0, "hashCode"    # Lcom/google/common/hash/HashCode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->padToLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static sha1()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/google/common/hash/Hashing$Sha1Holder;->SHA_1:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha256()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/google/common/hash/Hashing$Sha256Holder;->SHA_256:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha512()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/google/common/hash/Hashing$Sha512Holder;->SHA_512:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sipHash24()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/google/common/hash/Hashing$SipHash24Holder;->SIP_HASH_24:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sipHash24(JJ)Lcom/google/common/hash/HashFunction;
    .locals 8
    .param p0, "k0"    # J
    .param p2, "k1"    # J

    .prologue
    .line 174
    new-instance v1, Lcom/google/common/hash/SipHashFunction;

    const/4 v2, 0x2

    const/4 v3, 0x4

    move-wide v4, p0

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/common/hash/SipHashFunction;-><init>(IIJJ)V

    return-object v1
.end method
