.class public Lgov2/nist/javax2/sip/parser/OrganizationParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "OrganizationParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 68
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/OrganizationParser;->debug:Z

    if-nez v2, :cond_0

    .line 69
    :goto_0
    new-instance v0, Lgov2/nist/javax2/sip/header/Organization;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/Organization;-><init>()V

    .local v0, "organization":Lgov2/nist/javax2/sip/header/Organization;
    const/16 v2, 0x82d

    .line 71
    :try_start_0
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/OrganizationParser;->headerName(I)V

    const-string/jumbo v2, "Organization"

    .line 73
    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/header/Organization;->setHeaderName(Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/OrganizationParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 76
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/OrganizationParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/header/Organization;->setOrganization(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/OrganizationParser;->debug:Z

    if-nez v2, :cond_1

    :goto_1
    return-object v0

    .end local v0    # "organization":Lgov2/nist/javax2/sip/header/Organization;
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "OrganizationParser.parse"

    .line 68
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/OrganizationParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "organization":Lgov2/nist/javax2/sip/header/Organization;
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "OrganizationParser.parse"

    .line 82
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/OrganizationParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov2/nist/javax2/sip/parser/OrganizationParser;->debug:Z

    if-nez v3, :cond_2

    :goto_2
    throw v2

    :cond_2
    const-string/jumbo v3, "OrganizationParser.parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/OrganizationParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
