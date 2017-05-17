.class public Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;
.super Lgov2/nist/javax2/sip/parser/ParametersParser;
.source "PVisitedNetworkIDParser.java"


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

    .line 78
    new-instance v2, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkIDList;

    invoke-direct {v2}, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkIDList;-><init>()V

    .line 80
    .local v2, "visitedNetworkIDList":Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkIDList;
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    if-nez v3, :cond_0

    .line 83
    :goto_0
    :try_start_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x84b

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 84
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 85
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 86
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 90
    :goto_1
    new-instance v1, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;-><init>()V

    .line 92
    .local v1, "visitedNetworkID":Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_1

    .line 95
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->parseToken(Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;)V

    .line 97
    :goto_2
    invoke-virtual {v2, v1}, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkIDList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 99
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 100
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    int-to-char v0, v3

    .line 101
    .local v0, "la":C
    if-eq v0, v5, :cond_2

    const/16 v3, 0xa

    .line 104
    if-eq v0, v3, :cond_3

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected char = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .end local v0    # "la":C
    .end local v1    # "visitedNetworkID":Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    if-nez v4, :cond_5

    :goto_3
    throw v3

    :cond_0
    const-string/jumbo v3, "VisitedNetworkIDParser.parse"

    .line 80
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    .restart local v1    # "visitedNetworkID":Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->parseQuotedString(Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;)V

    goto :goto_2

    .line 102
    .restart local v0    # "la":C
    :cond_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 103
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 111
    :cond_3
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    if-nez v3, :cond_4

    :goto_4
    return-object v2

    :cond_4
    const-string/jumbo v3, "VisitedNetworkIDParser.parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_4

    .end local v0    # "la":C
    .end local v1    # "visitedNetworkID":Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;
    :cond_5
    const-string/jumbo v4, "VisitedNetworkIDParser.parse"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected parseQuotedString(Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;)V
    .locals 5
    .param p1, "visitedNetworkID"    # Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x22

    .line 118
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    if-nez v2, :cond_0

    .line 122
    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 124
    .local v1, "retval":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    .line 125
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 128
    :goto_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->getNextChar()C

    move-result v2

    int-to-char v0, v2

    .line 129
    .local v0, "next":C
    if-eq v0, v4, :cond_4

    .line 132
    if-eqz v0, :cond_2

    const/16 v2, 0x5c

    .line 134
    if-eq v0, v2, :cond_3

    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 147
    .end local v0    # "next":C
    .end local v1    # "retval":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    if-nez v3, :cond_6

    :goto_2
    throw v2

    :cond_0
    const-string/jumbo v2, "parseQuotedString"

    .line 118
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v1    # "retval":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "unexpected char"

    .line 124
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    throw v2

    .line 133
    .restart local v0    # "next":C
    :cond_2
    new-instance v2, Ljava/text/ParseException;

    const-string/jumbo v3, "unexpected EOL"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 135
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 136
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->getNextChar()C

    move-result v2

    int-to-char v0, v2

    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 143
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;->setVisitedNetworkID(Ljava/lang/String;)V

    .line 144
    invoke-super {p0, p1}, Lgov2/nist/javax2/sip/parser/ParametersParser;->parse(Lgov2/nist/javax2/sip/header/ParametersHeader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    if-nez v2, :cond_5

    .line 150
    :goto_3
    return-void

    :cond_5
    const-string/jumbo v2, "parseQuotedString.parse"

    .line 147
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3

    .end local v0    # "next":C
    .end local v1    # "retval":Ljava/lang/StringBuffer;
    :cond_6
    const-string/jumbo v3, "parseQuotedString.parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected parseToken(Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;)V
    .locals 3
    .param p1, "visitedNetworkID"    # Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v2, 0xfff

    invoke-virtual {v1, v2}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 156
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v0

    .line 158
    .local v0, "token":Lgov2/nist/core/Token;
    invoke-virtual {p1, v0}, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;->setVisitedNetworkID(Lgov2/nist/core/Token;)V

    .line 159
    invoke-super {p0, p1}, Lgov2/nist/javax2/sip/parser/ParametersParser;->parse(Lgov2/nist/javax2/sip/header/ParametersHeader;)V

    .line 161
    return-void
.end method
