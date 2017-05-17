.class public Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "SecurityAgreeParser.java"


# virtual methods
.method public parse(Lgov2/nist/javax2/sip/header/ims/SecurityAgree;)Lgov2/nist/javax2/sip/header/SIPHeaderList;
    .locals 13
    .param p1, "header"    # Lgov2/nist/javax2/sip/header/ims/SecurityAgree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xfff

    const/16 v11, 0x2c

    const/16 v10, 0xa

    const/16 v9, 0x3b

    const/4 v8, 0x0

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Lgov2/nist/javax2/sip/header/ims/SecurityClient;

    invoke-direct {v7}, Lgov2/nist/javax2/sip/header/ims/SecurityClient;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Lgov2/nist/javax2/sip/header/ims/SecurityServer;

    invoke-direct {v7}, Lgov2/nist/javax2/sip/header/ims/SecurityServer;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Lgov2/nist/javax2/sip/header/ims/SecurityVerify;

    invoke-direct {v7}, Lgov2/nist/javax2/sip/header/ims/SecurityVerify;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x0

    .line 80
    return-object v6

    .line 74
    :cond_0
    new-instance v4, Lgov2/nist/javax2/sip/header/ims/SecurityClientList;

    invoke-direct {v4}, Lgov2/nist/javax2/sip/header/ims/SecurityClientList;-><init>()V

    .line 83
    .local v4, "list":Lgov2/nist/javax2/sip/header/SIPHeaderList;
    :goto_0
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 84
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6, v12}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 85
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v5

    .line 86
    .local v5, "type":Lgov2/nist/core/Token;
    invoke-virtual {v5}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lgov2/nist/javax2/sip/header/ims/SecurityAgree;->setSecurityMechanism(Ljava/lang/String;)V

    .line 87
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 89
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6, v8}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    int-to-char v2, v6

    .line 90
    .local v2, "la":C
    if-eq v2, v10, :cond_4

    .line 93
    if-eq v2, v9, :cond_5

    .line 95
    :goto_1
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 99
    :goto_2
    :try_start_0
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    if-ne v6, v10, :cond_6

    .line 131
    :cond_1
    invoke-virtual {v4, p1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    return-object v4

    .line 76
    .end local v2    # "la":C
    .end local v4    # "list":Lgov2/nist/javax2/sip/header/SIPHeaderList;
    .end local v5    # "type":Lgov2/nist/core/Token;
    :cond_2
    new-instance v4, Lgov2/nist/javax2/sip/header/ims/SecurityServerList;

    invoke-direct {v4}, Lgov2/nist/javax2/sip/header/ims/SecurityServerList;-><init>()V

    .restart local v4    # "list":Lgov2/nist/javax2/sip/header/SIPHeaderList;
    goto :goto_0

    .line 78
    .end local v4    # "list":Lgov2/nist/javax2/sip/header/SIPHeaderList;
    :cond_3
    new-instance v4, Lgov2/nist/javax2/sip/header/ims/SecurityVerifyList;

    invoke-direct {v4}, Lgov2/nist/javax2/sip/header/ims/SecurityVerifyList;-><init>()V

    .restart local v4    # "list":Lgov2/nist/javax2/sip/header/SIPHeaderList;
    goto :goto_0

    .line 91
    .restart local v2    # "la":C
    .restart local v5    # "type":Lgov2/nist/core/Token;
    :cond_4
    invoke-virtual {v4, p1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 92
    return-object v4

    .line 93
    :cond_5
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6, v9}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    goto :goto_1

    .line 101
    :cond_6
    :try_start_1
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->parseParameter(Lgov2/nist/javax2/sip/header/ims/SecurityAgree;)V

    .line 102
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 103
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    int-to-char v3, v6

    .line 104
    .local v3, "laInLoop":C
    if-eq v3, v10, :cond_1

    if-eqz v3, :cond_1

    .line 106
    if-eq v3, v11, :cond_7

    .line 124
    :goto_3
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 126
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    if-eq v6, v9, :cond_b

    .line 128
    :goto_4
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 133
    .end local v3    # "laInLoop":C
    :catch_0
    move-exception v0

    .line 136
    .local v0, "ex":Ljava/text/ParseException;
    throw v0

    .line 107
    .end local v0    # "ex":Ljava/text/ParseException;
    .restart local v3    # "laInLoop":C
    :cond_7
    :try_start_2
    invoke-virtual {v4, p1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Lgov2/nist/javax2/sip/header/ims/SecurityClient;

    invoke-direct {v7}, Lgov2/nist/javax2/sip/header/ims/SecurityClient;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Lgov2/nist/javax2/sip/header/ims/SecurityServer;

    invoke-direct {v7}, Lgov2/nist/javax2/sip/header/ims/SecurityServer;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Lgov2/nist/javax2/sip/header/ims/SecurityVerify;

    invoke-direct {v7}, Lgov2/nist/javax2/sip/header/ims/SecurityVerify;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 116
    :goto_5
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 118
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 119
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v7, 0xfff

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 120
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v5

    .line 121
    invoke-virtual {v5}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lgov2/nist/javax2/sip/header/ims/SecurityAgree;->setSecurityMechanism(Ljava/lang/String;)V

    goto :goto_3

    .line 109
    :cond_8
    new-instance v1, Lgov2/nist/javax2/sip/header/ims/SecurityClient;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/ims/SecurityClient;-><init>()V

    .end local p1    # "header":Lgov2/nist/javax2/sip/header/ims/SecurityAgree;
    .local v1, "header":Lgov2/nist/javax2/sip/header/ims/SecurityAgree;
    move-object p1, v1

    .end local v1    # "header":Lgov2/nist/javax2/sip/header/ims/SecurityAgree;
    .restart local p1    # "header":Lgov2/nist/javax2/sip/header/ims/SecurityAgree;
    goto :goto_5

    .line 111
    :cond_9
    new-instance v1, Lgov2/nist/javax2/sip/header/ims/SecurityServer;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/ims/SecurityServer;-><init>()V

    .end local p1    # "header":Lgov2/nist/javax2/sip/header/ims/SecurityAgree;
    .restart local v1    # "header":Lgov2/nist/javax2/sip/header/ims/SecurityAgree;
    move-object p1, v1

    .end local v1    # "header":Lgov2/nist/javax2/sip/header/ims/SecurityAgree;
    .restart local p1    # "header":Lgov2/nist/javax2/sip/header/ims/SecurityAgree;
    goto :goto_5

    .line 113
    :cond_a
    new-instance v1, Lgov2/nist/javax2/sip/header/ims/SecurityVerify;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/ims/SecurityVerify;-><init>()V

    .end local p1    # "header":Lgov2/nist/javax2/sip/header/ims/SecurityAgree;
    .restart local v1    # "header":Lgov2/nist/javax2/sip/header/ims/SecurityAgree;
    move-object p1, v1

    .end local v1    # "header":Lgov2/nist/javax2/sip/header/ims/SecurityAgree;
    .restart local p1    # "header":Lgov2/nist/javax2/sip/header/ims/SecurityAgree;
    goto :goto_5

    .line 126
    :cond_b
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v7, 0x3b

    invoke-virtual {v6, v7}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4
.end method

.method protected parseParameter(Lgov2/nist/javax2/sip/header/ims/SecurityAgree;)V
    .locals 3
    .param p1, "header"    # Lgov2/nist/javax2/sip/header/ims/SecurityAgree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 60
    sget-boolean v1, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->debug:Z

    if-nez v1, :cond_0

    .line 62
    :goto_0
    const/16 v1, 0x3d

    :try_start_0
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->nameValue(C)Lgov2/nist/core/NameValue;

    move-result-object v0

    .line 63
    .local v0, "nv":Lgov2/nist/core/NameValue;
    invoke-virtual {p1, v0}, Lgov2/nist/javax2/sip/header/ims/SecurityAgree;->setParameter(Lgov2/nist/core/NameValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    sget-boolean v1, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->debug:Z

    if-nez v1, :cond_1

    .line 67
    :goto_1
    return-void

    .end local v0    # "nv":Lgov2/nist/core/NameValue;
    :cond_0
    const-string/jumbo v1, "parseParameter"

    .line 60
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "nv":Lgov2/nist/core/NameValue;
    :cond_1
    const-string/jumbo v1, "parseParameter"

    .line 65
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "nv":Lgov2/nist/core/NameValue;
    :catchall_0
    move-exception v1

    sget-boolean v2, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->debug:Z

    if-nez v2, :cond_2

    :goto_2
    throw v1

    :cond_2
    const-string/jumbo v2, "parseParameter"

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
