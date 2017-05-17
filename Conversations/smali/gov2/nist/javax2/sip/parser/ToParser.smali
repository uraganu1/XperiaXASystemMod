.class public Lgov2/nist/javax2/sip/parser/ToParser;
.super Lgov2/nist/javax2/sip/parser/AddressParametersParser;
.source "ToParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x80f

    .line 58
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/ToParser;->headerName(I)V

    .line 59
    new-instance v0, Lgov2/nist/javax2/sip/header/To;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/To;-><init>()V

    .line 60
    .local v0, "to":Lgov2/nist/javax2/sip/header/To;
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->parse(Lgov2/nist/javax2/sip/header/AddressParametersHeader;)V

    .line 61
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/ToParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 62
    return-object v0
.end method
