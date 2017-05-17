.class public final Lcom/google/common/math/BigIntegerMath;
.super Ljava/lang/Object;
.source "BigIntegerMath.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field private static synthetic -java_math_RoundingModeSwitchesValues:[I = null

.field private static final LN_10:D

.field private static final LN_2:D

.field static final SQRT2_PRECOMPUTED_BITS:Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SQRT2_PRECOMPUTE_THRESHOLD:I = 0x100
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private static synthetic -getjava_math_RoundingModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/google/common/math/BigIntegerMath;->-java_math_RoundingModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/math/BigIntegerMath;->-java_math_RoundingModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/math/RoundingMode;->values()[Ljava/math/RoundingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Lcom/google/common/math/BigIntegerMath;->-java_math_RoundingModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 118
    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v1, "16a09e667f3bcc908b2fb1366ea957d3e3adec17512775099da2f590b0667322a"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 117
    sput-object v0, Lcom/google/common/math/BigIntegerMath;->SQRT2_PRECOMPUTED_BITS:Ljava/math/BigInteger;

    .line 195
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/BigIntegerMath;->LN_10:D

    .line 196
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/BigIntegerMath;->LN_2:D

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)Ljava/math/BigInteger;
    .locals 17
    .param p0, "n"    # I
    .param p1, "k"    # I

    .prologue
    .line 401
    const-string/jumbo v12, "n"

    move/from16 v0, p0

    invoke-static {v12, v0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 402
    const-string/jumbo v12, "k"

    move/from16 v0, p1

    invoke-static {v12, v0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 403
    move/from16 v0, p1

    move/from16 v1, p0

    if-gt v0, v1, :cond_1

    const/4 v12, 0x1

    :goto_0
    const-string/jumbo v13, "k (%s) > n (%s)"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    invoke-static {v12, v13, v14}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 404
    shr-int/lit8 v12, p0, 0x1

    move/from16 v0, p1

    if-le v0, v12, :cond_0

    .line 405
    sub-int p1, p0, p1

    .line 407
    :cond_0
    sget-object v12, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    array-length v12, v12

    move/from16 v0, p1

    if-ge v0, v12, :cond_2

    sget-object v12, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    aget v12, v12, p1

    move/from16 v0, p0

    if-gt v0, v12, :cond_2

    .line 408
    invoke-static/range {p0 .. p1}, Lcom/google/common/math/LongMath;->binomial(II)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    return-object v12

    .line 403
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 411
    :cond_2
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 413
    .local v2, "accum":Ljava/math/BigInteger;
    move/from16 v0, p0

    int-to-long v8, v0

    .line 414
    .local v8, "numeratorAccum":J
    const-wide/16 v4, 0x1

    .line 416
    .local v4, "denominatorAccum":J
    move/from16 v0, p0

    int-to-long v12, v0

    sget-object v14, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v12, v13, v14}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v3

    .line 418
    .local v3, "bits":I
    move v7, v3

    .line 420
    .local v7, "numeratorBits":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    move/from16 v0, p1

    if-ge v6, v0, :cond_4

    .line 421
    sub-int v10, p0, v6

    .line 422
    .local v10, "p":I
    add-int/lit8 v11, v6, 0x1

    .line 426
    .local v11, "q":I
    add-int v12, v7, v3

    const/16 v13, 0x3f

    if-lt v12, v13, :cond_3

    .line 430
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    .line 429
    invoke-virtual {v2, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 431
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    .line 429
    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 432
    int-to-long v8, v10

    .line 433
    int-to-long v4, v11

    .line 434
    move v7, v3

    .line 420
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 437
    :cond_3
    int-to-long v12, v10

    mul-long/2addr v8, v12

    .line 438
    int-to-long v12, v11

    mul-long/2addr v4, v12

    .line 439
    add-int/2addr v7, v3

    goto :goto_2

    .line 443
    .end local v10    # "p":I
    .end local v11    # "q":I
    :cond_4
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    .line 442
    invoke-virtual {v2, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 444
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    .line 442
    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    return-object v12
.end method

.method public static divide(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/RoundingMode;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 299
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 300
    .local v0, "pDec":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 301
    .local v1, "qDec":Ljava/math/BigDecimal;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object v2

    return-object v2
.end method

.method public static factorial(I)Ljava/math/BigInteger;
    .locals 24
    .param p0, "n"    # I

    .prologue
    .line 317
    const-string/jumbo v19, "n"

    move-object/from16 v0, v19

    move/from16 v1, p0

    invoke-static {v0, v1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 320
    sget-object v19, Lcom/google/common/math/LongMath;->factorials:[J

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, p0

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 321
    sget-object v19, Lcom/google/common/math/LongMath;->factorials:[J

    aget-wide v20, v19, p0

    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v19

    return-object v19

    .line 325
    :cond_0
    sget-object v19, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    move/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/common/math/IntMath;->log2(ILjava/math/RoundingMode;)I

    move-result v19

    mul-int v19, v19, p0

    sget-object v20, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    const/16 v21, 0x40

    move/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result v4

    .line 326
    .local v4, "approxSize":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 329
    .local v5, "bignums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/math/BigInteger;>;"
    sget-object v19, Lcom/google/common/math/LongMath;->factorials:[J

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v17, v0

    .line 330
    .local v17, "startingNumber":I
    sget-object v19, Lcom/google/common/math/LongMath;->factorials:[J

    add-int/lit8 v20, v17, -0x1

    aget-wide v14, v19, v20

    .line 332
    .local v14, "product":J
    invoke-static {v14, v15}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v16

    .line 333
    .local v16, "shift":I
    shr-long v14, v14, v16

    .line 336
    sget-object v19, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-object/from16 v0, v19

    invoke-static {v14, v15, v0}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v19

    add-int/lit8 v9, v19, 0x1

    .line 337
    .local v9, "productBits":I
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sget-object v19, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v19

    add-int/lit8 v6, v19, 0x1

    .line 339
    .local v6, "bits":I
    add-int/lit8 v19, v6, -0x1

    const/16 v20, 0x1

    shl-int v7, v20, v19

    .line 342
    .local v7, "nextPowerOfTwo":I
    move/from16 v0, v17

    int-to-long v12, v0

    .local v12, "num":J
    :goto_0
    move/from16 v0, p0

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v19, v12, v20

    if-gtz v19, :cond_3

    .line 344
    int-to-long v0, v7

    move-wide/from16 v20, v0

    and-long v20, v20, v12

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-eqz v19, :cond_1

    .line 345
    shl-int/lit8 v7, v7, 0x1

    .line 346
    add-int/lit8 v6, v6, 0x1

    .line 349
    :cond_1
    invoke-static {v12, v13}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v18

    .line 350
    .local v18, "tz":I
    shr-long v10, v12, v18

    .line 351
    .local v10, "normalizedNum":J
    add-int v16, v16, v18

    .line 353
    sub-int v8, v6, v18

    .line 355
    .local v8, "normalizedBits":I
    add-int v19, v8, v9

    const/16 v20, 0x40

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 356
    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    const-wide/16 v14, 0x1

    .line 358
    const/4 v9, 0x0

    .line 360
    :cond_2
    mul-long/2addr v14, v10

    .line 361
    sget-object v19, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-object/from16 v0, v19

    invoke-static {v14, v15, v0}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v19

    add-int/lit8 v9, v19, 0x1

    .line 342
    const-wide/16 v20, 0x1

    add-long v12, v12, v20

    goto :goto_0

    .line 364
    .end local v8    # "normalizedBits":I
    .end local v10    # "normalizedNum":J
    .end local v18    # "tz":I
    :cond_3
    const-wide/16 v20, 0x1

    cmp-long v19, v14, v20

    if-lez v19, :cond_4

    .line 365
    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_4
    invoke-static {v5}, Lcom/google/common/math/BigIntegerMath;->listProduct(Ljava/util/List;)Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v19

    return-object v19
.end method

.method static fitsInLong(Ljava/math/BigInteger;)Z
    .locals 2
    .param p0, "x"    # Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 450
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPowerOfTwo(Ljava/math/BigInteger;)Z
    .locals 3
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static listProduct(Ljava/util/List;)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/math/BigInteger;",
            ">;)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "nums":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/common/math/BigIntegerMath;->listProduct(Ljava/util/List;II)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method static listProduct(Ljava/util/List;II)Ljava/math/BigInteger;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/math/BigInteger;",
            ">;II)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "nums":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    sub-int v1, p2, p1

    packed-switch v1, :pswitch_data_0

    .line 387
    add-int v1, p2, p1

    ushr-int/lit8 v0, v1, 0x1

    .line 388
    .local v0, "m":I
    invoke-static {p0, p1, v0}, Lcom/google/common/math/BigIntegerMath;->listProduct(Ljava/util/List;II)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {p0, v0, p2}, Lcom/google/common/math/BigIntegerMath;->listProduct(Ljava/util/List;II)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 378
    .end local v0    # "m":I
    :pswitch_0
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object v1

    .line 380
    :pswitch_1
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    return-object v1

    .line 382
    :pswitch_2
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 384
    :pswitch_3
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v1, p1, 0x2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 376
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static log10(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I
    .locals 14
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 130
    const-string/jumbo v10, "x"

    invoke-static {v10, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 131
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->fitsInLong(Ljava/math/BigInteger;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 132
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11, p1}, Lcom/google/common/math/LongMath;->log10(JLjava/math/RoundingMode;)I

    move-result v10

    return v10

    .line 135
    :cond_0
    sget-object v10, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {p0, v10}, Lcom/google/common/math/BigIntegerMath;->log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I

    move-result v10

    int-to-double v10, v10

    sget-wide v12, Lcom/google/common/math/BigIntegerMath;->LN_2:D

    mul-double/2addr v10, v12

    sget-wide v12, Lcom/google/common/math/BigIntegerMath;->LN_10:D

    div-double/2addr v10, v12

    double-to-int v1, v10

    .line 136
    .local v1, "approxLog10":I
    sget-object v10, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v10, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 137
    .local v2, "approxPow":Ljava/math/BigInteger;
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    .line 144
    .local v0, "approxCmp":I
    if-lez v0, :cond_3

    .line 151
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 152
    sget-object v10, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 153
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    .line 154
    if-gtz v0, :cond_1

    .line 167
    :cond_2
    move v4, v1

    .line 168
    .local v4, "floorLog":I
    move-object v5, v2

    .line 169
    .local v5, "floorPow":Ljava/math/BigInteger;
    move v3, v0

    .line 171
    .local v3, "floorCmp":I
    invoke-static {}, Lcom/google/common/math/BigIntegerMath;->-getjava_math_RoundingModeSwitchesValues()[I

    move-result-object v10

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 191
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 156
    .end local v3    # "floorCmp":I
    .end local v4    # "floorLog":I
    .end local v5    # "floorPow":Ljava/math/BigInteger;
    :cond_3
    sget-object v10, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 157
    .local v8, "nextPow":Ljava/math/BigInteger;
    invoke-virtual {v8, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    .line 158
    .local v7, "nextCmp":I
    :goto_0
    if-gtz v7, :cond_2

    .line 159
    add-int/lit8 v1, v1, 0x1

    .line 160
    move-object v2, v8

    .line 161
    move v0, v7

    .line 162
    sget-object v10, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 163
    invoke-virtual {v8, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    goto :goto_0

    .line 173
    .end local v7    # "nextCmp":I
    .end local v8    # "nextPow":Ljava/math/BigInteger;
    .restart local v3    # "floorCmp":I
    .restart local v4    # "floorLog":I
    .restart local v5    # "floorPow":Ljava/math/BigInteger;
    :pswitch_0
    if-nez v3, :cond_4

    const/4 v10, 0x1

    :goto_1
    invoke-static {v10}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 177
    :pswitch_1
    return v4

    .line 173
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 181
    :pswitch_2
    invoke-virtual {v5, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .end local v4    # "floorLog":I
    :goto_2
    return v4

    .restart local v4    # "floorLog":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 187
    :pswitch_3
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v9

    .line 188
    .local v9, "x2":Ljava/math/BigInteger;
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v10

    sget-object v11, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 189
    .local v6, "halfPowerSquared":Ljava/math/BigInteger;
    invoke-virtual {v9, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-gtz v10, :cond_6

    .end local v4    # "floorLog":I
    :goto_3
    return v4

    .restart local v4    # "floorLog":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I
    .locals 7
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "mode"    # Ljava/math/RoundingMode;

    .prologue
    const/4 v6, 0x2

    .line 70
    const-string/jumbo v5, "x"

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/math/BigInteger;

    invoke-static {v5, v4}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 71
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 72
    .local v1, "logFloor":I
    invoke-static {}, Lcom/google/common/math/BigIntegerMath;->-getjava_math_RoundingModeSwitchesValues()[I

    move-result-object v4

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 106
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 74
    :pswitch_0
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->isPowerOfTwo(Ljava/math/BigInteger;)Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 77
    :pswitch_1
    return v1

    .line 81
    :pswitch_2
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->isPowerOfTwo(Ljava/math/BigInteger;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v1    # "logFloor":I
    :goto_0
    return v1

    .restart local v1    # "logFloor":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :pswitch_3
    const/16 v4, 0x100

    if-ge v1, v4, :cond_2

    .line 87
    sget-object v4, Lcom/google/common/math/BigIntegerMath;->SQRT2_PRECOMPUTED_BITS:Ljava/math/BigInteger;

    .line 88
    rsub-int v5, v1, 0x100

    .line 87
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 89
    .local v0, "halfPower":Ljava/math/BigInteger;
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gtz v4, :cond_1

    .line 90
    return v1

    .line 92
    :cond_1
    add-int/lit8 v4, v1, 0x1

    return v4

    .line 101
    .end local v0    # "halfPower":Ljava/math/BigInteger;
    :cond_2
    invoke-virtual {p0, v6}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 102
    .local v3, "x2":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 103
    .local v2, "logX2Floor":I
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    if-ge v2, v4, :cond_3

    .end local v1    # "logFloor":I
    :goto_1
    return v1

    .restart local v1    # "logFloor":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static sqrt(Ljava/math/BigInteger;Ljava/math/RoundingMode;)Ljava/math/BigInteger;
    .locals 7
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 208
    const-string/jumbo v4, "x"

    invoke-static {v4, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 209
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->fitsInLong(Ljava/math/BigInteger;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, p1}, Lcom/google/common/math/LongMath;->sqrt(JLjava/math/RoundingMode;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    return-object v4

    .line 212
    :cond_0
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->sqrtFloor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 213
    .local v1, "sqrtFloor":Ljava/math/BigInteger;
    invoke-static {}, Lcom/google/common/math/BigIntegerMath;->-getjava_math_RoundingModeSwitchesValues()[I

    move-result-object v4

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 237
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 215
    :pswitch_0
    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 218
    :pswitch_1
    return-object v1

    .line 221
    :pswitch_2
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    .line 223
    .local v2, "sqrtFloorInt":I
    mul-int v4, v2, v2

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 224
    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 225
    :goto_0
    if-eqz v3, :cond_2

    .end local v1    # "sqrtFloor":Ljava/math/BigInteger;
    :goto_1
    return-object v1

    .line 223
    .restart local v1    # "sqrtFloor":Ljava/math/BigInteger;
    :cond_1
    const/4 v3, 0x0

    .local v3, "sqrtFloorIsExact":Z
    goto :goto_0

    .line 225
    .end local v3    # "sqrtFloorIsExact":Z
    :cond_2
    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_1

    .line 229
    .end local v2    # "sqrtFloorInt":I
    :pswitch_3
    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 235
    .local v0, "halfSquare":Ljava/math/BigInteger;
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_3

    .end local v1    # "sqrtFloor":Ljava/math/BigInteger;
    :goto_2
    return-object v1

    .restart local v1    # "sqrtFloor":Ljava/math/BigInteger;
    :cond_3
    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_2

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static sqrtApproxWithDoubles(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "x"    # Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 287
    invoke-static {p0}, Lcom/google/common/math/DoubleUtils;->bigToDouble(Ljava/math/BigInteger;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {v0, v1, v2}, Lcom/google/common/math/DoubleMath;->roundToBigInteger(DLjava/math/RoundingMode;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static sqrtFloor(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 7
    .param p0, "x"    # Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 263
    sget-object v4, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {p0, v4}, Lcom/google/common/math/BigIntegerMath;->log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I

    move-result v0

    .line 264
    .local v0, "log2":I
    const/16 v4, 0x3ff

    if-ge v0, v4, :cond_0

    .line 265
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->sqrtApproxWithDoubles(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 274
    .local v2, "sqrt0":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 275
    .local v3, "sqrt1":Ljava/math/BigInteger;
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 276
    return-object v2

    .line 267
    .end local v2    # "sqrt0":Ljava/math/BigInteger;
    .end local v3    # "sqrt1":Ljava/math/BigInteger;
    :cond_0
    add-int/lit8 v4, v0, -0x34

    and-int/lit8 v1, v4, -0x2

    .line 272
    .local v1, "shift":I
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/math/BigIntegerMath;->sqrtApproxWithDoubles(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    shr-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    .restart local v2    # "sqrt0":Ljava/math/BigInteger;
    goto :goto_0

    .line 279
    .end local v1    # "shift":I
    .restart local v3    # "sqrt1":Ljava/math/BigInteger;
    :cond_1
    move-object v2, v3

    .line 280
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 281
    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 282
    return-object v2
.end method
