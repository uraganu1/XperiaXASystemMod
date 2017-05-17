.class public Lgov2/nist/javax2/sip/parser/ims/PAssertedIdentityParser;
.super Lgov2/nist/javax2/sip/parser/AddressParametersParser;
.source "PAssertedIdentityParser.java"


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

    .line 65
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/ims/PAssertedIdentityParser;->debug:Z

    if-nez v2, :cond_0

    .line 67
    :goto_0
    new-instance v0, Lgov2/nist/javax2/sip/header/ims/PAssertedIdentityList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ims/PAssertedIdentityList;-><init>()V

    .local v0, "assertedIdList":Lgov2/nist/javax2/sip/header/ims/PAssertedIdentityList;
    const/16 v2, 0x849

    .line 71
    :try_start_0
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/PAssertedIdentityParser;->headerName(I)V

    .line 73
    new-instance v1, Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;-><init>()V

    .local v1, "pai":Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;
    const-string/jumbo v2, "P-Asserted-Identity"

    .line 74
    invoke-virtual {v1, v2}, Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;->setHeaderName(Ljava/lang/String;)V

    .line 76
    invoke-super {p0, v1}, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->parse(Lgov2/nist/javax2/sip/header/AddressParametersHeader;)V

    .line 77
    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/ims/PAssertedIdentityList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 79
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/PAssertedIdentityParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 80
    :goto_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/PAssertedIdentityParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    if-eq v2, v4, :cond_1

    .line 90
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/PAssertedIdentityParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 91
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/PAssertedIdentityParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/ims/PAssertedIdentityParser;->debug:Z

    if-nez v2, :cond_2

    :goto_2
    return-object v0

    .end local v0    # "assertedIdList":Lgov2/nist/javax2/sip/header/ims/PAssertedIdentityList;
    .end local v1    # "pai":Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;
    :cond_0
    const-string/jumbo v2, "AssertedIdentityParser.parse"

    .line 65
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/PAssertedIdentityParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .restart local v0    # "assertedIdList":Lgov2/nist/javax2/sip/header/ims/PAssertedIdentityList;
    .restart local v1    # "pai":Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/PAssertedIdentityParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 82
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/PAssertedIdentityParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 84
    new-instance v1, Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;

    .end local v1    # "pai":Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;
    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;-><init>()V

    .line 85
    .restart local v1    # "pai":Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;
    invoke-super {p0, v1}, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->parse(Lgov2/nist/javax2/sip/header/AddressParametersHeader;)V

    .line 86
    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/ims/PAssertedIdentityList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 88
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/PAssertedIdentityParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 98
    .end local v1    # "pai":Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;
    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov2/nist/javax2/sip/parser/ims/PAssertedIdentityParser;->debug:Z

    if-nez v3, :cond_3

    :goto_3
    throw v2

    .restart local v1    # "pai":Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;
    :cond_2
    const-string/jumbo v2, "AssertedIdentityParser.parse"

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/PAssertedIdentityParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2

    .end local v1    # "pai":Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;
    :cond_3
    const-string/jumbo v3, "AssertedIdentityParser.parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ims/PAssertedIdentityParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method
