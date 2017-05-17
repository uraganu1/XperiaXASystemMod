.class public abstract Lgov2/nist/javax2/sip/parser/ChallengeParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "ChallengeParser.java"


# virtual methods
.method public parse(Lgov2/nist/javax2/sip/header/AuthenticationHeader;)V
    .locals 6
    .param p1, "header"    # Lgov2/nist/javax2/sip/header/AuthenticationHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 88
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ChallengeParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 89
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ChallengeParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 90
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ChallengeParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v2

    .line 91
    .local v2, "type":Lgov2/nist/core/Token;
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ChallengeParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 92
    invoke-virtual {v2}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lgov2/nist/javax2/sip/header/AuthenticationHeader;->setScheme(Ljava/lang/String;)V

    .line 96
    :goto_0
    :try_start_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ChallengeParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    .line 107
    :cond_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/parser/ChallengeParser;->parseParameter(Lgov2/nist/javax2/sip/header/AuthenticationHeader;)V

    .line 98
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ChallengeParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 99
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ChallengeParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    int-to-char v1, v3

    .line 100
    .local v1, "la":C
    if-eq v1, v5, :cond_0

    if-eqz v1, :cond_0

    .line 101
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ChallengeParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 102
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ChallengeParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v1    # "la":C
    :catch_0
    move-exception v0

    .line 105
    .local v0, "ex":Ljava/text/ParseException;
    throw v0
.end method

.method protected parseParameter(Lgov2/nist/javax2/sip/header/AuthenticationHeader;)V
    .locals 3
    .param p1, "header"    # Lgov2/nist/javax2/sip/header/AuthenticationHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 69
    sget-boolean v1, Lgov2/nist/javax2/sip/parser/ChallengeParser;->debug:Z

    if-nez v1, :cond_0

    .line 71
    :goto_0
    const/16 v1, 0x3d

    :try_start_0
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/ChallengeParser;->nameValue(C)Lgov2/nist/core/NameValue;

    move-result-object v0

    .line 72
    .local v0, "nv":Lgov2/nist/core/NameValue;
    invoke-virtual {p1, v0}, Lgov2/nist/javax2/sip/header/AuthenticationHeader;->setParameter(Lgov2/nist/core/NameValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    sget-boolean v1, Lgov2/nist/javax2/sip/parser/ChallengeParser;->debug:Z

    if-nez v1, :cond_1

    .line 77
    :goto_1
    return-void

    .end local v0    # "nv":Lgov2/nist/core/NameValue;
    :cond_0
    const-string/jumbo v1, "parseParameter"

    .line 69
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/ChallengeParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "nv":Lgov2/nist/core/NameValue;
    :cond_1
    const-string/jumbo v1, "parseParameter"

    .line 74
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/ChallengeParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "nv":Lgov2/nist/core/NameValue;
    :catchall_0
    move-exception v1

    sget-boolean v2, Lgov2/nist/javax2/sip/parser/ChallengeParser;->debug:Z

    if-nez v2, :cond_2

    :goto_2
    throw v1

    :cond_2
    const-string/jumbo v2, "parseParameter"

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ChallengeParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
