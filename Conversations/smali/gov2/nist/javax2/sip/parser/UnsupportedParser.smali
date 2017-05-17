.class public Lgov2/nist/javax2/sip/parser/UnsupportedParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "UnsupportedParser.java"


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
    new-instance v2, Lgov2/nist/javax2/sip/header/UnsupportedList;

    invoke-direct {v2}, Lgov2/nist/javax2/sip/header/UnsupportedList;-><init>()V

    .line 69
    .local v2, "unsupportedList":Lgov2/nist/javax2/sip/header/UnsupportedList;
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/UnsupportedParser;->debug:Z

    if-nez v3, :cond_1

    :goto_0
    const/16 v3, 0x81c

    .line 72
    :try_start_0
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/UnsupportedParser;->headerName(I)V

    .line 74
    :cond_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/UnsupportedParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 104
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/UnsupportedParser;->debug:Z

    if-nez v3, :cond_3

    .line 107
    :goto_1
    return-object v2

    :cond_1
    const-string/jumbo v3, "UnsupportedParser.parse"

    .line 69
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/UnsupportedParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_2
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/UnsupportedParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 76
    new-instance v1, Lgov2/nist/javax2/sip/header/Unsupported;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/Unsupported;-><init>()V

    .local v1, "unsupported":Lgov2/nist/javax2/sip/header/Unsupported;
    const-string/jumbo v3, "Unsupported"

    .line 77
    invoke-virtual {v1, v3}, Lgov2/nist/javax2/sip/header/Unsupported;->setHeaderName(Ljava/lang/String;)V

    .line 80
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/UnsupportedParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 81
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/UnsupportedParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v0

    .line 82
    .local v0, "token":Lgov2/nist/core/Token;
    invoke-virtual {v0}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgov2/nist/javax2/sip/header/Unsupported;->setOptionTag(Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/UnsupportedParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 85
    invoke-virtual {v2, v1}, Lgov2/nist/javax2/sip/header/UnsupportedList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 87
    :goto_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/UnsupportedParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    .line 88
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/UnsupportedParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 89
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/UnsupportedParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 91
    new-instance v1, Lgov2/nist/javax2/sip/header/Unsupported;

    .end local v1    # "unsupported":Lgov2/nist/javax2/sip/header/Unsupported;
    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/Unsupported;-><init>()V

    .line 94
    .restart local v1    # "unsupported":Lgov2/nist/javax2/sip/header/Unsupported;
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/UnsupportedParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 95
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/UnsupportedParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgov2/nist/javax2/sip/header/Unsupported;->setOptionTag(Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/UnsupportedParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 99
    invoke-virtual {v2, v1}, Lgov2/nist/javax2/sip/header/UnsupportedList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 104
    .end local v0    # "token":Lgov2/nist/core/Token;
    .end local v1    # "unsupported":Lgov2/nist/javax2/sip/header/Unsupported;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov2/nist/javax2/sip/parser/UnsupportedParser;->debug:Z

    if-nez v4, :cond_4

    :goto_3
    throw v3

    :cond_3
    const-string/jumbo v3, "UnsupportedParser.parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/UnsupportedParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "UnsupportedParser.parse"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/UnsupportedParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method
