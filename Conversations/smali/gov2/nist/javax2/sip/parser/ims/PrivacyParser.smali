.class public Lgov2/nist/javax2/sip/parser/ims/PrivacyParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "PrivacyParser.java"


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

    .line 67
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/ims/PrivacyParser;->debug:Z

    if-nez v3, :cond_1

    .line 69
    :goto_0
    new-instance v1, Lgov2/nist/javax2/sip/header/ims/PrivacyList;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/ims/PrivacyList;-><init>()V

    .local v1, "privacyList":Lgov2/nist/javax2/sip/header/ims/PrivacyList;
    const/16 v3, 0x84e

    .line 72
    :try_start_0
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ims/PrivacyParser;->headerName(I)V

    .line 74
    :cond_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PrivacyParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 103
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/ims/PrivacyParser;->debug:Z

    if-nez v3, :cond_3

    :goto_1
    return-object v1

    .end local v1    # "privacyList":Lgov2/nist/javax2/sip/header/ims/PrivacyList;
    :cond_1
    const-string/jumbo v3, "PrivacyParser.parse"

    .line 67
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ims/PrivacyParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    .restart local v1    # "privacyList":Lgov2/nist/javax2/sip/header/ims/PrivacyList;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PrivacyParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 77
    new-instance v0, Lgov2/nist/javax2/sip/header/ims/Privacy;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ims/Privacy;-><init>()V

    .local v0, "privacy":Lgov2/nist/javax2/sip/header/ims/Privacy;
    const-string/jumbo v3, "Privacy"

    .line 78
    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/ims/Privacy;->setHeaderName(Ljava/lang/String;)V

    .line 80
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PrivacyParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 81
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PrivacyParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v2

    .line 82
    .local v2, "token":Lgov2/nist/core/Token;
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/ims/Privacy;->setPrivacy(Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PrivacyParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 84
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/ims/PrivacyList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 87
    :goto_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PrivacyParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    .line 88
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PrivacyParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 89
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PrivacyParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 90
    new-instance v0, Lgov2/nist/javax2/sip/header/ims/Privacy;

    .end local v0    # "privacy":Lgov2/nist/javax2/sip/header/ims/Privacy;
    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ims/Privacy;-><init>()V

    .line 91
    .restart local v0    # "privacy":Lgov2/nist/javax2/sip/header/ims/Privacy;
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PrivacyParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 92
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PrivacyParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/ims/Privacy;->setPrivacy(Ljava/lang/String;)V

    .line 94
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PrivacyParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 96
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/ims/PrivacyList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 103
    .end local v0    # "privacy":Lgov2/nist/javax2/sip/header/ims/Privacy;
    .end local v2    # "token":Lgov2/nist/core/Token;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov2/nist/javax2/sip/parser/ims/PrivacyParser;->debug:Z

    if-nez v4, :cond_4

    :goto_3
    throw v3

    :cond_3
    const-string/jumbo v3, "PrivacyParser.parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ims/PrivacyParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "PrivacyParser.parse"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ims/PrivacyParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method
