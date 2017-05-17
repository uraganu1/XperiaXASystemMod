.class public Lgov2/nist/javax2/sip/parser/UserAgentParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "UserAgentParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2f

    const/16 v8, 0x28

    const/16 v7, 0xa

    .line 70
    sget-boolean v5, Lgov2/nist/javax2/sip/parser/UserAgentParser;->debug:Z

    if-nez v5, :cond_1

    .line 71
    :goto_0
    new-instance v4, Lgov2/nist/javax2/sip/header/UserAgent;

    invoke-direct {v4}, Lgov2/nist/javax2/sip/header/UserAgent;-><init>()V

    .local v4, "userAgent":Lgov2/nist/javax2/sip/header/UserAgent;
    const/16 v5, 0x811

    .line 73
    :try_start_0
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/UserAgentParser;->headerName(I)V

    .line 74
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/UserAgentParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-eq v5, v7, :cond_2

    .line 81
    :goto_1
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/UserAgentParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-ne v5, v7, :cond_3

    .line 123
    :cond_0
    sget-boolean v5, Lgov2/nist/javax2/sip/parser/UserAgentParser;->debug:Z

    if-nez v5, :cond_8

    .line 126
    :goto_2
    return-object v4

    .end local v4    # "userAgent":Lgov2/nist/javax2/sip/header/UserAgent;
    :cond_1
    const-string/jumbo v5, "UserAgentParser.parse"

    .line 70
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/UserAgentParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v4    # "userAgent":Lgov2/nist/javax2/sip/header/UserAgent;
    :cond_2
    :try_start_1
    const-string/jumbo v5, "empty header"

    .line 74
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/UserAgentParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :catchall_0
    move-exception v5

    sget-boolean v6, Lgov2/nist/javax2/sip/parser/UserAgentParser;->debug:Z

    if-nez v6, :cond_9

    :goto_3
    throw v5

    .line 81
    :cond_3
    :try_start_2
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/UserAgentParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/UserAgentParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-eq v5, v8, :cond_4

    .line 92
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/UserAgentParser;->getLexer()Lgov2/nist/javax2/sip/parser/Lexer;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/parser/Lexer;->SPorHT()V

    .line 94
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/UserAgentParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->byteStringNoSlash()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "product":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 97
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 99
    .local v2, "productSb":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/UserAgentParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->peekNextToken()Lgov2/nist/core/Token;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/core/Token;->getTokenType()I

    move-result v5

    if-eq v5, v9, :cond_6

    .line 117
    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgov2/nist/javax2/sip/header/UserAgent;->addProductToken(Ljava/lang/String;)V

    .line 120
    .end local v1    # "product":Ljava/lang/String;
    .end local v2    # "productSb":Ljava/lang/StringBuffer;
    :goto_5
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/UserAgentParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->SPorHT()V

    goto :goto_1

    .line 84
    :cond_4
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/UserAgentParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->comment()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "comment":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgov2/nist/javax2/sip/header/UserAgent;->addProductToken(Ljava/lang/String;)V

    goto :goto_5

    .end local v0    # "comment":Ljava/lang/String;
    .restart local v1    # "product":Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "Expected product string"

    .line 95
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/UserAgentParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5

    .line 101
    .restart local v2    # "productSb":Ljava/lang/StringBuffer;
    :cond_6
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/UserAgentParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 105
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/UserAgentParser;->getLexer()Lgov2/nist/javax2/sip/parser/Lexer;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/parser/Lexer;->SPorHT()V

    .line 107
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/UserAgentParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->byteStringNoSlash()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "productVersion":Ljava/lang/String;
    if-eqz v3, :cond_7

    const-string/jumbo v5, "/"

    .line 112
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_7
    const-string/jumbo v5, "Expected product version"

    .line 110
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/UserAgentParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "product":Ljava/lang/String;
    .end local v2    # "productSb":Ljava/lang/StringBuffer;
    .end local v3    # "productVersion":Ljava/lang/String;
    :cond_8
    const-string/jumbo v5, "UserAgentParser.parse"

    .line 123
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/UserAgentParser;->dbg_leave(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v6, "UserAgentParser.parse"

    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/UserAgentParser;->dbg_leave(Ljava/lang/String;)V

    goto/16 :goto_3
.end method
