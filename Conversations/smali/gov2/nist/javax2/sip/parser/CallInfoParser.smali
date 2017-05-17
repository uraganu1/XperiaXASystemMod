.class public Lgov2/nist/javax2/sip/parser/CallInfoParser;
.super Lgov2/nist/javax2/sip/parser/ParametersParser;
.source "CallInfoParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2c

    .line 69
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/CallInfoParser;->debug:Z

    if-nez v4, :cond_1

    .line 70
    :goto_0
    new-instance v1, Lgov2/nist/javax2/sip/header/CallInfoList;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/CallInfoList;-><init>()V

    .local v1, "list":Lgov2/nist/javax2/sip/header/CallInfoList;
    const/16 v4, 0x833

    .line 73
    :try_start_0
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/CallInfoParser;->headerName(I)V

    .line 75
    :cond_0
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/CallInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 111
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/CallInfoParser;->debug:Z

    if-nez v4, :cond_3

    :goto_1
    return-object v1

    .end local v1    # "list":Lgov2/nist/javax2/sip/header/CallInfoList;
    :cond_1
    const-string/jumbo v4, "CallInfoParser.parse"

    .line 69
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/CallInfoParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    .restart local v1    # "list":Lgov2/nist/javax2/sip/header/CallInfoList;
    :cond_2
    :try_start_1
    new-instance v0, Lgov2/nist/javax2/sip/header/CallInfo;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/CallInfo;-><init>()V

    .local v0, "callInfo":Lgov2/nist/javax2/sip/header/CallInfo;
    const-string/jumbo v4, "Call-Info"

    .line 77
    invoke-virtual {v0, v4}, Lgov2/nist/javax2/sip/header/CallInfo;->setHeaderName(Ljava/lang/String;)V

    .line 79
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/CallInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 80
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/CallInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 81
    new-instance v3, Lgov2/nist/javax2/sip/parser/URLParser;

    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/CallInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    check-cast v4, Lgov2/nist/javax2/sip/parser/Lexer;

    invoke-direct {v3, v4}, Lgov2/nist/javax2/sip/parser/URLParser;-><init>(Lgov2/nist/javax2/sip/parser/Lexer;)V

    .line 82
    .local v3, "urlParser":Lgov2/nist/javax2/sip/parser/URLParser;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov2/nist/javax2/sip/parser/URLParser;->uriReference(Z)Lgov2/nist/javax2/sip/address/GenericURI;

    move-result-object v2

    .line 83
    .local v2, "uri":Lgov2/nist/javax2/sip/address/GenericURI;
    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/header/CallInfo;->setInfo(Ljavax2/sip/address/URI;)V

    .line 84
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/CallInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 85
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/CallInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 87
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/ParametersParser;->parse(Lgov2/nist/javax2/sip/header/ParametersHeader;)V

    .line 88
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/CallInfoList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 90
    :goto_2
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/CallInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    .line 91
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/CallInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 92
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/CallInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 94
    new-instance v0, Lgov2/nist/javax2/sip/header/CallInfo;

    .end local v0    # "callInfo":Lgov2/nist/javax2/sip/header/CallInfo;
    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/CallInfo;-><init>()V

    .line 96
    .restart local v0    # "callInfo":Lgov2/nist/javax2/sip/header/CallInfo;
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/CallInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 97
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/CallInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 98
    new-instance v3, Lgov2/nist/javax2/sip/parser/URLParser;

    .end local v3    # "urlParser":Lgov2/nist/javax2/sip/parser/URLParser;
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/CallInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    check-cast v4, Lgov2/nist/javax2/sip/parser/Lexer;

    invoke-direct {v3, v4}, Lgov2/nist/javax2/sip/parser/URLParser;-><init>(Lgov2/nist/javax2/sip/parser/Lexer;)V

    .line 99
    .restart local v3    # "urlParser":Lgov2/nist/javax2/sip/parser/URLParser;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov2/nist/javax2/sip/parser/URLParser;->uriReference(Z)Lgov2/nist/javax2/sip/address/GenericURI;

    move-result-object v2

    .line 100
    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/header/CallInfo;->setInfo(Ljavax2/sip/address/URI;)V

    .line 101
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/CallInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 102
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/CallInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 104
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/ParametersParser;->parse(Lgov2/nist/javax2/sip/header/ParametersHeader;)V

    .line 105
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/CallInfoList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 111
    .end local v0    # "callInfo":Lgov2/nist/javax2/sip/header/CallInfo;
    .end local v2    # "uri":Lgov2/nist/javax2/sip/address/GenericURI;
    .end local v3    # "urlParser":Lgov2/nist/javax2/sip/parser/URLParser;
    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov2/nist/javax2/sip/parser/CallInfoParser;->debug:Z

    if-nez v5, :cond_4

    :goto_3
    throw v4

    :cond_3
    const-string/jumbo v4, "CallInfoParser.parse"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/CallInfoParser;->dbg_leave(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v5, "CallInfoParser.parse"

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/CallInfoParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method
