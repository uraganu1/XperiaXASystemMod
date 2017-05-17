.class public Lgov2/nist/javax2/sip/parser/AddressParser;
.super Lgov2/nist/javax2/sip/parser/Parser;
.source "AddressParser.java"


# direct methods
.method public constructor <init>(Lgov2/nist/javax2/sip/parser/Lexer;)V
    .locals 2
    .param p1, "lexer"    # Lgov2/nist/javax2/sip/parser/Lexer;

    .prologue
    .line 41
    invoke-direct {p0}, Lgov2/nist/javax2/sip/parser/Parser;-><init>()V

    .line 42
    iput-object p1, p0, Lgov2/nist/javax2/sip/parser/AddressParser;->lexer:Lgov2/nist/core/LexerCore;

    .line 43
    iget-object v0, p0, Lgov2/nist/javax2/sip/parser/AddressParser;->lexer:Lgov2/nist/core/LexerCore;

    const-string/jumbo v1, "charLexer"

    invoke-virtual {v0, v1}, Lgov2/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Lgov2/nist/javax2/sip/parser/Parser;-><init>()V

    .line 47
    new-instance v0, Lgov2/nist/javax2/sip/parser/Lexer;

    const-string/jumbo v1, "charLexer"

    invoke-direct {v0, v1, p1}, Lgov2/nist/javax2/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/parser/AddressParser;->lexer:Lgov2/nist/core/LexerCore;

    .line 48
    return-void
.end method


