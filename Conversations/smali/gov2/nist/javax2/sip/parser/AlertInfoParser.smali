.class public Lgov2/nist/javax2/sip/parser/AlertInfoParser;
.super Lgov2/nist/javax2/sip/parser/ParametersParser;
.source "AlertInfoParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x3c

    const/16 v7, 0x2c

    .line 72
    sget-boolean v5, Lgov2/nist/javax2/sip/parser/AlertInfoParser;->debug:Z

    if-nez v5, :cond_1

    .line 73
    :goto_0
    new-instance v2, Lgov2/nist/javax2/sip/header/AlertInfoList;

    invoke-direct {v2}, Lgov2/nist/javax2/sip/header/AlertInfoList;-><init>()V

    .local v2, "list":Lgov2/nist/javax2/sip/header/AlertInfoList;
    const/16 v5, 0x80d

    .line 76
    :try_start_0
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/AlertInfoParser;->headerName(I)V

    .line 78
    :cond_0
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AlertInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    .line 114
    sget-boolean v5, Lgov2/nist/javax2/sip/parser/AlertInfoParser;->debug:Z

    if-nez v5, :cond_4

    :goto_1
    return-object v2

    .end local v2    # "list":Lgov2/nist/javax2/sip/header/AlertInfoList;
    :cond_1
    const-string/jumbo v5, "AlertInfoParser.parse"

    .line 72
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/AlertInfoParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .restart local v2    # "list":Lgov2/nist/javax2/sip/header/AlertInfoList;
    :cond_2
    :try_start_1
    new-instance v0, Lgov2/nist/javax2/sip/header/AlertInfo;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/AlertInfo;-><init>()V

    .local v0, "alertInfo":Lgov2/nist/javax2/sip/header/AlertInfo;
    const-string/jumbo v5, "Alert-Info"

    .line 80
    invoke-virtual {v0, v5}, Lgov2/nist/javax2/sip/header/AlertInfo;->setHeaderName(Ljava/lang/String;)V

    .line 85
    :goto_2
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AlertInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 86
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AlertInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-eq v5, v8, :cond_3

    .line 97
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AlertInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "alertInfoStr":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/AlertInfo;->setAlertInfo(Ljava/lang/String;)V

    .line 101
    .end local v1    # "alertInfoStr":Ljava/lang/String;
    :goto_3
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AlertInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 103
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/ParametersParser;->parse(Lgov2/nist/javax2/sip/header/ParametersHeader;)V

    .line 104
    invoke-virtual {v2, v0}, Lgov2/nist/javax2/sip/header/AlertInfoList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 106
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AlertInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-ne v5, v7, :cond_0

    .line 107
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AlertInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 114
    .end local v0    # "alertInfo":Lgov2/nist/javax2/sip/header/AlertInfo;
    :catchall_0
    move-exception v5

    sget-boolean v6, Lgov2/nist/javax2/sip/parser/AlertInfoParser;->debug:Z

    if-nez v6, :cond_5

    :goto_4
    throw v5

    .line 87
    .restart local v0    # "alertInfo":Lgov2/nist/javax2/sip/header/AlertInfo;
    :cond_3
    :try_start_2
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AlertInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v6, 0x3c

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 88
    new-instance v4, Lgov2/nist/javax2/sip/parser/URLParser;

    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AlertInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    check-cast v5, Lgov2/nist/javax2/sip/parser/Lexer;

    invoke-direct {v4, v5}, Lgov2/nist/javax2/sip/parser/URLParser;-><init>(Lgov2/nist/javax2/sip/parser/Lexer;)V

    .line 89
    .local v4, "urlParser":Lgov2/nist/javax2/sip/parser/URLParser;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov2/nist/javax2/sip/parser/URLParser;->uriReference(Z)Lgov2/nist/javax2/sip/address/GenericURI;

    move-result-object v3

    .line 90
    .local v3, "uri":Lgov2/nist/javax2/sip/address/GenericURI;
    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/AlertInfo;->setAlertInfo(Ljavax2/sip/address/URI;)V

    .line 91
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AlertInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .end local v0    # "alertInfo":Lgov2/nist/javax2/sip/header/AlertInfo;
    .end local v3    # "uri":Lgov2/nist/javax2/sip/address/GenericURI;
    .end local v4    # "urlParser":Lgov2/nist/javax2/sip/parser/URLParser;
    :cond_4
    const-string/jumbo v5, "AlertInfoParser.parse"

    .line 114
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/AlertInfoParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v6, "AlertInfoParser.parse"

    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/AlertInfoParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_4
.end method
