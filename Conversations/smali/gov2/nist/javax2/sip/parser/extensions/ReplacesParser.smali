.class public Lgov2/nist/javax2/sip/parser/extensions/ReplacesParser;
.super Lgov2/nist/javax2/sip/parser/ParametersParser;
.source "ReplacesParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 49
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/extensions/ReplacesParser;->debug:Z

    if-nez v2, :cond_0

    :goto_0
    const/16 v2, 0x857

    .line 51
    :try_start_0
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/extensions/ReplacesParser;->headerName(I)V

    .line 53
    new-instance v1, Lgov2/nist/javax2/sip/header/extensions/Replaces;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/extensions/Replaces;-><init>()V

    .line 54
    .local v1, "replaces":Lgov2/nist/javax2/sip/header/extensions/Replaces;
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/extensions/ReplacesParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 55
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/extensions/ReplacesParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/extensions/ReplacesParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 57
    invoke-super {p0, v1}, Lgov2/nist/javax2/sip/parser/ParametersParser;->parse(Lgov2/nist/javax2/sip/header/ParametersHeader;)V

    .line 58
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/extensions/Replaces;->setCallId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/extensions/ReplacesParser;->debug:Z

    if-nez v2, :cond_1

    :goto_1
    return-object v1

    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "replaces":Lgov2/nist/javax2/sip/header/extensions/Replaces;
    :cond_0
    const-string/jumbo v2, "parse"

    .line 49
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/extensions/ReplacesParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "callId":Ljava/lang/String;
    .restart local v1    # "replaces":Lgov2/nist/javax2/sip/header/extensions/Replaces;
    :cond_1
    const-string/jumbo v2, "parse"

    .line 61
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/extensions/ReplacesParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "replaces":Lgov2/nist/javax2/sip/header/extensions/Replaces;
    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov2/nist/javax2/sip/parser/extensions/ReplacesParser;->debug:Z

    if-nez v3, :cond_2

    :goto_2
    throw v2

    :cond_2
    const-string/jumbo v3, "parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/extensions/ReplacesParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
