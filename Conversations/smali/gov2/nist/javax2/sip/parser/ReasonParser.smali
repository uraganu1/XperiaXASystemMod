.class public Lgov2/nist/javax2/sip/parser/ReasonParser;
.super Lgov2/nist/javax2/sip/parser/ParametersParser;
.source "ReasonParser.java"


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

    .line 68
    new-instance v1, Lgov2/nist/javax2/sip/header/ReasonList;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/ReasonList;-><init>()V

    .line 69
    .local v1, "reasonList":Lgov2/nist/javax2/sip/header/ReasonList;
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/ReasonParser;->debug:Z

    if-nez v4, :cond_0

    :goto_0
    const/16 v4, 0x83b

    .line 72
    :try_start_0
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ReasonParser;->headerName(I)V

    .line 73
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ReasonParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 74
    :goto_1
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ReasonParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 91
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/ReasonParser;->debug:Z

    if-nez v4, :cond_3

    .line 94
    :goto_2
    return-object v1

    :cond_0
    const-string/jumbo v4, "ReasonParser.parse"

    .line 69
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ReasonParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_1
    :try_start_1
    new-instance v0, Lgov2/nist/javax2/sip/header/Reason;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/Reason;-><init>()V

    .line 76
    .local v0, "reason":Lgov2/nist/javax2/sip/header/Reason;
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ReasonParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 77
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ReasonParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v2

    .line 78
    .local v2, "token":Lgov2/nist/core/Token;
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/Reason;->setProtocol(Ljava/lang/String;)V

    .line 81
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/ParametersParser;->parse(Lgov2/nist/javax2/sip/header/ParametersHeader;)V

    .line 82
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/ReasonList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 83
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ReasonParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    if-eq v4, v6, :cond_2

    .line 87
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ReasonParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 91
    .end local v0    # "reason":Lgov2/nist/javax2/sip/header/Reason;
    .end local v2    # "token":Lgov2/nist/core/Token;
    .end local v3    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov2/nist/javax2/sip/parser/ReasonParser;->debug:Z

    if-nez v5, :cond_4

    :goto_3
    throw v4

    .line 84
    .restart local v0    # "reason":Lgov2/nist/javax2/sip/header/Reason;
    .restart local v2    # "token":Lgov2/nist/core/Token;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ReasonParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 85
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ReasonParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v0    # "reason":Lgov2/nist/javax2/sip/header/Reason;
    .end local v2    # "token":Lgov2/nist/core/Token;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "ReasonParser.parse"

    .line 91
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ReasonParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string/jumbo v5, "ReasonParser.parse"

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/ReasonParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method
