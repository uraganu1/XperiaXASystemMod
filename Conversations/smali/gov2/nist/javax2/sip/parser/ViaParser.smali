.class public Lgov2/nist/javax2/sip/parser/ViaParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "ViaParser.java"


# direct methods
.method private parseVia(Lgov2/nist/javax2/sip/header/Via;)V
    .locals 16
    .param p1, "v"    # Lgov2/nist/javax2/sip/header/Via;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 57
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v14, 0xfff

    invoke-virtual {v13, v14}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 58
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v9

    .line 60
    .local v9, "protocolName":Lgov2/nist/core/Token;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 62
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v14, 0x2f

    invoke-virtual {v13, v14}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 63
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 64
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v14, 0xfff

    invoke-virtual {v13, v14}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 65
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 66
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v10

    .line 68
    .local v10, "protocolVersion":Lgov2/nist/core/Token;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 71
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v14, 0x2f

    invoke-virtual {v13, v14}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 72
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 73
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v14, 0xfff

    invoke-virtual {v13, v14}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 74
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 76
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v12

    .line 77
    .local v12, "transport":Lgov2/nist/core/Token;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 79
    new-instance v8, Lgov2/nist/javax2/sip/header/Protocol;

    invoke-direct {v8}, Lgov2/nist/javax2/sip/header/Protocol;-><init>()V

    .line 80
    .local v8, "protocol":Lgov2/nist/javax2/sip/header/Protocol;
    invoke-virtual {v9}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lgov2/nist/javax2/sip/header/Protocol;->setProtocolName(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v10}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lgov2/nist/javax2/sip/header/Protocol;->setProtocolVersion(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v12}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lgov2/nist/javax2/sip/header/Protocol;->setTransport(Ljava/lang/String;)V

    .line 83
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lgov2/nist/javax2/sip/header/Via;->setSentProtocol(Lgov2/nist/javax2/sip/header/Protocol;)V

    .line 86
    new-instance v4, Lgov2/nist/core/HostNameParser;

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/parser/ViaParser;->getLexer()Lgov2/nist/javax2/sip/parser/Lexer;

    move-result-object v13

    invoke-direct {v4, v13}, Lgov2/nist/core/HostNameParser;-><init>(Lgov2/nist/core/LexerCore;)V

    .line 87
    .local v4, "hnp":Lgov2/nist/core/HostNameParser;
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lgov2/nist/core/HostNameParser;->hostPort(Z)Lgov2/nist/core/HostPort;

    move-result-object v5

    .line 88
    .local v5, "hostPort":Lgov2/nist/core/HostPort;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lgov2/nist/javax2/sip/header/Via;->setSentBy(Lgov2/nist/core/HostPort;)V

    .line 91
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 94
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v13

    const/16 v14, 0x3b

    if-eq v13, v14, :cond_0

    .line 111
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v13

    const/16 v14, 0x28

    if-eq v13, v14, :cond_3

    .line 138
    :goto_1
    return-void

    .line 95
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 96
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/parser/ViaParser;->nameValue()Lgov2/nist/core/NameValue;

    move-result-object v7

    .line 98
    .local v7, "nameValue":Lgov2/nist/core/NameValue;
    invoke-virtual {v7}, Lgov2/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v6

    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v13, "branch"

    .line 99
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 104
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lgov2/nist/javax2/sip/header/Via;->setParameter(Lgov2/nist/core/NameValue;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov2/nist/core/LexerCore;->SPorHT()V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v7}, Lgov2/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    .local v1, "branchId":Ljava/lang/String;
    if-nez v1, :cond_1

    new-instance v13, Ljava/text/ParseException;

    const-string/jumbo v14, "null branch Id"

    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v15}, Lgov2/nist/core/LexerCore;->getPtr()I

    move-result v15

    invoke-direct {v13, v14, v15}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v13

    .line 112
    .end local v1    # "branchId":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "nameValue":Lgov2/nist/core/NameValue;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const-string/jumbo v14, "charLexer"

    invoke-virtual {v13, v14}, Lgov2/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 114
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    .local v3, "comment":Ljava/lang/StringBuffer;
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v13

    int-to-char v2, v13

    .local v2, "ch":C
    const/16 v13, 0x29

    .line 117
    if-eq v2, v13, :cond_4

    const/16 v13, 0x5c

    .line 120
    if-eq v2, v13, :cond_6

    const/16 v13, 0xa

    .line 128
    if-eq v2, v13, :cond_5

    .line 131
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lgov2/nist/core/LexerCore;->consume(I)V

    goto :goto_2

    .line 118
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 135
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lgov2/nist/javax2/sip/header/Via;->setComment(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 122
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v11

    .line 123
    .local v11, "tok":Lgov2/nist/core/Token;
    invoke-virtual {v11}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 125
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v11

    .line 126
    invoke-virtual {v11}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lgov2/nist/core/LexerCore;->consume(I)V

    goto :goto_2
.end method


# virtual methods
.method protected nameValue()Lgov2/nist/core/NameValue;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 145
    sget-boolean v7, Lgov2/nist/javax2/sip/parser/ViaParser;->debug:Z

    if-nez v7, :cond_0

    .line 148
    :goto_0
    :try_start_0
    iget-object v7, p0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v8, 0xfff

    invoke-virtual {v7, v8}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 149
    iget-object v7, p0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v2

    .line 151
    .local v2, "name":Lgov2/nist/core/Token;
    iget-object v7, p0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    const/4 v4, 0x0

    .line 156
    .local v4, "quoted":Z
    :try_start_1
    iget-object v7, p0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v7

    int-to-char v1, v7

    .local v1, "la":C
    const/16 v7, 0x3d

    .line 158
    if-eq v1, v7, :cond_1

    .line 180
    new-instance v7, Lgov2/nist/core/NameValue;

    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    sget-boolean v8, Lgov2/nist/javax2/sip/parser/ViaParser;->debug:Z

    if-nez v8, :cond_6

    :goto_1
    return-object v7

    .end local v1    # "la":C
    .end local v2    # "name":Lgov2/nist/core/Token;
    .end local v4    # "quoted":Z
    :cond_0
    const-string/jumbo v7, "nameValue"

    .line 145
    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/parser/ViaParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    .restart local v1    # "la":C
    .restart local v2    # "name":Lgov2/nist/core/Token;
    .restart local v4    # "quoted":Z
    :cond_1
    :try_start_2
    iget-object v7, p0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 160
    iget-object v7, p0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov2/nist/core/LexerCore;->SPorHT()V

    const/4 v5, 0x0

    .line 162
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "received"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    .line 167
    iget-object v7, p0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v7

    const/16 v8, 0x22

    if-eq v7, v8, :cond_3

    .line 171
    iget-object v7, p0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v8, 0xfff

    invoke-virtual {v7, v8}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 172
    iget-object v7, p0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v6

    .line 173
    .local v6, "value":Lgov2/nist/core/Token;
    invoke-virtual {v6}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    .line 176
    .end local v6    # "value":Lgov2/nist/core/Token;
    .local v5, "str":Ljava/lang/String;
    :goto_2
    new-instance v3, Lgov2/nist/core/NameValue;

    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v5}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    .local v3, "nv":Lgov2/nist/core/NameValue;
    if-nez v4, :cond_4

    .line 187
    :goto_3
    sget-boolean v7, Lgov2/nist/javax2/sip/parser/ViaParser;->debug:Z

    if-nez v7, :cond_5

    :goto_4
    return-object v3

    .line 165
    .end local v3    # "nv":Lgov2/nist/core/NameValue;
    .local v5, "str":Ljava/lang/String;
    :cond_2
    :try_start_3
    iget-object v7, p0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov2/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    move-result-object v5

    .local v5, "str":Ljava/lang/String;
    goto :goto_2

    .line 168
    .local v5, "str":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov2/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "str":Ljava/lang/String;
    const/4 v4, 0x1

    goto :goto_2

    .line 177
    .restart local v3    # "nv":Lgov2/nist/core/NameValue;
    :cond_4
    invoke-virtual {v3}, Lgov2/nist/core/NameValue;->setQuotedValue()V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 187
    .end local v1    # "la":C
    .end local v3    # "nv":Lgov2/nist/core/NameValue;
    .end local v5    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 183
    .local v0, "ex":Ljava/text/ParseException;
    :try_start_4
    new-instance v7, Lgov2/nist/core/NameValue;

    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 187
    sget-boolean v8, Lgov2/nist/javax2/sip/parser/ViaParser;->debug:Z

    if-nez v8, :cond_7

    :goto_5
    return-object v7

    .end local v0    # "ex":Ljava/text/ParseException;
    .restart local v1    # "la":C
    .restart local v3    # "nv":Lgov2/nist/core/NameValue;
    .restart local v5    # "str":Ljava/lang/String;
    :cond_5
    const-string/jumbo v7, "nameValue"

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_4

    .end local v3    # "nv":Lgov2/nist/core/NameValue;
    .end local v5    # "str":Ljava/lang/String;
    :cond_6
    const-string/jumbo v8, "nameValue"

    invoke-virtual {p0, v8}, Lgov2/nist/javax2/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v1    # "la":C
    .restart local v0    # "ex":Ljava/text/ParseException;
    :cond_7
    const-string/jumbo v8, "nameValue"

    invoke-virtual {p0, v8}, Lgov2/nist/javax2/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_5

    .end local v0    # "ex":Ljava/text/ParseException;
    .end local v2    # "name":Lgov2/nist/core/Token;
    .end local v4    # "quoted":Z
    :catchall_0
    move-exception v7

    sget-boolean v8, Lgov2/nist/javax2/sip/parser/ViaParser;->debug:Z

    if-nez v8, :cond_8

    :goto_6
    throw v7

    :cond_8
    const-string/jumbo v8, "nameValue"

    invoke-virtual {p0, v8}, Lgov2/nist/javax2/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    .line 193
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/ViaParser;->debug:Z

    if-nez v2, :cond_1

    .line 195
    :goto_0
    :try_start_0
    new-instance v1, Lgov2/nist/javax2/sip/header/ViaList;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/ViaList;-><init>()V

    .line 197
    .local v1, "viaList":Lgov2/nist/javax2/sip/header/ViaList;
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v3, 0x810

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 198
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 199
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 200
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 203
    :cond_0
    new-instance v0, Lgov2/nist/javax2/sip/header/Via;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/Via;-><init>()V

    .line 204
    .local v0, "v":Lgov2/nist/javax2/sip/header/Via;
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/parser/ViaParser;->parseVia(Lgov2/nist/javax2/sip/header/Via;)V

    .line 205
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/ViaList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 206
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 207
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_2

    .line 211
    :goto_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    .line 213
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/ViaParser;->debug:Z

    if-nez v2, :cond_3

    :goto_2
    return-object v1

    .end local v0    # "v":Lgov2/nist/javax2/sip/header/Via;
    .end local v1    # "viaList":Lgov2/nist/javax2/sip/header/ViaList;
    :cond_1
    const-string/jumbo v2, "parse"

    .line 193
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ViaParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    .restart local v0    # "v":Lgov2/nist/javax2/sip/header/Via;
    .restart local v1    # "viaList":Lgov2/nist/javax2/sip/header/ViaList;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 209
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ViaParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 216
    .end local v0    # "v":Lgov2/nist/javax2/sip/header/Via;
    .end local v1    # "viaList":Lgov2/nist/javax2/sip/header/ViaList;
    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov2/nist/javax2/sip/parser/ViaParser;->debug:Z

    if-nez v3, :cond_4

    :goto_3
    throw v2

    .restart local v0    # "v":Lgov2/nist/javax2/sip/header/Via;
    .restart local v1    # "viaList":Lgov2/nist/javax2/sip/header/ViaList;
    :cond_3
    const-string/jumbo v2, "parse"

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "v":Lgov2/nist/javax2/sip/header/Via;
    .end local v1    # "viaList":Lgov2/nist/javax2/sip/header/ViaList;
    :cond_4
    const-string/jumbo v3, "parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method
