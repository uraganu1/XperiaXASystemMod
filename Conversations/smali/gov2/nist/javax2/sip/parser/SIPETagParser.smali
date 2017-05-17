.class public Lgov2/nist/javax2/sip/parser/SIPETagParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "SIPETagParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 69
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/SIPETagParser;->debug:Z

    if-nez v2, :cond_0

    .line 71
    :goto_0
    new-instance v0, Lgov2/nist/javax2/sip/header/SIPETag;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/SIPETag;-><init>()V

    .local v0, "sipEtag":Lgov2/nist/javax2/sip/header/SIPETag;
    const/16 v2, 0x844

    .line 73
    :try_start_0
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/SIPETagParser;->headerName(I)V

    .line 75
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/SIPETagParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 76
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/SIPETagParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v3, 0xfff

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 77
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/SIPETagParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v1

    .line 79
    .local v1, "token":Lgov2/nist/core/Token;
    invoke-virtual {v1}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/header/SIPETag;->setETag(Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/SIPETagParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 82
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/SIPETagParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/SIPETagParser;->debug:Z

    if-nez v2, :cond_1

    :goto_1
    return-object v0

    .end local v0    # "sipEtag":Lgov2/nist/javax2/sip/header/SIPETag;
    .end local v1    # "token":Lgov2/nist/core/Token;
    :cond_0
    const-string/jumbo v2, "SIPEtag.parse"

    .line 69
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/SIPETagParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "sipEtag":Lgov2/nist/javax2/sip/header/SIPETag;
    .restart local v1    # "token":Lgov2/nist/core/Token;
    :cond_1
    const-string/jumbo v2, "SIPEtag.parse"

    .line 86
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/SIPETagParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "token":Lgov2/nist/core/Token;
    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov2/nist/javax2/sip/parser/SIPETagParser;->debug:Z

    if-nez v3, :cond_2

    :goto_2
    throw v2

    :cond_2
    const-string/jumbo v3, "SIPEtag.parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/SIPETagParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
