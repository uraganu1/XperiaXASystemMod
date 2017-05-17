.class public Lgov2/nist/javax2/sip/parser/ReplyToParser;
.super Lgov2/nist/javax2/sip/parser/AddressParametersParser;
.source "ReplyToParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lgov2/nist/javax2/sip/header/ReplyTo;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ReplyTo;-><init>()V

    .line 66
    .local v0, "replyTo":Lgov2/nist/javax2/sip/header/ReplyTo;
    sget-boolean v1, Lgov2/nist/javax2/sip/parser/ReplyToParser;->debug:Z

    if-nez v1, :cond_0

    :goto_0
    const/16 v1, 0x83a

    .line 69
    :try_start_0
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/ReplyToParser;->headerName(I)V

    const-string/jumbo v1, "Reply-To"

    .line 71
    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/ReplyTo;->setHeaderName(Ljava/lang/String;)V

    .line 73
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/AddressParametersParser;->parse(Lgov2/nist/javax2/sip/header/AddressParametersHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    sget-boolean v1, Lgov2/nist/javax2/sip/parser/ReplyToParser;->debug:Z

    if-nez v1, :cond_1

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v1, "ReplyTo.parse"

    .line 66
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/ReplyToParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "ReplyTo.parse"

    .line 77
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/ReplyToParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-boolean v2, Lgov2/nist/javax2/sip/parser/ReplyToParser;->debug:Z

    if-nez v2, :cond_2

    :goto_2
    throw v1

    :cond_2
    const-string/jumbo v2, "ReplyTo.parse"

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ReplyToParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
