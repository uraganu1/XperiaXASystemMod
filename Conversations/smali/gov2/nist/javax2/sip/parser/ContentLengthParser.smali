.class public Lgov2/nist/javax2/sip/parser/ContentLengthParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "ContentLengthParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 53
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/ContentLengthParser;->debug:Z

    if-nez v4, :cond_0

    .line 55
    :goto_0
    :try_start_0
    new-instance v0, Lgov2/nist/javax2/sip/header/ContentLength;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ContentLength;-><init>()V

    .local v0, "contentLength":Lgov2/nist/javax2/sip/header/ContentLength;
    const/16 v4, 0x824

    .line 56
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ContentLengthParser;->headerName(I)V

    .line 57
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentLengthParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "number":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lgov2/nist/javax2/sip/header/ContentLength;->setContentLength(I)V

    .line 59
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentLengthParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 60
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentLengthParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;
    :try_end_0
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/ContentLengthParser;->debug:Z

    if-nez v4, :cond_1

    :goto_1
    return-object v0

    .end local v0    # "contentLength":Lgov2/nist/javax2/sip/header/ContentLength;
    .end local v3    # "number":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "ContentLengthParser.enter"

    .line 53
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ContentLengthParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "contentLength":Lgov2/nist/javax2/sip/header/ContentLength;
    .restart local v3    # "number":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "ContentLengthParser.leave"

    .line 67
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ContentLengthParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "contentLength":Lgov2/nist/javax2/sip/header/ContentLength;
    .end local v3    # "number":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 63
    .local v2, "ex":Ljavax2/sip/InvalidArgumentException;
    :try_start_1
    invoke-virtual {v2}, Ljavax2/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ContentLengthParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .end local v2    # "ex":Ljavax2/sip/InvalidArgumentException;
    :catchall_0
    move-exception v4

    .line 67
    sget-boolean v5, Lgov2/nist/javax2/sip/parser/ContentLengthParser;->debug:Z

    if-nez v5, :cond_2

    :goto_2
    throw v4

    .line 63
    :catch_1
    move-exception v1

    .line 65
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ContentLengthParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :cond_2
    const-string/jumbo v5, "ContentLengthParser.leave"

    .line 67
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/ContentLengthParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
