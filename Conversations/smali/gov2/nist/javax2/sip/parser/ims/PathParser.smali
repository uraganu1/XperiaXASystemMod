.class public Lgov2/nist/javax2/sip/parser/ims/PathParser;
.super Lgov2/nist/javax2/sip/parser/AddressParametersParser;
.source "PathParser.java"


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
    new-instance v2, Lgov2/nist/javax2/sip/header/ims/PathList;

    invoke-direct {v2}, Lgov2/nist/javax2/sip/header/ims/PathList;-><init>()V

    .line 71
    .local v2, "pathList":Lgov2/nist/javax2/sip/header/ims/PathList;
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/ims/PathParser;->debug:Z

    if-nez v3, :cond_0

    .line 74
    :goto_0
    :try_start_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PathParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x847

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 75
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PathParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 76
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PathParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 77
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PathParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 79
    :goto_1
    new-instance v1, Lgov2/nist/javax2/sip/header/ims/Path;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/ims/Path;-><init>()V

    .line 80
    .local v1, "path":Lgov2/nist/javax2/sip/header/ims/Path;
    invoke-super {p0, v1}, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->parse(Lgov2/nist/javax2/sip/header/AddressParametersHeader;)V

    .line 81
    invoke-virtual {v2, v1}, Lgov2/nist/javax2/sip/header/ims/PathList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 82
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PathParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 83
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PathParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    int-to-char v0, v3

    .line 84
    .local v0, "la":C
    if-eq v0, v5, :cond_1

    const/16 v3, 0xa

    .line 87
    if-eq v0, v3, :cond_2

    const-string/jumbo v3, "unexpected char"

    .line 90
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ims/PathParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v0    # "la":C
    .end local v1    # "path":Lgov2/nist/javax2/sip/header/ims/Path;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov2/nist/javax2/sip/parser/ims/PathParser;->debug:Z

    if-nez v4, :cond_4

    :goto_2
    throw v3

    :cond_0
    const-string/jumbo v3, "PathParser.parse"

    .line 71
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ims/PathParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    .restart local v0    # "la":C
    .restart local v1    # "path":Lgov2/nist/javax2/sip/header/ims/Path;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PathParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 86
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PathParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 94
    :cond_2
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/ims/PathParser;->debug:Z

    if-nez v3, :cond_3

    :goto_3
    return-object v2

    :cond_3
    const-string/jumbo v3, "PathParser.parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ims/PathParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3

    .end local v0    # "la":C
    .end local v1    # "path":Lgov2/nist/javax2/sip/header/ims/Path;
    :cond_4
    const-string/jumbo v4, "PathParser.parse"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ims/PathParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
