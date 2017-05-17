.class public Lgov2/nist/javax2/sip/parser/AllowEventsParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "AllowEventsParser.java"


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
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/AllowEventsParser;->debug:Z

    if-nez v3, :cond_0

    .line 70
    :goto_0
    new-instance v1, Lgov2/nist/javax2/sip/header/AllowEventsList;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/AllowEventsList;-><init>()V

    .local v1, "list":Lgov2/nist/javax2/sip/header/AllowEventsList;
    const/16 v3, 0x841

    .line 73
    :try_start_0
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/AllowEventsParser;->headerName(I)V

    .line 75
    new-instance v0, Lgov2/nist/javax2/sip/header/AllowEvents;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/AllowEvents;-><init>()V

    .local v0, "allowEvents":Lgov2/nist/javax2/sip/header/AllowEvents;
    const-string/jumbo v3, "Allow-Events"

    .line 76
    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/AllowEvents;->setHeaderName(Ljava/lang/String;)V

    .line 78
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AllowEventsParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 79
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AllowEventsParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 80
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AllowEventsParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v2

    .line 81
    .local v2, "token":Lgov2/nist/core/Token;
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/AllowEvents;->setEventType(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/AllowEventsList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 84
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AllowEventsParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 85
    :goto_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AllowEventsParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    if-eq v3, v5, :cond_1

    .line 97
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AllowEventsParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 98
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AllowEventsParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/AllowEventsParser;->debug:Z

    if-nez v3, :cond_2

    :goto_2
    return-object v1

    .end local v0    # "allowEvents":Lgov2/nist/javax2/sip/header/AllowEvents;
    .end local v1    # "list":Lgov2/nist/javax2/sip/header/AllowEventsList;
    .end local v2    # "token":Lgov2/nist/core/Token;
    :cond_0
    const-string/jumbo v3, "AllowEventsParser.parse"

    .line 69
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/AllowEventsParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .restart local v0    # "allowEvents":Lgov2/nist/javax2/sip/header/AllowEvents;
    .restart local v1    # "list":Lgov2/nist/javax2/sip/header/AllowEventsList;
    .restart local v2    # "token":Lgov2/nist/core/Token;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AllowEventsParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 87
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AllowEventsParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 89
    new-instance v0, Lgov2/nist/javax2/sip/header/AllowEvents;

    .end local v0    # "allowEvents":Lgov2/nist/javax2/sip/header/AllowEvents;
    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/AllowEvents;-><init>()V

    .line 90
    .restart local v0    # "allowEvents":Lgov2/nist/javax2/sip/header/AllowEvents;
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AllowEventsParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 91
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AllowEventsParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/AllowEvents;->setEventType(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/AllowEventsList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 95
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AllowEventsParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 102
    .end local v0    # "allowEvents":Lgov2/nist/javax2/sip/header/AllowEvents;
    .end local v2    # "token":Lgov2/nist/core/Token;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov2/nist/javax2/sip/parser/AllowEventsParser;->debug:Z

    if-nez v4, :cond_3

    :goto_3
    throw v3

    .restart local v0    # "allowEvents":Lgov2/nist/javax2/sip/header/AllowEvents;
    .restart local v2    # "token":Lgov2/nist/core/Token;
    :cond_2
    const-string/jumbo v3, "AllowEventsParser.parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/AllowEventsParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "allowEvents":Lgov2/nist/javax2/sip/header/AllowEvents;
    .end local v2    # "token":Lgov2/nist/core/Token;
    :cond_3
    const-string/jumbo v4, "AllowEventsParser.parse"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/AllowEventsParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method
