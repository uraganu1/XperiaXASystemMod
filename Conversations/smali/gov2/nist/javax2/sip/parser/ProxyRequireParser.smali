.class public Lgov2/nist/javax2/sip/parser/ProxyRequireParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "ProxyRequireParser.java"


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

    .line 68
    new-instance v0, Lgov2/nist/javax2/sip/header/ProxyRequireList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ProxyRequireList;-><init>()V

    .line 69
    .local v0, "list":Lgov2/nist/javax2/sip/header/ProxyRequireList;
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/ProxyRequireParser;->debug:Z

    if-nez v3, :cond_1

    :goto_0
    const/16 v3, 0x81a

    .line 72
    :try_start_0
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ProxyRequireParser;->headerName(I)V

    .line 74
    :cond_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ProxyRequireParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 103
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/ProxyRequireParser;->debug:Z

    if-nez v3, :cond_3

    .line 106
    :goto_1
    return-object v0

    :cond_1
    const-string/jumbo v3, "ProxyRequireParser.parse"

    .line 69
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ProxyRequireParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_2
    :try_start_1
    new-instance v1, Lgov2/nist/javax2/sip/header/ProxyRequire;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/ProxyRequire;-><init>()V

    .local v1, "r":Lgov2/nist/javax2/sip/header/ProxyRequire;
    const-string/jumbo v3, "Proxy-Require"

    .line 76
    invoke-virtual {v1, v3}, Lgov2/nist/javax2/sip/header/ProxyRequire;->setHeaderName(Ljava/lang/String;)V

    .line 79
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ProxyRequireParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 80
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ProxyRequireParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v2

    .line 81
    .local v2, "token":Lgov2/nist/core/Token;
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgov2/nist/javax2/sip/header/ProxyRequire;->setOptionTag(Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ProxyRequireParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 84
    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/ProxyRequireList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 86
    :goto_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ProxyRequireParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    .line 87
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ProxyRequireParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 88
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ProxyRequireParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 90
    new-instance v1, Lgov2/nist/javax2/sip/header/ProxyRequire;

    .end local v1    # "r":Lgov2/nist/javax2/sip/header/ProxyRequire;
    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/ProxyRequire;-><init>()V

    .line 93
    .restart local v1    # "r":Lgov2/nist/javax2/sip/header/ProxyRequire;
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ProxyRequireParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 94
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ProxyRequireParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgov2/nist/javax2/sip/header/ProxyRequire;->setOptionTag(Ljava/lang/String;)V

    .line 96
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ProxyRequireParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 98
    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/ProxyRequireList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 103
    .end local v1    # "r":Lgov2/nist/javax2/sip/header/ProxyRequire;
    .end local v2    # "token":Lgov2/nist/core/Token;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov2/nist/javax2/sip/parser/ProxyRequireParser;->debug:Z

    if-nez v4, :cond_4

    :goto_3
    throw v3

    :cond_3
    const-string/jumbo v3, "ProxyRequireParser.parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ProxyRequireParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "ProxyRequireParser.parse"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ProxyRequireParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method
