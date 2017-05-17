.class public Lgov2/nist/javax2/sip/parser/CallIDParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "CallIDParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 67
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/CallIDParser;->debug:Z

    if-nez v2, :cond_0

    .line 69
    :goto_0
    :try_start_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/CallIDParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v3, 0x828

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 70
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/CallIDParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 71
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/CallIDParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 72
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/CallIDParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 74
    new-instance v0, Lgov2/nist/javax2/sip/header/CallID;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/CallID;-><init>()V

    .line 76
    .local v0, "callID":Lgov2/nist/javax2/sip/header/CallID;
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/CallIDParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 77
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/CallIDParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "rest":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/header/CallID;->setCallId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/CallIDParser;->debug:Z

    if-nez v2, :cond_1

    :goto_1
    return-object v0

    .end local v0    # "callID":Lgov2/nist/javax2/sip/header/CallID;
    .end local v1    # "rest":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "parse"

    .line 67
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/CallIDParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "callID":Lgov2/nist/javax2/sip/header/CallID;
    .restart local v1    # "rest":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "parse"

    .line 81
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/CallIDParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "callID":Lgov2/nist/javax2/sip/header/CallID;
    .end local v1    # "rest":Ljava/lang/String;
    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov2/nist/javax2/sip/parser/CallIDParser;->debug:Z

    if-nez v3, :cond_2

    :goto_2
    throw v2

    :cond_2
    const-string/jumbo v3, "parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/CallIDParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
