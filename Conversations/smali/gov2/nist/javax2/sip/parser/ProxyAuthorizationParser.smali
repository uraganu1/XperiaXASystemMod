.class public Lgov2/nist/javax2/sip/parser/ProxyAuthorizationParser;
.super Lgov2/nist/javax2/sip/parser/ChallengeParser;
.source "ProxyAuthorizationParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x818

    .line 66
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/ProxyAuthorizationParser;->headerName(I)V

    .line 67
    new-instance v0, Lgov2/nist/javax2/sip/header/ProxyAuthorization;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ProxyAuthorization;-><init>()V

    .line 68
    .local v0, "proxyAuth":Lgov2/nist/javax2/sip/header/ProxyAuthorization;
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/ChallengeParser;->parse(Lgov2/nist/javax2/sip/header/AuthenticationHeader;)V

    .line 69
    return-object v0
.end method
