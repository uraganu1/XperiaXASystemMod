.class public final Lcom/google/common/primitives/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Longs$LongConverter;,
        Lcom/google/common/primitives/Longs$LexicographicalComparator;,
        Lcom/google/common/primitives/Longs$LongArrayAsList;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x8

.field public static final MAX_POWER_OF_TWO:J = 0x4000000000000000L


# direct methods
.method static synthetic -wrap0([JJII)I
    .locals 1
    .param p0, "array"    # [J
    .param p1, "target"    # J
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->indexOf([JJII)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1([JJII)I
    .locals 1
    .param p0, "array"    # [J
    .param p1, "target"    # J
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I

    move-result v0

    return v0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs asList([J)Ljava/util/List;
    .locals 1
    .param p0, "backingArray"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    array-length v0, p0

    if-nez v0, :cond_0

    .line 544
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 546
    :cond_0
    new-instance v0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;-><init>([J)V

    return-object v0
.end method

.method public static compare(JJ)I
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 94
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs concat([[J)[J
    .locals 8
    .param p0, "arrays"    # [[J

    .prologue
    const/4 v5, 0x0

    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, "length":I
    array-length v6, p0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, p0, v4

    .line 243
    .local v0, "array":[J
    array-length v7, v0

    add-int/2addr v1, v7

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 245
    .end local v0    # "array":[J
    :cond_0
    new-array v3, v1, [J

    .line 246
    .local v3, "result":[J
    const/4 v2, 0x0

    .line 247
    .local v2, "pos":I
    array-length v6, p0

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v0, p0, v4

    .line 248
    .restart local v0    # "array":[J
    array-length v7, v0

    invoke-static {v0, v5, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    array-length v7, v0

    add-int/2addr v2, v7

    .line 247
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 251
    .end local v0    # "array":[J
    :cond_1
    return-object v3
.end method

.method public static contains([JJ)Z
    .locals 7
    .param p0, "array"    # [J
    .param p1, "target"    # J

    .prologue
    const/4 v3, 0x0

    .line 107
    array-length v4, p0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-wide v0, p0, v2

    .line 108
    .local v0, "value":J
    cmp-long v5, v0, p1

    if-nez v5, :cond_0

    .line 109
    const/4 v2, 0x1

    return v2

    .line 107
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "value":J
    :cond_1
    return v3
.end method

.method private static copyOf([JI)[J
    .locals 3
    .param p0, "original"    # [J
    .param p1, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 433
    new-array v0, p1, [J

    .line 434
    .local v0, "copy":[J
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    return-object v0
.end method

.method public static ensureCapacity([JII)[J
    .locals 6
    .param p0, "array"    # [J
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 424
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string/jumbo v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 425
    if-ltz p2, :cond_2

    move v0, v1

    :goto_1
    const-string/jumbo v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 426
    array-length v0, p0

    if-ge v0, p1, :cond_0

    .line 427
    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Longs;->copyOf([JI)[J

    move-result-object p0

    .line 426
    .end local p0    # "array":[J
    :cond_0
    return-object p0

    .restart local p0    # "array":[J
    :cond_1
    move v0, v2

    .line 424
    goto :goto_0

    :cond_2
    move v0, v2

    .line 425
    goto :goto_1
.end method

.method public static fromByteArray([B)J
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 290
    array-length v0, p0

    if-lt v0, v7, :cond_0

    move v0, v1

    .line 291
    :goto_0
    const-string/jumbo v3, "array too small: %s < %s"

    .line 290
    new-array v4, v6, [Ljava/lang/Object;

    .line 291
    array-length v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 290
    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 292
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    aget-byte v2, p0, v6

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    .line 293
    const/4 v4, 0x4

    aget-byte v4, p0, v4

    const/4 v5, 0x5

    aget-byte v5, p0, v5

    const/4 v6, 0x6

    aget-byte v6, p0, v6

    const/4 v7, 0x7

    aget-byte v7, p0, v7

    .line 292
    invoke-static/range {v0 .. v7}, Lcom/google/common/primitives/Longs;->fromBytes(BBBBBBBB)J

    move-result-wide v0

    return-wide v0

    :cond_0
    move v0, v2

    .line 290
    goto :goto_0
.end method

.method public static fromBytes(BBBBBBBB)J
    .locals 8
    .param p0, "b1"    # B
    .param p1, "b2"    # B
    .param p2, "b3"    # B
    .param p3, "b4"    # B
    .param p4, "b5"    # B
    .param p5, "b6"    # B
    .param p6, "b7"    # B
    .param p7, "b8"    # B

    .prologue
    const-wide/16 v6, 0xff

    .line 305
    int-to-long v0, p0

    and-long/2addr v0, v6

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    .line 306
    int-to-long v2, p1

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    .line 305
    or-long/2addr v0, v2

    .line 307
    int-to-long v2, p2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    .line 305
    or-long/2addr v0, v2

    .line 308
    int-to-long v2, p3

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    .line 305
    or-long/2addr v0, v2

    .line 309
    int-to-long v2, p4

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    .line 305
    or-long/2addr v0, v2

    .line 310
    int-to-long v2, p5

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    .line 305
    or-long/2addr v0, v2

    .line 311
    int-to-long v2, p6

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    .line 305
    or-long/2addr v0, v2

    .line 312
    int-to-long v2, p7

    and-long/2addr v2, v6

    .line 305
    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static hashCode(J)I
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 78
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static indexOf([JJ)I
    .locals 3
    .param p0, "array"    # [J
    .param p1, "target"    # J

    .prologue
    .line 125
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/common/primitives/Longs;->indexOf([JJII)I

    move-result v0

    return v0
.end method

.method private static indexOf([JJII)I
    .locals 5
    .param p0, "array"    # [J
    .param p1, "target"    # J
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 131
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 132
    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 133
    return v0

    .line 131
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static indexOf([J[J)I
    .locals 6
    .param p0, "array"    # [J
    .param p1, "target"    # [J

    .prologue
    const/4 v3, 0x0

    .line 151
    const-string/jumbo v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string/jumbo v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    array-length v2, p1

    if-nez v2, :cond_0

    .line 154
    return v3

    .line 158
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    .line 159
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 160
    add-int v2, v0, v1

    aget-wide v2, p0, v2

    aget-wide v4, p1, v1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 164
    :cond_2
    return v0

    .line 166
    .end local v1    # "j":I
    :cond_3
    const/4 v2, -0x1

    return v2
.end method

.method public static varargs join(Ljava/lang/String;[J)Ljava/lang/String;
    .locals 6
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [J

    .prologue
    const/4 v3, 0x0

    .line 448
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    array-length v2, p1

    if-nez v2, :cond_0

    .line 450
    const-string/jumbo v2, ""

    return-object v2

    .line 454
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0xa

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 455
    .local v0, "builder":Ljava/lang/StringBuilder;
    aget-wide v2, p1, v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 456
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 457
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v4, p1, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static lastIndexOf([JJ)I
    .locals 3
    .param p0, "array"    # [J
    .param p1, "target"    # J

    .prologue
    .line 179
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([JJII)I
    .locals 5
    .param p0, "array"    # [J
    .param p1, "target"    # J
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 185
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_1

    .line 186
    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 187
    return v0

    .line 185
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 190
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[J>;"
        }
    .end annotation

    .prologue
    .line 479
    sget-object v0, Lcom/google/common/primitives/Longs$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Longs$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([J)J
    .locals 6
    .param p0, "array"    # [J

    .prologue
    const/4 v4, 0x0

    .line 221
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 222
    aget-wide v2, p0, v4

    .line 223
    .local v2, "max":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 224
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 225
    aget-wide v2, p0, v0

    .line 223
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v2    # "max":J
    :cond_1
    move v1, v4

    .line 221
    goto :goto_0

    .line 228
    .restart local v0    # "i":I
    .restart local v2    # "max":J
    :cond_2
    return-wide v2
.end method

.method public static varargs min([J)J
    .locals 6
    .param p0, "array"    # [J

    .prologue
    const/4 v4, 0x0

    .line 202
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 203
    aget-wide v2, p0, v4

    .line 204
    .local v2, "min":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 205
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    .line 206
    aget-wide v2, p0, v0

    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v2    # "min":J
    :cond_1
    move v1, v4

    .line 202
    goto :goto_0

    .line 209
    .restart local v0    # "i":I
    .restart local v2    # "min":J
    :cond_2
    return-wide v2
.end method

.method public static stringConverter()Lcom/google/common/base/Converter;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    sget-object v0, Lcom/google/common/primitives/Longs$LongConverter;->INSTANCE:Lcom/google/common/primitives/Longs$LongConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 514
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    if-eqz v4, :cond_0

    .line 515
    check-cast p0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->toLongArray()[J

    move-result-object v4

    return-object v4

    .line 518
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 519
    .local v1, "boxedArray":[Ljava/lang/Object;
    array-length v3, v1

    .line 520
    .local v3, "len":I
    new-array v0, v3, [J

    .line 521
    .local v0, "array":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 523
    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 521
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 525
    :cond_1
    return-object v0
.end method

.method public static toByteArray(J)[B
    .locals 6
    .param p0, "value"    # J

    .prologue
    const/16 v4, 0x8

    .line 268
    new-array v1, v4, [B

    .line 269
    .local v1, "result":[B
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 270
    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 271
    shr-long/2addr p0, v4

    .line 269
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 273
    :cond_0
    return-object v1
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Long;
    .locals 12
    .param p0, "string"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    const-wide/high16 v10, -0x8000000000000000L

    const/16 v9, 0x9

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 337
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 338
    return-object v8

    .line 340
    :cond_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_1

    const/4 v5, 0x1

    .line 341
    .local v5, "negative":Z
    :goto_0
    if-eqz v5, :cond_2

    const/4 v3, 0x1

    .line 342
    .local v3, "index":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v3, v6, :cond_3

    .line 343
    return-object v8

    .line 340
    .end local v3    # "index":I
    .end local v5    # "negative":Z
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "negative":Z
    goto :goto_0

    .line 341
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "index":I
    goto :goto_1

    .line 345
    :cond_3
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v2, v6, -0x30

    .line 346
    .local v2, "digit":I
    if-ltz v2, :cond_4

    if-le v2, v9, :cond_5

    .line 347
    :cond_4
    return-object v8

    .line 349
    :cond_5
    neg-int v6, v2

    int-to-long v0, v6

    .local v0, "accum":J
    move v3, v4

    .line 350
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_9

    .line 351
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v2, v6, -0x30

    .line 352
    if-ltz v2, :cond_6

    if-le v2, v9, :cond_7

    .line 353
    :cond_6
    return-object v8

    .line 352
    :cond_7
    const-wide v6, -0xcccccccccccccccL

    cmp-long v6, v0, v6

    if-ltz v6, :cond_6

    .line 355
    const-wide/16 v6, 0xa

    mul-long/2addr v0, v6

    .line 356
    int-to-long v6, v2

    add-long/2addr v6, v10

    cmp-long v6, v0, v6

    if-gez v6, :cond_8

    .line 357
    return-object v8

    .line 359
    :cond_8
    int-to-long v6, v2

    sub-long/2addr v0, v6

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_2

    .line 362
    :cond_9
    if-eqz v5, :cond_a

    .line 363
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    return-object v6

    .line 364
    :cond_a
    cmp-long v6, v0, v10

    if-nez v6, :cond_b

    .line 365
    return-object v8

    .line 367
    :cond_b
    neg-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    return-object v6
.end method
