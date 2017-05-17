.class public Lgov2/nist/javax2/sip/parser/RecordRouteParser;
.super Lgov2/nist/javax2/sip/parser/AddressParametersParser;
.source "RecordRouteParser.java"


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

    .line 64
    new-instance v2, Lgov2/nist/javax2/sip/header/RecordRouteList;

    invoke-direct {v2}, Lgov2/nist/javax2/sip/header/RecordRouteList;-><init>()V

    .line 66
    .local v2, "recordRouteList":Lgov2/nist/javax2/sip/header/RecordRouteList;
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/RecordRouteParser;->debug:Z

    if-nez v3, :cond_0

    .line 69
    :goto_0
    :try_start_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RecordRouteParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x82c

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 70
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RecordRouteParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 71
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RecordRouteParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 72
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RecordRouteParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 74
    :goto_1
    new-instance v1, Lgov2/nist/javax2/sip/header/RecordRoute;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/RecordRoute;-><init>()V

    .line 75
    .local v1, "recordRoute":Lgov2/nist/javax2/sip/header/RecordRoute;
    invoke-super {p0, v1}, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->parse(Lgov2/nist/javax2/sip/header/AddressParametersHeader;)V

    .line 76
    invoke-virtual {v2, v1}, Lgov2/nist/javax2/sip/header/RecordRouteList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 77
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RecordRouteParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 78
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RecordRouteParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    int-to-char v0, v3

    .line 79
    .local v0, "la":C
    if-eq v0, v5, :cond_1

    const/16 v3, 0xa

    .line 82
    if-eq v0, v3, :cond_2

    const-string/jumbo v3, "unexpected char"

    .line 85
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/RecordRouteParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v0    # "la":C
    .end local v1    # "recordRoute":Lgov2/nist/javax2/sip/header/RecordRoute;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov2/nist/javax2/sip/parser/RecordRouteParser;->debug:Z

    if-nez v4, :cond_4

    :goto_2
    throw v3

    :cond_0
    const-string/jumbo v3, "RecordRouteParser.parse"

    .line 66
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/RecordRouteParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    .restart local v0    # "la":C
    .restart local v1    # "recordRoute":Lgov2/nist/javax2/sip/header/RecordRoute;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RecordRouteParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 81
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RecordRouteParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 89
    :cond_2
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/RecordRouteParser;->debug:Z

    if-nez v3, :cond_3

    :goto_3
    return-object v2

    :cond_3
    const-string/jumbo v3, "RecordRouteParser.parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/RecordRouteParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3

    .end local v0    # "la":C
    .end local v1    # "recordRoute":Lgov2/nist/javax2/sip/header/RecordRoute;
    :cond_4
    const-string/jumbo v4, "RecordRouteParser.parse"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/RecordRouteParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
