.class public Lgov2/nist/javax2/sip/parser/AcceptParser;
.super Lgov2/nist/javax2/sip/parser/ParametersParser;
.source "AcceptParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2c

    .line 69
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/AcceptParser;->debug:Z

    if-nez v3, :cond_0

    .line 70
    :goto_0
    new-instance v1, Lgov2/nist/javax2/sip/header/AcceptList;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/AcceptList;-><init>()V

    .local v1, "list":Lgov2/nist/javax2/sip/header/AcceptList;
    const/16 v3, 0x814

    .line 73
    :try_start_0
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/AcceptParser;->headerName(I)V

    .line 75
    new-instance v0, Lgov2/nist/javax2/sip/header/Accept;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/Accept;-><init>()V

    .local v0, "accept":Lgov2/nist/javax2/sip/header/Accept;
    const-string/jumbo v3, "Accept"

    .line 76
    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/Accept;->setHeaderName(Ljava/lang/String;)V

    .line 78
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AcceptParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 79
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AcceptParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 80
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AcceptParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v2

    .line 81
    .local v2, "token":Lgov2/nist/core/Token;
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/Accept;->setContentType(Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AcceptParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 83
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AcceptParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 84
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AcceptParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/Accept;->setContentSubType(Ljava/lang/String;)V

    .line 86
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AcceptParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 88
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/ParametersParser;->parse(Lgov2/nist/javax2/sip/header/ParametersHeader;)V

    .line 89
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/AcceptList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 91
    :goto_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AcceptParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eq v3, v5, :cond_1

    .line 111
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/AcceptParser;->debug:Z

    if-nez v3, :cond_2

    :goto_2
    return-object v1

    .end local v0    # "accept":Lgov2/nist/javax2/sip/header/Accept;
    .end local v1    # "list":Lgov2/nist/javax2/sip/header/AcceptList;
    .end local v2    # "token":Lgov2/nist/core/Token;
    :cond_0
    const-string/jumbo v3, "AcceptParser.parse"

    .line 69
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/AcceptParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .restart local v0    # "accept":Lgov2/nist/javax2/sip/header/Accept;
    .restart local v1    # "list":Lgov2/nist/javax2/sip/header/AcceptList;
    .restart local v2    # "token":Lgov2/nist/core/Token;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AcceptParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 93
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AcceptParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 95
    new-instance v0, Lgov2/nist/javax2/sip/header/Accept;

    .end local v0    # "accept":Lgov2/nist/javax2/sip/header/Accept;
    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/Accept;-><init>()V

    .line 97
    .restart local v0    # "accept":Lgov2/nist/javax2/sip/header/Accept;
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AcceptParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 98
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AcceptParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/Accept;->setContentType(Ljava/lang/String;)V

    .line 100
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AcceptParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 101
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AcceptParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 102
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AcceptParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v2

    .line 103
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/Accept;->setContentSubType(Ljava/lang/String;)V

    .line 104
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/AcceptParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 105
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/ParametersParser;->parse(Lgov2/nist/javax2/sip/header/ParametersHeader;)V

    .line 106
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/AcceptList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 111
    .end local v0    # "accept":Lgov2/nist/javax2/sip/header/Accept;
    .end local v2    # "token":Lgov2/nist/core/Token;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov2/nist/javax2/sip/parser/AcceptParser;->debug:Z

    if-nez v4, :cond_3

    :goto_3
    throw v3

    .restart local v0    # "accept":Lgov2/nist/javax2/sip/header/Accept;
    .restart local v2    # "token":Lgov2/nist/core/Token;
    :cond_2
    const-string/jumbo v3, "AcceptParser.parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/AcceptParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "accept":Lgov2/nist/javax2/sip/header/Accept;
    .end local v2    # "token":Lgov2/nist/core/Token;
    :cond_3
    const-string/jumbo v4, "AcceptParser.parse"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/AcceptParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method
