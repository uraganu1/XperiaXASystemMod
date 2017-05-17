.class public Lgov2/nist/javax2/sip/parser/AddressParametersParser;
.super Lgov2/nist/javax2/sip/parser/ParametersParser;
.source "AddressParametersParser.java"


# virtual methods
.method protected parse(Lgov2/nist/javax2/sip/header/AddressParametersHeader;)V
    .locals 6
    .param p1, "addressParametersHeader"    # Lgov2/nist/javax2/sip/header/AddressParametersHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const-string/jumbo v4, "AddressParametersParser.parse"

    .line 52
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->dbg_enter(Ljava/lang/String;)V

    .line 54
    :try_start_0
    new-instance v1, Lgov2/nist/javax2/sip/parser/AddressParser;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->getLexer()Lgov2/nist/javax2/sip/parser/Lexer;

    move-result-object v4

    invoke-direct {v1, v4}, Lgov2/nist/javax2/sip/parser/AddressParser;-><init>(Lgov2/nist/javax2/sip/parser/Lexer;)V

    .line 55
    .local v1, "addressParser":Lgov2/nist/javax2/sip/parser/AddressParser;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lgov2/nist/javax2/sip/parser/AddressParser;->address(Z)Lgov2/nist/javax2/sip/address/AddressImpl;

    move-result-object v0

    .line 56
    .local v0, "addr":Lgov2/nist/javax2/sip/address/AddressImpl;
    invoke-virtual {p1, v0}, Lgov2/nist/javax2/sip/header/AddressParametersHeader;->setAddress(Ljavax2/sip/address/Address;)V

    .line 57
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 58
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    int-to-char v3, v4

    .line 59
    .local v3, "la":C
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->hasMoreChars()Z

    move-result v4

    if-nez v4, :cond_1

    .line 64
    :cond_0
    invoke-super {p0, p1}, Lgov2/nist/javax2/sip/parser/ParametersParser;->parse(Lgov2/nist/javax2/sip/header/ParametersHeader;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-string/jumbo v4, "AddressParametersParser.parse"

    .line 69
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->dbg_leave(Ljava/lang/String;)V

    .line 71
    return-void

    .line 59
    :cond_1
    if-eqz v3, :cond_0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    :try_start_1
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->startsId()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    invoke-super {p0, p1}, Lgov2/nist/javax2/sip/parser/ParametersParser;->parseNameValueList(Lgov2/nist/javax2/sip/header/ParametersHeader;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    .end local v0    # "addr":Lgov2/nist/javax2/sip/address/AddressImpl;
    .end local v1    # "addressParser":Lgov2/nist/javax2/sip/parser/AddressParser;
    .end local v3    # "la":C
    :catch_0
    move-exception v2

    .line 67
    .local v2, "ex":Ljava/text/ParseException;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "ex":Ljava/text/ParseException;
    :catchall_0
    move-exception v4

    const-string/jumbo v5, "AddressParametersParser.parse"

    .line 69
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->dbg_leave(Ljava/lang/String;)V

    throw v4
.end method
