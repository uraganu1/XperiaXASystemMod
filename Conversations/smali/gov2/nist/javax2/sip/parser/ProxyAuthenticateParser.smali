.class public Lgov2/nist/javax2/sip/parser/ProxyAuthenticateParser;
.super Lgov2/nist/javax2/sip/parser/ChallengeParser;
.source "ProxyAuthenticateParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x822

    .line 66
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/ProxyAuthenticateParser;->headerName(I)V

    .line 67
    new-instance v0, Lgov2/nist/javax2/sip/header/ProxyAuthenticate;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ProxyAuthenticate;-><init>()V

    .line 68
    .local v0, "proxyAuthenticate":Lgov2/nist/javax2/sip/header/ProxyAuthenticate;
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/ChallengeParser;->parse(Lgov2/nist/javax2/sip/header/AuthenticationHeader;)V

    .line 69
    return-object v0
.end method
