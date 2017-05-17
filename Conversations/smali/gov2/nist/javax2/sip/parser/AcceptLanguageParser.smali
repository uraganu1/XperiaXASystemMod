.class public Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "AcceptLanguageParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2c

    const/16 v8, 0x3b

    .line 86
    new-instance v1, Lgov2/nist/javax2/sip/header/AcceptLanguageList;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/AcceptLanguageList;-><init>()V

    .line 87
    .local v1, "acceptLanguageList":Lgov2/nist/javax2/sip/header/AcceptLanguageList;
    sget-boolean v6, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->debug:Z

    if-nez v6, :cond_0

    :goto_0
    const/16 v6, 0x82f

    .line 90
    :try_start_0
    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->headerName(I)V

    .line 92
    :goto_1
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_1

    .line 131
    sget-boolean v6, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->debug:Z

    if-nez v6, :cond_5

    .line 134
    :goto_2
    return-object v1

    :cond_0
    const-string/jumbo v6, "AcceptLanguageParser.parse"

    .line 87
    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    :try_start_1
    new-instance v0, Lgov2/nist/javax2/sip/header/AcceptLanguage;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/AcceptLanguage;-><init>()V

    .local v0, "acceptLanguage":Lgov2/nist/javax2/sip/header/AcceptLanguage;
    const-string/jumbo v6, "Accept-Language"

    .line 94
    invoke-virtual {v0, v6}, Lgov2/nist/javax2/sip/header/AcceptLanguage;->setHeaderName(Ljava/lang/String;)V

    .line 95
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    if-ne v6, v8, :cond_2

    .line 102
    :goto_3
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    if-eq v6, v8, :cond_3

    .line 122
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/AcceptLanguageList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 123
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    if-eq v6, v9, :cond_4

    .line 127
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 131
    .end local v0    # "acceptLanguage":Lgov2/nist/javax2/sip/header/AcceptLanguage;
    :catchall_0
    move-exception v6

    sget-boolean v7, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->debug:Z

    if-nez v7, :cond_6

    :goto_4
    throw v6

    .line 97
    .restart local v0    # "acceptLanguage":Lgov2/nist/javax2/sip/header/AcceptLanguage;
    :cond_2
    :try_start_2
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v7, 0xfff

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 98
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v5

    .line 99
    .local v5, "value":Lgov2/nist/core/Token;
    invoke-virtual {v5}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lgov2/nist/javax2/sip/header/AcceptLanguage;->setLanguageRange(Ljava/lang/String;)V

    goto :goto_3

    .line 103
    .end local v5    # "value":Lgov2/nist/core/Token;
    :cond_3
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v7, 0x3b

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 104
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 105
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v7, 0x71

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 106
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 107
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 108
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 109
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v7, 0xfff

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 110
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 112
    .restart local v5    # "value":Lgov2/nist/core/Token;
    :try_start_3
    invoke-virtual {v5}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 113
    .local v4, "fl":F
    invoke-virtual {v0, v4}, Lgov2/nist/javax2/sip/header/AcceptLanguage;->setQValue(F)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    :try_start_4
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->SPorHT()V

    goto :goto_3

    .line 118
    .end local v4    # "fl":F
    :catch_0
    move-exception v2

    .line 115
    .local v2, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v6

    throw v6

    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 117
    .local v3, "ex":Ljavax2/sip/InvalidArgumentException;
    invoke-virtual {v3}, Ljavax2/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v6

    throw v6

    .line 124
    .end local v3    # "ex":Ljavax2/sip/InvalidArgumentException;
    .end local v5    # "value":Lgov2/nist/core/Token;
    :cond_4
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 125
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .end local v0    # "acceptLanguage":Lgov2/nist/javax2/sip/header/AcceptLanguage;
    :cond_5
    const-string/jumbo v6, "AcceptLanguageParser.parse"

    .line 131
    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->dbg_leave(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v7, "AcceptLanguageParser.parse"

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;->dbg_leave(Ljava/lang/String;)V

    goto/16 :goto_4
.end method
