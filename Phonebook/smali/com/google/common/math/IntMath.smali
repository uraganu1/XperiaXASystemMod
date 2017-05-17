.class public final Lcom/google/common/math/IntMath;
.super Ljava/lang/Object;
.source "IntMath.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field private static synthetic -java_math_RoundingModeSwitchesValues:[I = null

.field static final FLOOR_SQRT_MAX_INT:I = 0xb504
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:I = -0x4afb0ccd
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static biggestBinomials:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final factorials:[I

.field static final halfPowersOf10:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final maxLog10ForLeadingZeros:[B
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final powersOf10:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private static synthetic -getjava_math_RoundingModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/google/common/math/IntMath;->-java_math_RoundingModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/math/IntMath;->-java_math_RoundingModeSwitchesValues:[I

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
    sput-object v0, Lcom/google/common/math/IntMath;->-java_math_RoundingModeSwitchesValues:[I

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
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 169
    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    .line 172
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/common/math/IntMath;->powersOf10:[I

    .line 177
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    .line 176
    sput-object v0, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    .line 502
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    .line 550
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    .line 52
    return-void

    .line 169
    :array_0
    .array-data 1
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 172
    nop

    :array_1
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    .line 177
    :array_2
    .array-data 4
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0x7fffffff
    .end array-data

    .line 502
    :array_3
    .array-data 4
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
    .end array-data

    .line 550
    :array_4
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x10000
        0x929
        0x1dd
        0xc1
        0x6e
        0x4b
        0x3a
        0x31
        0x2b
        0x27
        0x25
        0x23
        0x22
        0x22
        0x21
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)I
    .locals 9
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 525
    const-string/jumbo v1, "n"

    invoke-static {v1, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 526
    const-string/jumbo v1, "k"

    invoke-static {v1, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 527
    if-gt p1, p0, :cond_2

    move v1, v4

    :goto_0
    const-string/jumbo v6, "k (%s) > n (%s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v1, v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 528
    shr-int/lit8 v1, p0, 0x1

    if-le p1, v1, :cond_0

    .line 529
    sub-int p1, p0, p1

    .line 531
    :cond_0
    sget-object v1, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    array-length v1, v1

    if-ge p1, v1, :cond_1

    sget-object v1, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    aget v1, v1, p1

    if-le p0, v1, :cond_3

    .line 532
    :cond_1
    const v1, 0x7fffffff

    return v1

    :cond_2
    move v1, v5

    .line 527
    goto :goto_0

    .line 534
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 540
    const-wide/16 v2, 0x1

    .line 541
    .local v2, "result":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_4

    .line 542
    sub-int v1, p0, v0

    int-to-long v4, v1

    mul-long/2addr v2, v4

    .line 543
    add-int/lit8 v1, v0, 0x1

    int-to-long v4, v1

    div-long/2addr v2, v4

    .line 541
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 536
    .end local v0    # "i":I
    .end local v2    # "result":J
    :pswitch_0
    return v4

    .line 538
    :pswitch_1
    return p0

    .line 545
    .restart local v0    # "i":I
    .restart local v2    # "result":J
    :cond_4
    long-to-int v1, v2

    return v1

    .line 534
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static checkedAdd(II)I
    .locals 6
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 415
    int-to-long v2, p0

    int-to-long v4, p1

    add-long v0, v2, v4

    .line 416
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 417
    long-to-int v2, v0

    return v2

    .line 416
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkedMultiply(II)I
    .locals 6
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 437
    int-to-long v2, p0

    int-to-long v4, p1

    mul-long v0, v2, v4

    .line 438
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 439
    long-to-int v2, v0

    return v2

    .line 438
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkedPow(II)I
    .locals 5
    .param p0, "b"    # I
    .param p1, "k"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 451
    const-string/jumbo v4, "exponent"

    invoke-static {v4, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 452
    packed-switch p0, :pswitch_data_0

    .line 468
    const/4 v0, 0x1

    .line 470
    .local v0, "accum":I
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 476
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_1

    .line 477
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v0

    .line 479
    :cond_1
    shr-int/lit8 p1, p1, 0x1

    .line 480
    if-lez p1, :cond_0

    .line 481
    const v3, -0xb504

    if-gt v3, p0, :cond_7

    move v4, v1

    :goto_1
    const v3, 0xb504

    if-gt p0, v3, :cond_8

    move v3, v1

    :goto_2
    and-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 482
    mul-int/2addr p0, p0

    goto :goto_0

    .line 454
    .end local v0    # "accum":I
    :pswitch_0
    if-nez p1, :cond_2

    :goto_3
    return v1

    :cond_2
    move v1, v2

    goto :goto_3

    .line 456
    :pswitch_1
    return v1

    .line 458
    :pswitch_2
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_3

    :goto_4
    return v1

    :cond_3
    move v1, v3

    goto :goto_4

    .line 460
    :pswitch_3
    const/16 v3, 0x1f

    if-ge p1, v3, :cond_4

    move v2, v1

    :cond_4
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 461
    shl-int/2addr v1, p1

    return v1

    .line 463
    :pswitch_4
    const/16 v4, 0x20

    if-ge p1, v4, :cond_5

    move v2, v1

    :cond_5
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 464
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_6

    shl-int/2addr v1, p1

    :goto_5
    return v1

    :cond_6
    shl-int v1, v3, p1

    goto :goto_5

    .line 472
    .restart local v0    # "accum":I
    :pswitch_5
    return v0

    .line 474
    :pswitch_6
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v1

    return v1

    :cond_7
    move v4, v2

    .line 481
    goto :goto_1

    :cond_8
    move v3, v2

    goto :goto_2

    .line 452
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 470
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static checkedSubtract(II)I
    .locals 6
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 426
    int-to-long v2, p0

    int-to-long v4, p1

    sub-long v0, v2, v4

    .line 427
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 428
    long-to-int v2, v0

    return v2

    .line 427
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static divide(IILjava/math/RoundingMode;)I
    .locals 10
    .param p0, "p"    # I
    .param p1, "q"    # I
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 279
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    if-nez p1, :cond_0

    .line 281
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string/jumbo v7, "/ by zero"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 283
    :cond_0
    div-int v2, p0, p1

    .line 284
    .local v2, "div":I
    mul-int v8, p1, v2

    sub-int v4, p0, v8

    .line 286
    .local v4, "rem":I
    if-nez v4, :cond_1

    .line 287
    return v2

    .line 297
    :cond_1
    xor-int v8, p0, p1

    shr-int/lit8 v8, v8, 0x1f

    or-int/lit8 v5, v8, 0x1

    .line 299
    .local v5, "signum":I
    invoke-static {}, Lcom/google/common/math/IntMath;->-getjava_math_RoundingModeSwitchesValues()[I

    move-result-object v8

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 329
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 301
    :pswitch_0
    if-nez v4, :cond_3

    :goto_0
    invoke-static {v6}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 304
    :pswitch_1
    const/4 v3, 0x0

    .line 331
    :goto_1
    if-eqz v3, :cond_2

    add-int/2addr v2, v5

    .end local v2    # "div":I
    :cond_2
    return v2

    .restart local v2    # "div":I
    :cond_3
    move v6, v7

    .line 301
    goto :goto_0

    .line 307
    :pswitch_2
    const/4 v3, 0x1

    .line 308
    .local v3, "increment":Z
    goto :goto_1

    .line 310
    .end local v3    # "increment":Z
    :pswitch_3
    if-lez v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "increment":Z
    goto :goto_1

    .end local v3    # "increment":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "increment":Z
    goto :goto_1

    .line 313
    .end local v3    # "increment":Z
    :pswitch_4
    if-gez v5, :cond_5

    const/4 v3, 0x1

    .restart local v3    # "increment":Z
    goto :goto_1

    .end local v3    # "increment":Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "increment":Z
    goto :goto_1

    .line 318
    .end local v3    # "increment":Z
    :pswitch_5
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 319
    .local v0, "absRem":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int/2addr v8, v0

    sub-int v1, v0, v8

    .line 322
    .local v1, "cmpRemToHalfDivisor":I
    if-nez v1, :cond_9

    .line 323
    sget-object v8, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, v8, :cond_6

    sget-object v8, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, v8, :cond_7

    move v8, v6

    :goto_2
    and-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_8

    :goto_3
    and-int v3, v8, v6

    .local v3, "increment":Z
    goto :goto_1

    .end local v3    # "increment":Z
    :cond_6
    const/4 v3, 0x1

    .local v3, "increment":Z
    goto :goto_1

    .end local v3    # "increment":Z
    :cond_7
    move v8, v7

    goto :goto_2

    :cond_8
    move v6, v7

    goto :goto_3

    .line 325
    :cond_9
    if-lez v1, :cond_a

    const/4 v3, 0x1

    .restart local v3    # "increment":Z
    goto :goto_1

    .end local v3    # "increment":Z
    :cond_a
    const/4 v3, 0x0

    .restart local v3    # "increment":Z
    goto :goto_1

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static factorial(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 498
    const-string/jumbo v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 499
    sget-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    aget v0, v0, p0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public static gcd(II)I
    .locals 5
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 370
    const-string/jumbo v4, "a"

    invoke-static {v4, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 371
    const-string/jumbo v4, "b"

    invoke-static {v4, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 372
    if-nez p0, :cond_0

    .line 375
    return p1

    .line 376
    :cond_0
    if-nez p1, :cond_1

    .line 377
    return p0

    .line 383
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 384
    .local v0, "aTwos":I
    shr-int/2addr p0, v0

    .line 385
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    .line 386
    .local v1, "bTwos":I
    shr-int/2addr p1, v1

    .line 387
    :goto_0
    if-eq p0, p1, :cond_2

    .line 395
    sub-int v2, p0, p1

    .line 397
    .local v2, "delta":I
    shr-int/lit8 v4, v2, 0x1f

    and-int v3, v2, v4

    .line 400
    .local v3, "minDeltaOrZero":I
    sub-int v4, v2, v3

    sub-int p0, v4, v3

    .line 403
    add-int/2addr p1, v3

    .line 404
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shr-int/2addr p0, v4

    goto :goto_0

    .line 406
    .end local v2    # "delta":I
    .end local v3    # "minDeltaOrZero":I
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    shl-int v4, p0, v4

    return v4
.end method

.method public static isPowerOfTwo(I)Z
    .locals 4
    .param p0, "x"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    if-lez p0, :cond_0

    move v2, v0

    :goto_0
    add-int/lit8 v3, p0, -0x1

    and-int/2addr v3, p0

    if-nez v3, :cond_1

    :goto_1
    and-int/2addr v0, v2

    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static lessThanBranchFree(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 75
    sub-int v0, p0, p1

    not-int v0, v0

    not-int v0, v0

    ushr-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static log10(ILjava/math/RoundingMode;)I
    .locals 4
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    .prologue
    .line 129
    const-string/jumbo v2, "x"

    invoke-static {v2, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 130
    invoke-static {p0}, Lcom/google/common/math/IntMath;->log10Floor(I)I

    move-result v1

    .line 131
    .local v1, "logFloor":I
    sget-object v2, Lcom/google/common/math/IntMath;->powersOf10:[I

    aget v0, v2, v1

    .line 132
    .local v0, "floorPow":I
    invoke-static {}, Lcom/google/common/math/IntMath;->-getjava_math_RoundingModeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 148
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 134
    :pswitch_0
    if-ne p0, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 138
    :pswitch_1
    return v1

    .line 134
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 141
    :pswitch_2
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v2

    add-int/2addr v2, v1

    return v2

    .line 146
    :pswitch_3
    sget-object v2, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    aget v2, v2, v1

    invoke-static {v2, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v2

    add-int/2addr v2, v1

    return v2

    .line 132
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

.method private static log10Floor(I)I
    .locals 3
    .param p0, "x"    # I

    .prologue
    .line 160
    sget-object v1, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    aget-byte v0, v1, v2

    .line 165
    .local v0, "y":I
    sget-object v1, Lcom/google/common/math/IntMath;->powersOf10:[I

    aget v1, v1, v0

    invoke-static {p0, v1}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v1

    sub-int v1, v0, v1

    return v1
.end method

.method public static log2(ILjava/math/RoundingMode;)I
    .locals 5
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;

    .prologue
    .line 88
    const-string/jumbo v3, "x"

    invoke-static {v3, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 89
    invoke-static {}, Lcom/google/common/math/IntMath;->-getjava_math_RoundingModeSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 112
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 91
    :pswitch_0
    invoke-static {p0}, Lcom/google/common/math/IntMath;->isPowerOfTwo(I)Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 95
    :pswitch_1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1f

    return v3

    .line 99
    :pswitch_2
    add-int/lit8 v3, p0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x20

    return v3

    .line 105
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    .line 106
    .local v1, "leadingZeros":I
    const v3, -0x4afb0ccd

    ushr-int v0, v3, v1

    .line 108
    .local v0, "cmp":I
    rsub-int/lit8 v2, v1, 0x1f

    .line 109
    .local v2, "logFloor":I
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v3

    add-int/2addr v3, v2

    return v3

    .line 89
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

.method public static mean(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 580
    and-int v0, p0, p1

    xor-int v1, p0, p1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public static mod(II)I
    .locals 4
    .param p0, "x"    # I
    .param p1, "m"    # I

    .prologue
    .line 351
    if-gtz p1, :cond_0

    .line 352
    new-instance v1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Modulus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must be > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    :cond_0
    rem-int v0, p0, p1

    .line 355
    .local v0, "result":I
    if-ltz v0, :cond_1

    .end local v0    # "result":I
    :goto_0
    return v0

    .restart local v0    # "result":I
    :cond_1
    add-int/2addr v0, p1

    goto :goto_0
.end method

.method public static pow(II)I
    .locals 5
    .param p0, "b"    # I
    .param p1, "k"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "failing tests"
    .end annotation

    .prologue
    const/16 v4, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    const-string/jumbo v3, "exponent"

    invoke-static {v3, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 191
    packed-switch p0, :pswitch_data_0

    .line 209
    const/4 v0, 0x1

    .line 210
    .local v0, "accum":I
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 216
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_5

    move v2, v1

    :goto_1
    mul-int/2addr v0, v2

    .line 217
    mul-int/2addr p0, p0

    .line 209
    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 193
    .end local v0    # "accum":I
    :pswitch_0
    if-nez p1, :cond_0

    :goto_2
    return v1

    :cond_0
    move v1, v2

    goto :goto_2

    .line 195
    :pswitch_1
    return v1

    .line 197
    :pswitch_2
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_1

    :goto_3
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_3

    .line 199
    :pswitch_3
    if-ge p1, v4, :cond_2

    shl-int v2, v1, p1

    :cond_2
    return v2

    .line 201
    :pswitch_4
    if-ge p1, v4, :cond_4

    .line 202
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_3

    shl-int/2addr v1, p1

    :goto_4
    return v1

    :cond_3
    shl-int/2addr v1, p1

    neg-int v1, v1

    goto :goto_4

    .line 204
    :cond_4
    return v2

    .line 212
    .restart local v0    # "accum":I
    :pswitch_5
    return v0

    .line 214
    :pswitch_6
    mul-int v1, p0, v0

    return v1

    :cond_5
    move v2, p0

    .line 216
    goto :goto_1

    .line 191
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 210
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static sqrt(ILjava/math/RoundingMode;)I
    .locals 4
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    .prologue
    .line 232
    const-string/jumbo v2, "x"

    invoke-static {v2, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 233
    invoke-static {p0}, Lcom/google/common/math/IntMath;->sqrtFloor(I)I

    move-result v1

    .line 234
    .local v1, "sqrtFloor":I
    invoke-static {}, Lcom/google/common/math/IntMath;->-getjava_math_RoundingModeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 260
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 236
    :pswitch_0
    mul-int v2, v1, v1

    if-ne v2, p0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 239
    :pswitch_1
    return v1

    .line 236
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 242
    :pswitch_2
    mul-int v2, v1, v1

    invoke-static {v2, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v2

    add-int/2addr v2, v1

    return v2

    .line 246
    :pswitch_3
    mul-int v2, v1, v1

    add-int v0, v2, v1

    .line 258
    .local v0, "halfSquare":I
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v2

    add-int/2addr v2, v1

    return v2

    .line 234
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

.method private static sqrtFloor(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 267
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
