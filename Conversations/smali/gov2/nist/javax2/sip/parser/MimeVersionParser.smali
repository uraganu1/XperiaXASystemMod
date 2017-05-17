.class public Lgov2/nist/javax2/sip/parser/MimeVersionParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "MimeVersionParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 70
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/MimeVersionParser;->debug:Z

    if-nez v4, :cond_0

    .line 71
    :goto_0
    new-instance v2, Lgov2/nist/javax2/sip/header/MimeVersion;

    invoke-direct {v2}, Lgov2/nist/javax2/sip/header/MimeVersion;-><init>()V

    .local v2, "mimeVersion":Lgov2/nist/javax2/sip/header/MimeVersion;
    const/16 v4, 0x80c

    .line 73
    :try_start_0
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/MimeVersionParser;->headerName(I)V

    const-string/jumbo v4, "MIME-Version"

    .line 75
    invoke-virtual {v2, v4}, Lgov2/nist/javax2/sip/header/MimeVersion;->setHeaderName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :try_start_1
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/MimeVersionParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "majorVersion":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lgov2/nist/javax2/sip/header/MimeVersion;->setMajorVersion(I)V

    .line 80
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/MimeVersionParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 81
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/MimeVersionParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "minorVersion":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lgov2/nist/javax2/sip/header/MimeVersion;->setMinorVersion(I)V
    :try_end_1
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/MimeVersionParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 89
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/MimeVersionParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/MimeVersionParser;->debug:Z

    if-nez v4, :cond_1

    :goto_1
    return-object v2

    .end local v1    # "majorVersion":Ljava/lang/String;
    .end local v2    # "mimeVersion":Lgov2/nist/javax2/sip/header/MimeVersion;
    .end local v3    # "minorVersion":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "MimeVersionParser.parse"

    .line 70
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/MimeVersionParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .restart local v2    # "mimeVersion":Lgov2/nist/javax2/sip/header/MimeVersion;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "ex":Ljavax2/sip/InvalidArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljavax2/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/MimeVersionParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    .end local v0    # "ex":Ljavax2/sip/InvalidArgumentException;
    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov2/nist/javax2/sip/parser/MimeVersionParser;->debug:Z

    if-nez v5, :cond_2

    :goto_2
    throw v4

    .restart local v1    # "majorVersion":Ljava/lang/String;
    .restart local v3    # "minorVersion":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "MimeVersionParser.parse"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/MimeVersionParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "majorVersion":Ljava/lang/String;
    .end local v3    # "minorVersion":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "MimeVersionParser.parse"

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/MimeVersionParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
