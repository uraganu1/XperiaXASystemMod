.class public Lgov2/nist/javax2/sip/parser/ServerParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "ServerParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x28

    const/16 v7, 0xa

    .line 68
    sget-boolean v5, Lgov2/nist/javax2/sip/parser/ServerParser;->debug:Z

    if-nez v5, :cond_1

    .line 69
    :goto_0
    new-instance v3, Lgov2/nist/javax2/sip/header/Server;

    invoke-direct {v3}, Lgov2/nist/javax2/sip/header/Server;-><init>()V

    .local v3, "server":Lgov2/nist/javax2/sip/header/Server;
    const/16 v5, 0x812

    .line 71
    :try_start_0
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/ServerParser;->headerName(I)V

    .line 72
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/ServerParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-eq v5, v7, :cond_2

    .line 75
    :goto_1
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/ServerParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-ne v5, v7, :cond_3

    .line 98
    :cond_0
    :goto_2
    sget-boolean v5, Lgov2/nist/javax2/sip/parser/ServerParser;->debug:Z

    if-nez v5, :cond_6

    .line 101
    :goto_3
    return-object v3

    .end local v3    # "server":Lgov2/nist/javax2/sip/header/Server;
    :cond_1
    const-string/jumbo v5, "ServerParser.parse"

    .line 68
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/ServerParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v3    # "server":Lgov2/nist/javax2/sip/header/Server;
    :cond_2
    :try_start_1
    const-string/jumbo v5, "empty header"

    .line 72
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/ServerParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :catchall_0
    move-exception v5

    sget-boolean v6, Lgov2/nist/javax2/sip/parser/ServerParser;->debug:Z

    if-nez v6, :cond_7

    :goto_4
    throw v5

    .line 75
    :cond_3
    :try_start_2
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/ServerParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-eqz v5, :cond_0

    .line 76
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/ServerParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-eq v5, v8, :cond_4

    const/4 v2, 0x0

    .line 83
    .local v2, "marker":I
    :try_start_3
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/ServerParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->markInputPosition()I

    move-result v2

    .line 84
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/ServerParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->getString(C)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "tok":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_5

    .line 87
    :goto_5
    invoke-virtual {v3, v4}, Lgov2/nist/javax2/sip/header/Server;->addProductToken(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 93
    .end local v4    # "tok":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "ex":Ljava/text/ParseException;
    :try_start_4
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/ServerParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5, v2}, Lgov2/nist/core/LexerCore;->rewindInputPosition(I)V

    .line 90
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/ServerParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 91
    .restart local v4    # "tok":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lgov2/nist/javax2/sip/header/Server;->addProductToken(Ljava/lang/String;)V

    goto :goto_2

    .line 77
    .end local v1    # "ex":Ljava/text/ParseException;
    .end local v2    # "marker":I
    .end local v4    # "tok":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/ServerParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->comment()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "comment":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lgov2/nist/javax2/sip/header/Server;->addProductToken(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 86
    .end local v0    # "comment":Ljava/lang/String;
    .restart local v2    # "marker":I
    .restart local v4    # "tok":Ljava/lang/String;
    :cond_5
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    goto :goto_5

    .end local v2    # "marker":I
    .end local v4    # "tok":Ljava/lang/String;
    :cond_6
    const-string/jumbo v5, "ServerParser.parse"

    .line 98
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/ServerParser;->dbg_leave(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    const-string/jumbo v6, "ServerParser.parse"

    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/ServerParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_4
.end method
