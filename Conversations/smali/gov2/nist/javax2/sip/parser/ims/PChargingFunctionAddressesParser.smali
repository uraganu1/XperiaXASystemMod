.class public Lgov2/nist/javax2/sip/parser/ims/PChargingFunctionAddressesParser;
.super Lgov2/nist/javax2/sip/parser/ParametersParser;
.source "PChargingFunctionAddressesParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 83
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    if-nez v3, :cond_1

    :goto_0
    const/16 v3, 0x84c

    .line 85
    :try_start_0
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ims/PChargingFunctionAddressesParser;->headerName(I)V

    .line 86
    new-instance v0, Lgov2/nist/javax2/sip/header/ims/PChargingFunctionAddresses;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ims/PChargingFunctionAddresses;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .local v0, "chargingFunctionAddresses":Lgov2/nist/javax2/sip/header/ims/PChargingFunctionAddresses;
    :goto_1
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PChargingFunctionAddressesParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-ne v3, v5, :cond_2

    .line 103
    :cond_0
    :try_start_2
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/ParametersParser;->parse(Lgov2/nist/javax2/sip/header/ParametersHeader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    if-nez v3, :cond_3

    :goto_2
    return-object v0

    .end local v0    # "chargingFunctionAddresses":Lgov2/nist/javax2/sip/header/ims/PChargingFunctionAddresses;
    :cond_1
    const-string/jumbo v3, "parse"

    .line 83
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    .restart local v0    # "chargingFunctionAddresses":Lgov2/nist/javax2/sip/header/ims/PChargingFunctionAddresses;
    :cond_2
    :try_start_3
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/parser/ims/PChargingFunctionAddressesParser;->parseParameter(Lgov2/nist/javax2/sip/header/ims/PChargingFunctionAddresses;)V

    .line 92
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PChargingFunctionAddressesParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 93
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PChargingFunctionAddressesParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    int-to-char v2, v3

    .line 94
    .local v2, "la":C
    if-eq v2, v5, :cond_0

    if-eqz v2, :cond_0

    .line 96
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PChargingFunctionAddressesParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 97
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/ims/PChargingFunctionAddressesParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 101
    .end local v2    # "la":C
    :catch_0
    move-exception v1

    .line 100
    .local v1, "ex":Ljava/text/ParseException;
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    .end local v0    # "chargingFunctionAddresses":Lgov2/nist/javax2/sip/header/ims/PChargingFunctionAddresses;
    .end local v1    # "ex":Ljava/text/ParseException;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov2/nist/javax2/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    if-nez v4, :cond_4

    :goto_3
    throw v3

    .restart local v0    # "chargingFunctionAddresses":Lgov2/nist/javax2/sip/header/ims/PChargingFunctionAddresses;
    :cond_3
    const-string/jumbo v3, "parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "chargingFunctionAddresses":Lgov2/nist/javax2/sip/header/ims/PChargingFunctionAddresses;
    :cond_4
    const-string/jumbo v4, "parse"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected parseParameter(Lgov2/nist/javax2/sip/header/ims/PChargingFunctionAddresses;)V
    .locals 3
    .param p1, "chargingFunctionAddresses"    # Lgov2/nist/javax2/sip/header/ims/PChargingFunctionAddresses;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 113
    sget-boolean v1, Lgov2/nist/javax2/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    if-nez v1, :cond_0

    .line 116
    :goto_0
    const/16 v1, 0x3d

    :try_start_0
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/ims/PChargingFunctionAddressesParser;->nameValue(C)Lgov2/nist/core/NameValue;

    move-result-object v0

    .line 119
    .local v0, "nv":Lgov2/nist/core/NameValue;
    invoke-virtual {p1, v0}, Lgov2/nist/javax2/sip/header/ims/PChargingFunctionAddresses;->setMultiParameter(Lgov2/nist/core/NameValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    sget-boolean v1, Lgov2/nist/javax2/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    if-nez v1, :cond_1

    .line 125
    :goto_1
    return-void

    .end local v0    # "nv":Lgov2/nist/core/NameValue;
    :cond_0
    const-string/jumbo v1, "parseParameter"

    .line 113
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "nv":Lgov2/nist/core/NameValue;
    :cond_1
    const-string/jumbo v1, "parseParameter"

    .line 122
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "nv":Lgov2/nist/core/NameValue;
    :catchall_0
    move-exception v1

    sget-boolean v2, Lgov2/nist/javax2/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    if-nez v2, :cond_2

    :goto_2
    throw v1

    :cond_2
    const-string/jumbo v2, "parseParameter"

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
