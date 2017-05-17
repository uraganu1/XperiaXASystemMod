.class public Lgov2/nist/javax2/sip/parser/RouteParser;
.super Lgov2/nist/javax2/sip/parser/AddressParametersParser;
.source "RouteParser.java"


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

    .line 63
    new-instance v2, Lgov2/nist/javax2/sip/header/RouteList;

    invoke-direct {v2}, Lgov2/nist/javax2/sip/header/RouteList;-><init>()V

    .line 64
    .local v2, "routeList":Lgov2/nist/javax2/sip/header/RouteList;
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/RouteParser;->debug:Z

    if-nez v3, :cond_0

    .line 67
    :goto_0
    :try_start_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RouteParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x816

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 68
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RouteParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 69
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RouteParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 70
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RouteParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 72
    :goto_1
    new-instance v1, Lgov2/nist/javax2/sip/header/Route;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/Route;-><init>()V

    .line 73
    .local v1, "route":Lgov2/nist/javax2/sip/header/Route;
    invoke-super {p0, v1}, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->parse(Lgov2/nist/javax2/sip/header/AddressParametersHeader;)V

    .line 74
    invoke-virtual {v2, v1}, Lgov2/nist/javax2/sip/header/RouteList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 75
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RouteParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 76
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RouteParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    int-to-char v0, v3

    .line 77
    .local v0, "la":C
    if-eq v0, v5, :cond_1

    const/16 v3, 0xa

    .line 80
    if-eq v0, v3, :cond_2

    const-string/jumbo v3, "unexpected char"

    .line 83
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/RouteParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .end local v0    # "la":C
    .end local v1    # "route":Lgov2/nist/javax2/sip/header/Route;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov2/nist/javax2/sip/parser/RouteParser;->debug:Z

    if-nez v4, :cond_4

    :goto_2
    throw v3

    :cond_0
    const-string/jumbo v3, "parse"

    .line 64
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/RouteParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    .restart local v0    # "la":C
    .restart local v1    # "route":Lgov2/nist/javax2/sip/header/Route;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RouteParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 79
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RouteParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 87
    :cond_2
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/RouteParser;->debug:Z

    if-nez v3, :cond_3

    :goto_3
    return-object v2

    :cond_3
    const-string/jumbo v3, "parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/RouteParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3

    .end local v0    # "la":C
    .end local v1    # "route":Lgov2/nist/javax2/sip/header/Route;
    :cond_4
    const-string/jumbo v4, "parse"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/RouteParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
