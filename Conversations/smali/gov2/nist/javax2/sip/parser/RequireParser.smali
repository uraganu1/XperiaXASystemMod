.class public Lgov2/nist/javax2/sip/parser/RequireParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "RequireParser.java"


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
    new-instance v1, Lgov2/nist/javax2/sip/header/RequireList;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/RequireList;-><init>()V

    .line 70
    .local v1, "requireList":Lgov2/nist/javax2/sip/header/RequireList;
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/RequireParser;->debug:Z

    if-nez v3, :cond_1

    :goto_0
    const/16 v3, 0x829

    .line 73
    :try_start_0
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/RequireParser;->headerName(I)V

    .line 75
    :cond_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RequireParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 104
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/RequireParser;->debug:Z

    if-nez v3, :cond_3

    .line 107
    :goto_1
    return-object v1

    :cond_1
    const-string/jumbo v3, "RequireParser.parse"

    .line 70
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/RequireParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_2
    :try_start_1
    new-instance v0, Lgov2/nist/javax2/sip/header/Require;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/Require;-><init>()V

    .local v0, "r":Lgov2/nist/javax2/sip/header/Require;
    const-string/jumbo v3, "Require"

    .line 77
    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/Require;->setHeaderName(Ljava/lang/String;)V

    .line 80
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RequireParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 81
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RequireParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v2

    .line 82
    .local v2, "token":Lgov2/nist/core/Token;
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/Require;->setOptionTag(Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RequireParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 85
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/RequireList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 87
    :goto_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RequireParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    .line 88
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RequireParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 89
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RequireParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 91
    new-instance v0, Lgov2/nist/javax2/sip/header/Require;

    .end local v0    # "r":Lgov2/nist/javax2/sip/header/Require;
    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/Require;-><init>()V

    .line 94
    .restart local v0    # "r":Lgov2/nist/javax2/sip/header/Require;
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RequireParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 95
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RequireParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/Require;->setOptionTag(Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RequireParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 99
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/RequireList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 104
    .end local v0    # "r":Lgov2/nist/javax2/sip/header/Require;
    .end local v2    # "token":Lgov2/nist/core/Token;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov2/nist/javax2/sip/parser/RequireParser;->debug:Z

    if-nez v4, :cond_4

    :goto_3
    throw v3

    :cond_3
    const-string/jumbo v3, "RequireParser.parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/RequireParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "RequireParser.parse"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/RequireParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method
