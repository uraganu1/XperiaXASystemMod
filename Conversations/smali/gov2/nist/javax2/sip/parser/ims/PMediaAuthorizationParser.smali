.class public Lgov2/nist/javax2/sip/parser/ims/PMediaAuthorizationParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "PMediaAuthorizationParser.java"


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

    .line 64
    new-instance v2, Lgov2/nist/javax2/sip/header/ims/PMediaAuthorizationList;

    invoke-direct {v2}, Lgov2/nist/javax2/sip/header/ims/PMediaAuthorizationList;-><init>()V

    .line 66
    .local v2, "mediaAuthorizationList":Lgov2/nist/javax2/sip/header/ims/PMediaAuthorizationList;
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/ims/PMediaAuthorizationParser;->debug:Z

    if-nez v4, :cond_0

    :goto_0
    const/16 v4, 0x852

    .line 69
    :try_start_0
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ims/PMediaAuthorizationParser;->headerName(I)V

    .line 71
    new-instance v1, Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;-><init>()V

    .local v1, "mediaAuthorization":Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;
    const-string/jumbo v4, "P-Media-Authorization"

    .line 72
    invoke-virtual {v1, v4}, Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;->setHeaderName(Ljava/lang/String;)V

    .line 74
    :goto_1
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 95
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/ims/PMediaAuthorizationParser;->debug:Z

    if-nez v4, :cond_3

    :goto_2
    return-object v2

    .end local v1    # "mediaAuthorization":Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;
    :cond_0
    const-string/jumbo v4, "MediaAuthorizationParser.parse"

    .line 66
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ims/PMediaAuthorizationParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    .restart local v1    # "mediaAuthorization":Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 76
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 78
    .local v3, "token":Lgov2/nist/core/Token;
    :try_start_2
    invoke-virtual {v3}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;->setMediaAuthorizationToken(Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :try_start_3
    invoke-virtual {v2, v1}, Lgov2/nist/javax2/sip/header/ims/PMediaAuthorizationList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 84
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 85
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    if-eq v4, v6, :cond_2

    .line 89
    :goto_3
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 95
    .end local v1    # "mediaAuthorization":Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;
    .end local v3    # "token":Lgov2/nist/core/Token;
    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov2/nist/javax2/sip/parser/ims/PMediaAuthorizationParser;->debug:Z

    if-nez v5, :cond_4

    :goto_4
    throw v4

    .line 81
    .restart local v1    # "mediaAuthorization":Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;
    .restart local v3    # "token":Lgov2/nist/core/Token;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljavax2/sip/InvalidArgumentException;
    :try_start_4
    invoke-virtual {v0}, Ljavax2/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ims/PMediaAuthorizationParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4

    .line 86
    .end local v0    # "e":Ljavax2/sip/InvalidArgumentException;
    :cond_2
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 87
    new-instance v1, Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;

    .end local v1    # "mediaAuthorization":Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;
    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v1    # "mediaAuthorization":Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;
    goto :goto_3

    .end local v3    # "token":Lgov2/nist/core/Token;
    :cond_3
    const-string/jumbo v4, "MediaAuthorizationParser.parse"

    .line 95
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ims/PMediaAuthorizationParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2

    .end local v1    # "mediaAuthorization":Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;
    :cond_4
    const-string/jumbo v5, "MediaAuthorizationParser.parse"

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/ims/PMediaAuthorizationParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_4
.end method
