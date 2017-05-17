.class public Lgov2/nist/javax2/sip/parser/MinExpiresParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "MinExpiresParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 70
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/MinExpiresParser;->debug:Z

    if-nez v3, :cond_0

    .line 71
    :goto_0
    new-instance v1, Lgov2/nist/javax2/sip/header/MinExpires;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/MinExpires;-><init>()V

    .local v1, "minExpires":Lgov2/nist/javax2/sip/header/MinExpires;
    const/16 v3, 0x83e

    .line 73
    :try_start_0
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/MinExpiresParser;->headerName(I)V

    const-string/jumbo v3, "Min-Expires"

    .line 75
    invoke-virtual {v1, v3}, Lgov2/nist/javax2/sip/header/MinExpires;->setHeaderName(Ljava/lang/String;)V

    .line 77
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/MinExpiresParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->number()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 79
    .local v2, "number":Ljava/lang/String;
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lgov2/nist/javax2/sip/header/MinExpires;->setExpires(I)V
    :try_end_1
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :try_start_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/MinExpiresParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 85
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/MinExpiresParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/MinExpiresParser;->debug:Z

    if-nez v3, :cond_1

    :goto_1
    return-object v1

    .end local v1    # "minExpires":Lgov2/nist/javax2/sip/header/MinExpires;
    .end local v2    # "number":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "MinExpiresParser.parse"

    .line 70
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/MinExpiresParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .restart local v1    # "minExpires":Lgov2/nist/javax2/sip/header/MinExpires;
    .restart local v2    # "number":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "ex":Ljavax2/sip/InvalidArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljavax2/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/MinExpiresParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    .end local v0    # "ex":Ljavax2/sip/InvalidArgumentException;
    .end local v2    # "number":Ljava/lang/String;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov2/nist/javax2/sip/parser/MinExpiresParser;->debug:Z

    if-nez v4, :cond_2

    :goto_2
    throw v3

    .restart local v2    # "number":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "MinExpiresParser.parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/MinExpiresParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v2    # "number":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "MinExpiresParser.parse"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/MinExpiresParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
