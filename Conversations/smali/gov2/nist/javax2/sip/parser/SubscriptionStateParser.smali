.class public Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "SubscriptionStateParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x3b

    .line 71
    sget-boolean v9, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->debug:Z

    if-nez v9, :cond_0

    .line 73
    :goto_0
    new-instance v6, Lgov2/nist/javax2/sip/header/SubscriptionState;

    invoke-direct {v6}, Lgov2/nist/javax2/sip/header/SubscriptionState;-><init>()V

    .local v6, "subscriptionState":Lgov2/nist/javax2/sip/header/SubscriptionState;
    const/16 v9, 0x838

    .line 75
    :try_start_0
    invoke-virtual {p0, v9}, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->headerName(I)V

    const-string/jumbo v9, "Subscription-State"

    .line 77
    invoke-virtual {v6, v9}, Lgov2/nist/javax2/sip/header/SubscriptionState;->setHeaderName(Ljava/lang/String;)V

    .line 80
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v10, 0xfff

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 81
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v7

    .line 82
    .local v7, "token":Lgov2/nist/core/Token;
    invoke-virtual {v7}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lgov2/nist/javax2/sip/header/SubscriptionState;->setState(Ljava/lang/String;)V

    .line 84
    :goto_1
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eq v9, v11, :cond_1

    .line 136
    sget-boolean v9, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->debug:Z

    if-nez v9, :cond_5

    .line 139
    :goto_2
    return-object v6

    .end local v6    # "subscriptionState":Lgov2/nist/javax2/sip/header/SubscriptionState;
    .end local v7    # "token":Lgov2/nist/core/Token;
    :cond_0
    const-string/jumbo v9, "SubscriptionStateParser.parse"

    .line 71
    invoke-virtual {p0, v9}, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    .restart local v6    # "subscriptionState":Lgov2/nist/javax2/sip/header/SubscriptionState;
    .restart local v7    # "token":Lgov2/nist/core/Token;
    :cond_1
    :try_start_1
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v10, 0x3b

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 86
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 87
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v10, 0xfff

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 88
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v7

    .line 89
    invoke-virtual {v7}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v8

    .local v8, "value":Ljava/lang/String;
    const-string/jumbo v9, "reason"

    .line 90
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "expires"

    .line 97
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "retry-after"

    .line 111
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 126
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v10, 0x3d

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 127
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 128
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v10, 0xfff

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 129
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v4

    .line 130
    .local v4, "secondToken":Lgov2/nist/core/Token;
    invoke-virtual {v4}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "secondValue":Ljava/lang/String;
    invoke-virtual {v6, v8, v5}, Lgov2/nist/javax2/sip/header/SubscriptionState;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .end local v4    # "secondToken":Lgov2/nist/core/Token;
    .end local v5    # "secondValue":Ljava/lang/String;
    :goto_3
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 136
    .end local v7    # "token":Lgov2/nist/core/Token;
    .end local v8    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v9

    sget-boolean v10, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->debug:Z

    if-nez v10, :cond_6

    :goto_4
    throw v9

    .line 91
    .restart local v7    # "token":Lgov2/nist/core/Token;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v10, 0x3d

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 92
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 93
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v10, 0xfff

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 94
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v7

    .line 95
    invoke-virtual {v7}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v8

    .line 96
    invoke-virtual {v6, v8}, Lgov2/nist/javax2/sip/header/SubscriptionState;->setReasonCode(Ljava/lang/String;)V

    goto :goto_3

    .line 98
    :cond_3
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v10, 0x3d

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 99
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 100
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v10, 0xfff

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 101
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v7

    .line 102
    invoke-virtual {v7}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 104
    :try_start_3
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 105
    .local v2, "expires":I
    invoke-virtual {v6, v2}, Lgov2/nist/javax2/sip/header/SubscriptionState;->setExpires(I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 110
    .end local v2    # "expires":I
    :catch_0
    move-exception v0

    .line 107
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v9

    throw v9

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 109
    .local v1, "ex":Ljavax2/sip/InvalidArgumentException;
    invoke-virtual {v1}, Ljavax2/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v9

    throw v9

    .line 112
    .end local v1    # "ex":Ljavax2/sip/InvalidArgumentException;
    :cond_4
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v10, 0x3d

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 113
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 114
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v10, 0xfff

    invoke-virtual {v9, v10}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 115
    iget-object v9, p0, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v7

    .line 116
    invoke-virtual {v7}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    .line 118
    :try_start_5
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 119
    .local v3, "retryAfter":I
    invoke-virtual {v6, v3}, Lgov2/nist/javax2/sip/header/SubscriptionState;->setRetryAfter(I)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 124
    .end local v3    # "retryAfter":I
    :catch_2
    move-exception v0

    .line 121
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v9

    throw v9

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v1

    .line 123
    .restart local v1    # "ex":Ljavax2/sip/InvalidArgumentException;
    invoke-virtual {v1}, Ljavax2/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v9

    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v1    # "ex":Ljavax2/sip/InvalidArgumentException;
    .end local v8    # "value":Ljava/lang/String;
    :cond_5
    const-string/jumbo v9, "SubscriptionStateParser.parse"

    .line 136
    invoke-virtual {p0, v9}, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->dbg_leave(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v7    # "token":Lgov2/nist/core/Token;
    :cond_6
    const-string/jumbo v10, "SubscriptionStateParser.parse"

    invoke-virtual {p0, v10}, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;->dbg_leave(Ljava/lang/String;)V

    goto/16 :goto_4
.end method
