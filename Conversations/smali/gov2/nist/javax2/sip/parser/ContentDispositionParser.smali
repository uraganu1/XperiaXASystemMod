.class public Lgov2/nist/javax2/sip/parser/ContentDispositionParser;
.super Lgov2/nist/javax2/sip/parser/ParametersParser;
.source "ContentDispositionParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 69
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/ContentDispositionParser;->debug:Z

    if-nez v3, :cond_0

    :goto_0
    const/16 v3, 0x834

    .line 72
    :try_start_0
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ContentDispositionParser;->headerName(I)V

    .line 74
    new-instance v0, Lgov2/nist/javax2/sip/header/ContentDisposition;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ContentDisposition;-><init>()V

    .local v0, "cd":Lgov2/nist/javax2/sip/header/ContentDisposition;
    const-string/jumbo v3, "Content-Disposition"

    .line 75
    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/ContentDisposition;->setHeaderName(Ljava/lang/String;)V

    .line 77
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ContentDispositionParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 78
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ContentDispositionParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 80
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ContentDispositionParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v2

    .line 81
    .local v2, "token":Lgov2/nist/core/Token;
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/ContentDisposition;->setDispositionType(Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ContentDispositionParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 83
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/ParametersParser;->parse(Lgov2/nist/javax2/sip/header/ParametersHeader;)V

    .line 85
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ContentDispositionParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 86
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ContentDispositionParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/ContentDispositionParser;->debug:Z

    if-nez v3, :cond_1

    :goto_1
    return-object v0

    .end local v0    # "cd":Lgov2/nist/javax2/sip/header/ContentDisposition;
    .end local v2    # "token":Lgov2/nist/core/Token;
    :cond_0
    const-string/jumbo v3, "ContentDispositionParser.parse"

    .line 69
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ContentDispositionParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "cd":Lgov2/nist/javax2/sip/header/ContentDisposition;
    .restart local v2    # "token":Lgov2/nist/core/Token;
    :cond_1
    const-string/jumbo v3, "ContentDispositionParser.parse"

    .line 92
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ContentDispositionParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "cd":Lgov2/nist/javax2/sip/header/ContentDisposition;
    .end local v2    # "token":Lgov2/nist/core/Token;
    :catch_0
    move-exception v1

    .line 90
    .local v1, "ex":Ljava/text/ParseException;
    :try_start_1
    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ContentDispositionParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "ex":Ljava/text/ParseException;
    :catchall_0
    move-exception v3

    .line 92
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/ContentDispositionParser;->debug:Z

    if-nez v4, :cond_2

    :goto_2
    throw v3

    :cond_2
    const-string/jumbo v4, "ContentDispositionParser.parse"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ContentDispositionParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
