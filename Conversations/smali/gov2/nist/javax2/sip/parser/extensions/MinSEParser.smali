.class public Lgov2/nist/javax2/sip/parser/extensions/MinSEParser;
.super Lgov2/nist/javax2/sip/parser/ParametersParser;
.source "MinSEParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v3, Lgov2/nist/javax2/sip/header/extensions/MinSE;

    invoke-direct {v3}, Lgov2/nist/javax2/sip/header/extensions/MinSE;-><init>()V

    .line 44
    .local v3, "minse":Lgov2/nist/javax2/sip/header/extensions/MinSE;
    sget-boolean v5, Lgov2/nist/javax2/sip/parser/extensions/MinSEParser;->debug:Z

    if-nez v5, :cond_0

    :goto_0
    const/16 v5, 0x856

    .line 46
    :try_start_0
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/extensions/MinSEParser;->headerName(I)V

    .line 48
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/extensions/MinSEParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->getNextId()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 50
    .local v4, "nextId":Ljava/lang/String;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, "delta":I
    invoke-virtual {v3, v0}, Lgov2/nist/javax2/sip/header/extensions/MinSE;->setExpires(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/extensions/MinSEParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 58
    invoke-super {p0, v3}, Lgov2/nist/javax2/sip/parser/ParametersParser;->parse(Lgov2/nist/javax2/sip/header/ParametersHeader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    sget-boolean v5, Lgov2/nist/javax2/sip/parser/extensions/MinSEParser;->debug:Z

    if-nez v5, :cond_1

    :goto_1
    return-object v3

    .end local v0    # "delta":I
    .end local v4    # "nextId":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "parse"

    .line 44
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/extensions/MinSEParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    .restart local v4    # "nextId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/NumberFormatException;
    :try_start_3
    const-string/jumbo v5, "bad integer format"

    .line 53
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/extensions/MinSEParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "nextId":Ljava/lang/String;
    :catchall_0
    move-exception v5

    sget-boolean v6, Lgov2/nist/javax2/sip/parser/extensions/MinSEParser;->debug:Z

    if-nez v6, :cond_2

    :goto_2
    throw v5

    .line 53
    .restart local v4    # "nextId":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 55
    .local v2, "ex":Ljavax2/sip/InvalidArgumentException;
    :try_start_4
    invoke-virtual {v2}, Ljavax2/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/extensions/MinSEParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "ex":Ljavax2/sip/InvalidArgumentException;
    .restart local v0    # "delta":I
    :cond_1
    const-string/jumbo v5, "parse"

    .line 62
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/extensions/MinSEParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "delta":I
    .end local v4    # "nextId":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "parse"

    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/extensions/MinSEParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
