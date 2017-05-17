.class public Lgov2/nist/javax2/sip/parser/RAckParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "RAckParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 72
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/RAckParser;->debug:Z

    if-nez v4, :cond_0

    .line 73
    :goto_0
    new-instance v2, Lgov2/nist/javax2/sip/header/RAck;

    invoke-direct {v2}, Lgov2/nist/javax2/sip/header/RAck;-><init>()V

    .local v2, "rack":Lgov2/nist/javax2/sip/header/RAck;
    const/16 v4, 0x83d

    .line 75
    :try_start_0
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/RAckParser;->headerName(I)V

    const-string/jumbo v4, "RAck"

    .line 77
    invoke-virtual {v2, v4}, Lgov2/nist/javax2/sip/header/RAck;->setHeaderName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :try_start_1
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/RAckParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lgov2/nist/javax2/sip/header/RAck;->setRSequenceNumber(J)V

    .line 82
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/RAckParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 83
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/RAckParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lgov2/nist/javax2/sip/header/RAck;->setCSequenceNumber(J)V

    .line 85
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/RAckParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 86
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/RAckParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 87
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/RAckParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v3

    .line 88
    .local v3, "token":Lgov2/nist/core/Token;
    invoke-virtual {v3}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgov2/nist/javax2/sip/header/RAck;->setMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :try_start_2
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/RAckParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 94
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/RAckParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/RAckParser;->debug:Z

    if-nez v4, :cond_1

    :goto_1
    return-object v2

    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "rack":Lgov2/nist/javax2/sip/header/RAck;
    .end local v3    # "token":Lgov2/nist/core/Token;
    :cond_0
    const-string/jumbo v4, "RAckParser.parse"

    .line 72
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/RAckParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .restart local v2    # "rack":Lgov2/nist/javax2/sip/header/RAck;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "ex":Ljavax2/sip/InvalidArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljavax2/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/RAckParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    .end local v0    # "ex":Ljavax2/sip/InvalidArgumentException;
    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov2/nist/javax2/sip/parser/RAckParser;->debug:Z

    if-nez v5, :cond_2

    :goto_2
    throw v4

    .restart local v1    # "number":Ljava/lang/String;
    .restart local v3    # "token":Lgov2/nist/core/Token;
    :cond_1
    const-string/jumbo v4, "RAckParser.parse"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/RAckParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "number":Ljava/lang/String;
    .end local v3    # "token":Lgov2/nist/core/Token;
    :cond_2
    const-string/jumbo v5, "RAckParser.parse"

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/RAckParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
