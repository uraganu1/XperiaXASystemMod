.class public Lgov2/nist/javax2/sip/parser/URLParser;
.super Lgov2/nist/javax2/sip/parser/Parser;
.source "URLParser.java"


# direct methods
.method public constructor <init>(Lgov2/nist/javax2/sip/parser/Lexer;)V
    .locals 2
    .param p1, "lexer"    # Lgov2/nist/javax2/sip/parser/Lexer;

    .prologue
    .line 55
    invoke-direct {p0}, Lgov2/nist/javax2/sip/parser/Parser;-><init>()V

    .line 56
    iput-object p1, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    .line 57
    iget-object v0, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const-string/jumbo v1, "sip_urlLexer"

    invoke-virtual {v0, v1}, Lgov2/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Lgov2/nist/javax2/sip/parser/Parser;-><init>()V

    .line 51
    new-instance v0, Lgov2/nist/javax2/sip/parser/Lexer;

    const-string/jumbo v1, "sip_urlLexer"

    invoke-direct {v0, v1, p1}, Lgov2/nist/javax2/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    .line 52
    return-void
.end method

.method private base_phone_number()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 363
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 365
    .local v1, "s":Ljava/lang/StringBuffer;
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v3, :cond_1

    :goto_0
    const/4 v0, 0x0

    .line 368
    .local v0, "lc":I
    :goto_1
    :try_start_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->hasMoreChars()Z

    move-result v3

    if-nez v3, :cond_2

    .line 379
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 381
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v4, :cond_5

    :goto_2
    return-object v3

    .end local v0    # "lc":I
    :cond_1
    const-string/jumbo v3, "base_phone_number"

    .line 365
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    .restart local v0    # "lc":I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    int-to-char v2, v3

    .line 370
    .local v2, "w":C
    invoke-static {v2}, Lgov2/nist/javax2/sip/parser/Lexer;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 371
    :cond_3
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/16 v3, 0x2d

    .line 370
    if-eq v2, v3, :cond_3

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_3

    const/16 v3, 0x28

    if-eq v2, v3, :cond_3

    const/16 v3, 0x29

    if-eq v2, v3, :cond_3

    .line 374
    if-gtz v0, :cond_0

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    .end local v2    # "w":C
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v4, :cond_6

    :goto_3
    throw v3

    :cond_5
    const-string/jumbo v4, "base_phone_number"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string/jumbo v4, "base_phone_number"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private final global_phone_number(Z)Lgov2/nist/javax2/sip/address/TelephoneNumber;
    .locals 6
    .param p1, "inBrackets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 441
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v4, :cond_1

    .line 443
    :goto_0
    :try_start_0
    new-instance v2, Lgov2/nist/javax2/sip/address/TelephoneNumber;

    invoke-direct {v2}, Lgov2/nist/javax2/sip/address/TelephoneNumber;-><init>()V

    .line 444
    .local v2, "tn":Lgov2/nist/javax2/sip/address/TelephoneNumber;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lgov2/nist/javax2/sip/address/TelephoneNumber;->setGlobal(Z)V

    const/4 v1, 0x0

    .line 446
    .local v1, "nv":Lgov2/nist/core/NameValueList;
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0x2b

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 447
    invoke-direct {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->base_phone_number()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "b":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lgov2/nist/javax2/sip/address/TelephoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    .line 449
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->hasMoreChars()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 459
    .end local v1    # "nv":Lgov2/nist/core/NameValueList;
    :cond_0
    :goto_1
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v4, :cond_3

    :goto_2
    return-object v2

    .end local v0    # "b":Ljava/lang/String;
    .end local v2    # "tn":Lgov2/nist/javax2/sip/address/TelephoneNumber;
    :cond_1
    const-string/jumbo v4, "global_phone_number"

    .line 441
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 450
    .restart local v0    # "b":Ljava/lang/String;
    .restart local v1    # "nv":Lgov2/nist/core/NameValueList;
    .restart local v2    # "tn":Lgov2/nist/javax2/sip/address/TelephoneNumber;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    int-to-char v3, v4

    .local v3, "tok":C
    const/16 v4, 0x3b

    .line 451
    if-ne v3, v4, :cond_0

    if-eqz p1, :cond_0

    .line 452
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 453
    invoke-direct {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->tel_parameters()Lgov2/nist/core/NameValueList;

    move-result-object v1

    .line 454
    .local v1, "nv":Lgov2/nist/core/NameValueList;
    invoke-virtual {v2, v1}, Lgov2/nist/javax2/sip/address/TelephoneNumber;->setParameters(Lgov2/nist/core/NameValueList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 459
    .end local v0    # "b":Ljava/lang/String;
    .end local v1    # "nv":Lgov2/nist/core/NameValueList;
    .end local v2    # "tn":Lgov2/nist/javax2/sip/address/TelephoneNumber;
    .end local v3    # "tok":C
    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v5, :cond_4

    :goto_3
    throw v4

    .restart local v0    # "b":Ljava/lang/String;
    .restart local v2    # "tn":Lgov2/nist/javax2/sip/address/TelephoneNumber;
    :cond_3
    const-string/jumbo v4, "global_phone_number"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "b":Ljava/lang/String;
    .end local v2    # "tn":Lgov2/nist/javax2/sip/address/TelephoneNumber;
    :cond_4
    const-string/jumbo v5, "global_phone_number"

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected static isMark(C)Z
    .locals 1
    .param p0, "next"    # C

    .prologue
    .line 61
    sparse-switch p0, :sswitch_data_0

    .line 73
    const/4 v0, 0x0

    return v0

    .line 71
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 61
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x5f -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method protected static isReserved(C)Z
    .locals 1
    .param p0, "next"    # C

    .prologue
    .line 177
    packed-switch p0, :pswitch_data_0

    .line 190
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 188
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
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
    .end packed-switch
.end method

.method protected static isUnreserved(C)Z
    .locals 2
    .param p0, "next"    # C

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-static {p0}, Lgov2/nist/javax2/sip/parser/Lexer;->isAlphaDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->isMark(C)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method protected static isUserUnreserved(C)Z
    .locals 1
    .param p0, "la"    # C

    .prologue
    .line 101
    packed-switch p0, :pswitch_data_0

    .line 113
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 111
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
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
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private local_number()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 390
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 391
    .local v2, "s":Ljava/lang/StringBuffer;
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v3, :cond_1

    :goto_0
    const/4 v1, 0x0

    .line 394
    .local v1, "lc":I
    :goto_1
    :try_start_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->hasMoreChars()Z

    move-result v3

    if-nez v3, :cond_2

    .line 407
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 409
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v4, :cond_5

    :goto_2
    return-object v3

    .end local v1    # "lc":I
    :cond_1
    const-string/jumbo v3, "local_number"

    .line 391
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 395
    .restart local v1    # "lc":I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    int-to-char v0, v3

    .local v0, "la":C
    const/16 v3, 0x2a

    .line 396
    if-ne v0, v3, :cond_4

    .line 399
    :cond_3
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 400
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/16 v3, 0x23

    .line 396
    if-eq v0, v3, :cond_3

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_3

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_3

    const/16 v3, 0x28

    if-eq v0, v3, :cond_3

    const/16 v3, 0x29

    if-eq v0, v3, :cond_3

    invoke-static {v0}, Lgov2/nist/javax2/sip/parser/Lexer;->isHexDigit(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 402
    if-gtz v1, :cond_0

    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexepcted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    .end local v0    # "la":C
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v4, :cond_6

    :goto_3
    throw v3

    :cond_5
    const-string/jumbo v4, "local_number"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string/jumbo v4, "local_number"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private local_phone_number(Z)Lgov2/nist/javax2/sip/address/TelephoneNumber;
    .locals 6
    .param p1, "inBrackets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 464
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v4, :cond_1

    .line 465
    :goto_0
    new-instance v2, Lgov2/nist/javax2/sip/address/TelephoneNumber;

    invoke-direct {v2}, Lgov2/nist/javax2/sip/address/TelephoneNumber;-><init>()V

    .line 466
    .local v2, "tn":Lgov2/nist/javax2/sip/address/TelephoneNumber;
    invoke-virtual {v2, v5}, Lgov2/nist/javax2/sip/address/TelephoneNumber;->setGlobal(Z)V

    const/4 v1, 0x0

    .local v1, "nv":Lgov2/nist/core/NameValueList;
    const/4 v0, 0x0

    .line 470
    .local v0, "b":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->local_number()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "b":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lgov2/nist/javax2/sip/address/TelephoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    .line 472
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->hasMoreChars()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 489
    .end local v1    # "nv":Lgov2/nist/core/NameValueList;
    :cond_0
    :goto_1
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v4, :cond_3

    .line 491
    :goto_2
    return-object v2

    .end local v0    # "b":Ljava/lang/String;
    .end local v2    # "tn":Lgov2/nist/javax2/sip/address/TelephoneNumber;
    :cond_1
    const-string/jumbo v4, "local_phone_number"

    .line 464
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 473
    .restart local v0    # "b":Ljava/lang/String;
    .restart local v1    # "nv":Lgov2/nist/core/NameValueList;
    .restart local v2    # "tn":Lgov2/nist/javax2/sip/address/TelephoneNumber;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->peekNextToken()Lgov2/nist/core/Token;

    move-result-object v3

    .line 474
    .local v3, "tok":Lgov2/nist/core/Token;
    invoke-virtual {v3}, Lgov2/nist/core/Token;->getTokenType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 476
    :pswitch_0
    if-eqz p1, :cond_0

    .line 477
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 478
    invoke-direct {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->tel_parameters()Lgov2/nist/core/NameValueList;

    move-result-object v1

    .line 479
    .local v1, "nv":Lgov2/nist/core/NameValueList;
    invoke-virtual {v2, v1}, Lgov2/nist/javax2/sip/address/TelephoneNumber;->setParameters(Lgov2/nist/core/NameValueList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 489
    .end local v0    # "b":Ljava/lang/String;
    .end local v1    # "nv":Lgov2/nist/core/NameValueList;
    .end local v3    # "tok":Lgov2/nist/core/Token;
    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v5, :cond_4

    :goto_3
    throw v4

    .restart local v0    # "b":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "local_phone_number"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "b":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "local_phone_number"

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3

    .line 474
    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_0
    .end packed-switch
.end method

.method private phone_context()Lgov2/nist/core/NameValue;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 532
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 534
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    int-to-char v0, v3

    .local v0, "la":C
    const/16 v3, 0x2b

    .line 536
    if-eq v0, v3, :cond_0

    .line 539
    invoke-static {v0}, Lgov2/nist/javax2/sip/parser/Lexer;->isAlphaDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 543
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid phone-context:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 537
    :cond_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->base_phone_number()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "value":Ljava/lang/Object;
    :goto_0
    new-instance v3, Lgov2/nist/core/NameValue;

    const-string/jumbo v4, "phone-context"

    invoke-direct {v3, v4, v2, v5}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object v3

    .line 540
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    move-result-object v1

    .line 541
    .local v1, "t":Lgov2/nist/core/Token;
    invoke-virtual {v1}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/Object;
    goto :goto_0
.end method

.method private tel_parameters()Lgov2/nist/core/NameValueList;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 495
    new-instance v1, Lgov2/nist/core/NameValueList;

    invoke-direct {v1}, Lgov2/nist/core/NameValueList;-><init>()V

    .line 501
    .local v1, "nvList":Lgov2/nist/core/NameValueList;
    :goto_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    move-result-object v2

    .local v2, "pname":Ljava/lang/String;
    const-string/jumbo v4, "phone-context"

    .line 504
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 507
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4, v6}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_1

    .line 512
    new-instance v0, Lgov2/nist/core/NameValue;

    const-string/jumbo v4, ""

    invoke-direct {v0, v2, v4, v7}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 515
    .local v0, "nv":Lgov2/nist/core/NameValue;
    :goto_1
    invoke-virtual {v1, v0}, Lgov2/nist/core/NameValueList;->set(Lgov2/nist/core/NameValue;)V

    .line 517
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4, v6}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_2

    .line 520
    return-object v1

    .line 505
    .end local v0    # "nv":Lgov2/nist/core/NameValue;
    :cond_0
    invoke-direct {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->phone_context()Lgov2/nist/core/NameValue;

    move-result-object v0

    .restart local v0    # "nv":Lgov2/nist/core/NameValue;
    goto :goto_1

    .line 508
    .end local v0    # "nv":Lgov2/nist/core/NameValue;
    :cond_1
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4, v7}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 509
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    move-result-object v3

    .line 510
    .local v3, "value":Ljava/lang/String;
    new-instance v0, Lgov2/nist/core/NameValue;

    invoke-direct {v0, v2, v3, v6}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .restart local v0    # "nv":Lgov2/nist/core/NameValue;
    goto :goto_1

    .line 518
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4, v7}, Lgov2/nist/core/LexerCore;->consume(I)V

    goto :goto_0
.end method

.method private uriParam()Lgov2/nist/core/NameValue;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 156
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v4, :cond_0

    :goto_0
    :try_start_0
    const-string/jumbo v3, ""

    .line 159
    .local v3, "pvalue":Ljava/lang/String;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "pname":Ljava/lang/String;
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    int-to-char v1, v4

    .line 161
    .local v1, "next":C
    const/4 v0, 0x1

    .local v0, "isFlagParam":Z
    const/16 v4, 0x3d

    .line 162
    if-eq v1, v4, :cond_1

    .line 167
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 170
    :goto_2
    new-instance v4, Lgov2/nist/core/NameValue;

    invoke-direct {v4, v2, v3, v0}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    sget-boolean v5, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v5, :cond_6

    :goto_3
    return-object v4

    .end local v0    # "isFlagParam":Z
    .end local v1    # "next":C
    .end local v2    # "pname":Ljava/lang/String;
    .end local v3    # "pvalue":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "uriParam"

    .line 156
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    .restart local v0    # "isFlagParam":Z
    .restart local v1    # "next":C
    .restart local v2    # "pname":Ljava/lang/String;
    .restart local v3    # "pvalue":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 164
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 165
    const/4 v0, 0x0

    goto :goto_1

    .line 167
    :cond_2
    if-nez v3, :cond_4

    .line 172
    :cond_3
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v4, :cond_5

    :goto_4
    return-object v6

    .line 167
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_5
    const-string/jumbo v4, "uriParam"

    .line 172
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string/jumbo v5, "uriParam"

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3

    .end local v0    # "isFlagParam":Z
    .end local v1    # "next":C
    .end local v2    # "pname":Ljava/lang/String;
    .end local v3    # "pvalue":Ljava/lang/String;
    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v5, :cond_7

    :goto_5
    throw v4

    :cond_7
    const-string/jumbo v5, "uriParam"

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_5
.end method


# virtual methods
.method protected escaped()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 213
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v4, :cond_1

    .line 215
    :goto_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 216
    .local v3, "retval":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    int-to-char v0, v4

    .line 217
    .local v0, "next":C
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    int-to-char v1, v4

    .line 218
    .local v1, "next1":C
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    int-to-char v2, v4

    .local v2, "next2":C
    const/16 v4, 0x25

    .line 219
    if-eq v0, v4, :cond_2

    :cond_0
    const-string/jumbo v4, "escaped"

    .line 225
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .end local v0    # "next":C
    .end local v1    # "next1":C
    .end local v2    # "next2":C
    .end local v3    # "retval":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v5, :cond_4

    :goto_1
    throw v4

    :cond_1
    const-string/jumbo v4, "escaped"

    .line 213
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    .restart local v0    # "next":C
    .restart local v1    # "next1":C
    .restart local v2    # "next2":C
    .restart local v3    # "retval":Ljava/lang/StringBuffer;
    :cond_2
    :try_start_1
    invoke-static {v1}, Lgov2/nist/javax2/sip/parser/Lexer;->isHexDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Lgov2/nist/javax2/sip/parser/Lexer;->isHexDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 221
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 223
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 226
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 228
    sget-boolean v5, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v5, :cond_3

    :goto_2
    return-object v4

    :cond_3
    const-string/jumbo v5, "escaped"

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "next":C
    .end local v1    # "next1":C
    .end local v2    # "next2":C
    .end local v3    # "retval":Ljava/lang/StringBuffer;
    :cond_4
    const-string/jumbo v5, "escaped"

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected hvalue()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 658
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 659
    .local v2, "retval":Ljava/lang/StringBuffer;
    :goto_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->hasMoreChars()Z

    move-result v3

    if-nez v3, :cond_1

    .line 690
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 660
    :cond_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    int-to-char v1, v3

    .line 662
    .local v1, "la":C
    const/4 v0, 0x0

    .line 663
    .local v0, "isValidChar":Z
    sparse-switch v1, :sswitch_data_0

    .line 682
    :goto_1
    if-eqz v0, :cond_3

    .line 683
    :cond_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 684
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 680
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 682
    :cond_3
    invoke-static {v1}, Lgov2/nist/javax2/sip/parser/Lexer;->isAlphaDigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x25

    .line 685
    if-ne v1, v3, :cond_0

    .line 686
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->escaped()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 663
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x24 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3f -> :sswitch_0
        0x5b -> :sswitch_0
        0x5d -> :sswitch_0
        0x5f -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method protected isEscaped()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    :try_start_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v4, 0x25

    if-eq v3, v4, :cond_2

    :cond_0
    :goto_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    invoke-static {v3}, Lgov2/nist/javax2/sip/parser/Lexer;->isHexDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    invoke-static {v3}, Lgov2/nist/javax2/sip/parser/Lexer;->isHexDigit(C)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 208
    .local v0, "ex":Ljava/lang/Exception;
    return v2
.end method

.method protected paramNameOrValue()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 131
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getPtr()I

    move-result v2

    .line 132
    .local v2, "startIdx":I
    :goto_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->hasMoreChars()Z

    move-result v3

    if-nez v3, :cond_1

    .line 152
    :cond_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->getPtr()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 133
    :cond_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    int-to-char v1, v3

    .line 134
    .local v1, "next":C
    const/4 v0, 0x0

    .line 135
    .local v0, "isValidChar":Z
    sparse-switch v1, :sswitch_data_0

    .line 145
    :goto_1
    if-eqz v0, :cond_3

    .line 146
    :cond_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    .line 143
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 145
    :cond_3
    invoke-static {v1}, Lgov2/nist/javax2/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 147
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->isEscaped()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    .line 135
    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x5b -> :sswitch_0
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method public final parseTelephoneNumber(Z)Lgov2/nist/javax2/sip/address/TelephoneNumber;
    .locals 4
    .param p1, "inBrackets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 422
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v2, :cond_1

    .line 423
    :goto_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const-string/jumbo v3, "charLexer"

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 425
    :try_start_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    int-to-char v0, v2

    .local v0, "c":C
    const/16 v2, 0x2b

    .line 426
    if-eq v0, v2, :cond_2

    .line 428
    invoke-static {v0}, Lgov2/nist/javax2/sip/parser/Lexer;->isHexDigit(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 430
    :cond_0
    invoke-direct {p0, p1}, Lgov2/nist/javax2/sip/parser/URLParser;->local_phone_number(Z)Lgov2/nist/javax2/sip/address/TelephoneNumber;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 435
    .local v1, "tn":Lgov2/nist/javax2/sip/address/TelephoneNumber;
    :goto_1
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v2, :cond_4

    :goto_2
    return-object v1

    .end local v0    # "c":C
    .end local v1    # "tn":Lgov2/nist/javax2/sip/address/TelephoneNumber;
    :cond_1
    const-string/jumbo v2, "telephone_subscriber"

    .line 422
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 427
    .restart local v0    # "c":C
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lgov2/nist/javax2/sip/parser/URLParser;->global_phone_number(Z)Lgov2/nist/javax2/sip/address/TelephoneNumber;

    move-result-object v1

    .restart local v1    # "tn":Lgov2/nist/javax2/sip/address/TelephoneNumber;
    goto :goto_1

    .end local v1    # "tn":Lgov2/nist/javax2/sip/address/TelephoneNumber;
    :cond_3
    const/16 v2, 0x23

    .line 428
    if-eq v0, v2, :cond_0

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_0

    const/16 v2, 0x29

    if-eq v0, v2, :cond_0

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected char "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    .end local v0    # "c":C
    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v3, :cond_5

    :goto_3
    throw v2

    .restart local v0    # "c":C
    .restart local v1    # "tn":Lgov2/nist/javax2/sip/address/TelephoneNumber;
    :cond_4
    const-string/jumbo v2, "telephone_subscriber"

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "c":C
    .end local v1    # "tn":Lgov2/nist/javax2/sip/address/TelephoneNumber;
    :cond_5
    const-string/jumbo v3, "telephone_subscriber"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected password()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 735
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getPtr()I

    move-result v2

    .line 737
    .local v2, "startIdx":I
    :goto_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    int-to-char v1, v3

    .line 738
    .local v1, "la":C
    const/4 v0, 0x0

    .line 739
    .local v0, "isValidChar":Z
    sparse-switch v1, :sswitch_data_0

    .line 747
    :goto_1
    if-eqz v0, :cond_1

    .line 748
    :cond_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    .line 745
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 747
    :cond_1
    invoke-static {v1}, Lgov2/nist/javax2/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 749
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->isEscaped()Z

    move-result v3

    if-nez v3, :cond_2

    .line 756
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->getPtr()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 750
    :cond_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    .line 739
    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method public peekScheme()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 639
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->peekNextToken(I)[Lgov2/nist/core/Token;

    move-result-object v1

    .line 640
    .local v1, "tokens":[Lgov2/nist/core/Token;
    array-length v2, v1

    if-eqz v2, :cond_0

    .line 641
    aget-object v2, v1, v4

    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "scheme":Ljava/lang/String;
    return-object v0

    .end local v0    # "scheme":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 640
    return-object v2
.end method

.method protected qheader()Lgov2/nist/core/NameValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 650
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->getNextToken(C)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 652
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->hvalue()Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, "value":Ljava/lang/String;
    new-instance v2, Lgov2/nist/core/NameValue;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object v2
.end method

.method public sipURL(Z)Lgov2/nist/javax2/sip/address/SipUri;
    .locals 13
    .param p1, "inBrackets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x3a

    .line 570
    sget-boolean v10, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v10, :cond_4

    .line 571
    :goto_0
    new-instance v5, Lgov2/nist/javax2/sip/address/SipUri;

    invoke-direct {v5}, Lgov2/nist/javax2/sip/address/SipUri;-><init>()V

    .line 573
    .local v5, "retval":Lgov2/nist/javax2/sip/address/SipUri;
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->peekNextToken()Lgov2/nist/core/Token;

    move-result-object v2

    .local v2, "nextToken":Lgov2/nist/core/Token;
    const/16 v7, 0x803

    .local v7, "sipOrSips":I
    const-string/jumbo v6, "sip"

    .line 576
    .local v6, "scheme":Ljava/lang/String;
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenType()I

    move-result v10

    const/16 v11, 0x858

    if-eq v10, v11, :cond_5

    .line 582
    :goto_1
    :try_start_0
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10, v7}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 583
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 584
    invoke-virtual {v5, v6}, Lgov2/nist/javax2/sip/address/SipUri;->setScheme(Ljava/lang/String;)V

    .line 585
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->markInputPosition()I

    move-result v8

    .line 586
    .local v8, "startOfUser":I
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->user()Ljava/lang/String;

    move-result-object v9

    .local v9, "userOrHost":Ljava/lang/String;
    const/4 v4, 0x0

    .line 591
    .local v4, "passOrPort":Ljava/lang/String;
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->lookAhead()C

    move-result v10

    if-eq v10, v12, :cond_6

    .line 597
    .end local v4    # "passOrPort":Ljava/lang/String;
    :goto_2
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->lookAhead()C

    move-result v10

    const/16 v11, 0x40

    if-eq v10, v11, :cond_7

    .line 604
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10, v8}, Lgov2/nist/core/LexerCore;->rewindInputPosition(I)V

    .line 607
    :cond_0
    :goto_3
    new-instance v0, Lgov2/nist/core/HostNameParser;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->getLexer()Lgov2/nist/javax2/sip/parser/Lexer;

    move-result-object v10

    invoke-direct {v0, v10}, Lgov2/nist/core/HostNameParser;-><init>(Lgov2/nist/core/LexerCore;)V

    .line 608
    .local v0, "hnp":Lgov2/nist/core/HostNameParser;
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lgov2/nist/core/HostNameParser;->hostPort(Z)Lgov2/nist/core/HostPort;

    move-result-object v1

    .line 609
    .local v1, "hp":Lgov2/nist/core/HostPort;
    invoke-virtual {v5, v1}, Lgov2/nist/javax2/sip/address/SipUri;->setHostPort(Lgov2/nist/core/HostPort;)V

    .line 611
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const-string/jumbo v11, "charLexer"

    invoke-virtual {v10, v11}, Lgov2/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 612
    :cond_1
    :goto_4
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->hasMoreChars()Z

    move-result v10

    if-nez v10, :cond_8

    .line 621
    :cond_2
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->hasMoreChars()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_9

    .line 634
    :cond_3
    sget-boolean v10, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v10, :cond_b

    :goto_5
    return-object v5

    .end local v0    # "hnp":Lgov2/nist/core/HostNameParser;
    .end local v1    # "hp":Lgov2/nist/core/HostPort;
    .end local v2    # "nextToken":Lgov2/nist/core/Token;
    .end local v5    # "retval":Lgov2/nist/javax2/sip/address/SipUri;
    .end local v6    # "scheme":Ljava/lang/String;
    .end local v7    # "sipOrSips":I
    .end local v8    # "startOfUser":I
    .end local v9    # "userOrHost":Ljava/lang/String;
    :cond_4
    const-string/jumbo v10, "sipURL"

    .line 570
    invoke-virtual {p0, v10}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v2    # "nextToken":Lgov2/nist/core/Token;
    .restart local v5    # "retval":Lgov2/nist/javax2/sip/address/SipUri;
    .restart local v6    # "scheme":Ljava/lang/String;
    .restart local v7    # "sipOrSips":I
    :cond_5
    const/16 v7, 0x858

    const-string/jumbo v6, "sips"

    .line 578
    goto :goto_1

    .line 592
    .restart local v4    # "passOrPort":Ljava/lang/String;
    .restart local v8    # "startOfUser":I
    .restart local v9    # "userOrHost":Ljava/lang/String;
    :cond_6
    :try_start_1
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 593
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->password()Ljava/lang/String;

    move-result-object v4

    .local v4, "passOrPort":Ljava/lang/String;
    goto :goto_2

    .line 598
    .end local v4    # "passOrPort":Ljava/lang/String;
    :cond_7
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 599
    invoke-virtual {v5, v9}, Lgov2/nist/javax2/sip/address/SipUri;->setUser(Ljava/lang/String;)V

    .line 600
    if-eqz v4, :cond_0

    invoke-virtual {v5, v4}, Lgov2/nist/javax2/sip/address/SipUri;->setUserPassword(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 634
    .end local v8    # "startOfUser":I
    .end local v9    # "userOrHost":Ljava/lang/String;
    :catchall_0
    move-exception v10

    sget-boolean v11, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v11, :cond_c

    :goto_6
    throw v10

    .line 615
    .restart local v0    # "hnp":Lgov2/nist/core/HostNameParser;
    .restart local v1    # "hp":Lgov2/nist/core/HostPort;
    .restart local v8    # "startOfUser":I
    .restart local v9    # "userOrHost":Ljava/lang/String;
    :cond_8
    :try_start_2
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v10

    const/16 v11, 0x3b

    if-ne v10, v11, :cond_2

    if-eqz p1, :cond_2

    .line 616
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 617
    invoke-direct {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->uriParam()Lgov2/nist/core/NameValue;

    move-result-object v3

    .line 618
    .local v3, "parms":Lgov2/nist/core/NameValue;
    if-eqz v3, :cond_1

    invoke-virtual {v5, v3}, Lgov2/nist/javax2/sip/address/SipUri;->setUriParameter(Lgov2/nist/core/NameValue;)V

    goto :goto_4

    .line 621
    .end local v3    # "parms":Lgov2/nist/core/NameValue;
    :cond_9
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v10

    const/16 v11, 0x3f

    if-ne v10, v11, :cond_3

    .line 622
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 623
    :goto_7
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->hasMoreChars()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 624
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->qheader()Lgov2/nist/core/NameValue;

    move-result-object v3

    .line 625
    .restart local v3    # "parms":Lgov2/nist/core/NameValue;
    invoke-virtual {v5, v3}, Lgov2/nist/javax2/sip/address/SipUri;->setQHeader(Lgov2/nist/core/NameValue;)V

    .line 626
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->hasMoreChars()Z

    move-result v10

    if-nez v10, :cond_a

    .line 629
    :goto_8
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lgov2/nist/core/LexerCore;->consume(I)V

    goto :goto_7

    .line 626
    :cond_a
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    const/16 v11, 0x26

    if-ne v10, v11, :cond_3

    goto :goto_8

    .end local v3    # "parms":Lgov2/nist/core/NameValue;
    :cond_b
    const-string/jumbo v10, "sipURL"

    .line 634
    invoke-virtual {p0, v10}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto/16 :goto_5

    .end local v0    # "hnp":Lgov2/nist/core/HostNameParser;
    .end local v1    # "hp":Lgov2/nist/core/HostPort;
    .end local v8    # "startOfUser":I
    .end local v9    # "userOrHost":Ljava/lang/String;
    :cond_c
    const-string/jumbo v11, "sipURL"

    invoke-virtual {p0, v11}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public telURL(Z)Lgov2/nist/javax2/sip/address/TelURLImpl;
    .locals 4
    .param p1, "inBrackets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 554
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v3, 0x839

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 555
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 556
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/parser/URLParser;->parseTelephoneNumber(Z)Lgov2/nist/javax2/sip/address/TelephoneNumber;

    move-result-object v1

    .line 557
    .local v1, "tn":Lgov2/nist/javax2/sip/address/TelephoneNumber;
    new-instance v0, Lgov2/nist/javax2/sip/address/TelURLImpl;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/address/TelURLImpl;-><init>()V

    .line 558
    .local v0, "telUrl":Lgov2/nist/javax2/sip/address/TelURLImpl;
    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/address/TelURLImpl;->setTelephoneNumber(Lgov2/nist/javax2/sip/address/TelephoneNumber;)V

    .line 559
    return-object v0
.end method

.method public uriReference(Z)Lgov2/nist/javax2/sip/address/GenericURI;
    .locals 10
    .param p1, "inBrackets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x3a

    const/4 v8, 0x0

    .line 328
    sget-boolean v6, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v6, :cond_1

    :goto_0
    const/4 v1, 0x0

    .line 330
    .local v1, "retval":Lgov2/nist/javax2/sip/address/GenericURI;
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->peekNextToken(I)[Lgov2/nist/core/Token;

    move-result-object v4

    .line 331
    .local v4, "tokens":[Lgov2/nist/core/Token;
    aget-object v2, v4, v8

    .local v2, "t1":Lgov2/nist/core/Token;
    const/4 v6, 0x1

    .line 332
    aget-object v3, v4, v6

    .line 335
    .local v3, "t2":Lgov2/nist/core/Token;
    :try_start_0
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenType()I

    move-result v6

    const/16 v7, 0x803

    if-ne v6, v7, :cond_2

    .line 336
    :cond_0
    invoke-virtual {v3}, Lgov2/nist/core/Token;->getTokenType()I

    move-result v6

    if-eq v6, v9, :cond_3

    const-string/jumbo v6, "Expecting \':\'"

    .line 339
    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v6

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    .end local v1    # "retval":Lgov2/nist/javax2/sip/address/GenericURI;
    :catchall_0
    move-exception v6

    sget-boolean v7, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v7, :cond_7

    :goto_1
    throw v6

    .end local v2    # "t1":Lgov2/nist/core/Token;
    .end local v3    # "t2":Lgov2/nist/core/Token;
    .end local v4    # "tokens":[Lgov2/nist/core/Token;
    :cond_1
    const-string/jumbo v6, "uriReference"

    .line 328
    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 335
    .restart local v1    # "retval":Lgov2/nist/javax2/sip/address/GenericURI;
    .restart local v2    # "t1":Lgov2/nist/core/Token;
    .restart local v3    # "t2":Lgov2/nist/core/Token;
    .restart local v4    # "tokens":[Lgov2/nist/core/Token;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenType()I

    move-result v6

    const/16 v7, 0x858

    if-eq v6, v7, :cond_0

    .line 340
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenType()I

    move-result v6

    const/16 v7, 0x839

    if-eq v6, v7, :cond_4

    .line 346
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->uricString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 348
    .local v5, "urlString":Ljava/lang/String;
    :try_start_2
    new-instance v1, Lgov2/nist/javax2/sip/address/GenericURI;

    .end local v1    # "retval":Lgov2/nist/javax2/sip/address/GenericURI;
    invoke-direct {v1, v5}, Lgov2/nist/javax2/sip/address/GenericURI;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    .end local v5    # "urlString":Ljava/lang/String;
    .local v1, "retval":Lgov2/nist/javax2/sip/address/GenericURI;
    :goto_2
    sget-boolean v6, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v6, :cond_6

    .line 356
    :goto_3
    return-object v1

    .line 337
    .local v1, "retval":Lgov2/nist/javax2/sip/address/GenericURI;
    :cond_3
    :try_start_3
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/parser/URLParser;->sipURL(Z)Lgov2/nist/javax2/sip/address/SipUri;

    move-result-object v1

    .local v1, "retval":Lgov2/nist/javax2/sip/address/GenericURI;
    goto :goto_2

    .line 341
    .local v1, "retval":Lgov2/nist/javax2/sip/address/GenericURI;
    :cond_4
    invoke-virtual {v3}, Lgov2/nist/core/Token;->getTokenType()I

    move-result v6

    if-eq v6, v9, :cond_5

    const-string/jumbo v6, "Expecting \':\'"

    .line 344
    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v6

    throw v6

    .line 342
    :cond_5
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/parser/URLParser;->telURL(Z)Lgov2/nist/javax2/sip/address/TelURLImpl;

    move-result-object v1

    .local v1, "retval":Lgov2/nist/javax2/sip/address/GenericURI;
    goto :goto_2

    .line 351
    .end local v1    # "retval":Lgov2/nist/javax2/sip/address/GenericURI;
    .restart local v5    # "urlString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 350
    .local v0, "ex":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v6

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "ex":Ljava/text/ParseException;
    .end local v5    # "urlString":Ljava/lang/String;
    .restart local v1    # "retval":Lgov2/nist/javax2/sip/address/GenericURI;
    :cond_6
    const-string/jumbo v6, "uriReference"

    .line 354
    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3

    .end local v1    # "retval":Lgov2/nist/javax2/sip/address/GenericURI;
    :cond_7
    const-string/jumbo v7, "uriReference"

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected uric()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 249
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v3, :cond_0

    .line 252
    :goto_0
    :try_start_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    int-to-char v1, v3

    .line 253
    .local v1, "la":C
    invoke-static {v1}, Lgov2/nist/javax2/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 256
    invoke-static {v1}, Lgov2/nist/javax2/sip/parser/URLParser;->isReserved(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 259
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->isEscaped()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_5

    .line 269
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v3, :cond_7

    :goto_1
    return-object v5

    .end local v1    # "la":C
    :cond_0
    const-string/jumbo v3, "uric"

    .line 249
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 254
    .restart local v1    # "la":C
    :cond_1
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 255
    invoke-static {v1}, Lgov2/nist/javax2/sip/parser/Lexer;->charAsString(C)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 269
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v4, :cond_2

    :goto_2
    return-object v3

    :cond_2
    const-string/jumbo v4, "uric"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2

    .line 257
    :cond_3
    :try_start_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 258
    invoke-static {v1}, Lgov2/nist/javax2/sip/parser/Lexer;->charAsString(C)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 269
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v4, :cond_4

    :goto_3
    return-object v3

    :cond_4
    const-string/jumbo v4, "uric"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3

    .line 260
    :cond_5
    :try_start_3
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->charAsString(I)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "retval":Ljava/lang/String;
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->consume(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v3, :cond_6

    :goto_4
    return-object v2

    :cond_6
    const-string/jumbo v3, "uric"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_4

    .end local v2    # "retval":Ljava/lang/String;
    :cond_7
    const-string/jumbo v3, "uric"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "la":C
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v3, :cond_8

    :goto_5
    return-object v5

    :cond_8
    const-string/jumbo v3, "uric"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_5

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v4, :cond_9

    :goto_6
    throw v3

    :cond_9
    const-string/jumbo v4, "uric"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_6
.end method

.method protected uricString()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 300
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 302
    .local v4, "retval":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->uric()Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "next":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 315
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 304
    :cond_0
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    int-to-char v2, v5

    .local v2, "la":C
    const/16 v5, 0x5b

    .line 307
    if-eq v2, v5, :cond_1

    .line 317
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 308
    :cond_1
    new-instance v0, Lgov2/nist/core/HostNameParser;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->getLexer()Lgov2/nist/javax2/sip/parser/Lexer;

    move-result-object v5

    invoke-direct {v0, v5}, Lgov2/nist/core/HostNameParser;-><init>(Lgov2/nist/core/LexerCore;)V

    .line 309
    .local v0, "hnp":Lgov2/nist/core/HostNameParser;
    invoke-virtual {v0, v6}, Lgov2/nist/core/HostNameParser;->hostPort(Z)Lgov2/nist/core/HostPort;

    move-result-object v1

    .line 310
    .local v1, "hp":Lgov2/nist/core/HostPort;
    invoke-virtual {v1}, Lgov2/nist/core/HostPort;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method protected user()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 715
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v2, :cond_1

    .line 717
    :goto_0
    :try_start_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->getPtr()I

    move-result v1

    .line 718
    .local v1, "startIdx":I
    :goto_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->hasMoreChars()Z

    move-result v2

    if-nez v2, :cond_2

    .line 727
    :cond_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getPtr()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 729
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v3, :cond_5

    :goto_2
    return-object v2

    .end local v1    # "startIdx":I
    :cond_1
    const-string/jumbo v2, "user"

    .line 715
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 719
    .restart local v1    # "startIdx":I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    int-to-char v0, v2

    .line 720
    .local v0, "la":C
    invoke-static {v0}, Lgov2/nist/javax2/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 721
    :cond_3
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->consume(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 729
    .end local v0    # "la":C
    .end local v1    # "startIdx":I
    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov2/nist/javax2/sip/parser/URLParser;->debug:Z

    if-nez v3, :cond_6

    :goto_3
    throw v2

    .line 720
    .restart local v0    # "la":C
    .restart local v1    # "startIdx":I
    :cond_4
    :try_start_2
    invoke-static {v0}, Lgov2/nist/javax2/sip/parser/URLParser;->isUserUnreserved(C)Z

    move-result v2

    if-nez v2, :cond_3

    .line 722
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/URLParser;->isEscaped()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 723
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/URLParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->consume(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v0    # "la":C
    :cond_5
    const-string/jumbo v3, "user"

    .line 729
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2

    .end local v1    # "startIdx":I
    :cond_6
    const-string/jumbo v3, "user"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method
