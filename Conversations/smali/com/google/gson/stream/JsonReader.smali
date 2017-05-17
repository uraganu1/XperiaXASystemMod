.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final NON_EXECUTE_PREFIX:[C


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field private peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, ")]}\'\n"

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    .line 1600
    new-instance v0, Lcom/google/gson/stream/JsonReader$1;

    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/google/gson/internal/JsonReaderInternalAccess;

    .line 1623
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    const/16 v3, 0x20

    const/4 v1, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    const/16 v0, 0x400

    .line 238
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 239
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 240
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 242
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 243
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 245
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 269
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 270
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 272
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 283
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 284
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 290
    if-eqz p1, :cond_0

    .line 293
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 294
    return-void

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/gson/stream/JsonReader;

    .prologue
    .line 190
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/gson/stream/JsonReader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/gson/stream/JsonReader;
    .param p1, "x1"    # I

    .prologue
    .line 190
    iput p1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/gson/stream/JsonReader;

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/gson/stream/JsonReader;

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1422
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v0, :cond_0

    .line 1425
    return-void

    :cond_0
    const-string/jumbo v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    .line 1423
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private consumeNonExecutePrefix()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1582
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 1583
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1585
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-gt v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1589
    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 1596
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1597
    return-void

    .line 1585
    .end local v0    # "i":I
    :cond_1
    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1586
    return-void

    .line 1590
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_3

    .line 1589
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1591
    :cond_3
    return-void
.end method

.method private doPeek()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 466
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget v1, v3, v4

    .line 467
    .local v1, "peekStack":I
    if-eq v1, v6, :cond_1

    .line 469
    if-eq v1, v7, :cond_3

    const/4 v3, 0x3

    .line 482
    if-ne v1, v3, :cond_4

    .line 483
    :cond_0
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aput v8, v3, v4

    .line 485
    if-eq v1, v9, :cond_5

    .line 498
    :goto_0
    :sswitch_0
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 499
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    .line 512
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 513
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 514
    int-to-char v3, v0

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "Expected name"

    .line 517
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 468
    .end local v0    # "c":I
    :cond_1
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aput v7, v3, v4

    .line 553
    :cond_2
    :goto_1
    :pswitch_0
    :sswitch_1
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 554
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_1

    .line 583
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 586
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    if-eq v3, v6, :cond_13

    .line 590
    :goto_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekKeyword()I

    move-result v2

    .line 591
    .local v2, "result":I
    if-nez v2, :cond_14

    .line 595
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekNumber()I

    move-result v2

    .line 596
    if-nez v2, :cond_15

    .line 600
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v3, v3, v4

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 604
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    const/16 v3, 0xa

    .line 605
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v3, 0xa

    return v3

    .line 471
    .end local v0    # "c":I
    .end local v2    # "result":I
    :cond_3
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 472
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_2

    const-string/jumbo v3, "Unterminated array"

    .line 480
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 474
    :sswitch_2
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v8

    .line 476
    :sswitch_3
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_1

    .line 482
    .end local v0    # "c":I
    :cond_4
    if-eq v1, v9, :cond_0

    .line 520
    if-eq v1, v8, :cond_8

    const/4 v3, 0x6

    .line 536
    if-eq v1, v3, :cond_b

    const/4 v3, 0x7

    .line 541
    if-eq v1, v3, :cond_d

    const/16 v3, 0x8

    .line 549
    if-ne v1, v3, :cond_2

    .line 550
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "JsonReader is closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 486
    :cond_5
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 487
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_3

    const-string/jumbo v3, "Unterminated object"

    .line 495
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 489
    :sswitch_4
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v7

    .line 491
    :sswitch_5
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto/16 :goto_0

    :sswitch_6
    const/16 v3, 0xd

    .line 501
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v3, 0xd

    return v3

    .line 503
    :sswitch_7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    const/16 v3, 0xc

    .line 504
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v3, 0xc

    return v3

    .line 506
    :sswitch_8
    if-ne v1, v9, :cond_6

    const-string/jumbo v3, "Expected name"

    .line 509
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 507
    :cond_6
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v7

    :cond_7
    const/16 v3, 0xe

    .line 515
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v3, 0xe

    return v3

    .line 521
    .end local v0    # "c":I
    :cond_8
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aput v9, v3, v4

    .line 523
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 524
    .restart local v0    # "c":I
    packed-switch v0, :pswitch_data_0

    :pswitch_1
    const-string/jumbo v3, "Expected \':\'"

    .line 534
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 528
    :pswitch_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 529
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v3, v4, :cond_a

    :cond_9
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_2

    .line 530
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_1

    .line 529
    :cond_a
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_1

    .line 537
    .end local v0    # "c":I
    :cond_b
    iget-boolean v3, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v3, :cond_c

    .line 540
    :goto_3
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x7

    aput v5, v3, v4

    goto/16 :goto_1

    .line 538
    :cond_c
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    goto :goto_3

    .line 542
    :cond_d
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .restart local v0    # "c":I
    const/4 v3, -0x1

    .line 543
    if-eq v0, v3, :cond_e

    .line 546
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 547
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_1

    :cond_e
    const/16 v3, 0x11

    .line 544
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v3, 0x11

    return v3

    .line 556
    :sswitch_9
    if-eq v1, v6, :cond_10

    .line 563
    :sswitch_a
    if-ne v1, v6, :cond_11

    .line 564
    :cond_f
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 565
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v3, 0x7

    .line 566
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/4 v3, 0x7

    return v3

    .line 557
    :cond_10
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v8

    .line 563
    :cond_11
    if-eq v1, v7, :cond_f

    const-string/jumbo v3, "Unexpected value"

    .line 568
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 571
    :sswitch_b
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    const/16 v3, 0x8

    .line 572
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v3, 0x8

    return v3

    .line 574
    :sswitch_c
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    if-eq v3, v6, :cond_12

    :goto_4
    const/16 v3, 0x9

    .line 577
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v3, 0x9

    return v3

    .line 575
    :cond_12
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_4

    :sswitch_d
    const/4 v3, 0x3

    .line 579
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/4 v3, 0x3

    return v3

    .line 581
    :sswitch_e
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v6

    .line 587
    :cond_13
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto/16 :goto_2

    .line 592
    .restart local v2    # "result":I
    :cond_14
    return v2

    .line 597
    :cond_15
    return v2

    :cond_16
    const-string/jumbo v3, "Expected value"

    .line 601
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 499
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_6
        0x27 -> :sswitch_7
        0x7d -> :sswitch_8
    .end sparse-switch

    .line 554
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_c
        0x27 -> :sswitch_b
        0x2c -> :sswitch_a
        0x3b -> :sswitch_a
        0x5b -> :sswitch_d
        0x5d -> :sswitch_9
        0x7b -> :sswitch_e
    .end sparse-switch

    .line 472
    :sswitch_data_2
    .sparse-switch
        0x2c -> :sswitch_1
        0x3b -> :sswitch_3
        0x5d -> :sswitch_2
    .end sparse-switch

    .line 487
    :sswitch_data_3
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_5
        0x7d -> :sswitch_4
    .end sparse-switch

    .line 524
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private fillBuffer(I)Z
    .locals 7
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1289
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1290
    .local v0, "buffer":[C
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1291
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-ne v2, v3, :cond_1

    .line 1295
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1298
    :goto_0
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1300
    :cond_0
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    array-length v4, v0

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .local v1, "total":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 1314
    return v6

    .line 1292
    .end local v1    # "total":I
    :cond_1
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1293
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    invoke-static {v0, v2, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1301
    .restart local v1    # "total":I
    :cond_2
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1304
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    if-eqz v2, :cond_4

    .line 1310
    :cond_3
    :goto_1
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v2, p1, :cond_0

    .line 1311
    const/4 v2, 0x1

    return v2

    .line 1304
    :cond_4
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lez v2, :cond_3

    aget-char v2, v0, v6

    const v3, 0xfeff

    if-ne v2, v3, :cond_3

    .line 1305
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1306
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1307
    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method private getColumnNumber()I
    .locals 2

    .prologue
    .line 1322
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getLineNumber()I
    .locals 1

    .prologue
    .line 1318
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isLiteral(C)Z
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 756
    sparse-switch p1, :sswitch_data_0

    .line 776
    const/4 v0, 0x1

    return v0

    .line 762
    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 774
    :sswitch_1
    const/4 v0, 0x0

    return v0

    .line 756
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextNonWhitespace(Z)I
    .locals 10
    .param p1, "throwOnEof"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1341
    .local v0, "buffer":[C
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1342
    .local v4, "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1344
    .local v3, "l":I
    :goto_0
    if-eq v4, v3, :cond_1

    .line 1353
    :goto_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "p":I
    .local v5, "p":I
    aget-char v1, v0, v4

    .local v1, "c":I
    const/16 v7, 0xa

    .line 1354
    if-eq v1, v7, :cond_2

    const/16 v7, 0x20

    .line 1358
    if-ne v1, v7, :cond_3

    :cond_0
    move v4, v5

    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_0

    .line 1345
    .end local v1    # "c":I
    :cond_1
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v7, 0x1

    .line 1346
    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1349
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1350
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_1

    .line 1355
    .end local v4    # "p":I
    .restart local v1    # "c":I
    .restart local v5    # "p":I
    :cond_2
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1356
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    move v4, v5

    .line 1357
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_0

    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_3
    const/16 v7, 0xd

    .line 1358
    if-eq v1, v7, :cond_0

    const/16 v7, 0x9

    if-eq v1, v7, :cond_4

    const/16 v7, 0x2f

    .line 1362
    if-eq v1, v7, :cond_5

    const/16 v7, 0x23

    .line 1397
    if-eq v1, v7, :cond_9

    .line 1409
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1410
    return v1

    :cond_4
    move v4, v5

    .line 1359
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_0

    .line 1363
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_5
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1364
    if-eq v5, v3, :cond_7

    .line 1373
    :cond_6
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1374
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v7, v0, v7

    int-to-char v6, v7

    .line 1375
    .local v6, "peek":C
    sparse-switch v6, :sswitch_data_0

    .line 1395
    return v1

    .line 1365
    .end local v6    # "peek":C
    :cond_7
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v7, 0x2

    .line 1366
    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    .line 1367
    .local v2, "charsLoaded":Z
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1368
    if-nez v2, :cond_6

    .line 1369
    return v1

    .line 1378
    .end local v2    # "charsLoaded":Z
    .restart local v6    # "peek":C
    :sswitch_0
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const-string/jumbo v7, "*/"

    .line 1379
    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1382
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v4, v7, 0x2

    .line 1383
    .end local v5    # "p":I
    .restart local v4    # "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_0

    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_8
    const-string/jumbo v7, "Unterminated comment"

    .line 1380
    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 1388
    :sswitch_1
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1389
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1390
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1391
    .end local v5    # "p":I
    .restart local v4    # "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto/16 :goto_0

    .line 1398
    .end local v4    # "p":I
    .end local v6    # "peek":C
    .restart local v5    # "p":I
    :cond_9
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1404
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1405
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1406
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1407
    .end local v5    # "p":I
    .restart local v4    # "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto/16 :goto_0

    .line 1413
    .end local v1    # "c":I
    :cond_a
    if-nez p1, :cond_b

    const/4 v7, -0x1

    .line 1417
    return v7

    .line 1414
    :cond_b
    new-instance v7, Ljava/io/EOFException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "End of input at line "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " column "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1375
    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .locals 8
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1002
    .local v0, "buffer":[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1004
    .local v1, "builder":Ljava/lang/StringBuilder;
    :cond_0
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1005
    .local v4, "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1007
    .local v3, "l":I
    move v6, v4

    .local v6, "start":I
    move v5, v4

    .line 1008
    .end local v4    # "p":I
    .local v5, "p":I
    :goto_0
    if-lt v5, v3, :cond_1

    .line 1028
    sub-int v7, v5, v6

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1029
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v7, 0x1

    .line 1030
    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "Unterminated string"

    .line 1031
    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 1009
    :cond_1
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "p":I
    .restart local v4    # "p":I
    aget-char v2, v0, v5

    .line 1011
    .local v2, "c":I
    if-eq v2, p1, :cond_2

    const/16 v7, 0x5c

    .line 1015
    if-eq v2, v7, :cond_3

    const/16 v7, 0xa

    .line 1022
    if-eq v2, v7, :cond_4

    :goto_1
    move v5, v4

    .line 1026
    .end local v4    # "p":I
    .restart local v5    # "p":I
    goto :goto_0

    .line 1012
    .end local v5    # "p":I
    .restart local v4    # "p":I
    :cond_2
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1013
    sub-int v7, v4, v6

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1014
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 1016
    :cond_3
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1017
    sub-int v7, v4, v6

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1018
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1019
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1020
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1021
    move v6, v4

    goto :goto_1

    .line 1023
    :cond_4
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1024
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_1
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1046
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .local v1, "i":I
    :cond_0
    :goto_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v3, v4, :cond_1

    .line 1070
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    array-length v3, v3

    if-lt v1, v3, :cond_2

    .line 1079
    if-eqz v0, :cond_3

    .line 1082
    :goto_1
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1083
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1085
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1091
    :goto_2
    :sswitch_0
    if-eqz v0, :cond_4

    .line 1094
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1095
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1097
    .local v2, "result":Ljava/lang/String;
    :goto_3
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1098
    return-object v2

    .line 1047
    .end local v2    # "result":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 1046
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1053
    :sswitch_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_2

    .line 1071
    :cond_2
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 1080
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "builder":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 1092
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_4
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_3

    .line 1047
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_1
        0x2c -> :sswitch_0
        0x2f -> :sswitch_1
        0x3a -> :sswitch_0
        0x3b -> :sswitch_1
        0x3d -> :sswitch_1
        0x5b -> :sswitch_0
        0x5c -> :sswitch_1
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private peekKeyword()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 610
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v6, v6, v7

    int-to-char v0, v6

    .local v0, "c":C
    const/16 v6, 0x74

    .line 614
    if-ne v0, v6, :cond_2

    :cond_0
    const-string/jumbo v2, "true"

    .local v2, "keyword":Ljava/lang/String;
    const-string/jumbo v3, "TRUE"

    .local v3, "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x5

    .line 631
    .local v5, "peeking":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "length":I
    const/4 v1, 0x1

    .line 632
    .local v1, "i":I
    :goto_1
    if-lt v1, v4, :cond_7

    .line 642
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v6, v7, :cond_c

    :cond_1
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v4

    aget-char v6, v6, v7

    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v6

    if-nez v6, :cond_d

    .line 648
    :goto_2
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 649
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v5

    .end local v1    # "i":I
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v5    # "peeking":I
    :cond_2
    const/16 v6, 0x54

    .line 614
    if-eq v0, v6, :cond_0

    const/16 v6, 0x66

    .line 618
    if-ne v0, v6, :cond_4

    :cond_3
    const-string/jumbo v2, "false"

    .restart local v2    # "keyword":Ljava/lang/String;
    const-string/jumbo v3, "FALSE"

    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x6

    .line 621
    .restart local v5    # "peeking":I
    goto :goto_0

    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v5    # "peeking":I
    :cond_4
    const/16 v6, 0x46

    .line 618
    if-eq v0, v6, :cond_3

    const/16 v6, 0x6e

    .line 622
    if-ne v0, v6, :cond_6

    :cond_5
    const-string/jumbo v2, "null"

    .restart local v2    # "keyword":Ljava/lang/String;
    const-string/jumbo v3, "NULL"

    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x7

    .line 625
    .restart local v5    # "peeking":I
    goto :goto_0

    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v5    # "peeking":I
    :cond_6
    const/16 v6, 0x4e

    .line 622
    if-eq v0, v6, :cond_5

    .line 627
    return v8

    .line 633
    .restart local v1    # "i":I
    .restart local v2    # "keyword":Ljava/lang/String;
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    .restart local v4    # "length":I
    .restart local v5    # "peeking":I
    :cond_7
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v1

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v6, v7, :cond_a

    .line 636
    :cond_8
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v1

    aget-char v6, v6, v7

    int-to-char v0, v6

    .line 637
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v0, v6, :cond_b

    .line 632
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 633
    :cond_a
    add-int/lit8 v6, v1, 0x1

    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 634
    return v8

    .line 637
    :cond_b
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v0, v6, :cond_9

    .line 638
    return v8

    .line 642
    :cond_c
    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 644
    :cond_d
    return v8
.end method

.method private peekNumber()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 655
    .local v2, "buffer":[C
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 656
    .local v9, "p":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .local v6, "l":I
    const-wide/16 v12, 0x0

    .line 659
    .local v12, "value":J
    const/4 v8, 0x0

    .line 660
    .local v8, "negative":Z
    const/4 v4, 0x1

    .local v4, "fitsInLong":Z
    const/4 v7, 0x0

    .local v7, "last":I
    const/4 v5, 0x0

    .line 667
    .end local v4    # "fitsInLong":Z
    .local v5, "i":I
    :goto_0
    add-int v14, v9, v5

    if-eq v14, v6, :cond_1

    .line 680
    :goto_1
    add-int v14, v9, v5

    aget-char v14, v2, v14

    int-to-char v3, v14

    .line 681
    .local v3, "c":C
    sparse-switch v3, :sswitch_data_0

    const/16 v14, 0x30

    .line 716
    if-ge v3, v14, :cond_9

    .line 717
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v14

    if-eqz v14, :cond_15

    const/4 v14, 0x0

    .line 720
    return v14

    .line 668
    .end local v3    # "c":C
    :cond_1
    array-length v14, v2

    if-eq v5, v14, :cond_2

    .line 673
    add-int/lit8 v14, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 676
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 677
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    .line 671
    return v14

    .line 683
    .restart local v3    # "c":C
    :sswitch_0
    if-eqz v7, :cond_3

    const/4 v14, 0x5

    .line 687
    if-eq v7, v14, :cond_4

    const/4 v14, 0x0

    .line 691
    return v14

    .line 684
    :cond_3
    const/4 v8, 0x1

    const/4 v7, 0x1

    .line 666
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, 0x6

    .line 688
    goto :goto_2

    :sswitch_1
    const/4 v14, 0x5

    .line 694
    if-eq v7, v14, :cond_5

    const/4 v14, 0x0

    .line 698
    return v14

    :cond_5
    const/4 v7, 0x6

    .line 695
    goto :goto_2

    :sswitch_2
    const/4 v14, 0x2

    .line 702
    if-ne v7, v14, :cond_7

    :cond_6
    const/4 v7, 0x5

    .line 703
    goto :goto_2

    :cond_7
    const/4 v14, 0x4

    .line 702
    if-eq v7, v14, :cond_6

    const/4 v14, 0x0

    .line 706
    return v14

    :sswitch_3
    const/4 v14, 0x2

    .line 709
    if-eq v7, v14, :cond_8

    const/4 v14, 0x0

    .line 713
    return v14

    :cond_8
    const/4 v7, 0x3

    .line 710
    goto :goto_2

    :cond_9
    const/16 v14, 0x39

    .line 716
    if-gt v3, v14, :cond_0

    const/4 v14, 0x1

    .line 722
    if-ne v7, v14, :cond_b

    .line 723
    :cond_a
    add-int/lit8 v14, v3, -0x30

    neg-int v14, v14

    int-to-long v12, v14

    const/4 v7, 0x2

    .line 724
    goto :goto_2

    .line 722
    :cond_b
    if-eqz v7, :cond_a

    const/4 v14, 0x2

    .line 725
    if-eq v7, v14, :cond_d

    const/4 v14, 0x3

    .line 733
    if-eq v7, v14, :cond_13

    const/4 v14, 0x5

    .line 735
    if-ne v7, v14, :cond_14

    :cond_c
    const/4 v7, 0x7

    .line 736
    goto :goto_2

    :cond_d
    const-wide/16 v14, 0x0

    .line 726
    cmp-long v14, v12, v14

    if-nez v14, :cond_e

    const/4 v14, 0x0

    .line 727
    return v14

    :cond_e
    const-wide/16 v14, 0xa

    .line 729
    mul-long/2addr v14, v12

    add-int/lit8 v16, v3, -0x30

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v10, v14, v16

    .local v10, "newValue":J
    const-wide v14, -0xcccccccccccccccL

    .line 730
    cmp-long v14, v12, v14

    if-lez v14, :cond_10

    const/4 v14, 0x1

    :goto_3
    if-nez v14, :cond_f

    const-wide v14, -0xcccccccccccccccL

    cmp-long v14, v12, v14

    if-nez v14, :cond_12

    cmp-long v14, v10, v12

    if-ltz v14, :cond_11

    const/4 v14, 0x1

    :goto_4
    if-nez v14, :cond_12

    :cond_f
    const/4 v14, 0x1

    :goto_5
    and-int/2addr v4, v14

    .line 732
    .local v4, "fitsInLong":Z
    move-wide v12, v10

    goto :goto_2

    .line 730
    .end local v4    # "fitsInLong":Z
    :cond_10
    const/4 v14, 0x0

    goto :goto_3

    :cond_11
    const/4 v14, 0x0

    goto :goto_4

    :cond_12
    const/4 v14, 0x0

    goto :goto_5

    .end local v10    # "newValue":J
    :cond_13
    const/4 v7, 0x4

    .line 734
    goto :goto_2

    :cond_14
    const/4 v14, 0x6

    .line 735
    if-eq v7, v14, :cond_c

    goto :goto_2

    .end local v3    # "c":C
    :cond_15
    const/4 v14, 0x2

    .line 742
    if-eq v7, v14, :cond_18

    :cond_16
    const/4 v14, 0x2

    .line 746
    if-ne v7, v14, :cond_1b

    .line 748
    :cond_17
    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    const/16 v14, 0x10

    .line 749
    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v14, 0x10

    return v14

    .line 742
    :cond_18
    if-eqz v4, :cond_16

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v14, v12, v14

    if-nez v14, :cond_19

    if-eqz v8, :cond_16

    .line 743
    :cond_19
    if-nez v8, :cond_1a

    neg-long v12, v12

    .end local v12    # "value":J
    :cond_1a
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 744
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v14, v5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/16 v14, 0xf

    .line 745
    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v14, 0xf

    return v14

    .restart local v12    # "value":J
    :cond_1b
    const/4 v14, 0x4

    .line 746
    if-eq v7, v14, :cond_17

    const/4 v14, 0x7

    if-eq v7, v14, :cond_17

    const/4 v14, 0x0

    .line 751
    return v14

    .line 681
    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_0
        0x2e -> :sswitch_3
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method private push(I)V
    .locals 6
    .param p1, "newTop"    # I

    .prologue
    const/4 v5, 0x0

    .line 1269
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    array-length v4, v4

    if-eq v3, v4, :cond_0

    .line 1280
    :goto_0
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    aput p1, v3, v4

    .line 1281
    return-void

    .line 1270
    :cond_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [I

    .line 1271
    .local v2, "newStack":[I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [I

    .line 1272
    .local v0, "newPathIndices":[I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 1273
    .local v1, "newPathNames":[Ljava/lang/String;
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1274
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1275
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1276
    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 1277
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 1278
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    goto :goto_0
.end method

.method private readEscapeCharacter()C
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    .line 1512
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-eq v5, v6, :cond_1

    .line 1516
    :cond_0
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v5, v5, v6

    int-to-char v2, v5

    .line 1517
    .local v2, "escaped":C
    sparse-switch v2, :sswitch_data_0

    .line 1564
    :goto_0
    :sswitch_0
    return v2

    .end local v2    # "escaped":C
    :cond_1
    const/4 v5, 0x1

    .line 1512
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "Unterminated escape sequence"

    .line 1513
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1519
    .restart local v2    # "escaped":C
    :sswitch_1
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, 0x4

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-gt v5, v6, :cond_3

    .line 1523
    :cond_2
    const/4 v4, 0x0

    .line 1524
    .local v4, "result":C
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .local v3, "i":I
    add-int/lit8 v1, v3, 0x4

    .end local v4    # "result":C
    .local v1, "end":I
    :goto_1
    if-lt v3, v1, :cond_4

    .line 1537
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1538
    return v4

    .line 1519
    .end local v1    # "end":I
    .end local v3    # "i":I
    :cond_3
    invoke-direct {p0, v10}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "Unterminated escape sequence"

    .line 1520
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1525
    .restart local v1    # "end":I
    .restart local v3    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v5, v5, v3

    int-to-char v0, v5

    .line 1526
    .local v0, "c":C
    shl-int/lit8 v5, v4, 0x4

    int-to-char v5, v5

    int-to-char v4, v5

    .local v4, "result":C
    const/16 v5, 0x30

    .line 1527
    if-ge v0, v5, :cond_8

    :cond_5
    const/16 v5, 0x61

    .line 1529
    if-ge v0, v5, :cond_9

    :cond_6
    const/16 v5, 0x41

    .line 1531
    if-ge v0, v5, :cond_a

    .line 1534
    :cond_7
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\\u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v9, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_8
    const/16 v5, 0x39

    .line 1527
    if-gt v0, v5, :cond_5

    .line 1528
    add-int/lit8 v5, v0, -0x30

    add-int/2addr v5, v4

    int-to-char v5, v5

    int-to-char v4, v5

    .line 1524
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    const/16 v5, 0x66

    .line 1529
    if-gt v0, v5, :cond_6

    .line 1530
    add-int/lit8 v5, v0, -0x61

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v5, v5

    int-to-char v4, v5

    goto :goto_2

    :cond_a
    const/16 v5, 0x46

    .line 1531
    if-gt v0, v5, :cond_7

    .line 1532
    add-int/lit8 v5, v0, -0x41

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v5, v5

    int-to-char v4, v5

    goto :goto_2

    .line 1541
    .end local v0    # "c":C
    .end local v1    # "end":I
    .end local v3    # "i":I
    .end local v4    # "result":C
    :sswitch_2
    const/16 v5, 0x9

    return v5

    .line 1544
    :sswitch_3
    const/16 v5, 0x8

    return v5

    .line 1547
    :sswitch_4
    const/16 v5, 0xa

    return v5

    .line 1550
    :sswitch_5
    const/16 v5, 0xd

    return v5

    .line 1553
    :sswitch_6
    const/16 v5, 0xc

    return v5

    .line 1556
    :sswitch_7
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1557
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto/16 :goto_0

    .line 1517
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_7
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x5c -> :sswitch_0
        0x62 -> :sswitch_3
        0x66 -> :sswitch_6
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_2
        0x75 -> :sswitch_1
    .end sparse-switch
.end method

.method private skipQuotedValue(C)V
    .locals 6
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1105
    .local v0, "buffer":[C
    :cond_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1106
    .local v3, "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .local v2, "l":I
    move v4, v3

    .line 1108
    .end local v3    # "p":I
    .local v4, "p":I
    :goto_0
    if-lt v4, v2, :cond_1

    .line 1123
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v5, 0x1

    .line 1124
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "Unterminated string"

    .line 1125
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1109
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aget-char v1, v0, v4

    .line 1110
    .local v1, "c":I
    if-eq v1, p1, :cond_2

    const/16 v5, 0x5c

    .line 1113
    if-eq v1, v5, :cond_3

    const/16 v5, 0xa

    .line 1118
    if-eq v1, v5, :cond_4

    :goto_1
    move v4, v3

    .line 1122
    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_0

    .line 1111
    .end local v4    # "p":I
    .restart local v3    # "p":I
    :cond_2
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1112
    return-void

    .line 1114
    :cond_3
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1115
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    .line 1116
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1117
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_1

    .line 1119
    :cond_4
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1120
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_1
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 4
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1450
    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-gt v1, v2, :cond_1

    .line 1451
    :cond_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/4 v0, 0x0

    .line 1456
    .local v0, "c":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 1461
    const/4 v1, 0x1

    return v1

    .line 1450
    .end local v0    # "c":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1463
    return v3

    .line 1452
    :cond_2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1453
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1450
    :cond_3
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 1457
    .restart local v0    # "c":I
    :cond_4
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1456
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private skipToEndOfLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1433
    :cond_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v1, v2, :cond_2

    .line 1434
    :cond_1
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v1, v1, v2

    int-to-char v0, v1

    .local v0, "c":C
    const/16 v1, 0xa

    .line 1435
    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    .line 1439
    if-ne v0, v1, :cond_0

    .line 1443
    .end local v0    # "c":C
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x1

    .line 1433
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1436
    .restart local v0    # "c":C
    :cond_3
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1437
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_0
.end method

.method private skipUnquotedValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :cond_0
    const/4 v0, 0x0

    .line 1131
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v1, v2, :cond_1

    .line 1154
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v1, 0x1

    .line 1155
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1156
    return-void

    .line 1132
    :cond_1
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 1131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1138
    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1150
    :sswitch_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1151
    return-void

    .line 1132
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1573
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 341
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 342
    .local v0, "p":I
    if-eqz v0, :cond_0

    :goto_0
    const/4 v1, 0x3

    .line 345
    if-eq v0, v1, :cond_1

    .line 350
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 343
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 346
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 347
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aput v3, v1, v2

    .line 348
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 353
    return-void
.end method

.method public beginObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 379
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 380
    .local v0, "p":I
    if-eqz v0, :cond_0

    :goto_0
    const/4 v1, 0x1

    .line 383
    if-eq v0, v1, :cond_1

    .line 387
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 384
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 385
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 390
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1221
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1222
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    const/4 v0, 0x1

    .line 1223
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1224
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1225
    return-void
.end method

.method public endArray()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 360
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 361
    .local v0, "p":I
    if-eqz v0, :cond_0

    :goto_0
    const/4 v1, 0x4

    .line 364
    if-eq v0, v1, :cond_1

    .line 369
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected END_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    .line 365
    :cond_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 366
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 367
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 372
    return-void
.end method

.method public endObject()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 397
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 398
    .local v0, "p":I
    if-eqz v0, :cond_0

    :goto_0
    const/4 v1, 0x2

    .line 401
    if-eq v0, v1, :cond_1

    .line 407
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected END_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    .line 402
    :cond_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 403
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 404
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 405
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 410
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1477
    .local v0, "i":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .local v2, "size":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 1499
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1478
    :cond_0
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_0

    .line 1477
    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1481
    :pswitch_1
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1487
    :pswitch_2
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1488
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    .line 1489
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1478
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hasNext()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 416
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 417
    .local v0, "p":I
    if-eqz v0, :cond_1

    :goto_0
    const/4 v2, 0x2

    .line 420
    if-ne v0, v2, :cond_2

    :cond_0
    :goto_1
    return v1

    .line 418
    :cond_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    .line 420
    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public final isLenient()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    return v0
.end method

.method public nextBoolean()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 853
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 854
    .local v0, "p":I
    if-eqz v0, :cond_0

    :goto_0
    const/4 v1, 0x5

    .line 857
    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    .line 861
    if-eq v0, v1, :cond_2

    .line 866
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 855
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    .line 858
    :cond_1
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 859
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 860
    const/4 v1, 0x1

    return v1

    .line 862
    :cond_2
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 863
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 864
    return v4
.end method

.method public nextDouble()D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xb

    const/16 v4, 0x8

    const/4 v7, 0x0

    .line 901
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 902
    .local v0, "p":I
    if-eqz v0, :cond_2

    :goto_0
    const/16 v1, 0xf

    .line 906
    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    .line 912
    if-eq v0, v1, :cond_4

    .line 915
    if-ne v0, v4, :cond_5

    .line 916
    :cond_0
    if-eq v0, v4, :cond_6

    const/16 v1, 0x22

    :goto_1
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 924
    :cond_1
    :goto_2
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 925
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 926
    .local v2, "result":D
    iget-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v1, :cond_8

    :goto_3
    const/4 v1, 0x0

    .line 930
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 931
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 932
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4

    .line 933
    return-wide v2

    .line 903
    .end local v2    # "result":D
    :cond_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    .line 907
    :cond_3
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 908
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4

    .line 909
    iget-wide v4, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-double v4, v4

    return-wide v4

    .line 913
    :cond_4
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 914
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_2

    :cond_5
    const/16 v1, 0x9

    .line 915
    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    .line 917
    if-eq v0, v1, :cond_7

    .line 919
    if-eq v0, v8, :cond_1

    .line 920
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Expected a double but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " at line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/16 v1, 0x27

    .line 916
    goto/16 :goto_1

    .line 918
    :cond_7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto/16 :goto_2

    .line 926
    .restart local v2    # "result":D
    :cond_8
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 927
    :cond_9
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "JSON forbids NaN and infinities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " at line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 926
    :cond_a
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_3
.end method

.method public nextInt()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v10, 0x0

    .line 1169
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1170
    .local v3, "p":I
    if-eqz v3, :cond_1

    :goto_0
    const/16 v5, 0xf

    .line 1175
    if-eq v3, v5, :cond_2

    const/16 v5, 0x10

    .line 1186
    if-eq v3, v5, :cond_4

    .line 1189
    if-ne v3, v6, :cond_5

    .line 1190
    :cond_0
    if-eq v3, v6, :cond_6

    const/16 v5, 0x22

    :goto_1
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1192
    :try_start_0
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .local v4, "result":I
    const/4 v5, 0x0

    .line 1193
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1194
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1195
    return v4

    .line 1171
    .end local v4    # "result":I
    :cond_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v3

    goto :goto_0

    .line 1176
    :cond_2
    iget-wide v6, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-int v4, v6

    .line 1177
    .restart local v4    # "result":I
    iget-wide v6, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    int-to-long v8, v4

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    .line 1178
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1181
    :cond_3
    iput v10, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1182
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 1183
    return v4

    .line 1187
    .end local v4    # "result":I
    :cond_4
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1188
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    :goto_2
    const/16 v5, 0xb

    .line 1204
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1205
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 1206
    .local v0, "asDouble":D
    double-to-int v4, v0

    .line 1207
    .restart local v4    # "result":I
    int-to-double v6, v4

    cmpl-double v5, v6, v0

    if-eqz v5, :cond_7

    .line 1208
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v0    # "asDouble":D
    .end local v4    # "result":I
    :cond_5
    const/16 v5, 0x9

    .line 1189
    if-eq v3, v5, :cond_0

    .line 1200
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    const/16 v5, 0x27

    .line 1190
    goto/16 :goto_1

    .line 1195
    :catch_0
    move-exception v2

    .line 1196
    .local v2, "ignored":Ljava/lang/NumberFormatException;
    goto/16 :goto_2

    .end local v2    # "ignored":Ljava/lang/NumberFormatException;
    .restart local v0    # "asDouble":D
    .restart local v4    # "result":I
    :cond_7
    const/4 v5, 0x0

    .line 1211
    iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1212
    iput v10, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1213
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 1214
    return v4
.end method

.method public nextLong()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    const/4 v10, 0x0

    .line 947
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 948
    .local v3, "p":I
    if-eqz v3, :cond_1

    :goto_0
    const/16 v6, 0xf

    .line 952
    if-eq v3, v6, :cond_2

    const/16 v6, 0x10

    .line 958
    if-eq v3, v6, :cond_3

    .line 961
    if-ne v3, v7, :cond_4

    .line 962
    :cond_0
    if-eq v3, v7, :cond_5

    const/16 v6, 0x22

    :goto_1
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 964
    :try_start_0
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .local v4, "result":J
    const/4 v6, 0x0

    .line 965
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 966
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    return-wide v4

    .line 949
    .end local v4    # "result":J
    :cond_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v3

    goto :goto_0

    .line 953
    :cond_2
    iput v10, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 954
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7

    .line 955
    iget-wide v6, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    return-wide v6

    .line 959
    :cond_3
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v9, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    iput-object v6, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 960
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    :goto_2
    const/16 v6, 0xb

    .line 976
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 977
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 978
    .local v0, "asDouble":D
    double-to-long v4, v0

    .line 979
    .restart local v4    # "result":J
    long-to-double v6, v4

    cmpl-double v6, v6, v0

    if-eqz v6, :cond_6

    .line 980
    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Expected a long but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " at line "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " column "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v0    # "asDouble":D
    .end local v4    # "result":J
    :cond_4
    const/16 v6, 0x9

    .line 961
    if-eq v3, v6, :cond_0

    .line 972
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Expected a long but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " at line "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " column "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    const/16 v6, 0x27

    .line 962
    goto/16 :goto_1

    .line 967
    :catch_0
    move-exception v2

    .line 968
    .local v2, "ignored":Ljava/lang/NumberFormatException;
    goto/16 :goto_2

    .end local v2    # "ignored":Ljava/lang/NumberFormatException;
    .restart local v0    # "asDouble":D
    .restart local v4    # "result":J
    :cond_6
    const/4 v6, 0x0

    .line 983
    iput-object v6, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 984
    iput v10, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 985
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7

    .line 986
    return-wide v4
.end method

.method public nextName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 788
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 789
    .local v0, "p":I
    if-eqz v0, :cond_0

    :goto_0
    const/16 v2, 0xe

    .line 793
    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    .line 795
    if-eq v0, v2, :cond_2

    const/16 v2, 0xd

    .line 797
    if-eq v0, v2, :cond_3

    .line 800
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Expected a name but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 790
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    .line 794
    :cond_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, "result":Ljava/lang/String;
    :goto_1
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 804
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 805
    return-object v1

    .line 796
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_1

    .line 798
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_1
.end method

.method public nextNull()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 878
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 879
    .local v0, "p":I
    if-eqz v0, :cond_0

    :goto_0
    const/4 v1, 0x7

    .line 882
    if-eq v0, v1, :cond_1

    .line 886
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected null but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 880
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    .line 883
    :cond_1
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 884
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 889
    return-void
.end method

.method public nextString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 817
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 818
    .local v0, "p":I
    if-eqz v0, :cond_0

    :goto_0
    const/16 v2, 0xa

    .line 822
    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    .line 824
    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    .line 826
    if-eq v0, v2, :cond_3

    const/16 v2, 0xb

    .line 828
    if-eq v0, v2, :cond_4

    const/16 v2, 0xf

    .line 831
    if-eq v0, v2, :cond_5

    const/16 v2, 0x10

    .line 833
    if-eq v0, v2, :cond_6

    .line 837
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Expected a string but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 819
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    .line 823
    :cond_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .line 840
    .local v1, "result":Ljava/lang/String;
    :goto_1
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 841
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 842
    return-object v1

    .line 825
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_1

    .line 827
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_1

    .line 829
    .end local v1    # "result":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .restart local v1    # "result":Ljava/lang/String;
    const/4 v2, 0x0

    .line 830
    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_1

    .line 832
    .end local v1    # "result":Ljava/lang/String;
    :cond_5
    iget-wide v2, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_1

    .line 834
    .end local v1    # "result":Ljava/lang/String;
    :cond_6
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 835
    .restart local v1    # "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_1
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 428
    .local v0, "p":I
    if-eqz v0, :cond_0

    .line 432
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 461
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 429
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    .line 434
    :pswitch_0
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 436
    :pswitch_1
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 438
    :pswitch_2
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 440
    :pswitch_3
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 444
    :pswitch_4
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 447
    :pswitch_5
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 449
    :pswitch_6
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 454
    :pswitch_7
    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 457
    :pswitch_8
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 459
    :pswitch_9
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 432
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 327
    return-void
.end method

.method public skipValue()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 1235
    .local v0, "count":I
    :cond_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1236
    .local v1, "p":I
    if-eqz v1, :cond_3

    .line 1240
    :goto_0
    if-eq v1, v6, :cond_4

    .line 1243
    if-eq v1, v5, :cond_5

    const/4 v2, 0x4

    .line 1246
    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    .line 1249
    if-eq v1, v2, :cond_7

    const/16 v2, 0xe

    .line 1252
    if-ne v1, v2, :cond_8

    .line 1253
    :cond_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V

    .line 1261
    :cond_2
    :goto_1
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1262
    if-nez v0, :cond_0

    .line 1264
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 1265
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    const-string/jumbo v4, "null"

    aput-object v4, v2, v3

    .line 1266
    return-void

    .line 1237
    :cond_3
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v1

    goto :goto_0

    .line 1241
    :cond_4
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 1242
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1244
    :cond_5
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 1245
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1247
    :cond_6
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1248
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1250
    :cond_7
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1251
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_8
    const/16 v2, 0xa

    .line 1252
    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    .line 1254
    if-ne v1, v2, :cond_a

    .line 1255
    :cond_9
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_1

    :cond_a
    const/16 v2, 0xc

    .line 1254
    if-eq v1, v2, :cond_9

    const/16 v2, 0x9

    .line 1256
    if-ne v1, v2, :cond_c

    .line 1257
    :cond_b
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_1

    :cond_c
    const/16 v2, 0xd

    .line 1256
    if-eq v1, v2, :cond_b

    const/16 v2, 0x10

    .line 1258
    if-ne v1, v2, :cond_2

    .line 1259
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
