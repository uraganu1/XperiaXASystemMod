.class public Lgov2/nist/javax2/sip/parser/extensions/ReferredByParser;
.super Lgov2/nist/javax2/sip/parser/AddressParametersParser;
.source "ReferredByParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x854

    .line 31
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/extensions/ReferredByParser;->headerName(I)V

    .line 32
    new-instance v0, Lgov2/nist/javax2/sip/header/extensions/ReferredBy;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/extensions/ReferredBy;-><init>()V

    .line 33
    .local v0, "referBy":Lgov2/nist/javax2/sip/header/extensions/ReferredBy;
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->parse(Lgov2/nist/javax2/sip/header/AddressParametersHeader;)V

    .line 34
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/extensions/ReferredByParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 35
    return-object v0
.end method
