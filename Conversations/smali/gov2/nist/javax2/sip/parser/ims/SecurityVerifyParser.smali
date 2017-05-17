.class public Lgov2/nist/javax2/sip/parser/ims/SecurityVerifyParser;
.super Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;
.source "SecurityVerifyParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const-string/jumbo v2, "SecuriryVerify parse"

    .line 57
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/SecurityVerifyParser;->dbg_enter(Ljava/lang/String;)V

    const/16 v2, 0x85b

    .line 60
    :try_start_0
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/SecurityVerifyParser;->headerName(I)V

    .line 61
    new-instance v0, Lgov2/nist/javax2/sip/header/ims/SecurityVerify;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ims/SecurityVerify;-><init>()V

    .line 62
    .local v0, "secVerify":Lgov2/nist/javax2/sip/header/ims/SecurityVerify;
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/parser/ims/SecurityAgreeParser;->parse(Lgov2/nist/javax2/sip/header/ims/SecurityAgree;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/ims/SecurityVerifyList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "secVerifyList":Lgov2/nist/javax2/sip/header/ims/SecurityVerifyList;
    const-string/jumbo v2, "SecuriryVerify parse"

    .line 66
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/ims/SecurityVerifyParser;->dbg_leave(Ljava/lang/String;)V

    return-object v1

    .end local v0    # "secVerify":Lgov2/nist/javax2/sip/header/ims/SecurityVerify;
    .end local v1    # "secVerifyList":Lgov2/nist/javax2/sip/header/ims/SecurityVerifyList;
    :catchall_0
    move-exception v2

    const-string/jumbo v3, "SecuriryVerify parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/ims/SecurityVerifyParser;->dbg_leave(Ljava/lang/String;)V

    throw v2
.end method
