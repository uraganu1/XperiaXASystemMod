.class public Lgov2/nist/javax2/sip/parser/InReplyToParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "InReplyToParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2c

    const/16 v6, 0x40

    .line 69
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/InReplyToParser;->debug:Z

    if-nez v4, :cond_1

    .line 70
    :goto_0
    new-instance v1, Lgov2/nist/javax2/sip/header/InReplyToList;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/InReplyToList;-><init>()V

    .local v1, "list":Lgov2/nist/javax2/sip/header/InReplyToList;
    const/16 v4, 0x80b

    .line 73
    :try_start_0
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/InReplyToParser;->headerName(I)V

    .line 75
    :cond_0
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/InReplyToParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 117
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/InReplyToParser;->debug:Z

    if-nez v4, :cond_5

    :goto_1
    return-object v1

    .end local v1    # "list":Lgov2/nist/javax2/sip/header/InReplyToList;
    :cond_1
    const-string/jumbo v4, "InReplyToParser.parse"

    .line 69
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/InReplyToParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    .restart local v1    # "list":Lgov2/nist/javax2/sip/header/InReplyToList;
    :cond_2
    :try_start_1
    new-instance v0, Lgov2/nist/javax2/sip/header/InReplyTo;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/InReplyTo;-><init>()V

    .local v0, "inReplyTo":Lgov2/nist/javax2/sip/header/InReplyTo;
    const-string/jumbo v4, "In-Reply-To"

    .line 77
    invoke-virtual {v0, v4}, Lgov2/nist/javax2/sip/header/InReplyTo;->setHeaderName(Ljava/lang/String;)V

    .line 79
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/InReplyToParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 80
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/InReplyToParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v3

    .line 81
    .local v3, "token":Lgov2/nist/core/Token;
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/InReplyToParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    if-eq v4, v6, :cond_3

    .line 87
    invoke-virtual {v3}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgov2/nist/javax2/sip/header/InReplyTo;->setCallId(Ljava/lang/String;)V

    .line 90
    :goto_2
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/InReplyToParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 92
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/InReplyToList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 94
    :goto_3
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/InReplyToParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    if-ne v4, v7, :cond_0

    .line 95
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/InReplyToParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 96
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/InReplyToParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 98
    new-instance v0, Lgov2/nist/javax2/sip/header/InReplyTo;

    .end local v0    # "inReplyTo":Lgov2/nist/javax2/sip/header/InReplyTo;
    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/InReplyTo;-><init>()V

    .line 100
    .restart local v0    # "inReplyTo":Lgov2/nist/javax2/sip/header/InReplyTo;
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/InReplyToParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 101
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/InReplyToParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v3

    .line 102
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/InReplyToParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    if-eq v4, v6, :cond_4

    .line 108
    invoke-virtual {v3}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgov2/nist/javax2/sip/header/InReplyTo;->setCallId(Ljava/lang/String;)V

    .line 111
    :goto_4
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/InReplyToList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 117
    .end local v0    # "inReplyTo":Lgov2/nist/javax2/sip/header/InReplyTo;
    .end local v3    # "token":Lgov2/nist/core/Token;
    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov2/nist/javax2/sip/parser/InReplyToParser;->debug:Z

    if-nez v5, :cond_6

    :goto_5
    throw v4

    .line 82
    .restart local v0    # "inReplyTo":Lgov2/nist/javax2/sip/header/InReplyTo;
    .restart local v3    # "token":Lgov2/nist/core/Token;
    :cond_3
    :try_start_2
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/InReplyToParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 83
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/InReplyToParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 84
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/InReplyToParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v2

    .line 85
    .local v2, "secToken":Lgov2/nist/core/Token;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgov2/nist/javax2/sip/header/InReplyTo;->setCallId(Ljava/lang/String;)V

    goto :goto_2

    .line 103
    .end local v2    # "secToken":Lgov2/nist/core/Token;
    :cond_4
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/InReplyToParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 104
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/InReplyToParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 105
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/InReplyToParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v2

    .line 106
    .restart local v2    # "secToken":Lgov2/nist/core/Token;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgov2/nist/javax2/sip/header/InReplyTo;->setCallId(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .end local v0    # "inReplyTo":Lgov2/nist/javax2/sip/header/InReplyTo;
    .end local v2    # "secToken":Lgov2/nist/core/Token;
    .end local v3    # "token":Lgov2/nist/core/Token;
    :cond_5
    const-string/jumbo v4, "InReplyToParser.parse"

    .line 117
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/InReplyToParser;->dbg_leave(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v5, "InReplyToParser.parse"

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/InReplyToParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_5
.end method
