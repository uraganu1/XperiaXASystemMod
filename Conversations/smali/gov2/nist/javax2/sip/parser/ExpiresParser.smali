.class public Lgov2/nist/javax2/sip/parser/ExpiresParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "ExpiresParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v3, Lgov2/nist/javax2/sip/header/Expires;

    invoke-direct {v3}, Lgov2/nist/javax2/sip/header/Expires;-><init>()V

    .line 67
    .local v3, "expires":Lgov2/nist/javax2/sip/header/Expires;
    sget-boolean v5, Lgov2/nist/javax2/sip/parser/ExpiresParser;->debug:Z

    if-nez v5, :cond_0

    .line 69
    :goto_0
    :try_start_0
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/ExpiresParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v6, 0x82a

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 70
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/ExpiresParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 71
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/ExpiresParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 72
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/ExpiresParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 73
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/ExpiresParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->getNextId()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "nextId":Ljava/lang/String;
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/ExpiresParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 77
    .local v0, "delta":I
    invoke-virtual {v3, v0}, Lgov2/nist/javax2/sip/header/Expires;->setExpires(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    sget-boolean v5, Lgov2/nist/javax2/sip/parser/ExpiresParser;->debug:Z

    if-nez v5, :cond_1

    :goto_1
    return-object v3

    .end local v0    # "delta":I
    .end local v4    # "nextId":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "parse"

    .line 67
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/ExpiresParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "delta":I
    .restart local v4    # "nextId":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "parse"

    .line 85
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/ExpiresParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "delta":I
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string/jumbo v5, "bad integer format"

    .line 80
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/ExpiresParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "nextId":Ljava/lang/String;
    :catchall_0
    move-exception v5

    .line 85
    sget-boolean v6, Lgov2/nist/javax2/sip/parser/ExpiresParser;->debug:Z

    if-nez v6, :cond_2

    :goto_2
    throw v5

    .line 80
    .restart local v4    # "nextId":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 82
    .local v2, "ex":Ljavax2/sip/InvalidArgumentException;
    :try_start_3
    invoke-virtual {v2}, Ljavax2/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/ExpiresParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v2    # "ex":Ljavax2/sip/InvalidArgumentException;
    .end local v4    # "nextId":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "parse"

    .line 85
    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/ExpiresParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
