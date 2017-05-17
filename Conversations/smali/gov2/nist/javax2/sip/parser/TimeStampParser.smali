.class public Lgov2/nist/javax2/sip/parser/TimeStampParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "TimeStampParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x2e

    .line 70
    sget-boolean v10, Lgov2/nist/javax2/sip/parser/TimeStampParser;->debug:Z

    if-nez v10, :cond_0

    .line 71
    :goto_0
    new-instance v5, Lgov2/nist/javax2/sip/header/TimeStamp;

    invoke-direct {v5}, Lgov2/nist/javax2/sip/header/TimeStamp;-><init>()V

    .local v5, "timeStamp":Lgov2/nist/javax2/sip/header/TimeStamp;
    const/16 v10, 0x837

    .line 73
    :try_start_0
    invoke-virtual {p0, v10}, Lgov2/nist/javax2/sip/parser/TimeStampParser;->headerName(I)V

    const-string/jumbo v10, "Timestamp"

    .line 75
    invoke-virtual {v5, v10}, Lgov2/nist/javax2/sip/header/TimeStamp;->setHeaderName(Ljava/lang/String;)V

    .line 77
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/TimeStampParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 78
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/TimeStampParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->number()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 82
    .local v2, "firstNumber":Ljava/lang/String;
    :try_start_1
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/TimeStampParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v10

    if-eq v10, v12, :cond_1

    .line 90
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 91
    .local v8, "ts":J
    invoke-virtual {v5, v8, v9}, Lgov2/nist/javax2/sip/header/TimeStamp;->setTime(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .end local v8    # "ts":J
    :goto_1
    :try_start_2
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/TimeStampParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 101
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/TimeStampParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_2

    .line 126
    :goto_2
    sget-boolean v10, Lgov2/nist/javax2/sip/parser/TimeStampParser;->debug:Z

    if-nez v10, :cond_4

    .line 129
    :goto_3
    return-object v5

    .end local v2    # "firstNumber":Ljava/lang/String;
    .end local v5    # "timeStamp":Lgov2/nist/javax2/sip/header/TimeStamp;
    :cond_0
    const-string/jumbo v10, "TimeStampParser.parse"

    .line 70
    invoke-virtual {p0, v10}, Lgov2/nist/javax2/sip/parser/TimeStampParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .restart local v2    # "firstNumber":Ljava/lang/String;
    .restart local v5    # "timeStamp":Lgov2/nist/javax2/sip/header/TimeStamp;
    :cond_1
    :try_start_3
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/TimeStampParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v11, 0x2e

    invoke-virtual {v10, v11}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 84
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/TimeStampParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "secondNumber":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 88
    .local v6, "ts":F
    invoke-virtual {v5, v6}, Lgov2/nist/javax2/sip/header/TimeStamp;->setTimeStamp(F)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 98
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "secondNumber":Ljava/lang/String;
    .end local v6    # "ts":F
    :catch_0
    move-exception v0

    .line 95
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lgov2/nist/javax2/sip/parser/TimeStampParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v10

    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v2    # "firstNumber":Ljava/lang/String;
    :catchall_0
    move-exception v10

    sget-boolean v11, Lgov2/nist/javax2/sip/parser/TimeStampParser;->debug:Z

    if-nez v11, :cond_5

    :goto_4
    throw v10

    .line 95
    .restart local v2    # "firstNumber":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 97
    .local v1, "ex":Ljavax2/sip/InvalidArgumentException;
    :try_start_5
    invoke-virtual {v1}, Ljavax2/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lgov2/nist/javax2/sip/parser/TimeStampParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v10

    throw v10

    .line 102
    .end local v1    # "ex":Ljavax2/sip/InvalidArgumentException;
    :cond_2
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/TimeStampParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->number()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    .line 106
    :try_start_6
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/TimeStampParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v10

    if-eq v10, v12, :cond_3

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 115
    .local v7, "ts":I
    int-to-float v10, v7

    invoke-virtual {v5, v10}, Lgov2/nist/javax2/sip/header/TimeStamp;->setDelay(F)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 122
    .end local v7    # "ts":I
    :catch_2
    move-exception v0

    .line 119
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lgov2/nist/javax2/sip/parser/TimeStampParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v10

    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 107
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    :try_start_8
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/TimeStampParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v11, 0x2e

    invoke-virtual {v10, v11}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 108
    iget-object v10, p0, Lgov2/nist/javax2/sip/parser/TimeStampParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov2/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v4

    .line 110
    .restart local v4    # "secondNumber":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .restart local v3    # "s":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 112
    .restart local v6    # "ts":F
    invoke-virtual {v5, v6}, Lgov2/nist/javax2/sip/header/TimeStamp;->setDelay(F)V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 119
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "secondNumber":Ljava/lang/String;
    .end local v6    # "ts":F
    :catch_3
    move-exception v1

    .line 121
    .restart local v1    # "ex":Ljavax2/sip/InvalidArgumentException;
    :try_start_9
    invoke-virtual {v1}, Ljavax2/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lgov2/nist/javax2/sip/parser/TimeStampParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v10

    throw v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .end local v1    # "ex":Ljavax2/sip/InvalidArgumentException;
    :cond_4
    const-string/jumbo v10, "TimeStampParser.parse"

    .line 126
    invoke-virtual {p0, v10}, Lgov2/nist/javax2/sip/parser/TimeStampParser;->dbg_leave(Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v2    # "firstNumber":Ljava/lang/String;
    :cond_5
    const-string/jumbo v11, "TimeStampParser.parse"

    invoke-virtual {p0, v11}, Lgov2/nist/javax2/sip/parser/TimeStampParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_4
.end method
