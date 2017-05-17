.class public Lgov2/nist/javax2/sip/parser/ims/PAccessNetworkInfoParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "PAccessNetworkInfoParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3b

    .line 84
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/ims/PAccessNetworkInfoParser;->debug:Z

    if-nez v3, :cond_0

    :goto_0
    const/16 v3, 0x84f

    .line 86
    :try_start_0
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ims/PAccessNetworkInfoParser;->headerName(I)V

    .line 87
    new-instance v0, Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;-><init>()V

    .local v0, "accessNetworkInfo":Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;
    const-string/jumbo v3, "P-Access-Network-Info"

    .line 88
    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;->setHeaderName(Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 91
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 92
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v2

    .line 93
    .local v2, "token":Lgov2/nist/core/Token;
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;->setAccessType(Ljava/lang/String;)V

    .line 95
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 96
    :goto_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    if-eq v3, v5, :cond_1

    .line 104
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 105
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/ims/PAccessNetworkInfoParser;->debug:Z

    if-nez v3, :cond_2

    :goto_2
    return-object v0

    .end local v0    # "accessNetworkInfo":Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;
    .end local v2    # "token":Lgov2/nist/core/Token;
    :cond_0
    const-string/jumbo v3, "AccessNetworkInfoParser.parse"

    .line 84
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ims/PAccessNetworkInfoParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    .restart local v0    # "accessNetworkInfo":Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;
    .restart local v2    # "token":Lgov2/nist/core/Token;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 98
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 100
    const/16 v3, 0x3d

    invoke-super {p0, v3}, Lgov2/nist/javax2/sip/parser/HeaderParser;->nameValue(C)Lgov2/nist/core/NameValue;

    move-result-object v1

    .line 101
    .local v1, "nv":Lgov2/nist/core/NameValue;
    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;->setParameter(Lgov2/nist/core/NameValue;)V

    .line 102
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 109
    .end local v0    # "accessNetworkInfo":Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;
    .end local v1    # "nv":Lgov2/nist/core/NameValue;
    .end local v2    # "token":Lgov2/nist/core/Token;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov2/nist/javax2/sip/parser/ims/PAccessNetworkInfoParser;->debug:Z

    if-nez v4, :cond_3

    :goto_3
    throw v3

    .restart local v0    # "accessNetworkInfo":Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;
    .restart local v2    # "token":Lgov2/nist/core/Token;
    :cond_2
    const-string/jumbo v3, "AccessNetworkInfoParser.parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ims/PAccessNetworkInfoParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "accessNetworkInfo":Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;
    .end local v2    # "token":Lgov2/nist/core/Token;
    :cond_3
    const-string/jumbo v4, "AccessNetworkInfoParser.parse"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ims/PAccessNetworkInfoParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method
