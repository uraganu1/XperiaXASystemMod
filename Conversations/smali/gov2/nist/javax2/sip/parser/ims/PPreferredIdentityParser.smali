.class public Lgov2/nist/javax2/sip/parser/ims/PPreferredIdentityParser;
.super Lgov2/nist/javax2/sip/parser/AddressParametersParser;
.source "PPreferredIdentityParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 62
    sget-boolean v1, Lgov2/nist/javax2/sip/parser/ims/PPreferredIdentityParser;->debug:Z

    if-nez v1, :cond_0

    .line 65
    :goto_0
    :try_start_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/ims/PPreferredIdentityParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v2, 0x84a

    invoke-virtual {v1, v2}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 66
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/ims/PPreferredIdentityParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 67
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/ims/PPreferredIdentityParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 68
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/ims/PPreferredIdentityParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 70
    new-instance v0, Lgov2/nist/javax2/sip/header/ims/PPreferredIdentity;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ims/PPreferredIdentity;-><init>()V

    .line 71
    .local v0, "p":Lgov2/nist/javax2/sip/header/ims/PPreferredIdentity;
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->parse(Lgov2/nist/javax2/sip/header/AddressParametersHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    sget-boolean v1, Lgov2/nist/javax2/sip/parser/ims/PPreferredIdentityParser;->debug:Z

    if-nez v1, :cond_1

    :goto_1
    return-object v0

    .end local v0    # "p":Lgov2/nist/javax2/sip/header/ims/PPreferredIdentity;
    :cond_0
    const-string/jumbo v1, "PreferredIdentityParser.parse"

    .line 62
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/ims/PPreferredIdentityParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "p":Lgov2/nist/javax2/sip/header/ims/PPreferredIdentity;
    :cond_1
    const-string/jumbo v1, "PreferredIdentityParser.parse"

    .line 74
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/ims/PPreferredIdentityParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "p":Lgov2/nist/javax2/sip/header/ims/PPreferredIdentity;
    :catchall_0
    move-exception v1

    sget-boolean v2, Lgov2/nist/javax2/sip/parser/ims/PPreferredIdentityParser;->debug:Z

    if-nez v2, :cond_2

    :goto_2
    throw v1

    :cond_2
    const-string/jumbo v2, "PreferredIdentityParser.parse"

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/PPreferredIdentityParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
