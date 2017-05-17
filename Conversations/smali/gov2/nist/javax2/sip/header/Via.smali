.class public Lgov2/nist/javax2/sip/header/Via;
.super Lgov2/nist/javax2/sip/header/ParametersHeader;
.source "Via.java"

# interfaces
.implements Ljavax2/sip/header/ViaHeader;


# static fields
.field private static final serialVersionUID:J = 0x494c77f8c8b074d2L


# instance fields
.field protected comment:Ljava/lang/String;

.field private rPortFlag:Z

.field protected sentBy:Lgov2/nist/core/HostPort;

.field protected sentProtocol:Lgov2/nist/javax2/sip/header/Protocol;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Via"

    .line 105
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/header/Via;->rPortFlag:Z

    .line 106
    new-instance v0, Lgov2/nist/javax2/sip/header/Protocol;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/Protocol;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/Via;->sentProtocol:Lgov2/nist/javax2/sip/header/Protocol;

    .line 107
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 533
    invoke-super {p0}, Lgov2/nist/javax2/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/Via;

    .line 534
    .local v0, "retval":Lgov2/nist/javax2/sip/header/Via;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Via;->sentProtocol:Lgov2/nist/javax2/sip/header/Protocol;

    if-nez v1, :cond_0

    .line 535
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Via;->sentBy:Lgov2/nist/core/HostPort;

    if-nez v1, :cond_1

    .line 536
    :goto_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/Via;->getRPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 537
    :goto_2
    return-object v0

    .line 534
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Via;->sentProtocol:Lgov2/nist/javax2/sip/header/Protocol;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/Protocol;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/Protocol;

    iput-object v1, v0, Lgov2/nist/javax2/sip/header/Via;->sentProtocol:Lgov2/nist/javax2/sip/header/Protocol;

    goto :goto_0

    .line 535
    :cond_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Via;->sentBy:Lgov2/nist/core/HostPort;

    invoke-virtual {v1}, Lgov2/nist/core/HostPort;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/core/HostPort;

    iput-object v1, v0, Lgov2/nist/javax2/sip/header/Via;->sentBy:Lgov2/nist/core/HostPort;

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "rport"

    .line 536
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/Via;->getRPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lgov2/nist/javax2/sip/header/Via;->setParameter(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/Via;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 274
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Via;->sentProtocol:Lgov2/nist/javax2/sip/header/Protocol;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/Protocol;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, " "

    .line 275
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Via;->sentBy:Lgov2/nist/core/HostPort;

    invoke-virtual {v0, p1}, Lgov2/nist/core/HostPort;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 277
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Via;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Via;->comment:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 284
    :goto_1
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/header/Via;->rPortFlag:Z

    if-nez v0, :cond_2

    .line 285
    :goto_2
    return-object p1

    :cond_0
    const-string/jumbo v0, ";"

    .line 278
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Via;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, " "

    .line 282
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Via;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string/jumbo v0, ";rport"

    .line 284
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    if-eq p1, p0, :cond_0

    .line 113
    instance-of v3, p1, Ljavax2/sip/header/ViaHeader;

    if-nez v3, :cond_1

    .line 120
    return v2

    .line 111
    :cond_0
    return v1

    :cond_1
    move-object v0, p1

    .line 114
    check-cast v0, Ljavax2/sip/header/ViaHeader;

    .line 115
    .local v0, "o":Ljavax2/sip/header/ViaHeader;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/Via;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljavax2/sip/header/ViaHeader;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    :goto_0
    move v1, v2

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljavax2/sip/header/ViaHeader;->getTransport()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/Via;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljavax2/sip/header/ViaHeader;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/Via;->getPort()I

    move-result v3

    invoke-interface {v0}, Ljavax2/sip/header/ViaHeader;->getPort()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/Via;->equalParameters(Ljavax2/sip/header/Parameters;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0
.end method

.method public getBranch()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "branch"

    .line 513
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/Via;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHop()Ljavax2/sip/address/Hop;
    .locals 4

    .prologue
    .line 159
    new-instance v0, Lgov2/nist/javax2/sip/stack/HopImpl;

    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Via;->sentBy:Lgov2/nist/core/HostPort;

    invoke-virtual {v1}, Lgov2/nist/core/HostPort;->getHost()Lgov2/nist/core/Host;

    move-result-object v1

    invoke-virtual {v1}, Lgov2/nist/core/Host;->getHostname()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/Via;->sentBy:Lgov2/nist/core/HostPort;

    invoke-virtual {v2}, Lgov2/nist/core/HostPort;->getPort()I

    move-result v2

    iget-object v3, p0, Lgov2/nist/javax2/sip/header/Via;->sentProtocol:Lgov2/nist/javax2/sip/header/Protocol;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/Protocol;->getTransport()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lgov2/nist/javax2/sip/stack/HopImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    .local v0, "hop":Lgov2/nist/javax2/sip/stack/HopImpl;
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 311
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Via;->sentBy:Lgov2/nist/core/HostPort;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Via;->sentBy:Lgov2/nist/core/HostPort;

    invoke-virtual {v1}, Lgov2/nist/core/HostPort;->getHost()Lgov2/nist/core/Host;

    move-result-object v0

    .line 315
    .local v0, "host":Lgov2/nist/core/Host;
    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {v0}, Lgov2/nist/core/Host;->getHostname()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 312
    .end local v0    # "host":Lgov2/nist/core/Host;
    :cond_0
    return-object v2

    .line 316
    .restart local v0    # "host":Lgov2/nist/core/Host;
    :cond_1
    return-object v2
.end method

.method public getMAddr()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "maddr"

    .line 456
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/Via;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Via;->sentBy:Lgov2/nist/core/HostPort;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Via;->sentBy:Lgov2/nist/core/HostPort;

    invoke-virtual {v0}, Lgov2/nist/core/HostPort;->getPort()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    .line 351
    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 402
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Via;->sentProtocol:Lgov2/nist/javax2/sip/header/Protocol;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Via;->sentProtocol:Lgov2/nist/javax2/sip/header/Protocol;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/Protocol;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 402
    :cond_0
    return-object v1
.end method

.method public getRPort()I
    .locals 2

    .prologue
    const-string/jumbo v1, "rport"

    .line 361
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/header/Via;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "strRport":Ljava/lang/String;
    if-nez v0, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 365
    return v1

    :cond_1
    const-string/jumbo v1, ""

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getReceived()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "received"

    .line 487
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/Via;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSentBy()Lgov2/nist/core/HostPort;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Via;->sentBy:Lgov2/nist/core/HostPort;

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Via;->sentProtocol:Lgov2/nist/javax2/sip/header/Protocol;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Via;->sentProtocol:Lgov2/nist/javax2/sip/header/Protocol;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/Protocol;->getTransport()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 374
    :cond_0
    return-object v1
.end method

.method public hasPort()Z
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/Via;->getSentBy()Lgov2/nist/core/HostPort;

    move-result-object v0

    invoke-virtual {v0}, Lgov2/nist/core/HostPort;->hasPort()Z

    move-result v0

    return v0
.end method

.method public removePort()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Via;->sentBy:Lgov2/nist/core/HostPort;

    invoke-virtual {v0}, Lgov2/nist/core/HostPort;->removePort()V

    .line 206
    return-void
.end method

.method public setBranch(Ljava/lang/String;)V
    .locals 2
    .param p1, "branch"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 525
    if-nez p1, :cond_1

    .line 526
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "JAIN-SIP Exception, Via, setBranch(), the branch parameter is null or length 0."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "branch"

    .line 529
    invoke-virtual {p0, v0, p1}, Lgov2/nist/javax2/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "c"    # Ljava/lang/String;

    .prologue
    .line 262
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/Via;->comment:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setHost(Lgov2/nist/core/Host;)V
    .locals 1
    .param p1, "host"    # Lgov2/nist/core/Host;

    .prologue
    .line 231
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Via;->sentBy:Lgov2/nist/core/HostPort;

    if-eqz v0, :cond_0

    .line 234
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Via;->sentBy:Lgov2/nist/core/HostPort;

    invoke-virtual {v0, p1}, Lgov2/nist/core/HostPort;->setHost(Lgov2/nist/core/Host;)V

    .line 235
    return-void

    .line 232
    :cond_0
    new-instance v0, Lgov2/nist/core/HostPort;

    invoke-direct {v0}, Lgov2/nist/core/HostPort;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/Via;->sentBy:Lgov2/nist/core/HostPort;

    goto :goto_0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v2, p0, Lgov2/nist/javax2/sip/header/Via;->sentBy:Lgov2/nist/core/HostPort;

    if-eqz v2, :cond_0

    .line 298
    :goto_0
    :try_start_0
    new-instance v1, Lgov2/nist/core/Host;

    invoke-direct {v1, p1}, Lgov2/nist/core/Host;-><init>(Ljava/lang/String;)V

    .line 299
    .local v1, "h":Lgov2/nist/core/Host;
    iget-object v2, p0, Lgov2/nist/javax2/sip/header/Via;->sentBy:Lgov2/nist/core/HostPort;

    invoke-virtual {v2, v1}, Lgov2/nist/core/HostPort;->setHost(Lgov2/nist/core/Host;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    return-void

    .line 296
    .end local v1    # "h":Lgov2/nist/core/Host;
    :cond_0
    new-instance v2, Lgov2/nist/core/HostPort;

    invoke-direct {v2}, Lgov2/nist/core/HostPort;-><init>()V

    iput-object v2, p0, Lgov2/nist/javax2/sip/header/Via;->sentBy:Lgov2/nist/core/HostPort;

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, " host parameter is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setPort(I)V
    .locals 2
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 330
    if-ne p1, v0, :cond_0

    .line 334
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Via;->sentBy:Lgov2/nist/core/HostPort;

    if-eqz v0, :cond_3

    .line 335
    :goto_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Via;->sentBy:Lgov2/nist/core/HostPort;

    invoke-virtual {v0, p1}, Lgov2/nist/core/HostPort;->setPort(I)V

    .line 336
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 330
    if-ge p1, v0, :cond_2

    .line 331
    :cond_1
    new-instance v0, Ljavax2/sip/InvalidArgumentException;

    const-string/jumbo v1, "Port value out of range -1, [1..65535]"

    invoke-direct {v0, v1}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const v0, 0xffff

    .line 330
    if-gt p1, v0, :cond_1

    goto :goto_0

    .line 334
    :cond_3
    new-instance v0, Lgov2/nist/core/HostPort;

    invoke-direct {v0}, Lgov2/nist/core/HostPort;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/Via;->sentBy:Lgov2/nist/core/HostPort;

    goto :goto_1
.end method

.method public setRPort()V
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/header/Via;->rPortFlag:Z

    .line 343
    return-void
.end method

.method public setSentBy(Lgov2/nist/core/HostPort;)V
    .locals 0
    .param p1, "s"    # Lgov2/nist/core/HostPort;

    .prologue
    .line 252
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/Via;->sentBy:Lgov2/nist/core/HostPort;

    .line 253
    return-void
.end method

.method public setSentProtocol(Lgov2/nist/javax2/sip/header/Protocol;)V
    .locals 0
    .param p1, "s"    # Lgov2/nist/javax2/sip/header/Protocol;

    .prologue
    .line 243
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/Via;->sentProtocol:Lgov2/nist/javax2/sip/header/Protocol;

    .line 244
    return-void
.end method

.method public setTransport(Ljava/lang/String;)V
    .locals 2
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 389
    if-eqz p1, :cond_0

    .line 392
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Via;->sentProtocol:Lgov2/nist/javax2/sip/header/Protocol;

    if-eqz v0, :cond_1

    .line 393
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Via;->sentProtocol:Lgov2/nist/javax2/sip/header/Protocol;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/Protocol;->setTransport(Ljava/lang/String;)V

    .line 394
    return-void

    .line 390
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "JAIN-SIP Exception, Via, setTransport(), the transport parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_1
    new-instance v0, Lgov2/nist/javax2/sip/header/Protocol;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/Protocol;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/Via;->sentProtocol:Lgov2/nist/javax2/sip/header/Protocol;

    goto :goto_0
.end method
