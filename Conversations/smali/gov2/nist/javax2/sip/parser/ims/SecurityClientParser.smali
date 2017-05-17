.class public Lgov2/nist/javax2/sip/parser/ims/SecurityClientParser;
.super Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;
.source "SecurityClientParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const-string/jumbo v2, "SecuriryClient parse"

    .line 58
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/SecurityClientParser;->dbg_enter(Ljava/lang/String;)V

    const/16 v2, 0x85a

    .line 61
    :try_start_0
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/SecurityClientParser;->headerName(I)V

    .line 62
    new-instance v0, Lgov2/nist/javax2/sip/header/ims/SecurityClient;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ims/SecurityClient;-><init>()V

    .line 63
    .local v0, "secClient":Lgov2/nist/javax2/sip/header/ims/SecurityClient;
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->parse(Lgov2/nist/javax2/sip/header/ims/SecurityAgree;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/ims/SecurityClientList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "secClientList":Lgov2/nist/javax2/sip/header/ims/SecurityClientList;
    const-string/jumbo v2, "SecuriryClient parse"

    .line 67
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/SecurityClientParser;->dbg_leave(Ljava/lang/String;)V

    return-object v1

    .end local v0    # "secClient":Lgov2/nist/javax2/sip/header/ims/SecurityClient;
    .end local v1    # "secClientList":Lgov2/nist/javax2/sip/header/ims/SecurityClientList;
    :catchall_0
    move-exception v2

    const-string/jumbo v3, "SecuriryClient parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ims/SecurityClientParser;->dbg_leave(Ljava/lang/String;)V

    throw v2
.end method