# virtual methods
.method public address(Z)Lgov2/nist/javax2/sip/address/AddressImpl;
    .locals 11
    .param p1, "inclParams"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x3c

    const/16 v9, 0x3a

    const/16 v8, 0x2f

    const/16 v7, 0x22

    .line 92
    sget-boolean v6, Lgov2/nist/javax2/sip/parser/AddressParser;->debug:Z

    if-nez v6, :cond_2

    :goto_0
    const/4 v2, 0x0

    .local v2, "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    const/4 v0, 0x0

    .line 96
    .local v0, "k":I
    :goto_1
    :try_start_0
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AddressParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->hasMoreChars()Z

    move-result v6

    if-nez v6, :cond_3

    .line 105
    :cond_0
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AddressParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6, v0}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    int-to-char v1, v6

    .line 106
    .local v1, "la":C
    if-ne v1, v10, :cond_5

    .line 107
    :cond_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/AddressParser;->nameAddr()Lgov2/nist/javax2/sip/address/AddressImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 119
    .local v2, "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    :goto_2
    sget-boolean v6, Lgov2/nist/javax2/sip/parser/AddressParser;->debug:Z

    if-nez v6, :cond_8

    :goto_3
    return-object v2

    .end local v0    # "k":I
    .end local v1    # "la":C
    .end local v2    # "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    :cond_2
    const-string/jumbo v6, "address"

    .line 92
    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/AddressParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    .restart local v0    # "k":I
    .local v2, "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AddressParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6, v0}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    int-to-char v1, v6

    .line 98
    .restart local v1    # "la":C
    if-eq v1, v10, :cond_0

    if-eq v1, v7, :cond_0

    if-eq v1, v9, :cond_0

    if-eq v1, v8, :cond_0

    .line 100
    if-eqz v1, :cond_4

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const-string/jumbo v6, "unexpected EOL"

    .line 101
    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/AddressParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .end local v1    # "la":C
    :catchall_0
    move-exception v6

    .end local v2    # "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    :goto_4
    sget-boolean v7, Lgov2/nist/javax2/sip/parser/AddressParser;->debug:Z

    if-nez v7, :cond_9

    :goto_5
    throw v6

    .line 106
    .restart local v1    # "la":C
    .restart local v2    # "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    :cond_5
    if-eq v1, v7, :cond_1

    .line 108
    if-ne v1, v9, :cond_7

    .line 109
    :cond_6
    :try_start_2
    new-instance v3, Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-direct {v3}, Lgov2/nist/javax2/sip/address/AddressImpl;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .end local v2    # "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    .local v3, "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    :try_start_3
    new-instance v5, Lgov2/nist/javax2/sip/parser/URLParser;

    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/AddressParser;->lexer:Lgov2/nist/core/LexerCore;

    check-cast v6, Lgov2/nist/javax2/sip/parser/Lexer;

    invoke-direct {v5, v6}, Lgov2/nist/javax2/sip/parser/URLParser;-><init>(Lgov2/nist/javax2/sip/parser/Lexer;)V

    .line 111
    .local v5, "uriParser":Lgov2/nist/javax2/sip/parser/URLParser;
    invoke-virtual {v5, p1}, Lgov2/nist/javax2/sip/parser/URLParser;->uriReference(Z)Lgov2/nist/javax2/sip/address/GenericURI;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .local v4, "uri":Lgov2/nist/javax2/sip/address/GenericURI;
    const/4 v6, 0x2

    .line 112
    :try_start_4
    invoke-virtual {v3, v6}, Lgov2/nist/javax2/sip/address/AddressImpl;->setAddressType(I)V

    .line 113
    invoke-virtual {v3, v4}, Lgov2/nist/javax2/sip/address/AddressImpl;->setURI(Ljavax2/sip/address/URI;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v2, v3

    .line 114
    .end local v3    # "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    .local v2, "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    goto :goto_2

    .line 108
    .end local v4    # "uri":Lgov2/nist/javax2/sip/address/GenericURI;
    .end local v5    # "uriParser":Lgov2/nist/javax2/sip/parser/URLParser;
    .local v2, "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    :cond_7
    if-eq v1, v8, :cond_6

    :try_start_5
    const-string/jumbo v6, "Bad address spec"

    .line 115
    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/AddressParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v6

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .local v2, "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    :cond_8
    const-string/jumbo v6, "address"

    .line 119
    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/AddressParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3

    .end local v1    # "la":C
    .end local v2    # "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    :cond_9
    const-string/jumbo v7, "address"

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/parser/AddressParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_5

    .restart local v1    # "la":C
    .restart local v3    # "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    .restart local v2    # "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    goto :goto_4

    .end local v2    # "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    .restart local v3    # "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    .restart local v4    # "uri":Lgov2/nist/javax2/sip/address/GenericURI;
    .restart local v5    # "uriParser":Lgov2/nist/javax2/sip/parser/URLParser;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    .restart local v2    # "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    goto :goto_4
.end method

.method protected nameAddr()Lgov2/nist/javax2/sip/address/AddressImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3c

    .line 51
    sget-boolean v5, Lgov2/nist/javax2/sip/parser/AddressParser;->debug:Z

    if-nez v5, :cond_0

    .line 53
    :goto_0
    :try_start_0
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AddressParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-eq v5, v7, :cond_1

    .line 66
    new-instance v0, Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/address/AddressImpl;-><init>()V

    .local v0, "addr":Lgov2/nist/javax2/sip/address/AddressImpl;
    const/4 v5, 0x1

    .line 67
    invoke-virtual {v0, v5}, Lgov2/nist/javax2/sip/address/AddressImpl;->setAddressType(I)V

    const/4 v1, 0x0

    .line 69
    .local v1, "name":Ljava/lang/String;
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AddressParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    const/16 v6, 0x22

    if-eq v5, v6, :cond_3

    .line 73
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AddressParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v6, 0x3c

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->getNextToken(C)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "name":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lgov2/nist/javax2/sip/address/AddressImpl;->setDisplayName(Ljava/lang/String;)V

    .line 75
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AddressParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v6, 0x3c

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 76
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AddressParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 77
    new-instance v4, Lgov2/nist/javax2/sip/parser/URLParser;

    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AddressParser;->lexer:Lgov2/nist/core/LexerCore;

    check-cast v5, Lgov2/nist/javax2/sip/parser/Lexer;

    invoke-direct {v4, v5}, Lgov2/nist/javax2/sip/parser/URLParser;-><init>(Lgov2/nist/javax2/sip/parser/Lexer;)V

    .line 78
    .local v4, "uriParser":Lgov2/nist/javax2/sip/parser/URLParser;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov2/nist/javax2/sip/parser/URLParser;->uriReference(Z)Lgov2/nist/javax2/sip/address/GenericURI;

    move-result-object v3

    .line 79
    .local v3, "uri":Lgov2/nist/javax2/sip/address/GenericURI;
    new-instance v2, Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-direct {v2}, Lgov2/nist/javax2/sip/address/AddressImpl;-><init>()V

    .local v2, "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    const/4 v5, 0x1

    .line 80
    invoke-virtual {v0, v5}, Lgov2/nist/javax2/sip/address/AddressImpl;->setAddressType(I)V

    .line 81
    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/address/AddressImpl;->setURI(Ljavax2/sip/address/URI;)V

    .line 82
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AddressParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 83
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AddressParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    sget-boolean v5, Lgov2/nist/javax2/sip/parser/AddressParser;->debug:Z

    if-nez v5, :cond_4

    :goto_2
    return-object v0

    .end local v0    # "addr":Lgov2/nist/javax2/sip/address/AddressImpl;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    .end local v3    # "uri":Lgov2/nist/javax2/sip/address/GenericURI;
    .end local v4    # "uriParser":Lgov2/nist/javax2/sip/parser/URLParser;
    :cond_0
    const-string/jumbo v5, "nameAddr"

    .line 51
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/AddressParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_1
    :try_start_1
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AddressParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 55
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AddressParser;->lexer:Lgov2/nist/core/LexerCore;

    const-string/jumbo v6, "sip_urlLexer"

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 56
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AddressParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 57
    new-instance v4, Lgov2/nist/javax2/sip/parser/URLParser;

    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AddressParser;->lexer:Lgov2/nist/core/LexerCore;

    check-cast v5, Lgov2/nist/javax2/sip/parser/Lexer;

    invoke-direct {v4, v5}, Lgov2/nist/javax2/sip/parser/URLParser;-><init>(Lgov2/nist/javax2/sip/parser/Lexer;)V

    .line 58
    .restart local v4    # "uriParser":Lgov2/nist/javax2/sip/parser/URLParser;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov2/nist/javax2/sip/parser/URLParser;->uriReference(Z)Lgov2/nist/javax2/sip/address/GenericURI;

    move-result-object v3

    .line 59
    .restart local v3    # "uri":Lgov2/nist/javax2/sip/address/GenericURI;
    new-instance v2, Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-direct {v2}, Lgov2/nist/javax2/sip/address/AddressImpl;-><init>()V

    .restart local v2    # "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    const/4 v5, 0x1

    .line 60
    invoke-virtual {v2, v5}, Lgov2/nist/javax2/sip/address/AddressImpl;->setAddressType(I)V

    .line 61
    invoke-virtual {v2, v3}, Lgov2/nist/javax2/sip/address/AddressImpl;->setURI(Ljavax2/sip/address/URI;)V

    .line 62
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AddressParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 63
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AddressParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    sget-boolean v5, Lgov2/nist/javax2/sip/parser/AddressParser;->debug:Z

    if-nez v5, :cond_2

    :goto_3
    return-object v2

    :cond_2
    const-string/jumbo v5, "nameAddr"

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/AddressParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3

    .line 70
    .end local v2    # "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    .end local v3    # "uri":Lgov2/nist/javax2/sip/address/GenericURI;
    .end local v4    # "uriParser":Lgov2/nist/javax2/sip/parser/URLParser;
    .restart local v0    # "addr":Lgov2/nist/javax2/sip/address/AddressImpl;
    .local v1, "name":Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AddressParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "name":Ljava/lang/String;
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/AddressParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 87
    .end local v0    # "addr":Lgov2/nist/javax2/sip/address/AddressImpl;
    .end local v1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v5

    sget-boolean v6, Lgov2/nist/javax2/sip/parser/AddressParser;->debug:Z

    if-nez v6, :cond_5

    :goto_4
    throw v5

    .restart local v0    # "addr":Lgov2/nist/javax2/sip/address/AddressImpl;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    .restart local v3    # "uri":Lgov2/nist/javax2/sip/address/GenericURI;
    .restart local v4    # "uriParser":Lgov2/nist/javax2/sip/parser/URLParser;
    :cond_4
    const-string/jumbo v5, "nameAddr"

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/AddressParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "addr":Lgov2/nist/javax2/sip/address/AddressImpl;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    .end local v3    # "uri":Lgov2/nist/javax2/sip/address/GenericURI;
    .end local v4    # "uriParser":Lgov2/nist/javax2/sip/parser/URLParser;
    :cond_5
    const-string/jumbo v6, "nameAddr"

    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/AddressParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_4
.end method
