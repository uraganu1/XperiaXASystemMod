.class public Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "AcceptEncodingParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x2c

    const/16 v9, 0xa

    const/16 v8, 0x3b

    .line 91
    new-instance v1, Lgov2/nist/javax2/sip/header/AcceptEncodingList;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/AcceptEncodingList;-><init>()V

    .line 92
    .local v1, "acceptEncodingList":Lgov2/nist/javax2/sip/header/AcceptEncodingList;
    sget-boolean v6, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->debug:Z

    if-nez v6, :cond_1

    :goto_0
    const/16 v6, 0x813

    .line 95
    :try_start_0
    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->headerName(I)V

    .line 97
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    if-eq v6, v9, :cond_2

    .line 101
    :cond_0
    :goto_1
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-ne v6, v9, :cond_3

    .line 140
    :goto_2
    sget-boolean v6, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->debug:Z

    if-nez v6, :cond_6

    :goto_3
    return-object v1

    :cond_1
    const-string/jumbo v6, "AcceptEncodingParser.parse"

    .line 92
    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_2
    :try_start_1
    new-instance v0, Lgov2/nist/javax2/sip/header/AcceptEncoding;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/AcceptEncoding;-><init>()V

    .line 99
    .local v0, "acceptEncoding":Lgov2/nist/javax2/sip/header/AcceptEncoding;
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/AcceptEncodingList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 140
    .end local v0    # "acceptEncoding":Lgov2/nist/javax2/sip/header/AcceptEncoding;
    :catchall_0
    move-exception v6

    sget-boolean v7, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->debug:Z

    if-nez v7, :cond_7

    :goto_4
    throw v6

    .line 102
    :cond_3
    :try_start_2
    new-instance v0, Lgov2/nist/javax2/sip/header/AcceptEncoding;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/AcceptEncoding;-><init>()V

    .line 103
    .restart local v0    # "acceptEncoding":Lgov2/nist/javax2/sip/header/AcceptEncoding;
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    if-ne v6, v8, :cond_4

    .line 110
    :goto_5
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    if-eq v6, v8, :cond_5

    .line 130
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/AcceptEncodingList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 131
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    if-ne v6, v10, :cond_0

    .line 132
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 133
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->SPorHT()V

    goto :goto_1

    .line 105
    :cond_4
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v7, 0xfff

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 106
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v5

    .line 107
    .local v5, "value":Lgov2/nist/core/Token;
    invoke-virtual {v5}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lgov2/nist/javax2/sip/header/AcceptEncoding;->setEncoding(Ljava/lang/String;)V

    goto :goto_5

    .line 111
    .end local v5    # "value":Lgov2/nist/core/Token;
    :cond_5
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v7, 0x3b

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 112
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 113
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v7, 0x71

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 114
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 115
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 116
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 117
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v7, 0xfff

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 118
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 120
    .restart local v5    # "value":Lgov2/nist/core/Token;
    :try_start_3
    invoke-virtual {v5}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 121
    .local v4, "qv":F
    invoke-virtual {v0, v4}, Lgov2/nist/javax2/sip/header/AcceptEncoding;->setQValue(F)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    :try_start_4
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->SPorHT()V

    goto :goto_5

    .line 126
    .end local v4    # "qv":F
    :catch_0
    move-exception v2

    .line 123
    .local v2, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v6

    throw v6

    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 125
    .local v3, "ex":Ljavax2/sip/InvalidArgumentException;
    invoke-virtual {v3}, Ljavax2/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v6

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "acceptEncoding":Lgov2/nist/javax2/sip/header/AcceptEncoding;
    .end local v3    # "ex":Ljavax2/sip/InvalidArgumentException;
    .end local v5    # "value":Lgov2/nist/core/Token;
    :cond_6
    const-string/jumbo v6, "AcceptEncodingParser.parse"

    .line 140
    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->dbg_leave(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    const-string/jumbo v7, "AcceptEncodingParser.parse"

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;->dbg_leave(Ljava/lang/String;)V

    goto/16 :goto_4
.end method
