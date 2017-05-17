.class public Lgov2/nist/javax2/sip/parser/SupportedParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "SupportedParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2c

    .line 69
    new-instance v1, Lgov2/nist/javax2/sip/header/SupportedList;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/SupportedList;-><init>()V

    .line 70
    .local v1, "supportedList":Lgov2/nist/javax2/sip/header/SupportedList;
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/SupportedParser;->debug:Z

    if-nez v3, :cond_1

    :goto_0
    const/16 v3, 0x814

    .line 73
    :try_start_0
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/SupportedParser;->headerName(I)V

    .line 75
    :cond_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/SupportedParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 105
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/SupportedParser;->debug:Z

    if-nez v3, :cond_3

    .line 108
    :goto_1
    return-object v1

    :cond_1
    const-string/jumbo v3, "SupportedParser.parse"

    .line 70
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/SupportedParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_2
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/SupportedParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 77
    new-instance v0, Lgov2/nist/javax2/sip/header/Supported;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/Supported;-><init>()V

    .local v0, "supported":Lgov2/nist/javax2/sip/header/Supported;
    const-string/jumbo v3, "Supported"

    .line 78
    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/Supported;->setHeaderName(Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/SupportedParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 82
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/SupportedParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v2

    .line 83
    .local v2, "token":Lgov2/nist/core/Token;
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/Supported;->setOptionTag(Ljava/lang/String;)V

    .line 84
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/SupportedParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 86
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/SupportedList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 88
    :goto_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/SupportedParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    .line 89
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/SupportedParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 90
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/SupportedParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 92
    new-instance v0, Lgov2/nist/javax2/sip/header/Supported;

    .end local v0    # "supported":Lgov2/nist/javax2/sip/header/Supported;
    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/Supported;-><init>()V

    .line 95
    .restart local v0    # "supported":Lgov2/nist/javax2/sip/header/Supported;
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/SupportedParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 96
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/SupportedParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/Supported;->setOptionTag(Ljava/lang/String;)V

    .line 98
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/SupportedParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 100
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/SupportedList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 105
    .end local v0    # "supported":Lgov2/nist/javax2/sip/header/Supported;
    .end local v2    # "token":Lgov2/nist/core/Token;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov2/nist/javax2/sip/parser/SupportedParser;->debug:Z

    if-nez v4, :cond_4

    :goto_3
    throw v3

    :cond_3
    const-string/jumbo v3, "SupportedParser.parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/SupportedParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "SupportedParser.parse"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/SupportedParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method
