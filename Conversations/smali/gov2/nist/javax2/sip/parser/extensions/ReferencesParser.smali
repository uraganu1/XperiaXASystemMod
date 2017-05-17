.class public Lgov2/nist/javax2/sip/parser/extensions/ReferencesParser;
.super Lgov2/nist/javax2/sip/parser/ParametersParser;
.source "ReferencesParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 42
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/extensions/ReferencesParser;->debug:Z

    if-nez v2, :cond_0

    :goto_0
    const/16 v2, 0x862

    .line 45
    :try_start_0
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/extensions/ReferencesParser;->headerName(I)V

    .line 46
    new-instance v1, Lgov2/nist/javax2/sip/header/extensions/References;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/extensions/References;-><init>()V

    .line 47
    .local v1, "references":Lgov2/nist/javax2/sip/header/extensions/References;
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/extensions/ReferencesParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 49
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/extensions/ReferencesParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "callId":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/extensions/References;->setCallId(Ljava/lang/String;)V

    .line 52
    invoke-super {p0, v1}, Lgov2/nist/javax2/sip/parser/ParametersParser;->parse(Lgov2/nist/javax2/sip/header/ParametersHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/extensions/ReferencesParser;->debug:Z

    if-nez v2, :cond_1

    :goto_1
    return-object v1

    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "references":Lgov2/nist/javax2/sip/header/extensions/References;
    :cond_0
    const-string/jumbo v2, "ReasonParser.parse"

    .line 42
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/extensions/ReferencesParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "callId":Ljava/lang/String;
    .restart local v1    # "references":Lgov2/nist/javax2/sip/header/extensions/References;
    :cond_1
    const-string/jumbo v2, "ReferencesParser.parse"

    .line 55
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/extensions/ReferencesParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "references":Lgov2/nist/javax2/sip/header/extensions/References;
    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov2/nist/javax2/sip/parser/extensions/ReferencesParser;->debug:Z

    if-nez v3, :cond_2

    :goto_2
    throw v2

    :cond_2
    const-string/jumbo v3, "ReferencesParser.parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/extensions/ReferencesParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
