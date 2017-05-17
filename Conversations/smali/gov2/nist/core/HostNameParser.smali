.class public Lgov2/nist/core/HostNameParser;
.super Lgov2/nist/core/ParserCore;
.source "HostNameParser.java"


# static fields
.field private static Lexer:Lgov2/nist/core/LexerCore;

.field private static final VALID_DOMAIN_LABEL_CHAR:[C


# instance fields
.field private stripAddressScopeZones:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x3

    .line 82
    new-array v0, v0, [C

    const/4 v1, 0x0

    const v2, 0xfffd

    aput-char v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x2e

    aput-char v2, v0, v1

    sput-object v0, Lgov2/nist/core/HostNameParser;->VALID_DOMAIN_LABEL_CHAR:[C

    return-void
.end method

.method public constructor <init>(Lgov2/nist/core/LexerCore;)V
    .locals 1
    .param p1, "lexer"    # Lgov2/nist/core/LexerCore;

    .prologue
    .line 75
    invoke-direct {p0}, Lgov2/nist/core/ParserCore;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov2/nist/core/HostNameParser;->stripAddressScopeZones:Z

    .line 76
    iput-object p1, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    const-string/jumbo v0, "charLexer"

    .line 77
    invoke-virtual {p1, v0}, Lgov2/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    const-string/jumbo v0, "gov2.nist.core.STRIP_ADDR_SCOPES"

    .line 79
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov2/nist/core/HostNameParser;->stripAddressScopeZones:Z

    .line 80
    return-void
.end method

.method private isIPv6Address(Ljava/lang/String;)Z
    .locals 9
    .param p1, "uriHeader"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x3a

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 209
    sget-object v5, Lgov2/nist/core/HostNameParser;->Lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0x3f

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 213
    .local v2, "hostEnd":I
    sget-object v5, Lgov2/nist/core/HostNameParser;->Lexer:Lgov2/nist/core/LexerCore;

    const/16 v5, 0x3b

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 214
    .local v4, "semiColonIndex":I
    if-ne v2, v6, :cond_2

    .line 215
    :cond_0
    move v2, v4

    .line 219
    :cond_1
    :goto_0
    if-eq v2, v6, :cond_3

    .line 222
    :goto_1
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "host":Ljava/lang/String;
    sget-object v5, Lgov2/nist/core/HostNameParser;->Lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 226
    .local v0, "firstColonIndex":I
    if-eq v0, v6, :cond_4

    .line 228
    sget-object v5, Lgov2/nist/core/HostNameParser;->Lexer:Lgov2/nist/core/LexerCore;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 230
    .local v3, "secondColonIndex":I
    if-eq v3, v6, :cond_5

    .line 232
    const/4 v5, 0x1

    return v5

    .line 214
    .end local v0    # "firstColonIndex":I
    .end local v1    # "host":Ljava/lang/String;
    .end local v3    # "secondColonIndex":I
    :cond_2
    if-eq v4, v6, :cond_1

    if-gt v2, v4, :cond_0

    goto :goto_0

    .line 219
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    .line 226
    .restart local v0    # "firstColonIndex":I
    .restart local v1    # "host":Ljava/lang/String;
    :cond_4
    return v7

    .line 230
    .restart local v3    # "secondColonIndex":I
    :cond_5
    return v7
.end method


# virtual methods
.method protected consumeDomainLabel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 87
    sget-boolean v0, Lgov2/nist/core/HostNameParser;->debug:Z

    if-nez v0, :cond_0

    .line 89
    :goto_0
    :try_start_0
    iget-object v0, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    sget-object v1, Lgov2/nist/core/HostNameParser;->VALID_DOMAIN_LABEL_CHAR:[C

    invoke-virtual {v0, v1}, Lgov2/nist/core/LexerCore;->consumeValidChars([C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    sget-boolean v0, Lgov2/nist/core/HostNameParser;->debug:Z

    if-nez v0, :cond_1

    .line 93
    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "domainLabel"

    .line 87
    invoke-virtual {p0, v0}, Lgov2/nist/core/HostNameParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "domainLabel"

    .line 91
    invoke-virtual {p0, v0}, Lgov2/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-boolean v1, Lgov2/nist/core/HostNameParser;->debug:Z

    if-nez v1, :cond_2

    :goto_2
    throw v0

    :cond_2
    const-string/jumbo v1, "domainLabel"

    invoke-virtual {p0, v1}, Lgov2/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public host()Lgov2/nist/core/Host;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 163
    sget-boolean v2, Lgov2/nist/core/HostNameParser;->debug:Z

    if-nez v2, :cond_0

    .line 168
    :goto_0
    :try_start_0
    iget-object v2, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_1

    .line 172
    iget-object v2, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lgov2/nist/core/HostNameParser;->isIPv6Address(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 183
    iget-object v2, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->getPtr()I

    move-result v1

    .line 184
    .local v1, "startPtr":I
    invoke-virtual {p0}, Lgov2/nist/core/HostNameParser;->consumeDomainLabel()V

    .line 185
    iget-object v2, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getPtr()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 188
    .end local v1    # "startPtr":I
    .local v0, "hostname":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 191
    new-instance v2, Lgov2/nist/core/Host;

    invoke-direct {v2, v0}, Lgov2/nist/core/Host;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    sget-boolean v3, Lgov2/nist/core/HostNameParser;->debug:Z

    if-nez v3, :cond_4

    :goto_2
    return-object v2

    .end local v0    # "hostname":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "host"

    .line 163
    invoke-virtual {p0, v2}, Lgov2/nist/core/HostNameParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lgov2/nist/core/HostNameParser;->ipv6Reference()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hostname":Ljava/lang/String;
    goto :goto_1

    .line 173
    .end local v0    # "hostname":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->getPtr()I

    move-result v1

    .line 174
    .restart local v1    # "startPtr":I
    iget-object v2, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v3, 0x2

    new-array v3, v3, [C

    const/4 v4, 0x0

    const v5, 0xfffd

    aput-char v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x3a

    aput-char v5, v3, v4

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->consumeValidChars([C)V

    .line 177
    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->getPtr()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hostname":Ljava/lang/String;
    goto :goto_1

    .line 189
    .end local v1    # "startPtr":I
    :cond_3
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": Missing host name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->getPtr()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    .end local v0    # "hostname":Ljava/lang/String;
    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov2/nist/core/HostNameParser;->debug:Z

    if-nez v3, :cond_5

    :goto_3
    throw v2

    .restart local v0    # "hostname":Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, "host"

    invoke-virtual {p0, v3}, Lgov2/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "hostname":Ljava/lang/String;
    :cond_5
    const-string/jumbo v3, "host"

    invoke-virtual {p0, v3}, Lgov2/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public hostPort(Z)Lgov2/nist/core/HostPort;
    .locals 9
    .param p1, "allowWS"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 244
    sget-boolean v5, Lgov2/nist/core/HostNameParser;->debug:Z

    if-nez v5, :cond_1

    .line 246
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov2/nist/core/HostNameParser;->host()Lgov2/nist/core/Host;

    move-result-object v0

    .line 247
    .local v0, "host":Lgov2/nist/core/Host;
    new-instance v1, Lgov2/nist/core/HostPort;

    invoke-direct {v1}, Lgov2/nist/core/HostPort;-><init>()V

    .line 248
    .local v1, "hp":Lgov2/nist/core/HostPort;
    invoke-virtual {v1, v0}, Lgov2/nist/core/HostPort;->setHost(Lgov2/nist/core/Host;)V

    .line 250
    if-nez p1, :cond_2

    .line 252
    :goto_1
    iget-object v5, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->hasMoreChars()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_3

    .line 296
    :cond_0
    :goto_2
    :sswitch_0
    sget-boolean v5, Lgov2/nist/core/HostNameParser;->debug:Z

    if-nez v5, :cond_5

    :goto_3
    return-object v1

    .end local v0    # "host":Lgov2/nist/core/Host;
    .end local v1    # "hp":Lgov2/nist/core/HostPort;
    :cond_1
    const-string/jumbo v5, "hostPort"

    .line 244
    invoke-virtual {p0, v5}, Lgov2/nist/core/HostNameParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    .restart local v0    # "host":Lgov2/nist/core/Host;
    .restart local v1    # "hp":Lgov2/nist/core/HostPort;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 296
    .end local v0    # "host":Lgov2/nist/core/Host;
    .end local v1    # "hp":Lgov2/nist/core/HostPort;
    :catchall_0
    move-exception v5

    sget-boolean v6, Lgov2/nist/core/HostNameParser;->debug:Z

    if-nez v6, :cond_6

    :goto_4
    throw v5

    .line 253
    .restart local v0    # "host":Lgov2/nist/core/Host;
    .restart local v1    # "hp":Lgov2/nist/core/HostPort;
    :cond_3
    :try_start_2
    iget-object v5, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    int-to-char v2, v5

    .line 254
    .local v2, "la":C
    sparse-switch v2, :sswitch_data_0

    .line 287
    :goto_5
    if-nez p1, :cond_0

    .line 288
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov2/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Illegal character in hostname:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov2/nist/core/LexerCore;->getPtr()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 256
    :sswitch_1
    iget-object v5, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->consume(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    if-nez p1, :cond_4

    .line 261
    :goto_6
    :try_start_3
    iget-object v5, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, "port":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lgov2/nist/core/HostPort;->setPort(I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 266
    .end local v4    # "port":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 264
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    :try_start_4
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov2/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " :Error parsing port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov2/nist/core/LexerCore;->getPtr()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 257
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    :cond_4
    iget-object v5, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->SPorHT()V

    goto :goto_6

    .line 282
    :sswitch_2
    iget-boolean v5, p0, Lgov2/nist/core/HostNameParser;->stripAddressScopeZones:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v5, :cond_0

    goto :goto_5

    .end local v2    # "la":C
    :cond_5
    const-string/jumbo v5, "hostPort"

    .line 296
    invoke-virtual {p0, v5}, Lgov2/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v0    # "host":Lgov2/nist/core/Host;
    .end local v1    # "hp":Lgov2/nist/core/HostPort;
    :cond_6
    const-string/jumbo v6, "hostPort"

    invoke-virtual {p0, v6}, Lgov2/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 254
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x25 -> :sswitch_2
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
    .end sparse-switch
.end method

.method protected ipv6Reference()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x3a

    const/16 v7, 0x2e

    const/16 v6, 0x5d

    .line 96
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 97
    .local v2, "retval":Ljava/lang/StringBuffer;
    sget-boolean v4, Lgov2/nist/core/HostNameParser;->debug:Z

    if-nez v4, :cond_1

    .line 101
    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lgov2/nist/core/HostNameParser;->stripAddressScopeZones:Z

    if-nez v4, :cond_4

    .line 142
    :goto_1
    iget-object v4, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->hasMoreChars()Z

    move-result v4

    if-nez v4, :cond_9

    .line 156
    :cond_0
    :goto_2
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": Illegal Host name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov2/nist/core/LexerCore;->getPtr()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    .line 158
    sget-boolean v5, Lgov2/nist/core/HostNameParser;->debug:Z

    if-nez v5, :cond_d

    :goto_3
    throw v4

    :cond_1
    const-string/jumbo v4, "ipv6Reference"

    .line 97
    invoke-virtual {p0, v4}, Lgov2/nist/core/HostNameParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_2
    :try_start_1
    iget-object v4, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    int-to-char v0, v4

    .line 106
    .local v0, "la":C
    invoke-static {v0}, Lgov2/nist/core/LexerCore;->isHexDigit(C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 107
    :cond_3
    iget-object v4, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 108
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 102
    .end local v0    # "la":C
    :cond_4
    iget-object v4, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->hasMoreChars()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 106
    .restart local v0    # "la":C
    :cond_5
    if-eq v0, v7, :cond_3

    if-eq v0, v8, :cond_3

    const/16 v4, 0x5b

    if-eq v0, v4, :cond_3

    .line 109
    if-eq v0, v6, :cond_6

    const/16 v4, 0x25

    .line 113
    if-ne v0, v4, :cond_0

    .line 115
    iget-object v4, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 117
    iget-object v4, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "rest":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x5d

    .line 127
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .local v3, "stripLen":I
    const/4 v4, -0x1

    .line 129
    if-eq v3, v4, :cond_0

    .line 134
    iget-object v4, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->consume(I)V

    const-string/jumbo v4, "]"

    .line 135
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 158
    sget-boolean v5, Lgov2/nist/core/HostNameParser;->debug:Z

    if-nez v5, :cond_8

    :goto_4
    return-object v4

    .line 110
    .end local v1    # "rest":Ljava/lang/String;
    .end local v3    # "stripLen":I
    :cond_6
    :try_start_2
    iget-object v4, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 111
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 158
    sget-boolean v5, Lgov2/nist/core/HostNameParser;->debug:Z

    if-nez v5, :cond_7

    :goto_5
    return-object v4

    :cond_7
    const-string/jumbo v5, "ipv6Reference"

    invoke-virtual {p0, v5}, Lgov2/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_5

    .restart local v1    # "rest":Ljava/lang/String;
    .restart local v3    # "stripLen":I
    :cond_8
    const-string/jumbo v5, "ipv6Reference"

    invoke-virtual {p0, v5}, Lgov2/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_4

    .line 143
    .end local v0    # "la":C
    .end local v1    # "rest":Ljava/lang/String;
    .end local v3    # "stripLen":I
    :cond_9
    :try_start_3
    iget-object v4, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    int-to-char v0, v4

    .line 144
    .restart local v0    # "la":C
    invoke-static {v0}, Lgov2/nist/core/LexerCore;->isHexDigit(C)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 145
    :cond_a
    iget-object v4, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 146
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 144
    :cond_b
    if-eq v0, v7, :cond_a

    if-eq v0, v8, :cond_a

    const/16 v4, 0x5b

    if-eq v0, v4, :cond_a

    .line 147
    if-ne v0, v6, :cond_0

    .line 148
    iget-object v4, p0, Lgov2/nist/core/HostNameParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 149
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 158
    sget-boolean v5, Lgov2/nist/core/HostNameParser;->debug:Z

    if-nez v5, :cond_c

    :goto_6
    return-object v4

    :cond_c
    const-string/jumbo v5, "ipv6Reference"

    invoke-virtual {p0, v5}, Lgov2/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_6

    .end local v0    # "la":C
    :cond_d
    const-string/jumbo v5, "ipv6Reference"

    invoke-virtual {p0, v5}, Lgov2/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    goto/16 :goto_3
.end method
