.class public Lgov2/nist/javax2/sip/parser/extensions/JoinParser;
.super Lgov2/nist/javax2/sip/parser/ParametersParser;
.source "JoinParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 47
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/extensions/JoinParser;->debug:Z

    if-nez v2, :cond_0

    :goto_0
    const/16 v2, 0x85c

    .line 49
    :try_start_0
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/extensions/JoinParser;->headerName(I)V

    .line 51
    new-instance v1, Lgov2/nist/javax2/sip/header/extensions/Join;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/extensions/Join;-><init>()V

    .line 52
    .local v1, "join":Lgov2/nist/javax2/sip/header/extensions/Join;
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/extensions/JoinParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 53
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/extensions/JoinParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/extensions/JoinParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 55
    invoke-super {p0, v1}, Lgov2/nist/javax2/sip/parser/ParametersParser;->parse(Lgov2/nist/javax2/sip/header/ParametersHeader;)V

    .line 56
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/extensions/Join;->setCallId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/extensions/JoinParser;->debug:Z

    if-nez v2, :cond_1

    :goto_1
    return-object v1

    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "join":Lgov2/nist/javax2/sip/header/extensions/Join;
    :cond_0
    const-string/jumbo v2, "parse"

    .line 47
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/extensions/JoinParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "callId":Ljava/lang/String;
    .restart local v1    # "join":Lgov2/nist/javax2/sip/header/extensions/Join;
    :cond_1
    const-string/jumbo v2, "parse"

    .line 59
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/extensions/JoinParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "join":Lgov2/nist/javax2/sip/header/extensions/Join;
    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov2/nist/javax2/sip/parser/extensions/JoinParser;->debug:Z

    if-nez v3, :cond_2

    :goto_2
    throw v2

    :cond_2
    const-string/jumbo v3, "parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/extensions/JoinParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
