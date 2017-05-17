.class public Lgov2/nist/javax2/sip/parser/ContentEncodingParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "ContentEncodingParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2c

    .line 70
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/ContentEncodingParser;->debug:Z

    if-nez v4, :cond_1

    .line 71
    :goto_0
    new-instance v2, Lgov2/nist/javax2/sip/header/ContentEncodingList;

    invoke-direct {v2}, Lgov2/nist/javax2/sip/header/ContentEncodingList;-><init>()V

    .local v2, "list":Lgov2/nist/javax2/sip/header/ContentEncodingList;
    const/16 v4, 0x823

    .line 74
    :try_start_0
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ContentEncodingParser;->headerName(I)V

    .line 76
    :cond_0
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 106
    sget-boolean v4, Lgov2/nist/javax2/sip/parser/ContentEncodingParser;->debug:Z

    if-nez v4, :cond_3

    :goto_1
    return-object v2

    .end local v2    # "list":Lgov2/nist/javax2/sip/header/ContentEncodingList;
    :cond_1
    const-string/jumbo v4, "ContentEncodingParser.parse"

    .line 70
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ContentEncodingParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .restart local v2    # "list":Lgov2/nist/javax2/sip/header/ContentEncodingList;
    :cond_2
    :try_start_1
    new-instance v0, Lgov2/nist/javax2/sip/header/ContentEncoding;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ContentEncoding;-><init>()V

    .local v0, "cl":Lgov2/nist/javax2/sip/header/ContentEncoding;
    const-string/jumbo v4, "Content-Encoding"

    .line 78
    invoke-virtual {v0, v4}, Lgov2/nist/javax2/sip/header/ContentEncoding;->setHeaderName(Ljava/lang/String;)V

    .line 80
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 81
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 83
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v3

    .line 84
    .local v3, "token":Lgov2/nist/core/Token;
    invoke-virtual {v3}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgov2/nist/javax2/sip/header/ContentEncoding;->setEncoding(Ljava/lang/String;)V

    .line 86
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 87
    invoke-virtual {v2, v0}, Lgov2/nist/javax2/sip/header/ContentEncodingList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 89
    :goto_2
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    .line 90
    new-instance v0, Lgov2/nist/javax2/sip/header/ContentEncoding;

    .end local v0    # "cl":Lgov2/nist/javax2/sip/header/ContentEncoding;
    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ContentEncoding;-><init>()V

    .line 91
    .restart local v0    # "cl":Lgov2/nist/javax2/sip/header/ContentEncoding;
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 92
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 93
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 94
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 95
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v3

    .line 96
    invoke-virtual {v3}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgov2/nist/javax2/sip/header/ContentEncoding;->setEncoding(Ljava/lang/String;)V

    .line 97
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/ContentEncodingParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 98
    invoke-virtual {v2, v0}, Lgov2/nist/javax2/sip/header/ContentEncodingList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 106
    .end local v0    # "cl":Lgov2/nist/javax2/sip/header/ContentEncoding;
    .end local v3    # "token":Lgov2/nist/core/Token;
    :catch_0
    move-exception v1

    .line 104
    .local v1, "ex":Ljava/text/ParseException;
    :try_start_2
    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ContentEncodingParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "ex":Ljava/text/ParseException;
    :catchall_0
    move-exception v4

    .line 106
    sget-boolean v5, Lgov2/nist/javax2/sip/parser/ContentEncodingParser;->debug:Z

    if-nez v5, :cond_4

    :goto_3
    throw v4

    :cond_3
    const-string/jumbo v4, "ContentEncodingParser.parse"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ContentEncodingParser;->dbg_leave(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v5, "ContentEncodingParser.parse"

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/ContentEncodingParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method
