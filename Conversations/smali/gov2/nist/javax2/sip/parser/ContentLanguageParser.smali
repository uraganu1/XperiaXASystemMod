.class public Lgov2/nist/javax2/sip/parser/ContentLanguageParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "ContentLanguageParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2c

    .line 69
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/ContentLanguageParser;->debug:Z

    if-nez v4, :cond_1

    .line 70
    :goto_0
    new-instance v2, Lgov2/nist/javax2/sip/header/ContentLanguageList;

    invoke-direct {v2}, Lgov2/nist/javax2/sip/header/ContentLanguageList;-><init>()V

    .local v2, "list":Lgov2/nist/javax2/sip/header/ContentLanguageList;
    const/16 v4, 0x81b

    .line 73
    :try_start_0
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ContentLanguageParser;->headerName(I)V

    .line 75
    :cond_0
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 100
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/ContentLanguageParser;->debug:Z

    if-nez v4, :cond_3

    :goto_1
    return-object v2

    .end local v2    # "list":Lgov2/nist/javax2/sip/header/ContentLanguageList;
    :cond_1
    const-string/jumbo v4, "ContentLanguageParser.parse"

    .line 69
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ContentLanguageParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    .restart local v2    # "list":Lgov2/nist/javax2/sip/header/ContentLanguageList;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 77
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 79
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v3

    .line 80
    .local v3, "token":Lgov2/nist/core/Token;
    new-instance v0, Lgov2/nist/javax2/sip/header/ContentLanguage;

    invoke-virtual {v3}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lgov2/nist/javax2/sip/header/ContentLanguage;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "cl":Lgov2/nist/javax2/sip/header/ContentLanguage;
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 82
    invoke-virtual {v2, v0}, Lgov2/nist/javax2/sip/header/ContentLanguageList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 84
    :goto_2
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    .line 85
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 86
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 87
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 88
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 89
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v3

    .line 90
    new-instance v0, Lgov2/nist/javax2/sip/header/ContentLanguage;

    .end local v0    # "cl":Lgov2/nist/javax2/sip/header/ContentLanguage;
    invoke-virtual {v3}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lgov2/nist/javax2/sip/header/ContentLanguage;-><init>(Ljava/lang/String;)V

    .line 91
    .restart local v0    # "cl":Lgov2/nist/javax2/sip/header/ContentLanguage;
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentLanguageParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 92
    invoke-virtual {v2, v0}, Lgov2/nist/javax2/sip/header/ContentLanguageList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 100
    .end local v0    # "cl":Lgov2/nist/javax2/sip/header/ContentLanguage;
    .end local v3    # "token":Lgov2/nist/core/Token;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "ex":Ljava/text/ParseException;
    :try_start_2
    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ContentLanguageParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "ex":Ljava/text/ParseException;
    :catchall_0
    move-exception v4

    .line 100
    sget-boolean v5, Lgov2/nist/javax2/sip/parser/ContentLanguageParser;->debug:Z

    if-nez v5, :cond_4

    :goto_3
    throw v4

    :cond_3
    const-string/jumbo v4, "ContentLanguageParser.parse"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ContentLanguageParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "ContentLanguageParser.parse"

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/ContentLanguageParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method
