.class public Lgov2/nist/javax2/sip/parser/ErrorInfoParser;
.super Lgov2/nist/javax2/sip/parser/ParametersParser;
.source "ErrorInfoParser.java"


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
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/ErrorInfoParser;->debug:Z

    if-nez v4, :cond_0

    .line 70
    :goto_0
    new-instance v1, Lgov2/nist/javax2/sip/header/ErrorInfoList;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/ErrorInfoList;-><init>()V

    .local v1, "list":Lgov2/nist/javax2/sip/header/ErrorInfoList;
    const/16 v4, 0x80a

    .line 73
    :try_start_0
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ErrorInfoParser;->headerName(I)V

    .line 75
    :goto_1
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ErrorInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 100
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/ErrorInfoParser;->debug:Z

    if-nez v4, :cond_3

    :goto_2
    return-object v1

    .end local v1    # "list":Lgov2/nist/javax2/sip/header/ErrorInfoList;
    :cond_0
    const-string/jumbo v4, "ErrorInfoParser.parse"

    .line 69
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ErrorInfoParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .local v0, "errorInfo":Lgov2/nist/javax2/sip/header/ErrorInfo;
    .restart local v1    # "list":Lgov2/nist/javax2/sip/header/ErrorInfoList;
    .local v2, "uri":Lgov2/nist/javax2/sip/address/GenericURI;
    .local v3, "urlParser":Lgov2/nist/javax2/sip/parser/URLParser;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ErrorInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 77
    .end local v0    # "errorInfo":Lgov2/nist/javax2/sip/header/ErrorInfo;
    .end local v2    # "uri":Lgov2/nist/javax2/sip/address/GenericURI;
    .end local v3    # "urlParser":Lgov2/nist/javax2/sip/parser/URLParser;
    :cond_2
    new-instance v0, Lgov2/nist/javax2/sip/header/ErrorInfo;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ErrorInfo;-><init>()V

    .restart local v0    # "errorInfo":Lgov2/nist/javax2/sip/header/ErrorInfo;
    const-string/jumbo v4, "Error-Info"

    .line 78
    invoke-virtual {v0, v4}, Lgov2/nist/javax2/sip/header/ErrorInfo;->setHeaderName(Ljava/lang/String;)V

    .line 80
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ErrorInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 81
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ErrorInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 82
    new-instance v3, Lgov2/nist/javax2/sip/parser/URLParser;

    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ErrorInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    check-cast v4, Lgov2/nist/javax2/sip/parser/Lexer;

    invoke-direct {v3, v4}, Lgov2/nist/javax2/sip/parser/URLParser;-><init>(Lgov2/nist/javax2/sip/parser/Lexer;)V

    .line 83
    .restart local v3    # "urlParser":Lgov2/nist/javax2/sip/parser/URLParser;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov2/nist/javax2/sip/parser/URLParser;->uriReference(Z)Lgov2/nist/javax2/sip/address/GenericURI;

    move-result-object v2

    .line 84
    .restart local v2    # "uri":Lgov2/nist/javax2/sip/address/GenericURI;
    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/header/ErrorInfo;->setErrorInfo(Ljavax2/sip/address/URI;)V

    .line 85
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ErrorInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 86
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ErrorInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 88
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/ParametersParser;->parse(Lgov2/nist/javax2/sip/header/ParametersHeader;)V

    .line 89
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/ErrorInfoList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 91
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ErrorInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eq v4, v6, :cond_1

    goto :goto_1

    .end local v0    # "errorInfo":Lgov2/nist/javax2/sip/header/ErrorInfo;
    .end local v2    # "uri":Lgov2/nist/javax2/sip/address/GenericURI;
    .end local v3    # "urlParser":Lgov2/nist/javax2/sip/parser/URLParser;
    :cond_3
    const-string/jumbo v4, "ErrorInfoParser.parse"

    .line 100
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ErrorInfoParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov2/nist/javax2/sip/parser/ErrorInfoParser;->debug:Z

    if-nez v5, :cond_4

    :goto_3
    throw v4

    :cond_4
    const-string/jumbo v5, "ErrorInfoParser.parse"

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/ErrorInfoParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method
