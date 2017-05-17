.class public final Lcom/google/common/math/DoubleMath;
.super Ljava/lang/Object;
.source "DoubleMath.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/DoubleMath$MeanAccumulator;
    }
.end annotation


# static fields
.field private static synthetic -java_math_RoundingModeSwitchesValues:[I = null

.field private static final LN_2:D

.field static final MAX_FACTORIAL:I = 0xaa
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MAX_INT_AS_DOUBLE:D = 2.147483647E9

.field private static final MAX_LONG_AS_DOUBLE_PLUS_ONE:D = 9.223372036854776E18

.field private static final MIN_INT_AS_DOUBLE:D = -2.147483648E9

.field private static final MIN_LONG_AS_DOUBLE:D = -9.223372036854776E18

.field static final everySixteenthFactorial:[D
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private static synthetic -getjava_math_RoundingModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/google/common/math/DoubleMath;->-java_math_RoundingModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/math/DoubleMath;->-java_math_RoundingModeSwitchesValues:[I

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
    sput-object v0, Lcom/google/common/math/DoubleMath;->-java_math_RoundingModeSwitchesValues:[I

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
    .line 220
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/DoubleMath;->LN_2:D

    .line 313
    const/16 v0, 0xb

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/DoubleMath;->everySixteenthFactorial:[D

    .line 51
    return-void

    .line 313
    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x42b3077775800000L    # 2.0922789888E13
        0x474956ad0aae33a4L    # 2.631308369336935E35
        0x4c9ee69a78d72cb6L    # 1.2413915592536073E61
        0x526fe478ee34844aL    # 1.2688693218588417E89
        0x589c619094edabffL    # 7.156945704626381E118
        0x5f13638dd7bd6347L    # 9.916779348709496E149
        0x65c7cac197cfe503L    # 1.974506857221074E182
        0x6cb1e5dfc140e1e5L    # 3.856204823625804E215
        0x73c8ce85fadb707eL    # 5.5502938327393044E249
        0x7b095d5f3d928edeL    # 4.7147236359920616E284
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static factorial(I)D
    .locals 6
    .param p0, "n"    # I

    .prologue
    .line 295
    const-string/jumbo v3, "n"

    invoke-static {v3, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 296
    const/16 v3, 0xaa

    if-le p0, v3, :cond_0

    .line 297
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v4

    .line 301
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 302
    .local v0, "accum":D
    and-int/lit8 v3, p0, -0x10

    add-int/lit8 v2, v3, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, p0, :cond_1

    .line 303
    int-to-double v4, v2

    mul-double/2addr v0, v4

    .line 302
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    :cond_1
    sget-object v3, Lcom/google/common/math/DoubleMath;->everySixteenthFactorial:[D

    shr-int/lit8 v4, p0, 0x4

    aget-wide v4, v3, v4

    mul-double/2addr v4, v0

    return-wide v4
.end method

.method public static fuzzyCompare(DDD)I
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "tolerance"    # D

    .prologue
    .line 375
    invoke-static/range {p0 .. p5}, Lcom/google/common/math/DoubleMath;->fuzzyEquals(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    const/4 v0, 0x0

    return v0

    .line 377
    :cond_0
    cmpg-double v0, p0, p2

    if-gez v0, :cond_1

    .line 378
    const/4 v0, -0x1

    return v0

    .line 379
    :cond_1
    cmpl-double v0, p0, p2

    if-lez v0, :cond_2

    .line 380
    const/4 v0, 0x1

    return v0

    .line 382
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result v0

    return v0
.end method

.method public static fuzzyEquals(DDD)Z
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "tolerance"    # D

    .prologue
    .line 352
    const-string/jumbo v0, "tolerance"

    invoke-static {v0, p4, p5}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;D)D

    .line 354
    sub-double v0, p0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/math/DoubleUtils;->copySign(DD)D

    move-result-wide v0

    cmpg-double v0, v0, p4

    if-lez v0, :cond_0

    .line 356
    cmpl-double v0, p0, p2

    if-nez v0, :cond_1

    .line 354
    :cond_0
    const/4 v0, 0x1

    .line 353
    :goto_0
    return v0

    .line 357
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMathematicalInteger(D)Z
    .locals 4
    .param p0, "x"    # D
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.Math.getExponent, com.google.common.math.DoubleUtils"
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 280
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    const-wide/16 v2, 0x0

    cmpl-double v2, p0, v2

    if-eqz v2, :cond_0

    .line 282
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x34

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getExponent(D)I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 282
    goto :goto_0

    :cond_2
    move v0, v1

    .line 280
    goto :goto_0
.end method

.method public static isPowerOfTwo(D)Z
    .locals 2
    .param p0, "x"    # D
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "com.google.common.math.DoubleUtils"
    .end annotation

    .prologue
    .line 198
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static log2(D)D
    .locals 4
    .param p0, "x"    # D

    .prologue
    .line 217
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/google/common/math/DoubleMath;->LN_2:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static log2(DLjava/math/RoundingMode;)I
    .locals 10
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.Math.getExponent, com.google.common.math.DoubleUtils"
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 234
    const-wide/16 v8, 0x0

    cmpl-double v4, p0, v8

    if-lez v4, :cond_0

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v4

    :goto_0
    const-string/jumbo v7, "x must be positive and finite"

    invoke-static {v4, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 235
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getExponent(D)I

    move-result v0

    .line 236
    .local v0, "exponent":I
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isNormal(D)Z

    move-result v4

    if-nez v4, :cond_1

    .line 237
    const-wide/high16 v4, 0x4330000000000000L    # 4.503599627370496E15

    mul-double/2addr v4, p0

    invoke-static {v4, v5, p2}, Lcom/google/common/math/DoubleMath;->log2(DLjava/math/RoundingMode;)I

    move-result v4

    add-int/lit8 v4, v4, -0x34

    return v4

    .end local v0    # "exponent":I
    :cond_0
    move v4, v5

    .line 234
    goto :goto_0

    .line 242
    .restart local v0    # "exponent":I
    :cond_1
    invoke-static {}, Lcom/google/common/math/DoubleMath;->-getjava_math_RoundingModeSwitchesValues()[I

    move-result-object v4

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    .line 267
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 244
    :pswitch_0
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 247
    :pswitch_1
    const/4 v1, 0x0

    .line 269
    :goto_1
    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .end local v0    # "exponent":I
    :cond_2
    return v0

    .line 250
    .restart local v0    # "exponent":I
    :pswitch_2
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    .local v1, "increment":Z
    goto :goto_1

    .end local v1    # "increment":Z
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "increment":Z
    goto :goto_1

    .line 253
    .end local v1    # "increment":Z
    :pswitch_3
    if-gez v0, :cond_4

    move v4, v6

    :goto_2
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_3
    and-int v1, v4, v5

    .line 254
    .local v1, "increment":Z
    goto :goto_1

    .end local v1    # "increment":Z
    :cond_4
    move v4, v5

    .line 253
    goto :goto_2

    :cond_5
    move v5, v6

    goto :goto_3

    .line 256
    :pswitch_4
    if-ltz v0, :cond_6

    move v4, v6

    :goto_4
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v7

    if-eqz v7, :cond_7

    :goto_5
    and-int v1, v4, v5

    .line 257
    .restart local v1    # "increment":Z
    goto :goto_1

    .end local v1    # "increment":Z
    :cond_6
    move v4, v5

    .line 256
    goto :goto_4

    :cond_7
    move v5, v6

    goto :goto_5

    .line 261
    :pswitch_5
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->scaleNormalize(D)D

    move-result-wide v2

    .line 264
    .local v2, "xScaled":D
    mul-double v4, v2, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_8

    const/4 v1, 0x1

    .local v1, "increment":Z
    goto :goto_1

    .end local v1    # "increment":Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "increment":Z
    goto :goto_1

    .line 242
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static mean(Ljava/lang/Iterable;)D
    .locals 6
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "MeanAccumulator"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 452
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Number;>;"
    new-instance v0, Lcom/google/common/math/DoubleMath$MeanAccumulator;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>(Lcom/google/common/math/DoubleMath$MeanAccumulator;)V

    .line 453
    .local v0, "accumulator":Lcom/google/common/math/DoubleMath$MeanAccumulator;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 454
    .local v1, "value":Ljava/lang/Number;
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->add(D)V

    goto :goto_0

    .line 456
    .end local v1    # "value":Ljava/lang/Number;
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean()D

    move-result-wide v4

    return-wide v4
.end method

.method public static mean(Ljava/util/Iterator;)D
    .locals 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "MeanAccumulator"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 466
    .local p0, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Number;>;"
    new-instance v0, Lcom/google/common/math/DoubleMath$MeanAccumulator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>(Lcom/google/common/math/DoubleMath$MeanAccumulator;)V

    .line 467
    .local v0, "accumulator":Lcom/google/common/math/DoubleMath$MeanAccumulator;
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->add(D)V

    goto :goto_0

    .line 470
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean()D

    move-result-wide v2

    return-wide v2
.end method

.method public static varargs mean([D)D
    .locals 6
    .param p0, "values"    # [D
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "MeanAccumulator"
    .end annotation

    .prologue
    .line 411
    new-instance v0, Lcom/google/common/math/DoubleMath$MeanAccumulator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>(Lcom/google/common/math/DoubleMath$MeanAccumulator;)V

    .line 412
    .local v0, "accumulator":Lcom/google/common/math/DoubleMath$MeanAccumulator;
    const/4 v1, 0x0

    array-length v4, p0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, p0, v1

    .line 413
    .local v2, "value":D
    invoke-virtual {v0, v2, v3}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->add(D)V

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    .end local v2    # "value":D
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean()D

    move-result-wide v4

    return-wide v4
.end method

.method public static varargs mean([I)D
    .locals 6
    .param p0, "values"    # [I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "MeanAccumulator"
    .end annotation

    .prologue
    .line 424
    new-instance v0, Lcom/google/common/math/DoubleMath$MeanAccumulator;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>(Lcom/google/common/math/DoubleMath$MeanAccumulator;)V

    .line 425
    .local v0, "accumulator":Lcom/google/common/math/DoubleMath$MeanAccumulator;
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p0, v2

    .line 426
    .local v1, "value":I
    int-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->add(D)V

    .line 425
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    .end local v1    # "value":I
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean()D

    move-result-wide v2

    return-wide v2
.end method

.method public static varargs mean([J)D
    .locals 8
    .param p0, "values"    # [J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "MeanAccumulator"
    .end annotation

    .prologue
    .line 438
    new-instance v0, Lcom/google/common/math/DoubleMath$MeanAccumulator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>(Lcom/google/common/math/DoubleMath$MeanAccumulator;)V

    .line 439
    .local v0, "accumulator":Lcom/google/common/math/DoubleMath$MeanAccumulator;
    const/4 v1, 0x0

    array-length v4, p0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, p0, v1

    .line 440
    .local v2, "value":J
    long-to-double v6, v2

    invoke-virtual {v0, v6, v7}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->add(D)V

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    .end local v2    # "value":J
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean()D

    move-result-wide v4

    return-wide v4
.end method

.method static roundIntermediate(DLjava/math/RoundingMode;)D
    .locals 10
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "#isMathematicalInteger, com.google.common.math.DoubleUtils"
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 58
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string/jumbo v3, "input is infinite or NaN"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_0
    invoke-static {}, Lcom/google/common/math/DoubleMath;->-getjava_math_RoundingModeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 112
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 63
    :pswitch_0
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 64
    return-wide p0

    .line 67
    :pswitch_1
    cmpl-double v2, p0, v8

    if-gez v2, :cond_1

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    :cond_1
    return-wide p0

    .line 70
    :cond_2
    sub-double v2, p0, v6

    return-wide v2

    .line 74
    :pswitch_2
    cmpg-double v2, p0, v8

    if-lez v2, :cond_3

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 75
    :cond_3
    return-wide p0

    .line 77
    :cond_4
    add-double v2, p0, v6

    return-wide v2

    .line 81
    :pswitch_3
    return-wide p0

    .line 84
    :pswitch_4
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 85
    return-wide p0

    .line 87
    :cond_5
    invoke-static {v6, v7, p0, p1}, Lcom/google/common/math/DoubleUtils;->copySign(DD)D

    move-result-wide v2

    add-double/2addr v2, p0

    return-wide v2

    .line 91
    :pswitch_5
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    return-wide v2

    .line 94
    :pswitch_6
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    .line 95
    .local v0, "z":D
    sub-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_6

    .line 96
    invoke-static {v4, v5, p0, p1}, Lcom/google/common/math/DoubleUtils;->copySign(DD)D

    move-result-wide v2

    add-double/2addr v2, p0

    return-wide v2

    .line 98
    :cond_6
    return-wide v0

    .line 103
    .end local v0    # "z":D
    :pswitch_7
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    .line 104
    .restart local v0    # "z":D
    sub-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_7

    .line 105
    return-wide p0

    .line 107
    :cond_7
    return-wide v0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static roundToBigInteger(DLjava/math/RoundingMode;)Ljava/math/BigInteger;
    .locals 10
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "#roundIntermediate, java.lang.Math.getExponent, com.google.common.math.DoubleUtils"
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 182
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide p0

    .line 183
    const-wide/high16 v6, -0x3c20000000000000L    # -9.223372036854776E18

    sub-double/2addr v6, p0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    move v6, v4

    :goto_0
    const-wide/high16 v8, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v7, p0, v8

    if-gez v7, :cond_1

    :goto_1
    and-int/2addr v4, v6

    if-eqz v4, :cond_2

    .line 184
    double-to-long v4, p0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    return-object v4

    :cond_0
    move v6, v5

    .line 183
    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    .line 186
    :cond_2
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getExponent(D)I

    move-result v0

    .line 187
    .local v0, "exponent":I
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v2

    .line 188
    .local v2, "significand":J
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    add-int/lit8 v5, v0, -0x34

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 189
    .local v1, "result":Ljava/math/BigInteger;
    const-wide/16 v4, 0x0

    cmpg-double v4, p0, v4

    if-gez v4, :cond_3

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    .end local v1    # "result":Ljava/math/BigInteger;
    :cond_3
    return-object v1
.end method

.method public static roundToInt(DLjava/math/RoundingMode;)I
    .locals 8
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "#roundIntermediate"
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 132
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v0

    .line 133
    .local v0, "z":D
    const-wide v4, -0x3e1fffffffe00000L    # -2.147483649E9

    cmpl-double v4, v0, v4

    if-lez v4, :cond_0

    move v4, v2

    :goto_0
    const-wide/high16 v6, 0x41e0000000000000L    # 2.147483648E9

    cmpg-double v5, v0, v6

    if-gez v5, :cond_1

    :goto_1
    and-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkInRange(Z)V

    .line 134
    double-to-int v2, v0

    return v2

    :cond_0
    move v4, v3

    .line 133
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static roundToLong(DLjava/math/RoundingMode;)J
    .locals 8
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "#roundIntermediate"
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 156
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v0

    .line 157
    .local v0, "z":D
    const-wide/high16 v4, -0x3c20000000000000L    # -9.223372036854776E18

    sub-double/2addr v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    move v4, v2

    :goto_0
    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v5, v0, v6

    if-gez v5, :cond_1

    :goto_1
    and-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkInRange(Z)V

    .line 158
    double-to-long v2, v0

    return-wide v2

    :cond_0
    move v4, v3

    .line 157
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method
