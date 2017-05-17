.class public Lgov2/nist/javax2/sip/parser/AuthorizationParser;
.super Lgov2/nist/javax2/sip/parser/ChallengeParser;
.source "AuthorizationParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "parse"

    .line 67
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/AuthorizationParser;->dbg_enter(Ljava/lang/String;)V

    const/16 v1, 0x817

    .line 69
    :try_start_0
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/AuthorizationParser;->headerName(I)V

    .line 70
    new-instance v0, Lgov2/nist/javax2/sip/header/Authorization;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/Authorization;-><init>()V

    .line 71
    .local v0, "auth":Lgov2/nist/javax2/sip/header/Authorization;
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/ChallengeParser;->parse(Lgov2/nist/javax2/sip/header/AuthenticationHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v1, "parse"

    .line 74
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/AuthorizationParser;->dbg_leave(Ljava/lang/String;)V

    return-object v0

    .end local v0    # "auth":Lgov2/nist/javax2/sip/header/Authorization;
    :catchall_0
    move-exception v1

    const-string/jumbo v2, "parse"

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/AuthorizationParser;->dbg_leave(Ljava/lang/String;)V

    throw v1
.end method
