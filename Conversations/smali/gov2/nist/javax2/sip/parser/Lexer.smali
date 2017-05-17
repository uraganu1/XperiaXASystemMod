.class public Lgov2/nist/javax2/sip/parser/Lexer;
.super Lgov2/nist/core/LexerCore;
.source "Lexer.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "lexerName"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lgov2/nist/core/LexerCore;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/parser/Lexer;->selectLexer(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static getHeaderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 51
    if-eqz p0, :cond_0

    const/4 v2, 0x0

    .local v2, "headerName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, ":"

    .line 54
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "begin":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 56
    if-ge v0, v3, :cond_1

    .line 60
    .end local v2    # "headerName":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 51
    .end local v0    # "begin":I
    :cond_0
    return-object v4

    .restart local v0    # "begin":I
    .restart local v2    # "headerName":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 56
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "headerName":Ljava/lang/String;
    goto :goto_0

    .line 59
    .end local v0    # "begin":I
    .local v2, "headerName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    return-object v4
.end method

.method public static getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 74
    if-eqz p0, :cond_0

    const/4 v2, 0x0

    .local v2, "headerValue":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, ":"

    .line 77
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, "begin":I
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 82
    .local v2, "headerValue":Ljava/lang/String;
    return-object v2

    .line 74
    .end local v0    # "begin":I
    .end local v2    # "headerValue":Ljava/lang/String;
    :cond_0
    return-object v4

    .line 81
    .local v2, "headerValue":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    return-object v4
.end method


# virtual methods
.method public selectLexer(Ljava/lang/String;)V
    .locals 3
    .param p1, "lexerName"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v1, Lgov2/nist/javax2/sip/parser/Lexer;->lexerTables:Ljava/util/Hashtable;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lgov2/nist/javax2/sip/parser/Lexer;->lexerTables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lgov2/nist/javax2/sip/parser/Lexer;->currentLexer:Ljava/util/Hashtable;

    .line 89
    iput-object p1, p0, Lgov2/nist/javax2/sip/parser/Lexer;->currentLexerName:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lgov2/nist/javax2/sip/parser/Lexer;->currentLexer:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    monitor-exit v1

    .line 273
    return-void

    .line 91
    :cond_1
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/parser/Lexer;->addLexer(Ljava/lang/String;)Ljava/util/Hashtable;

    const-string/jumbo v0, "method_keywordLexer"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "command_keywordLexer"

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "status_lineLexer"

    .line 262
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "request_lineLexer"

    .line 264
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "sip_urlLexer"

    .line 266
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "tel"

    .line 267
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x839

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "sip"

    .line 268
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x803

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "sips"

    .line 269
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x858

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "REGISTER"

    const/16 v2, 0x804

    .line 93
    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "ACK"

    const/16 v2, 0x806

    .line 94
    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "OPTIONS"

    const/16 v2, 0x808

    .line 95
    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "BYE"

    const/16 v2, 0x807

    .line 96
    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "INVITE"

    const/16 v2, 0x805

    .line 97
    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "sip"

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x803

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "sips"

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x858

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "SUBSCRIBE"

    const/16 v2, 0x835

    .line 100
    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "NOTIFY"

    const/16 v2, 0x836

    .line 101
    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "MESSAGE"

    const/16 v2, 0x846

    .line 102
    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "PUBLISH"

    const/16 v2, 0x843

    .line 105
    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, "Error-Info"

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80a

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Allow-Events"

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x841

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Authentication-Info"

    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x840

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Event"

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83f

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Min-Expires"

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83e

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "RSeq"

    .line 114
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83c

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "RAck"

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83d

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Reason"

    .line 116
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83b

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Reply-To"

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83a

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Subscription-State"

    .line 118
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x838

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Timestamp"

    .line 120
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x837

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "In-Reply-To"

    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80b

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "MIME-Version"

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80c

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Alert-Info"

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80d

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "From"

    .line 124
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80e

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "To"

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80f

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Refer-To"

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x842

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Via"

    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x810

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "User-Agent"

    .line 128
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x811

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Server"

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x812

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Accept-Encoding"

    .line 130
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x813

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Accept"

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x814

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Allow"

    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x815

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Route"

    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x816

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Authorization"

    .line 134
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x817

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Proxy-Authorization"

    .line 135
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x818

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Retry-After"

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x819

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Proxy-Require"

    .line 138
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x81a

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Content-Language"

    .line 139
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x81b

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Unsupported"

    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x81c

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Supported"

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x814

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Warning"

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x81e

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Max-Forwards"

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x81f

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Date"

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x820

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Priority"

    .line 146
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x821

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Proxy-Authenticate"

    .line 147
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x822

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Content-Encoding"

    .line 149
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x823

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Content-Length"

    .line 151
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x824

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Subject"

    .line 152
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x825

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Content-Type"

    .line 153
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x826

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Contact"

    .line 154
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x827

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Call-ID"

    .line 155
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x828

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Require"

    .line 156
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x829

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Expires"

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x82a

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Record-Route"

    .line 158
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x82c

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Organization"

    .line 159
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x82d

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "CSeq"

    .line 160
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x82e

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Accept-Language"

    .line 161
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x82f

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "WWW-Authenticate"

    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x830

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Call-Info"

    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x833

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Content-Disposition"

    .line 165
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x834

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "K"

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x814

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "C"

    .line 169
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x826

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "E"

    .line 170
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x823

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "F"

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80e

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "I"

    .line 172
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x828

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "M"

    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x827

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "L"

    .line 174
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x824

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "S"

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x825

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "T"

    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80f

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "U"

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x841

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "V"

    .line 179
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x810

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "R"

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x842

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "O"

    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83f

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "X"

    .line 186
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x855

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "SIP-ETag"

    .line 193
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x844

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "SIP-If-Match"

    .line 194
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x845

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Session-Expires"

    .line 197
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x855

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Min-SE"

    .line 199
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x856

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Referred-By"

    .line 200
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x854

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "B"

    .line 201
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x854

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Replaces"

    .line 208
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x857

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Join"

    .line 210
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x85c

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Path"

    .line 213
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x847

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Service-Route"

    .line 214
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x848

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "P-Asserted-Identity"

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x849

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "P-Preferred-Identity"

    .line 217
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x84a

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Privacy"

    .line 219
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x84e

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "P-Called-Party-ID"

    .line 222
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x850

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "P-Associated-URI"

    .line 224
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x851

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "P-Visited-Network-ID"

    .line 225
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x84b

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "P-Charging-Function-Addresses"

    .line 227
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x84c

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "P-Charging-Vector"

    .line 229
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x84d

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "P-Access-Network-Info"

    .line 231
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x84f

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "P-Media-Authorization"

    .line 233
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x852

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Security-Server"

    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x859

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Security-Verify"

    .line 237
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x85b

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "Security-Client"

    .line 238
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x85a

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "P-User-Database"

    .line 241
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x85d    # 3.0E-42f

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "P-Profile-Key"

    .line 244
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x85e

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "P-Served-User"

    .line 247
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x85f

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "P-Preferred-Service"

    .line 250
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x860

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "P-Asserted-Service"

    .line 254
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x861

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string/jumbo v0, "References"

    .line 258
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x862

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "sip"

    .line 263
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x803

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "sip"

    .line 265
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x803

    invoke-virtual {p0, v0, v2}, Lgov2/nist/javax2/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
