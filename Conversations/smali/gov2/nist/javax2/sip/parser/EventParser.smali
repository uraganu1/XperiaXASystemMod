.class public Lgov2/nist/javax2/sip/parser/EventParser;
.super Lgov2/nist/javax2/sip/parser/ParametersParser;
.source "EventParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 69
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/EventParser;->debug:Z

    if-nez v4, :cond_0

    :goto_0
    const/16 v4, 0x83f

    .line 72
    :try_start_0
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/EventParser;->headerName(I)V

    .line 73
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/EventParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 75
    new-instance v0, Lgov2/nist/javax2/sip/header/Event;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/Event;-><init>()V

    .line 76
    .local v0, "event":Lgov2/nist/javax2/sip/header/Event;
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/EventParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 77
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/EventParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v2

    .line 78
    .local v2, "token":Lgov2/nist/core/Token;
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/Event;->setEventType(Ljava/lang/String;)V

    .line 81
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/ParametersParser;->parse(Lgov2/nist/javax2/sip/header/ParametersHeader;)V

    .line 83
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/EventParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 84
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/EventParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/EventParser;->debug:Z

    if-nez v4, :cond_1

    :goto_1
    return-object v0

    .end local v0    # "event":Lgov2/nist/javax2/sip/header/Event;
    .end local v2    # "token":Lgov2/nist/core/Token;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "EventParser.parse"

    .line 69
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/EventParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "event":Lgov2/nist/javax2/sip/header/Event;
    .restart local v2    # "token":Lgov2/nist/core/Token;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "EventParser.parse"

    .line 91
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/EventParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "event":Lgov2/nist/javax2/sip/header/Event;
    .end local v2    # "token":Lgov2/nist/core/Token;
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "ex":Ljava/text/ParseException;
    :try_start_1
    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/EventParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "ex":Ljava/text/ParseException;
    :catchall_0
    move-exception v4

    .line 91
    sget-boolean v5, Lgov2/nist/javax2/sip/parser/EventParser;->debug:Z

    if-nez v5, :cond_2

    :goto_2
    throw v4

    :cond_2
    const-string/jumbo v5, "EventParser.parse"

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/EventParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
