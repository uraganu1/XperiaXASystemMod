.class public Lgov2/nist/javax2/sip/parser/PriorityParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "PriorityParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 70
    sget-boolean v1, Lgov2/nist/javax2/sip/parser/PriorityParser;->debug:Z

    if-nez v1, :cond_0

    .line 71
    :goto_0
    new-instance v0, Lgov2/nist/javax2/sip/header/Priority;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/Priority;-><init>()V

    .local v0, "priority":Lgov2/nist/javax2/sip/header/Priority;
    const/16 v1, 0x821

    .line 73
    :try_start_0
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/PriorityParser;->headerName(I)V

    const-string/jumbo v1, "Priority"

    .line 75
    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/Priority;->setHeaderName(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/PriorityParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 85
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/PriorityParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov2/nist/core/LexerCore;->ttokenSafe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/Priority;->setPriority(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/PriorityParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 88
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/PriorityParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    sget-boolean v1, Lgov2/nist/javax2/sip/parser/PriorityParser;->debug:Z

    if-nez v1, :cond_1

    :goto_1
    return-object v0

    .end local v0    # "priority":Lgov2/nist/javax2/sip/header/Priority;
    :cond_0
    const-string/jumbo v1, "PriorityParser.parse"

    .line 70
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/PriorityParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "priority":Lgov2/nist/javax2/sip/header/Priority;
    :cond_1
    const-string/jumbo v1, "PriorityParser.parse"

    .line 92
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/PriorityParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-boolean v2, Lgov2/nist/javax2/sip/parser/PriorityParser;->debug:Z

    if-nez v2, :cond_2

    :goto_2
    throw v1

    :cond_2
    const-string/jumbo v2, "PriorityParser.parse"

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/PriorityParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
