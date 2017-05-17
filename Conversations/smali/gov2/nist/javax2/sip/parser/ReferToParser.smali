.class public Lgov2/nist/javax2/sip/parser/ReferToParser;
.super Lgov2/nist/javax2/sip/parser/AddressParametersParser;
.source "ReferToParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x842

    .line 56
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/ReferToParser;->headerName(I)V

    .line 57
    new-instance v0, Lgov2/nist/javax2/sip/header/ReferTo;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ReferTo;-><init>()V

    .line 58
    .local v0, "referTo":Lgov2/nist/javax2/sip/header/ReferTo;
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->parse(Lgov2/nist/javax2/sip/header/AddressParametersHeader;)V

    .line 59
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/ReferToParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 60
    return-object v0
.end method
