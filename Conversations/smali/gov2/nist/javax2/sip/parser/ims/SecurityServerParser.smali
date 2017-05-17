.class public Lgov2/nist/javax2/sip/parser/ims/SecurityServerParser;
.super Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;
.source "SecurityServerParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const-string/jumbo v2, "SecuriryServer parse"

    .line 57
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/SecurityServerParser;->dbg_enter(Ljava/lang/String;)V

    const/16 v2, 0x859

    .line 60
    :try_start_0
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/SecurityServerParser;->headerName(I)V

    .line 61
    new-instance v0, Lgov2/nist/javax2/sip/header/ims/SecurityServer;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ims/SecurityServer;-><init>()V

    .line 62
    .local v0, "secServer":Lgov2/nist/javax2/sip/header/ims/SecurityServer;
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->parse(Lgov2/nist/javax2/sip/header/ims/SecurityAgree;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/ims/SecurityServerList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "secServerList":Lgov2/nist/javax2/sip/header/ims/SecurityServerList;
    const-string/jumbo v2, "SecuriryServer parse"

    .line 66
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/SecurityServerParser;->dbg_leave(Ljava/lang/String;)V

    return-object v1

    .end local v0    # "secServer":Lgov2/nist/javax2/sip/header/ims/SecurityServer;
    .end local v1    # "secServerList":Lgov2/nist/javax2/sip/header/ims/SecurityServerList;
    :catchall_0
    move-exception v2

    const-string/jumbo v3, "SecuriryServer parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ims/SecurityServerParser;->dbg_leave(Ljava/lang/String;)V

    throw v2
.end method
