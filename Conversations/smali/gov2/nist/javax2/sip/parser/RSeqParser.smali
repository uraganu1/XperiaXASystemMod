.class public Lgov2/nist/javax2/sip/parser/RSeqParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "RSeqParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 68
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/RSeqParser;->debug:Z

    if-nez v3, :cond_0

    .line 69
    :goto_0
    new-instance v2, Lgov2/nist/javax2/sip/header/RSeq;

    invoke-direct {v2}, Lgov2/nist/javax2/sip/header/RSeq;-><init>()V

    .local v2, "rseq":Lgov2/nist/javax2/sip/header/RSeq;
    const/16 v3, 0x83c

    .line 71
    :try_start_0
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/RSeqParser;->headerName(I)V

    const-string/jumbo v3, "RSeq"

    .line 73
    invoke-virtual {v2, v3}, Lgov2/nist/javax2/sip/header/RSeq;->setHeaderName(Ljava/lang/String;)V

    .line 75
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RSeqParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->number()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 77
    .local v1, "number":Ljava/lang/String;
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lgov2/nist/javax2/sip/header/RSeq;->setSeqNumber(J)V
    :try_end_1
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RSeqParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 83
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/RSeqParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/RSeqParser;->debug:Z

    if-nez v3, :cond_1

    :goto_1
    return-object v2

    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "rseq":Lgov2/nist/javax2/sip/header/RSeq;
    :cond_0
    const-string/jumbo v3, "RSeqParser.parse"

    .line 68
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/RSeqParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    .restart local v1    # "number":Ljava/lang/String;
    .restart local v2    # "rseq":Lgov2/nist/javax2/sip/header/RSeq;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "ex":Ljavax2/sip/InvalidArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljavax2/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/RSeqParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    .end local v0    # "ex":Ljavax2/sip/InvalidArgumentException;
    .end local v1    # "number":Ljava/lang/String;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov2/nist/javax2/sip/parser/RSeqParser;->debug:Z

    if-nez v4, :cond_2

    :goto_2
    throw v3

    .restart local v1    # "number":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "RSeqParser.parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/RSeqParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "number":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "RSeqParser.parse"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/RSeqParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
