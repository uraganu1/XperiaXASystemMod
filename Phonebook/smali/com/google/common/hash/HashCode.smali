.class public abstract Lcom/google/common/hash/HashCode;
.super Ljava/lang/Object;
.source "HashCode.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/HashCode$IntHashCode;,
        Lcom/google/common/hash/HashCode$LongHashCode;,
        Lcom/google/common/hash/HashCode$BytesHashCode;
    }
.end annotation


# static fields
.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 386
    const-string/jumbo v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/HashCode;->hexDigits:[C

    .line 39
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decode(C)I
    .locals 3
    .param p0, "ch"    # C

    .prologue
    .line 324
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 325
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 327
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 328
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 330
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal hexadecimal character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromBytes([B)Lcom/google/common/hash/HashCode;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    const/4 v0, 0x1

    .line 230
    array-length v1, p0

    if-lt v1, v0, :cond_0

    :goto_0
    const-string/jumbo v1, "A HashCode must contain at least 1 byte."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 231
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0

    .line 230
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 239
    new-instance v0, Lcom/google/common/hash/HashCode$BytesHashCode;

    invoke-direct {v0, p0}, Lcom/google/common/hash/HashCode$BytesHashCode;-><init>([B)V

    return-object v0
.end method

.method public static fromInt(I)Lcom/google/common/hash/HashCode;
    .locals 1
    .param p0, "hash"    # I

    .prologue
    .line 114
    new-instance v0, Lcom/google/common/hash/HashCode$IntHashCode;

    invoke-direct {v0, p0}, Lcom/google/common/hash/HashCode$IntHashCode;-><init>(I)V

    return-object v0
.end method

.method public static fromLong(J)Lcom/google/common/hash/HashCode;
    .locals 2
    .param p0, "hash"    # J

    .prologue
    .line 170
    new-instance v0, Lcom/google/common/hash/HashCode$LongHashCode;

    invoke-direct {v0, p0, p1}, Lcom/google/common/hash/HashCode$LongHashCode;-><init>(J)V

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/common/hash/HashCode;
    .locals 9
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 309
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v7, 0x2

    if-lt v4, v7, :cond_0

    move v4, v5

    .line 310
    :goto_0
    const-string/jumbo v7, "input string (%s) must have at least 2 characters"

    .line 309
    new-array v8, v5, [Ljava/lang/Object;

    .line 310
    aput-object p0, v8, v6

    .line 309
    invoke-static {v4, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 311
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    move v4, v5

    .line 312
    :goto_1
    const-string/jumbo v7, "input string (%s) must have an even number of characters"

    .line 311
    new-array v5, v5, [Ljava/lang/Object;

    .line 312
    aput-object p0, v5, v6

    .line 311
    invoke-static {v4, v7, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 314
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 315
    .local v0, "bytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 316
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/common/hash/HashCode;->decode(C)I

    move-result v4

    shl-int/lit8 v1, v4, 0x4

    .line 317
    .local v1, "ch1":I
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/common/hash/HashCode;->decode(C)I

    move-result v2

    .line 318
    .local v2, "ch2":I
    div-int/lit8 v4, v3, 0x2

    add-int v5, v1, v2

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 315
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .end local v0    # "bytes":[B
    .end local v1    # "ch1":I
    .end local v2    # "ch2":I
    .end local v3    # "i":I
    :cond_0
    move v4, v6

    .line 309
    goto :goto_0

    :cond_1
    move v4, v6

    .line 311
    goto :goto_1

    .line 320
    .restart local v0    # "bytes":[B
    .restart local v3    # "i":I
    :cond_2
    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public abstract asBytes()[B
.end method

.method public abstract asInt()I
.end method

.method public abstract asLong()J
.end method

.method public abstract bits()I
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 335
    instance-of v1, p1, Lcom/google/common/hash/HashCode;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 336
    check-cast v0, Lcom/google/common/hash/HashCode;

    .line 339
    .local v0, "that":Lcom/google/common/hash/HashCode;
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v1

    return v1

    .line 341
    .end local v0    # "that":Lcom/google/common/hash/HashCode;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method getBytesInternal()[B
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asInt()I

    move-result v3

    return v3

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v0

    .line 358
    .local v0, "bytes":[B
    const/4 v3, 0x0

    aget-byte v3, v0, v3

    and-int/lit16 v2, v3, 0xff

    .line 359
    .local v2, "val":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 360
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    :cond_1
    return v2
.end method

.method public abstract padToLong()J
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v1

    .line 379
    .local v1, "bytes":[B
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 380
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v0, v1, v3

    .line 381
    .local v0, "b":B
    sget-object v5, Lcom/google/common/hash/HashCode;->hexDigits:[C

    shr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/google/common/hash/HashCode;->hexDigits:[C

    and-int/lit8 v7, v0, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 383
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeBytesTo([BII)I
    .locals 3
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "maxLength"    # I

    .prologue
    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->min([I)I

    move-result p3

    .line 91
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/HashCode;->writeBytesToImpl([BII)V

    .line 93
    return p3
.end method

.method abstract writeBytesToImpl([BII)V
.end method
