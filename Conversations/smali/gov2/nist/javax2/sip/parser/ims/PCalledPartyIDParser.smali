.class public Lgov2/nist/javax2/sip/parser/ims/PCalledPartyIDParser;
.super Lgov2/nist/javax2/sip/parser/AddressParametersParser;
.source "PCalledPartyIDParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 63
    sget-boolean v1, Lgov2/nist/javax2/sip/parser/ims/PCalledPartyIDParser;->debug:Z

    if-nez v1, :cond_0

    .line 66
    :goto_0
    :try_start_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/ims/PCalledPartyIDParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v2, 0x850

    invoke-virtual {v1, v2}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 67
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/ims/PCalledPartyIDParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 68
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/ims/PCalledPartyIDParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 69
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/ims/PCalledPartyIDParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 71
    new-instance v0, Lgov2/nist/javax2/sip/header/ims/PCalledPartyID;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ims/PCalledPartyID;-><init>()V

    .line 72
    .local v0, "calledPartyID":Lgov2/nist/javax2/sip/header/ims/PCalledPartyID;
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->parse(Lgov2/nist/javax2/sip/header/AddressParametersHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    sget-boolean v1, Lgov2/nist/javax2/sip/parser/ims/PCalledPartyIDParser;->debug:Z

    if-nez v1, :cond_1

    :goto_1
    return-object v0

    .end local v0    # "calledPartyID":Lgov2/nist/javax2/sip/header/ims/PCalledPartyID;
    :cond_0
    const-string/jumbo v1, "PCalledPartyIDParser.parse"

    .line 63
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/ims/PCalledPartyIDParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "calledPartyID":Lgov2/nist/javax2/sip/header/ims/PCalledPartyID;
    :cond_1
    const-string/jumbo v1, "PCalledPartyIDParser.parse"

    .line 77
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/ims/PCalledPartyIDParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "calledPartyID":Lgov2/nist/javax2/sip/header/ims/PCalledPartyID;
    :catchall_0
    move-exception v1

    sget-boolean v2, Lgov2/nist/javax2/sip/parser/ims/PCalledPartyIDParser;->debug:Z

    if-nez v2, :cond_2

    :goto_2
    throw v1

    :cond_2
    const-string/jumbo v2, "PCalledPartyIDParser.parse"

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/PCalledPartyIDParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
