.class public Lgov2/nist/javax2/sip/parser/WWWAuthenticateParser;
.super Lgov2/nist/javax2/sip/parser/ChallengeParser;
.source "WWWAuthenticateParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 67
    sget-boolean v1, Lgov2/nist/javax2/sip/parser/WWWAuthenticateParser;->debug:Z

    if-nez v1, :cond_0

    :goto_0
    const/16 v1, 0x830

    .line 69
    :try_start_0
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/WWWAuthenticateParser;->headerName(I)V

    .line 70
    new-instance v0, Lgov2/nist/javax2/sip/header/WWWAuthenticate;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/WWWAuthenticate;-><init>()V

    .line 71
    .local v0, "wwwAuthenticate":Lgov2/nist/javax2/sip/header/WWWAuthenticate;
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/ChallengeParser;->parse(Lgov2/nist/javax2/sip/header/AuthenticationHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    sget-boolean v1, Lgov2/nist/javax2/sip/parser/WWWAuthenticateParser;->debug:Z

    if-nez v1, :cond_1

    :goto_1
    return-object v0

    .end local v0    # "wwwAuthenticate":Lgov2/nist/javax2/sip/header/WWWAuthenticate;
    :cond_0
    const-string/jumbo v1, "parse"

    .line 67
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/WWWAuthenticateParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "wwwAuthenticate":Lgov2/nist/javax2/sip/header/WWWAuthenticate;
    :cond_1
    const-string/jumbo v1, "parse"

    .line 74
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/WWWAuthenticateParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "wwwAuthenticate":Lgov2/nist/javax2/sip/header/WWWAuthenticate;
    :catchall_0
    move-exception v1

    sget-boolean v2, Lgov2/nist/javax2/sip/parser/WWWAuthenticateParser;->debug:Z

    if-nez v2, :cond_2

    :goto_2
    throw v1

    :cond_2
    const-string/jumbo v2, "parse"

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/WWWAuthenticateParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
