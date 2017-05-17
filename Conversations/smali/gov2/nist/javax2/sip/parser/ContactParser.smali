.class public Lgov2/nist/javax2/sip/parser/ContactParser;
.super Lgov2/nist/javax2/sip/parser/AddressParametersParser;
.source "ContactParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2c

    const/16 v8, 0x2a

    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x827

    .line 58
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ContactParser;->headerName(I)V

    .line 59
    new-instance v3, Lgov2/nist/javax2/sip/header/ContactList;

    invoke-direct {v3}, Lgov2/nist/javax2/sip/header/ContactList;-><init>()V

    .line 61
    .local v3, "retval":Lgov2/nist/javax2/sip/header/ContactList;
    :goto_0
    new-instance v0, Lgov2/nist/javax2/sip/header/Contact;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/Contact;-><init>()V

    .line 62
    .local v0, "contact":Lgov2/nist/javax2/sip/header/Contact;
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContactParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    if-eq v4, v8, :cond_1

    .line 71
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->parse(Lgov2/nist/javax2/sip/header/AddressParametersHeader;)V

    .line 73
    :goto_1
    invoke-virtual {v3, v0}, Lgov2/nist/javax2/sip/header/ContactList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 74
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContactParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 75
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContactParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    int-to-char v1, v4

    .line 76
    .local v1, "la":C
    if-eq v1, v9, :cond_4

    .line 79
    if-ne v1, v7, :cond_5

    .line 84
    :cond_0
    return-object v3

    .line 63
    .end local v1    # "la":C
    :cond_1
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContactParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4, v6}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    int-to-char v2, v4

    .local v2, "next":C
    const/16 v4, 0x20

    .line 64
    if-ne v2, v4, :cond_3

    .line 65
    :cond_2
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContactParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4, v8}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 66
    invoke-virtual {v0, v6}, Lgov2/nist/javax2/sip/header/Contact;->setWildCardFlag(Z)V

    goto :goto_1

    :cond_3
    const/16 v4, 0x9

    .line 64
    if-eq v2, v4, :cond_2

    const/16 v4, 0xd

    if-eq v2, v4, :cond_2

    if-eq v2, v7, :cond_2

    .line 68
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->parse(Lgov2/nist/javax2/sip/header/AddressParametersHeader;)V

    goto :goto_1

    .line 77
    .end local v2    # "next":C
    .restart local v1    # "la":C
    :cond_4
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContactParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4, v9}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 78
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContactParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    goto :goto_0

    .line 79
    :cond_5
    if-eqz v1, :cond_0

    const-string/jumbo v4, "unexpected char"

    .line 82
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ContactParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
.end method
