.class public Lgov2/nist/javax2/sip/parser/ims/ServiceRouteParser;
.super Lgov2/nist/javax2/sip/parser/AddressParametersParser;
.source "ServiceRouteParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2c

    .line 70
    new-instance v1, Lgov2/nist/javax2/sip/header/ims/ServiceRouteList;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/ims/ServiceRouteList;-><init>()V

    .line 72
    .local v1, "serviceRouteList":Lgov2/nist/javax2/sip/header/ims/ServiceRouteList;
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/ims/ServiceRouteParser;->debug:Z

    if-nez v2, :cond_0

    .line 75
    :goto_0
    :try_start_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/ServiceRouteParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v3, 0x848

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 76
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/ServiceRouteParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 77
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/ServiceRouteParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 78
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/ServiceRouteParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 80
    :goto_1
    new-instance v0, Lgov2/nist/javax2/sip/header/ims/ServiceRoute;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ims/ServiceRoute;-><init>()V

    .line 81
    .local v0, "serviceRoute":Lgov2/nist/javax2/sip/header/ims/ServiceRoute;
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->parse(Lgov2/nist/javax2/sip/header/AddressParametersHeader;)V

    .line 82
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/ims/ServiceRouteList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 83
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/ServiceRouteParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 84
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/ServiceRouteParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    if-eq v2, v4, :cond_1

    .line 87
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/ServiceRouteParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    const-string/jumbo v2, "unexpected char"

    .line 90
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/ServiceRouteParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v0    # "serviceRoute":Lgov2/nist/javax2/sip/header/ims/ServiceRoute;
    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov2/nist/javax2/sip/parser/ims/ServiceRouteParser;->debug:Z

    if-nez v3, :cond_4

    :goto_2
    throw v2

    :cond_0
    const-string/jumbo v2, "ServiceRouteParser.parse"

    .line 72
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/ServiceRouteParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    .restart local v0    # "serviceRoute":Lgov2/nist/javax2/sip/header/ims/ServiceRoute;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/ServiceRouteParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 86
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/ServiceRouteParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 94
    :cond_2
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/ims/ServiceRouteParser;->debug:Z

    if-nez v2, :cond_3

    :goto_3
    return-object v1

    :cond_3
    const-string/jumbo v2, "ServiceRouteParser.parse"

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/ServiceRouteParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3

    .end local v0    # "serviceRoute":Lgov2/nist/javax2/sip/header/ims/ServiceRoute;
    :cond_4
    const-string/jumbo v3, "ServiceRouteParser.parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ims/ServiceRouteParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
