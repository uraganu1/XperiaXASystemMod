.class public Lgov2/nist/javax2/sip/parser/WarningParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "WarningParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x2c

    const/16 v11, 0x3a

    .line 71
    new-instance v8, Lgov2/nist/javax2/sip/header/WarningList;

    invoke-direct {v8}, Lgov2/nist/javax2/sip/header/WarningList;-><init>()V

    .line 72
    .local v8, "warningList":Lgov2/nist/javax2/sip/header/WarningList;
    sget-boolean v9, Lgov2/nist/javax2/sip/parser/WarningParser;->debug:Z

    if-nez v9, :cond_1

    :goto_0
    const/16 v9, 0x81e

    .line 75
    :try_start_0
    invoke-virtual {p0, v9}, Lgov2/nist/javax2/sip/parser/WarningParser;->headerName(I)V

    .line 77
    :cond_0
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_2

    .line 162
    sget-boolean v9, Lgov2/nist/javax2/sip/parser/WarningParser;->debug:Z

    if-nez v9, :cond_5

    .line 165
    :goto_1
    return-object v8

    :cond_1
    const-string/jumbo v9, "WarningParser.parse"

    .line 72
    invoke-virtual {p0, v9}, Lgov2/nist/javax2/sip/parser/WarningParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_2
    :try_start_1
    new-instance v7, Lgov2/nist/javax2/sip/header/Warning;

    invoke-direct {v7}, Lgov2/nist/javax2/sip/header/Warning;-><init>()V

    .local v7, "warning":Lgov2/nist/javax2/sip/header/Warning;
    const-string/jumbo v9, "Warning"

    .line 79
    invoke-virtual {v7, v9}, Lgov2/nist/javax2/sip/header/Warning;->setHeaderName(Ljava/lang/String;)V

    .line 82
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v10, 0xfff

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 83
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 85
    .local v5, "token":Lgov2/nist/core/Token;
    :try_start_2
    invoke-virtual {v5}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 86
    .local v0, "code":I
    invoke-virtual {v7, v0}, Lgov2/nist/javax2/sip/header/Warning;->setCode(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    :try_start_3
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 95
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v10, 0xfff

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 96
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v5

    .line 98
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v9

    if-eq v9, v11, :cond_3

    .line 104
    invoke-virtual {v5}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lgov2/nist/javax2/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    .line 107
    :goto_2
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 110
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v7, v3}, Lgov2/nist/javax2/sip/header/Warning;->setText(Ljava/lang/String;)V

    .line 112
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 114
    invoke-virtual {v8, v7}, Lgov2/nist/javax2/sip/header/WarningList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 116
    :goto_3
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v9

    if-ne v9, v12, :cond_0

    .line 117
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v10, 0x2c

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 118
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 120
    new-instance v7, Lgov2/nist/javax2/sip/header/Warning;

    .end local v7    # "warning":Lgov2/nist/javax2/sip/header/Warning;
    invoke-direct {v7}, Lgov2/nist/javax2/sip/header/Warning;-><init>()V

    .line 123
    .restart local v7    # "warning":Lgov2/nist/javax2/sip/header/Warning;
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v10, 0xfff

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 124
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 126
    .local v4, "tok":Lgov2/nist/core/Token;
    :try_start_4
    invoke-virtual {v4}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 127
    invoke-virtual {v7, v0}, Lgov2/nist/javax2/sip/header/Warning;->setCode(I)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 133
    :try_start_5
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 136
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v10, 0xfff

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 137
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v4

    .line 141
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v9

    if-eq v9, v11, :cond_4

    .line 147
    invoke-virtual {v4}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lgov2/nist/javax2/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    .line 150
    :goto_4
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 153
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-virtual {v7, v3}, Lgov2/nist/javax2/sip/header/Warning;->setText(Ljava/lang/String;)V

    .line 155
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 157
    invoke-virtual {v8, v7}, Lgov2/nist/javax2/sip/header/WarningList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 162
    .end local v0    # "code":I
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "tok":Lgov2/nist/core/Token;
    .end local v5    # "token":Lgov2/nist/core/Token;
    .end local v7    # "warning":Lgov2/nist/javax2/sip/header/Warning;
    :catchall_0
    move-exception v9

    sget-boolean v10, Lgov2/nist/javax2/sip/parser/WarningParser;->debug:Z

    if-nez v10, :cond_6

    :goto_5
    throw v9

    .line 91
    .restart local v5    # "token":Lgov2/nist/core/Token;
    .restart local v7    # "warning":Lgov2/nist/javax2/sip/header/Warning;
    :catch_0
    move-exception v1

    .line 88
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov2/nist/javax2/sip/parser/WarningParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v9

    throw v9

    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 90
    .local v2, "ex":Ljavax2/sip/InvalidArgumentException;
    invoke-virtual {v2}, Ljavax2/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov2/nist/javax2/sip/parser/WarningParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v9

    throw v9

    .line 99
    .end local v2    # "ex":Ljavax2/sip/InvalidArgumentException;
    .restart local v0    # "code":I
    :cond_3
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v10, 0x3a

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 100
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v10, 0xfff

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 101
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v6

    .line 102
    .local v6, "token2":Lgov2/nist/core/Token;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lgov2/nist/javax2/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 132
    .end local v6    # "token2":Lgov2/nist/core/Token;
    .restart local v3    # "text":Ljava/lang/String;
    .restart local v4    # "tok":Lgov2/nist/core/Token;
    :catch_2
    move-exception v1

    .line 129
    .restart local v1    # "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov2/nist/javax2/sip/parser/WarningParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v9

    throw v9

    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v2

    .line 131
    .restart local v2    # "ex":Ljavax2/sip/InvalidArgumentException;
    invoke-virtual {v2}, Ljavax2/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov2/nist/javax2/sip/parser/WarningParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v9

    throw v9

    .line 142
    .end local v2    # "ex":Ljavax2/sip/InvalidArgumentException;
    :cond_4
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v10, 0x3a

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 143
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v10, 0xfff

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 144
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/WarningParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v6

    .line 145
    .restart local v6    # "token2":Lgov2/nist/core/Token;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lgov2/nist/javax2/sip/header/Warning;->setAgent(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    .end local v0    # "code":I
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "tok":Lgov2/nist/core/Token;
    .end local v5    # "token":Lgov2/nist/core/Token;
    .end local v6    # "token2":Lgov2/nist/core/Token;
    .end local v7    # "warning":Lgov2/nist/javax2/sip/header/Warning;
    :cond_5
    const-string/jumbo v9, "WarningParser.parse"

    .line 162
    invoke-virtual {p0, v9}, Lgov2/nist/javax2/sip/parser/WarningParser;->dbg_leave(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v10, "WarningParser.parse"

    invoke-virtual {p0, v10}, Lgov2/nist/javax2/sip/parser/WarningParser;->dbg_leave(Ljava/lang/String;)V

    goto/16 :goto_5
.end method
