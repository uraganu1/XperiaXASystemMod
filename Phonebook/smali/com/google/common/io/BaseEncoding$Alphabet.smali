.class final Lcom/google/common/io/BaseEncoding$Alphabet;
.super Lcom/google/common/base/CharMatcher;
.source "BaseEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Alphabet"
.end annotation


# instance fields
.field final bitsPerChar:I

.field final bytesPerChunk:I

.field private final chars:[C

.field final charsPerChunk:I

.field private final decodabet:[B

.field final mask:I

.field private final name:Ljava/lang/String;

.field private final validPadding:[Z


# direct methods
.method constructor <init>(Ljava/lang/String;[C)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "chars"    # [C

    .prologue
    const/16 v10, 0x8

    const/4 v12, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 497
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    .line 498
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    .line 499
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [C

    iput-object v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    .line 501
    :try_start_0
    array-length v6, p2

    sget-object v9, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v6, v9}, Lcom/google/common/math/IntMath;->log2(ILjava/math/RoundingMode;)I

    move-result v6

    iput v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    iget v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    invoke-static {v6}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 511
    .local v3, "gcd":I
    div-int v6, v10, v3

    iput v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    .line 512
    iget v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    div-int/2addr v6, v3

    iput v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I

    .line 514
    array-length v6, p2

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->mask:I

    .line 516
    const/16 v6, 0x80

    new-array v1, v6, [B

    .line 517
    .local v1, "decodabet":[B
    invoke-static {v1, v12}, Ljava/util/Arrays;->fill([BB)V

    .line 518
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, p2

    if-ge v4, v6, :cond_1

    .line 519
    aget-char v0, p2, v4

    .line 520
    .local v0, "c":C
    sget-object v6, Lcom/google/common/base/CharMatcher;->ASCII:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v6, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v6

    const-string/jumbo v9, "Non-ASCII character: %s"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v6, v9, v10}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 521
    aget-byte v6, v1, v0

    if-ne v6, v12, :cond_0

    move v6, v7

    :goto_1
    const-string/jumbo v9, "Duplicate character: %s"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v6, v9, v10}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 522
    int-to-byte v6, v4

    aput-byte v6, v1, v0

    .line 518
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 502
    .end local v0    # "c":C
    .end local v1    # "decodabet":[B
    .end local v3    # "gcd":I
    .end local v4    # "i":I
    :catch_0
    move-exception v2

    .line 503
    .local v2, "e":Ljava/lang/ArithmeticException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Illegal alphabet length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .end local v2    # "e":Ljava/lang/ArithmeticException;
    .restart local v0    # "c":C
    .restart local v1    # "decodabet":[B
    .restart local v3    # "gcd":I
    .restart local v4    # "i":I
    :cond_0
    move v6, v8

    .line 521
    goto :goto_1

    .line 524
    .end local v0    # "c":C
    :cond_1
    iput-object v1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    .line 526
    iget v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    new-array v5, v6, [Z

    .line 527
    .local v5, "validPadding":[Z
    const/4 v4, 0x0

    :goto_2
    iget v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I

    if-ge v4, v6, :cond_2

    .line 528
    mul-int/lit8 v6, v4, 0x8

    iget v8, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    sget-object v9, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v6, v8, v9}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result v6

    aput-boolean v7, v5, v6

    .line 527
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 530
    :cond_2
    iput-object v5, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->validPadding:[Z

    .line 497
    return-void
.end method

.method private hasLowerCase()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 549
    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-char v0, v3, v1

    .line 550
    .local v0, "c":C
    invoke-static {v0}, Lcom/google/common/base/Ascii;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 551
    const/4 v1, 0x1

    return v1

    .line 549
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 554
    .end local v0    # "c":C
    :cond_1
    return v2
.end method

.method private hasUpperCase()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 558
    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-char v0, v3, v1

    .line 559
    .local v0, "c":C
    invoke-static {v0}, Lcom/google/common/base/Ascii;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 560
    const/4 v1, 0x1

    return v1

    .line 558
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 563
    .end local v0    # "c":C
    :cond_1
    return v2
.end method


# virtual methods
.method decode(C)I
    .locals 3
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 543
    :cond_0
    new-instance v0, Lcom/google/common/io/BaseEncoding$DecodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method encode(I)C
    .locals 1
    .param p1, "bits"    # I

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    aget-char v0, v0, p1

    return v0
.end method

.method isValidPaddingStartPosition(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->validPadding:[Z

    iget v1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    rem-int v1, p1, v1

    aget-boolean v0, v0, v1

    return v0
.end method

.method lowerCase()Lcom/google/common/io/BaseEncoding$Alphabet;
    .locals 5

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasUpperCase()Z

    move-result v2

    if-nez v2, :cond_0

    .line 581
    return-object p0

    .line 583
    :cond_0
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasLowerCase()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    const-string/jumbo v3, "Cannot call lowerCase() on a mixed-case alphabet"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 584
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v2, v2

    new-array v1, v2, [C

    .line 585
    .local v1, "lowerCased":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 586
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(C)C

    move-result v2

    aput-char v2, v1, v0

    .line 585
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 583
    .end local v0    # "i":I
    .end local v1    # "lowerCased":[C
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 588
    .restart local v0    # "i":I
    .restart local v1    # "lowerCased":[C
    :cond_2
    new-instance v2, Lcom/google/common/io/BaseEncoding$Alphabet;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".lowerCase()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/common/io/BaseEncoding$Alphabet;-><init>(Ljava/lang/String;[C)V

    return-object v2
.end method

.method public matches(C)Z
    .locals 3
    .param p1, "c"    # C

    .prologue
    const/4 v0, 0x0

    .line 594
    sget-object v1, Lcom/google/common/base/CharMatcher;->ASCII:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v1, p1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    aget-byte v1, v1, p1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    return-object v0
.end method

.method upperCase()Lcom/google/common/io/BaseEncoding$Alphabet;
    .locals 5

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasLowerCase()Z

    move-result v2

    if-nez v2, :cond_0

    .line 568
    return-object p0

    .line 570
    :cond_0
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasUpperCase()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    const-string/jumbo v3, "Cannot call upperCase() on a mixed-case alphabet"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 571
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v2, v2

    new-array v1, v2, [C

    .line 572
    .local v1, "upperCased":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 573
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toUpperCase(C)C

    move-result v2

    aput-char v2, v1, v0

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 570
    .end local v0    # "i":I
    .end local v1    # "upperCased":[C
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 575
    .restart local v0    # "i":I
    .restart local v1    # "upperCased":[C
    :cond_2
    new-instance v2, Lcom/google/common/io/BaseEncoding$Alphabet;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".upperCase()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/common/io/BaseEncoding$Alphabet;-><init>(Ljava/lang/String;[C)V

    return-object v2
.end method
