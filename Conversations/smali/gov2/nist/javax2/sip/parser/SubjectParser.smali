.class public Lgov2/nist/javax2/sip/parser/SubjectParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "SubjectParser.java"


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
    new-instance v1, Lgov2/nist/javax2/sip/header/Subject;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/Subject;-><init>()V

    .line 68
    .local v1, "subject":Lgov2/nist/javax2/sip/header/Subject;
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/SubjectParser;->debug:Z

    if-nez v2, :cond_0

    :goto_0
    const/16 v2, 0x825

    .line 71
    :try_start_0
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/SubjectParser;->headerName(I)V

    .line 73
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/SubjectParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 75
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/SubjectParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgov2/nist/javax2/sip/header/Subject;->setSubject(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/SubjectParser;->debug:Z

    if-nez v2, :cond_1

    .line 82
    :goto_1
    return-object v1

    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "SubjectParser.parse"

    .line 68
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/SubjectParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "s":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "SubjectParser.parse"

    .line 79
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/SubjectParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov2/nist/javax2/sip/parser/SubjectParser;->debug:Z

    if-nez v3, :cond_2

    :goto_2
    throw v2

    :cond_2
    const-string/jumbo v3, "SubjectParser.parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/SubjectParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
