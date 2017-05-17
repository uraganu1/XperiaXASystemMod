.class public Lgov2/nist/javax2/sip/parser/ims/PAssociatedURIParser;
.super Lgov2/nist/javax2/sip/parser/AddressParametersParser;
.source "PAssociatedURIParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2c

    .line 72
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/ims/PAssociatedURIParser;->debug:Z

    if-nez v2, :cond_0

    .line 74
    :goto_0
    new-instance v1, Lgov2/nist/javax2/sip/header/ims/PAssociatedURIList;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/ims/PAssociatedURIList;-><init>()V

    .local v1, "associatedURIList":Lgov2/nist/javax2/sip/header/ims/PAssociatedURIList;
    const/16 v2, 0x851

    .line 78
    :try_start_0
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/PAssociatedURIParser;->headerName(I)V

    .line 80
    new-instance v0, Lgov2/nist/javax2/sip/header/ims/PAssociatedURI;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ims/PAssociatedURI;-><init>()V

    .local v0, "associatedURI":Lgov2/nist/javax2/sip/header/ims/PAssociatedURI;
    const-string/jumbo v2, "P-Associated-URI"

    .line 81
    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/header/ims/PAssociatedURI;->setHeaderName(Ljava/lang/String;)V

    .line 83
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->parse(Lgov2/nist/javax2/sip/header/AddressParametersHeader;)V

    .line 84
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/ims/PAssociatedURIList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 86
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 87
    :goto_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    if-eq v2, v4, :cond_1

    .line 97
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 98
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/ims/PAssociatedURIParser;->debug:Z

    if-nez v2, :cond_2

    :goto_2
    return-object v1

    .end local v0    # "associatedURI":Lgov2/nist/javax2/sip/header/ims/PAssociatedURI;
    .end local v1    # "associatedURIList":Lgov2/nist/javax2/sip/header/ims/PAssociatedURIList;
    :cond_0
    const-string/jumbo v2, "PAssociatedURIParser.parse"

    .line 72
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/PAssociatedURIParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    .restart local v0    # "associatedURI":Lgov2/nist/javax2/sip/header/ims/PAssociatedURI;
    .restart local v1    # "associatedURIList":Lgov2/nist/javax2/sip/header/ims/PAssociatedURIList;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 89
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 91
    new-instance v0, Lgov2/nist/javax2/sip/header/ims/PAssociatedURI;

    .end local v0    # "associatedURI":Lgov2/nist/javax2/sip/header/ims/PAssociatedURI;
    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ims/PAssociatedURI;-><init>()V

    .line 92
    .restart local v0    # "associatedURI":Lgov2/nist/javax2/sip/header/ims/PAssociatedURI;
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->parse(Lgov2/nist/javax2/sip/header/AddressParametersHeader;)V

    .line 93
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/ims/PAssociatedURIList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 95
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 103
    .end local v0    # "associatedURI":Lgov2/nist/javax2/sip/header/ims/PAssociatedURI;
    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov2/nist/javax2/sip/parser/ims/PAssociatedURIParser;->debug:Z

    if-nez v3, :cond_3

    :goto_3
    throw v2

    .restart local v0    # "associatedURI":Lgov2/nist/javax2/sip/header/ims/PAssociatedURI;
    :cond_2
    const-string/jumbo v2, "PAssociatedURIParser.parse"

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/PAssociatedURIParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "associatedURI":Lgov2/nist/javax2/sip/header/ims/PAssociatedURI;
    :cond_3
    const-string/jumbo v3, "PAssociatedURIParser.parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ims/PAssociatedURIParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method
