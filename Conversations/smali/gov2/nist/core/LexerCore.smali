.class public Lgov2/nist/core/LexerCore;
.super Lgov2/nist/core/StringTokenizer;
.source "LexerCore.java"


# static fields
.field protected static final globalSymbolTable:Ljava/util/Hashtable;

.field protected static final lexerTables:Ljava/util/Hashtable;


# instance fields
.field protected currentLexer:Ljava/util/Hashtable;

.field protected currentLexerName:Ljava/lang/String;

.field protected currentMatch:Lgov2/nist/core/Token;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov2/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    .line 138
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov2/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    .line 139
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Lgov2/nist/core/StringTokenizer;-><init>()V

    .line 174
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov2/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    const-string/jumbo v0, "charLexer"

    .line 175
    iput-object v0, p0, Lgov2/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "lexerName"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-direct {p0, p2}, Lgov2/nist/core/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 183
    iput-object p1, p0, Lgov2/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public static charAsString(C)Ljava/lang/String;
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 653
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isTokenChar(C)Z
    .locals 3
    .param p0, "c"    # C

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 338
    invoke-static {p0}, Lgov2/nist/core/LexerCore;->isAlphaDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    sparse-switch p0, :sswitch_data_0

    .line 354
    return v1

    .line 339
    :cond_0
    return v2

    .line 352
    :sswitch_0
    return v2

    .line 341
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x25 -> :sswitch_0
        0x27 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x5f -> :sswitch_0
        0x60 -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public SPorHT()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 319
    :try_start_0
    invoke-virtual {p0, v1}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    int-to-char v0, v1

    .local v0, "c":C
    :goto_0
    const/16 v1, 0x20

    .line 320
    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 321
    invoke-virtual {p0, v1}, Lgov2/nist/core/LexerCore;->consume(I)V

    const/4 v1, 0x0

    .line 322
    invoke-virtual {p0, v1}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-char v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    .line 320
    if-eq v0, v1, :cond_0

    .line 327
    .end local v0    # "c":C
    :goto_1
    return-void

    .line 326
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected addKeyword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 144
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 145
    .local v0, "val":Ljava/lang/Integer;
    iget-object v1, p0, Lgov2/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lgov2/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    sget-object v1, Lgov2/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected addLexer(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 2
    .param p1, "lexerName"    # Ljava/lang/String;

    .prologue
    .line 159
    sget-object v0, Lgov2/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lgov2/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    .line 160
    iget-object v0, p0, Lgov2/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    iget-object v0, p0, Lgov2/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    return-object v0

    .line 161
    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov2/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    .line 162
    sget-object v0, Lgov2/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    iget-object v1, p0, Lgov2/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public byteStringNoSemicolon()Ljava/lang/String;
    .locals 4

    .prologue
    .line 587
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .local v2, "retval":Ljava/lang/StringBuffer;
    :goto_0
    const/4 v3, 0x0

    .line 590
    :try_start_0
    invoke-virtual {p0, v3}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    int-to-char v1, v3

    .line 592
    .local v1, "next":C
    if-nez v1, :cond_1

    .line 602
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    const/16 v3, 0xa

    .line 592
    if-eq v1, v3, :cond_0

    const/16 v3, 0x3b

    if-eq v1, v3, :cond_0

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_0

    const/4 v3, 0x1

    .line 595
    :try_start_1
    invoke-virtual {p0, v3}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 596
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 601
    .end local v1    # "next":C
    :catch_0
    move-exception v0

    .line 600
    .local v0, "ex":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public byteStringNoSlash()Ljava/lang/String;
    .locals 4

    .prologue
    .line 611
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .local v2, "retval":Ljava/lang/StringBuffer;
    :goto_0
    const/4 v3, 0x0

    .line 614
    :try_start_0
    invoke-virtual {p0, v3}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    int-to-char v1, v3

    .line 616
    .local v1, "next":C
    if-nez v1, :cond_1

    .line 626
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    const/16 v3, 0xa

    .line 616
    if-eq v1, v3, :cond_0

    const/16 v3, 0x2f

    if-eq v1, v3, :cond_0

    const/4 v3, 0x1

    .line 619
    :try_start_1
    invoke-virtual {p0, v3}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 620
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 625
    .end local v1    # "next":C
    :catch_0
    move-exception v0

    .line 624
    .local v0, "ex":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public charAsString(I)Ljava/lang/String;
    .locals 3
    .param p1, "nchars"    # I

    .prologue
    .line 661
    iget-object v0, p0, Lgov2/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v1, p0, Lgov2/nist/core/LexerCore;->ptr:I

    iget v2, p0, Lgov2/nist/core/LexerCore;->ptr:I

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public comment()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 559
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 560
    .local v1, "retval":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v2}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 561
    invoke-virtual {p0, v2}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 563
    :goto_0
    invoke-virtual {p0}, Lgov2/nist/core/LexerCore;->getNextChar()C

    move-result v2

    int-to-char v0, v2

    .local v0, "next":C
    const/16 v2, 0x29

    .line 564
    if-eq v0, v2, :cond_4

    .line 566
    if-eqz v0, :cond_1

    const/16 v2, 0x5c

    .line 568
    if-eq v0, v2, :cond_2

    .line 575
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .end local v0    # "next":C
    :cond_0
    const/4 v2, 0x0

    .line 560
    return-object v2

    .line 567
    .restart local v0    # "next":C
    :cond_1
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov2/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " :unexpected EOL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov2/nist/core/LexerCore;->ptr:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 569
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 570
    invoke-virtual {p0}, Lgov2/nist/core/LexerCore;->getNextChar()C

    move-result v2

    int-to-char v0, v2

    .line 571
    if-eqz v0, :cond_3

    .line 573
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 572
    :cond_3
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov2/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : unexpected EOL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov2/nist/core/LexerCore;->ptr:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 578
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public consumeValidChars([C)V
    .locals 8
    .param p1, "validChars"    # [C

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 494
    array-length v4, p1

    .line 496
    .local v4, "validCharsLength":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov2/nist/core/LexerCore;->hasMoreChars()Z

    move-result v7

    if-nez v7, :cond_1

    .line 527
    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v7, 0x0

    .line 497
    invoke-virtual {p0, v7}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v7

    int-to-char v2, v7

    .line 498
    .local v2, "nextChar":C
    const/4 v1, 0x0

    .local v1, "isValid":Z
    const/4 v0, 0x0

    .line 499
    .end local v1    # "isValid":Z
    .local v0, "i":I
    :goto_2
    if-lt v0, v4, :cond_3

    .line 518
    :cond_2
    if-eqz v1, :cond_0

    const/4 v7, 0x1

    .line 519
    invoke-virtual {p0, v7}, Lgov2/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    .line 526
    .end local v0    # "i":I
    .end local v2    # "nextChar":C
    :catch_0
    move-exception v5

    goto :goto_1

    .line 500
    .restart local v0    # "i":I
    .restart local v2    # "nextChar":C
    :cond_3
    aget-char v7, p1, v0

    int-to-char v3, v7

    .line 501
    .local v3, "validChar":C
    packed-switch v3, :pswitch_data_0

    .line 512
    if-eq v2, v3, :cond_4

    move v1, v5

    .line 514
    .local v1, "isValid":Z
    :goto_3
    if-nez v1, :cond_2

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 503
    .end local v1    # "isValid":Z
    :pswitch_0
    invoke-static {v2}, Lgov2/nist/core/LexerCore;->isAlpha(C)Z

    move-result v1

    .restart local v1    # "isValid":Z
    goto :goto_3

    .line 506
    .end local v1    # "isValid":Z
    :pswitch_1
    invoke-static {v2}, Lgov2/nist/core/LexerCore;->isDigit(C)Z

    move-result v1

    .restart local v1    # "isValid":Z
    goto :goto_3

    .line 509
    .end local v1    # "isValid":Z
    :pswitch_2
    invoke-static {v2}, Lgov2/nist/core/LexerCore;->isAlphaDigit(C)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .restart local v1    # "isValid":Z
    goto :goto_3

    .end local v1    # "isValid":Z
    :cond_4
    move v1, v6

    .line 512
    goto :goto_3

    .line 501
    :pswitch_data_0
    .packed-switch 0xfffd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBuffer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lgov2/nist/core/LexerCore;->buffer:Ljava/lang/String;

    return-object v0
.end method

.method public getNextId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lgov2/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextToken()Lgov2/nist/core/Token;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lgov2/nist/core/LexerCore;->currentMatch:Lgov2/nist/core/Token;

    return-object v0
.end method

.method public getPtr()I
    .locals 1

    .prologue
    .line 759
    iget v0, p0, Lgov2/nist/core/LexerCore;->ptr:I

    return v0
.end method

.method public getRest()Ljava/lang/String;
    .locals 2

    .prologue
    .line 714
    iget v0, p0, Lgov2/nist/core/LexerCore;->ptr:I

    iget-object v1, p0, Lgov2/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 717
    iget-object v0, p0, Lgov2/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v1, p0, Lgov2/nist/core/LexerCore;->ptr:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 715
    return-object v0
.end method

.method public getString(C)Ljava/lang/String;
    .locals 6
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 727
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 729
    .local v2, "retval":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    int-to-char v0, v3

    .line 733
    .local v0, "next":C
    if-eqz v0, :cond_0

    .line 735
    if-eq v0, p1, :cond_1

    const/16 v3, 0x5c

    .line 738
    if-eq v0, v3, :cond_2

    .line 748
    invoke-virtual {p0, v5}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 749
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 734
    :cond_0
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lgov2/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "unexpected EOL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lgov2/nist/core/LexerCore;->ptr:I

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 736
    :cond_1
    invoke-virtual {p0, v5}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 752
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 739
    :cond_2
    invoke-virtual {p0, v5}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 740
    invoke-virtual {p0, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    int-to-char v1, v3

    .line 741
    .local v1, "nextchar":C
    if-eqz v1, :cond_3

    .line 744
    invoke-virtual {p0, v5}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 745
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 742
    :cond_3
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lgov2/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "unexpected EOL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lgov2/nist/core/LexerCore;->ptr:I

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public markInputPosition()I
    .locals 1

    .prologue
    .line 696
    iget v0, p0, Lgov2/nist/core/LexerCore;->ptr:I

    return v0
.end method

.method public match(I)Lgov2/nist/core/Token;
    .locals 12
    .param p1, "tok"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x1000

    const/16 v10, 0xfff

    const/16 v9, 0xffe

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 254
    sget-boolean v5, Lgov2/nist/core/Debug;->parserDebug:Z

    if-nez v5, :cond_1

    :goto_0
    const/16 v5, 0x800

    .line 257
    if-gt p1, v5, :cond_2

    .line 281
    :cond_0
    if-gt p1, v11, :cond_a

    .line 302
    int-to-char v5, p1

    int-to-char v0, v5

    .line 303
    .local v0, "ch":C
    invoke-virtual {p0, v7}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    int-to-char v3, v5

    .line 304
    .local v3, "next":C
    if-eq v3, v0, :cond_e

    .line 311
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov2/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\nExpecting  >>>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "<<< got >>>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "<<<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov2/nist/core/LexerCore;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 255
    .end local v0    # "ch":C
    .end local v3    # "next":C
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "match "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgov2/nist/core/Debug;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_2
    if-ge p1, v11, :cond_0

    .line 258
    if-eq p1, v10, :cond_4

    .line 265
    if-eq p1, v9, :cond_7

    .line 272
    invoke-virtual {p0}, Lgov2/nist/core/LexerCore;->getNextId()Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "nexttok":Ljava/lang/String;
    iget-object v5, p0, Lgov2/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 275
    .local v1, "cur":Ljava/lang/Integer;
    if-nez v1, :cond_9

    .line 276
    :cond_3
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov2/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\nUnexpected Token : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov2/nist/core/LexerCore;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 260
    .end local v1    # "cur":Ljava/lang/Integer;
    .end local v4    # "nexttok":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lgov2/nist/core/LexerCore;->startsId()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 261
    invoke-virtual {p0}, Lgov2/nist/core/LexerCore;->getNextId()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "id":Ljava/lang/String;
    new-instance v5, Lgov2/nist/core/Token;

    invoke-direct {v5}, Lgov2/nist/core/Token;-><init>()V

    iput-object v5, p0, Lgov2/nist/core/LexerCore;->currentMatch:Lgov2/nist/core/Token;

    .line 263
    iget-object v5, p0, Lgov2/nist/core/LexerCore;->currentMatch:Lgov2/nist/core/Token;

    iput-object v2, v5, Lgov2/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 264
    iget-object v5, p0, Lgov2/nist/core/LexerCore;->currentMatch:Lgov2/nist/core/Token;

    iput v10, v5, Lgov2/nist/core/Token;->tokenType:I

    .line 314
    .end local v2    # "id":Ljava/lang/String;
    :cond_5
    :goto_1
    iget-object v5, p0, Lgov2/nist/core/LexerCore;->currentMatch:Lgov2/nist/core/Token;

    return-object v5

    .line 260
    :cond_6
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov2/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\nID expected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov2/nist/core/LexerCore;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 266
    :cond_7
    invoke-virtual {p0}, Lgov2/nist/core/LexerCore;->startsSafeToken()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 267
    invoke-virtual {p0}, Lgov2/nist/core/LexerCore;->ttokenSafe()Ljava/lang/String;

    move-result-object v2

    .line 268
    .restart local v2    # "id":Ljava/lang/String;
    new-instance v5, Lgov2/nist/core/Token;

    invoke-direct {v5}, Lgov2/nist/core/Token;-><init>()V

    iput-object v5, p0, Lgov2/nist/core/LexerCore;->currentMatch:Lgov2/nist/core/Token;

    .line 269
    iget-object v5, p0, Lgov2/nist/core/LexerCore;->currentMatch:Lgov2/nist/core/Token;

    iput-object v2, v5, Lgov2/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 270
    iget-object v5, p0, Lgov2/nist/core/LexerCore;->currentMatch:Lgov2/nist/core/Token;

    iput v9, v5, Lgov2/nist/core/Token;->tokenType:I

    goto :goto_1

    .line 266
    .end local v2    # "id":Ljava/lang/String;
    :cond_8
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov2/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\nID expected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov2/nist/core/LexerCore;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 275
    .restart local v1    # "cur":Ljava/lang/Integer;
    .restart local v4    # "nexttok":Ljava/lang/String;
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_3

    .line 277
    new-instance v5, Lgov2/nist/core/Token;

    invoke-direct {v5}, Lgov2/nist/core/Token;-><init>()V

    iput-object v5, p0, Lgov2/nist/core/LexerCore;->currentMatch:Lgov2/nist/core/Token;

    .line 278
    iget-object v5, p0, Lgov2/nist/core/LexerCore;->currentMatch:Lgov2/nist/core/Token;

    iput-object v4, v5, Lgov2/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 279
    iget-object v5, p0, Lgov2/nist/core/LexerCore;->currentMatch:Lgov2/nist/core/Token;

    iput p1, v5, Lgov2/nist/core/Token;->tokenType:I

    goto :goto_1

    .line 283
    .end local v1    # "cur":Ljava/lang/Integer;
    .end local v4    # "nexttok":Ljava/lang/String;
    :cond_a
    invoke-virtual {p0, v7}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    int-to-char v3, v5

    .restart local v3    # "next":C
    const/16 v5, 0x1002

    .line 284
    if-eq p1, v5, :cond_b

    const/16 v5, 0x1003

    .line 291
    if-ne p1, v5, :cond_5

    .line 292
    invoke-static {v3}, Lgov2/nist/core/LexerCore;->isAlpha(C)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 293
    new-instance v5, Lgov2/nist/core/Token;

    invoke-direct {v5}, Lgov2/nist/core/Token;-><init>()V

    iput-object v5, p0, Lgov2/nist/core/LexerCore;->currentMatch:Lgov2/nist/core/Token;

    .line 294
    iget-object v5, p0, Lgov2/nist/core/LexerCore;->currentMatch:Lgov2/nist/core/Token;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lgov2/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 295
    iget-object v5, p0, Lgov2/nist/core/LexerCore;->currentMatch:Lgov2/nist/core/Token;

    iput p1, v5, Lgov2/nist/core/Token;->tokenType:I

    .line 296
    invoke-virtual {p0, v8}, Lgov2/nist/core/LexerCore;->consume(I)V

    goto/16 :goto_1

    .line 285
    :cond_b
    invoke-static {v3}, Lgov2/nist/core/LexerCore;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 286
    new-instance v5, Lgov2/nist/core/Token;

    invoke-direct {v5}, Lgov2/nist/core/Token;-><init>()V

    iput-object v5, p0, Lgov2/nist/core/LexerCore;->currentMatch:Lgov2/nist/core/Token;

    .line 287
    iget-object v5, p0, Lgov2/nist/core/LexerCore;->currentMatch:Lgov2/nist/core/Token;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lgov2/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 288
    iget-object v5, p0, Lgov2/nist/core/LexerCore;->currentMatch:Lgov2/nist/core/Token;

    iput p1, v5, Lgov2/nist/core/Token;->tokenType:I

    .line 289
    invoke-virtual {p0, v8}, Lgov2/nist/core/LexerCore;->consume(I)V

    goto/16 :goto_1

    .line 285
    :cond_c
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov2/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\nExpecting DIGIT"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov2/nist/core/LexerCore;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 292
    :cond_d
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov2/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\nExpecting ALPHA"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov2/nist/core/LexerCore;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 309
    .restart local v0    # "ch":C
    :cond_e
    invoke-virtual {p0, v8}, Lgov2/nist/core/LexerCore;->consume(I)V

    goto/16 :goto_1
.end method

.method public number()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 671
    iget v2, p0, Lgov2/nist/core/LexerCore;->ptr:I

    .local v2, "startIdx":I
    const/4 v3, 0x0

    .line 673
    :try_start_0
    invoke-virtual {p0, v3}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    invoke-static {v3}, Lgov2/nist/core/LexerCore;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 676
    invoke-virtual {p0, v3}, Lgov2/nist/core/LexerCore;->consume(I)V

    :goto_0
    const/4 v3, 0x0

    .line 678
    invoke-virtual {p0, v3}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    int-to-char v1, v3

    .line 679
    .local v1, "next":C
    invoke-static {v1}, Lgov2/nist/core/LexerCore;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 684
    iget-object v3, p0, Lgov2/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v4, p0, Lgov2/nist/core/LexerCore;->ptr:I

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 674
    .end local v1    # "next":C
    :cond_0
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lgov2/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": Unexpected token at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lgov2/nist/core/LexerCore;->ptr:I

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :catch_0
    move-exception v0

    .line 686
    .local v0, "ex":Ljava/text/ParseException;
    iget-object v3, p0, Lgov2/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v4, p0, Lgov2/nist/core/LexerCore;->ptr:I

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .end local v0    # "ex":Ljava/text/ParseException;
    .restart local v1    # "next":C
    :cond_1
    const/4 v3, 0x1

    .line 680
    :try_start_1
    invoke-virtual {p0, v3}, Lgov2/nist/core/LexerCore;->consume(I)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public peekNextToken()Lgov2/nist/core/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0, v0}, Lgov2/nist/core/LexerCore;->peekNextToken(I)[Lgov2/nist/core/Token;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public peekNextToken(I)[Lgov2/nist/core/Token;
    .locals 9
    .param p1, "ntokens"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 219
    iget v4, p0, Lgov2/nist/core/LexerCore;->ptr:I

    .line 220
    .local v4, "old":I
    new-array v5, p1, [Lgov2/nist/core/Token;

    .local v5, "retval":[Lgov2/nist/core/Token;
    const/4 v0, 0x0

    .line 221
    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 244
    iget v8, p0, Lgov2/nist/core/LexerCore;->ptr:I

    iput v8, p0, Lgov2/nist/core/LexerCore;->savedPtr:I

    .line 245
    iput v4, p0, Lgov2/nist/core/LexerCore;->ptr:I

    .line 246
    return-object v5

    .line 222
    :cond_0
    new-instance v6, Lgov2/nist/core/Token;

    invoke-direct {v6}, Lgov2/nist/core/Token;-><init>()V

    .line 223
    .local v6, "tok":Lgov2/nist/core/Token;
    invoke-virtual {p0}, Lgov2/nist/core/LexerCore;->startsId()Z

    move-result v8

    if-nez v8, :cond_1

    .line 233
    invoke-virtual {p0}, Lgov2/nist/core/LexerCore;->getNextChar()C

    move-result v8

    int-to-char v3, v8

    .line 234
    .local v3, "nextChar":C
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lgov2/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 235
    invoke-static {v3}, Lgov2/nist/core/LexerCore;->isAlpha(C)Z

    move-result v8

    if-nez v8, :cond_3

    .line 237
    invoke-static {v3}, Lgov2/nist/core/LexerCore;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_4

    .line 240
    iput v3, v6, Lgov2/nist/core/Token;->tokenType:I

    .line 242
    .end local v3    # "nextChar":C
    :goto_1
    aput-object v6, v5, v0

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p0}, Lgov2/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "id":Ljava/lang/String;
    iput-object v1, v6, Lgov2/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 226
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "idUppercase":Ljava/lang/String;
    iget-object v8, p0, Lgov2/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v8, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const/16 v8, 0xfff

    .line 231
    iput v8, v6, Lgov2/nist/core/Token;->tokenType:I

    goto :goto_1

    .line 228
    :cond_2
    iget-object v8, p0, Lgov2/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v8, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 229
    .local v7, "type":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v6, Lgov2/nist/core/Token;->tokenType:I

    goto :goto_1

    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "idUppercase":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/Integer;
    .restart local v3    # "nextChar":C
    :cond_3
    const/16 v8, 0x1003

    .line 236
    iput v8, v6, Lgov2/nist/core/Token;->tokenType:I

    goto :goto_1

    :cond_4
    const/16 v8, 0x1002

    .line 238
    iput v8, v6, Lgov2/nist/core/Token;->tokenType:I

    goto :goto_1
.end method

.method public quotedString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x22

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 536
    iget v2, p0, Lgov2/nist/core/LexerCore;->ptr:I

    add-int/lit8 v1, v2, 0x1

    .line 537
    .local v1, "startIdx":I
    invoke-virtual {p0, v3}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    if-ne v2, v5, :cond_1

    .line 538
    invoke-virtual {p0, v4}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 540
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lgov2/nist/core/LexerCore;->getNextChar()C

    move-result v2

    int-to-char v0, v2

    .line 541
    .local v0, "next":C
    if-eq v0, v5, :cond_3

    .line 544
    if-eqz v0, :cond_2

    const/16 v2, 0x5c

    .line 546
    if-ne v0, v2, :cond_0

    .line 547
    invoke-virtual {p0, v4}, Lgov2/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    .end local v0    # "next":C
    :cond_1
    const/4 v2, 0x0

    .line 537
    return-object v2

    .line 545
    .restart local v0    # "next":C
    :cond_2
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov2/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " :unexpected EOL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov2/nist/core/LexerCore;->ptr:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 550
    :cond_3
    iget-object v2, p0, Lgov2/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v3, p0, Lgov2/nist/core/LexerCore;->ptr:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public rewindInputPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 705
    iput p1, p0, Lgov2/nist/core/LexerCore;->ptr:I

    .line 706
    return-void
.end method

.method public selectLexer(Ljava/lang/String;)V
    .locals 0
    .param p1, "lexerName"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lgov2/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public startsId()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 360
    :try_start_0
    invoke-virtual {p0, v2}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    int-to-char v1, v2

    .line 361
    .local v1, "nextChar":C
    invoke-static {v1}, Lgov2/nist/core/LexerCore;->isTokenChar(C)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .end local v1    # "nextChar":C
    :catch_0
    move-exception v0

    .line 363
    .local v0, "ex":Ljava/text/ParseException;
    return v3
.end method

.method public startsSafeToken()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 369
    :try_start_0
    invoke-virtual {p0, v2}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    int-to-char v1, v2

    .line 370
    .local v1, "nextChar":C
    invoke-static {v1}, Lgov2/nist/core/LexerCore;->isAlphaDigit(C)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 373
    packed-switch v1, :pswitch_data_0

    .line 401
    :pswitch_0
    return v3

    .line 371
    :cond_0
    return v4

    .line 399
    :pswitch_1
    return v4

    .line 401
    .end local v1    # "nextChar":C
    :catch_0
    move-exception v0

    .line 405
    .local v0, "ex":Ljava/text/ParseException;
    return v3

    .line 373
    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public ttoken()Ljava/lang/String;
    .locals 5

    .prologue
    .line 410
    iget v2, p0, Lgov2/nist/core/LexerCore;->ptr:I

    .line 412
    .local v2, "startIdx":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov2/nist/core/LexerCore;->hasMoreChars()Z

    move-result v3

    if-nez v3, :cond_1

    .line 420
    :cond_0
    iget-object v3, p0, Lgov2/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v4, p0, Lgov2/nist/core/LexerCore;->ptr:I

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    const/4 v3, 0x0

    .line 413
    invoke-virtual {p0, v3}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    int-to-char v1, v3

    .line 414
    .local v1, "nextChar":C
    invoke-static {v1}, Lgov2/nist/core/LexerCore;->isTokenChar(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 415
    invoke-virtual {p0, v3}, Lgov2/nist/core/LexerCore;->consume(I)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 420
    .end local v1    # "nextChar":C
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/text/ParseException;
    const/4 v3, 0x0

    .line 422
    return-object v3
.end method

.method public ttokenSafe()Ljava/lang/String;
    .locals 6

    .prologue
    .line 439
    iget v3, p0, Lgov2/nist/core/LexerCore;->ptr:I

    .line 441
    .local v3, "startIdx":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov2/nist/core/LexerCore;->hasMoreChars()Z

    move-result v4

    if-nez v4, :cond_1

    .line 481
    :cond_0
    iget-object v4, p0, Lgov2/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v5, p0, Lgov2/nist/core/LexerCore;->ptr:I

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1
    const/4 v4, 0x0

    .line 442
    invoke-virtual {p0, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    int-to-char v2, v4

    .line 443
    .local v2, "nextChar":C
    invoke-static {v2}, Lgov2/nist/core/LexerCore;->isAlphaDigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 446
    const/4 v1, 0x0

    .line 447
    .local v1, "isValidChar":Z
    packed-switch v2, :pswitch_data_0

    .line 474
    :goto_1
    :pswitch_0
    if-eqz v1, :cond_0

    const/4 v4, 0x1

    .line 475
    invoke-virtual {p0, v4}, Lgov2/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    .line 481
    .end local v1    # "isValidChar":Z
    .end local v2    # "nextChar":C
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/text/ParseException;
    const/4 v4, 0x0

    .line 483
    return-object v4

    .end local v0    # "ex":Ljava/text/ParseException;
    .restart local v2    # "nextChar":C
    :cond_2
    const/4 v4, 0x1

    .line 444
    invoke-virtual {p0, v4}, Lgov2/nist/core/LexerCore;->consume(I)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 472
    .restart local v1    # "isValidChar":Z
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_1

    .line 447
    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
