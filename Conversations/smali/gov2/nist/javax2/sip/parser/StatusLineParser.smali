.class public Lgov2/nist/javax2/sip/parser/StatusLineParser;
.super Lgov2/nist/javax2/sip/parser/Parser;
.source "StatusLineParser.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "statusLine"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Lgov2/nist/javax2/sip/parser/Parser;-><init>()V

    .line 41
    new-instance v0, Lgov2/nist/javax2/sip/parser/Lexer;

    const-string/jumbo v1, "status_lineLexer"

    invoke-direct {v0, v1, p1}, Lgov2/nist/javax2/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/parser/StatusLineParser;->lexer:Lgov2/nist/core/LexerCore;

    .line 42
    return-void
.end method


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/StatusLine;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/StatusLineParser;->debug:Z

    if-nez v4, :cond_0

    .line 70
    :goto_0
    new-instance v0, Lgov2/nist/javax2/sip/header/StatusLine;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/StatusLine;-><init>()V

    .line 71
    .local v0, "retval":Lgov2/nist/javax2/sip/header/StatusLine;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/StatusLineParser;->sipVersion()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "version":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/StatusLine;->setSipVersion(Ljava/lang/String;)V

    .line 73
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/StatusLineParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 74
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/StatusLineParser;->statusCode()I

    move-result v2

    .line 75
    .local v2, "scode":I
    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/header/StatusLine;->setStatusCode(I)V

    .line 76
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/StatusLineParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 77
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/StatusLineParser;->reasonPhrase()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "rp":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    .line 79
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/StatusLineParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/StatusLineParser;->debug:Z

    if-nez v4, :cond_1

    :goto_1
    return-object v0

    .end local v0    # "retval":Lgov2/nist/javax2/sip/header/StatusLine;
    .end local v1    # "rp":Ljava/lang/String;
    .end local v2    # "scode":I
    .end local v3    # "version":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string/jumbo v4, "parse"

    .line 69
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/StatusLineParser;->dbg_enter(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov2/nist/javax2/sip/parser/StatusLineParser;->debug:Z

    if-nez v5, :cond_2

    :goto_2
    throw v4

    .restart local v0    # "retval":Lgov2/nist/javax2/sip/header/StatusLine;
    .restart local v1    # "rp":Ljava/lang/String;
    .restart local v2    # "scode":I
    .restart local v3    # "version":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "parse"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/StatusLineParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "retval":Lgov2/nist/javax2/sip/header/StatusLine;
    .end local v1    # "rp":Ljava/lang/String;
    .end local v2    # "scode":I
    .end local v3    # "version":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "parse"

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/StatusLineParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected reasonPhrase()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lgov2/nist/javax2/sip/parser/StatusLineParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov2/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected statusCode()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/StatusLineParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "scode":Ljava/lang/String;
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/StatusLineParser;->debug:Z

    if-nez v3, :cond_0

    .line 53
    :goto_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 58
    .local v1, "retval":I
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/StatusLineParser;->debug:Z

    if-nez v3, :cond_1

    :goto_1
    return v1

    .end local v1    # "retval":I
    :cond_0
    const-string/jumbo v3, "statusCode"

    .line 51
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/StatusLineParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v1    # "retval":I
    :cond_1
    const-string/jumbo v3, "statusCode"

    .line 58
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/StatusLineParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "retval":I
    :catch_0
    move-exception v0

    .line 56
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_1
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/StatusLineParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/StatusLineParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->getPtr()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v3

    .line 58
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/StatusLineParser;->debug:Z

    if-nez v4, :cond_2

    :goto_2
    throw v3

    :cond_2
    const-string/jumbo v4, "statusCode"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/StatusLineParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
