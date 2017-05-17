.class public Lgov2/nist/javax2/sip/parser/AuthenticationInfoParser;
.super Lgov2/nist/javax2/sip/parser/ParametersParser;
.source "AuthenticationInfoParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2c

    .line 69
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/AuthenticationInfoParser;->debug:Z

    if-nez v2, :cond_0

    :goto_0
    const/16 v2, 0x840

    .line 72
    :try_start_0
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/AuthenticationInfoParser;->headerName(I)V

    .line 74
    new-instance v0, Lgov2/nist/javax2/sip/header/AuthenticationInfo;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/AuthenticationInfo;-><init>()V

    .local v0, "authenticationInfo":Lgov2/nist/javax2/sip/header/AuthenticationInfo;
    const-string/jumbo v2, "Authentication-Info"

    .line 75
    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/header/AuthenticationInfo;->setHeaderName(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/AuthenticationInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 79
    invoke-super {p0}, Lgov2/nist/javax2/sip/parser/ParametersParser;->nameValue()Lgov2/nist/core/NameValue;

    move-result-object v1

    .line 80
    .local v1, "nv":Lgov2/nist/core/NameValue;
    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/AuthenticationInfo;->setParameter(Lgov2/nist/core/NameValue;)V

    .line 81
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/AuthenticationInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 82
    :goto_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/AuthenticationInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    if-eq v2, v4, :cond_1

    .line 90
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/AuthenticationInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/AuthenticationInfoParser;->debug:Z

    if-nez v2, :cond_2

    :goto_2
    return-object v0

    .end local v0    # "authenticationInfo":Lgov2/nist/javax2/sip/header/AuthenticationInfo;
    .end local v1    # "nv":Lgov2/nist/core/NameValue;
    :cond_0
    const-string/jumbo v2, "AuthenticationInfoParser.parse"

    .line 69
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/AuthenticationInfoParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .restart local v0    # "authenticationInfo":Lgov2/nist/javax2/sip/header/AuthenticationInfo;
    .restart local v1    # "nv":Lgov2/nist/core/NameValue;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/AuthenticationInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 84
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/AuthenticationInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 86
    invoke-super {p0}, Lgov2/nist/javax2/sip/parser/ParametersParser;->nameValue()Lgov2/nist/core/NameValue;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/AuthenticationInfo;->setParameter(Lgov2/nist/core/NameValue;)V

    .line 88
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/AuthenticationInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 95
    .end local v0    # "authenticationInfo":Lgov2/nist/javax2/sip/header/AuthenticationInfo;
    .end local v1    # "nv":Lgov2/nist/core/NameValue;
    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov2/nist/javax2/sip/parser/AuthenticationInfoParser;->debug:Z

    if-nez v3, :cond_3

    :goto_3
    throw v2

    .restart local v0    # "authenticationInfo":Lgov2/nist/javax2/sip/header/AuthenticationInfo;
    .restart local v1    # "nv":Lgov2/nist/core/NameValue;
    :cond_2
    const-string/jumbo v2, "AuthenticationInfoParser.parse"

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/AuthenticationInfoParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "authenticationInfo":Lgov2/nist/javax2/sip/header/AuthenticationInfo;
    .end local v1    # "nv":Lgov2/nist/core/NameValue;
    :cond_3
    const-string/jumbo v3, "AuthenticationInfoParser.parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/AuthenticationInfoParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method
