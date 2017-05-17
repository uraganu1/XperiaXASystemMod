.class public Lgov2/nist/javax2/sip/parser/RetryAfterParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "RetryAfterParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x3b

    .line 72
    sget-boolean v10, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->debug:Z

    if-nez v10, :cond_0

    .line 74
    :goto_0
    new-instance v5, Lgov2/nist/javax2/sip/header/RetryAfter;

    invoke-direct {v5}, Lgov2/nist/javax2/sip/header/RetryAfter;-><init>()V

    .local v5, "retryAfter":Lgov2/nist/javax2/sip/header/RetryAfter;
    const/16 v10, 0x819

    .line 76
    :try_start_0
    invoke-virtual {p0, v10}, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->headerName(I)V

    .line 79
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->number()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 81
    .local v9, "value":Ljava/lang/String;
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 82
    .local v1, "ds":I
    invoke-virtual {v5, v1}, Lgov2/nist/javax2/sip/header/RetryAfter;->setRetryAfter(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :try_start_2
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 90
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v10

    const/16 v11, 0x28

    if-eq v10, v11, :cond_1

    .line 94
    :goto_1
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 96
    :goto_2
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    if-eq v10, v12, :cond_2

    .line 126
    sget-boolean v10, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->debug:Z

    if-nez v10, :cond_4

    .line 129
    :goto_3
    return-object v5

    .end local v1    # "ds":I
    .end local v5    # "retryAfter":Lgov2/nist/javax2/sip/header/RetryAfter;
    .end local v9    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v10, "RetryAfterParser.parse"

    .line 72
    invoke-virtual {p0, v10}, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    .restart local v5    # "retryAfter":Lgov2/nist/javax2/sip/header/RetryAfter;
    .restart local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 84
    .local v3, "ex":Ljava/lang/NumberFormatException;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v10

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v9    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v10

    sget-boolean v11, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->debug:Z

    if-nez v11, :cond_5

    :goto_4
    throw v10

    .line 84
    .restart local v9    # "value":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 86
    .local v4, "ex":Ljavax2/sip/InvalidArgumentException;
    :try_start_4
    invoke-virtual {v4}, Ljavax2/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v10

    throw v10

    .line 91
    .end local v4    # "ex":Ljavax2/sip/InvalidArgumentException;
    .restart local v1    # "ds":I
    :cond_1
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->comment()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "comment":Ljava/lang/String;
    invoke-virtual {v5, v0}, Lgov2/nist/javax2/sip/header/RetryAfter;->setComment(Ljava/lang/String;)V

    goto :goto_1

    .line 97
    .end local v0    # "comment":Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v11, 0x3b

    invoke-virtual {v10, v11}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 98
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 99
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v11, 0xfff

    invoke-virtual {v10, v11}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 100
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v8

    .line 101
    .local v8, "token":Lgov2/nist/core/Token;
    invoke-virtual {v8}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "duration"

    .line 102
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 115
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 116
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v11, 0x3d

    invoke-virtual {v10, v11}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 117
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 118
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v11, 0xfff

    invoke-virtual {v10, v11}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 119
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v6

    .line 120
    .local v6, "secondToken":Lgov2/nist/core/Token;
    invoke-virtual {v6}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v7

    .line 121
    .local v7, "secondValue":Ljava/lang/String;
    invoke-virtual {v5, v9, v7}, Lgov2/nist/javax2/sip/header/RetryAfter;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .end local v6    # "secondToken":Lgov2/nist/core/Token;
    .end local v7    # "secondValue":Ljava/lang/String;
    :goto_5
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->SPorHT()V

    goto/16 :goto_2

    .line 103
    :cond_3
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v11, 0x3d

    invoke-virtual {v10, v11}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 104
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 105
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->number()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v9

    .line 107
    :try_start_5
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 108
    .local v2, "duration":I
    invoke-virtual {v5, v2}, Lgov2/nist/javax2/sip/header/RetryAfter;->setDuration(I)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 113
    .end local v2    # "duration":I
    :catch_2
    move-exception v3

    .line 110
    .restart local v3    # "ex":Ljava/lang/NumberFormatException;
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v10

    throw v10

    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v4

    .line 112
    .restart local v4    # "ex":Ljavax2/sip/InvalidArgumentException;
    invoke-virtual {v4}, Ljavax2/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v10

    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v4    # "ex":Ljavax2/sip/InvalidArgumentException;
    .end local v8    # "token":Lgov2/nist/core/Token;
    :cond_4
    const-string/jumbo v10, "RetryAfterParser.parse"

    .line 126
    invoke-virtual {p0, v10}, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->dbg_leave(Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v1    # "ds":I
    .end local v9    # "value":Ljava/lang/String;
    :cond_5
    const-string/jumbo v11, "RetryAfterParser.parse"

    invoke-virtual {p0, v11}, Lgov2/nist/javax2/sip/parser/RetryAfterParser;->dbg_leave(Ljava/lang/String;)V

    goto/16 :goto_4
.end method
