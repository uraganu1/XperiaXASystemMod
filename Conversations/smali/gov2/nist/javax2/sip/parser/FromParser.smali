.class public Lgov2/nist/javax2/sip/parser/FromParser;
.super Lgov2/nist/javax2/sip/parser/AddressParametersParser;
.source "FromParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lgov2/nist/javax2/sip/header/From;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/From;-><init>()V

    .line 54
    .local v0, "from":Lgov2/nist/javax2/sip/header/From;
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/FromParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v2, 0x80e

    invoke-virtual {v1, v2}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 55
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/FromParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 56
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/FromParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 57
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/FromParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 58
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->parse(Lgov2/nist/javax2/sip/header/AddressParametersHeader;)V

    .line 59
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/FromParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 60
    return-object v0
.end method
