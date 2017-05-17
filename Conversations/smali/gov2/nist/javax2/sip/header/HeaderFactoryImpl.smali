.class public Lgov2/nist/javax2/sip/header/HeaderFactoryImpl;
.super Ljava/lang/Object;
.source "HeaderFactoryImpl.java"

# interfaces
.implements Ljavax2/sip/header/HeaderFactory;


# instance fields
.field private stripAddressScopeZones:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/header/HeaderFactoryImpl;->stripAddressScopeZones:Z

    const-string/jumbo v0, "gov2.nist.core.STRIP_ADDR_SCOPES"

    .line 1537
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/header/HeaderFactoryImpl;->stripAddressScopeZones:Z

    .line 1538
    return-void
.end method


# virtual methods
.method public createAllowHeader(Ljava/lang/String;)Ljavax2/sip/header/AllowHeader;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 171
    if-eqz p1, :cond_0

    .line 172
    new-instance v0, Lgov2/nist/javax2/sip/header/Allow;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/Allow;-><init>()V

    .line 173
    .local v0, "allow":Lgov2/nist/javax2/sip/header/Allow;
    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/Allow;->setMethod(Ljava/lang/String;)V

    .line 175
    return-object v0

    .line 171
    .end local v0    # "allow":Lgov2/nist/javax2/sip/header/Allow;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null arg method"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createCSeqHeader(JLjava/lang/String;)Ljavax2/sip/header/CSeqHeader;
    .locals 5
    .param p1, "sequenceNumber"    # J
    .param p3, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 228
    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljavax2/sip/InvalidArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bad arg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 229
    :cond_1
    if-eqz p3, :cond_2

    .line 230
    new-instance v0, Lgov2/nist/javax2/sip/header/CSeq;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/CSeq;-><init>()V

    .line 231
    .local v0, "cseq":Lgov2/nist/javax2/sip/header/CSeq;
    invoke-virtual {v0, p3}, Lgov2/nist/javax2/sip/header/CSeq;->setMethod(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, p1, p2}, Lgov2/nist/javax2/sip/header/CSeq;->setSeqNumber(J)V

    .line 234
    return-object v0

    .line 229
    .end local v0    # "cseq":Lgov2/nist/javax2/sip/header/CSeq;
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null arg method"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createCallIdHeader(Ljava/lang/String;)Ljavax2/sip/header/CallIdHeader;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 256
    if-eqz p1, :cond_0

    .line 257
    new-instance v0, Lgov2/nist/javax2/sip/header/CallID;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/CallID;-><init>()V

    .line 258
    .local v0, "c":Lgov2/nist/javax2/sip/header/CallID;
    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/CallID;->setCallId(Ljava/lang/String;)V

    .line 259
    return-object v0

    .line 256
    .end local v0    # "c":Lgov2/nist/javax2/sip/header/CallID;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null arg callId"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createContactHeader(Ljavax2/sip/address/Address;)Ljavax2/sip/header/ContactHeader;
    .locals 3
    .param p1, "address"    # Ljavax2/sip/address/Address;

    .prologue
    .line 283
    if-eqz p1, :cond_0

    .line 284
    new-instance v0, Lgov2/nist/javax2/sip/header/Contact;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/Contact;-><init>()V

    .line 285
    .local v0, "contact":Lgov2/nist/javax2/sip/header/Contact;
    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/Contact;->setAddress(Ljavax2/sip/address/Address;)V

    .line 287
    return-object v0

    .line 283
    .end local v0    # "contact":Lgov2/nist/javax2/sip/header/Contact;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null arg address"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createContentLengthHeader(I)Ljavax2/sip/header/ContentLengthHeader;
    .locals 3
    .param p1, "contentLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 376
    if-ltz p1, :cond_0

    .line 377
    new-instance v0, Lgov2/nist/javax2/sip/header/ContentLength;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ContentLength;-><init>()V

    .line 378
    .local v0, "c":Lgov2/nist/javax2/sip/header/ContentLength;
    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/ContentLength;->setContentLength(I)V

    .line 380
    return-object v0

    .line 376
    .end local v0    # "c":Lgov2/nist/javax2/sip/header/ContentLength;
    :cond_0
    new-instance v1, Ljavax2/sip/InvalidArgumentException;

    const-string/jumbo v2, "bad contentLength"

    invoke-direct {v1, v2}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/ContentTypeHeader;
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "contentSubType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 396
    if-nez p1, :cond_1

    .line 397
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null contentType or subType"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_1
    if-eqz p2, :cond_0

    .line 398
    new-instance v0, Lgov2/nist/javax2/sip/header/ContentType;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ContentType;-><init>()V

    .line 399
    .local v0, "c":Lgov2/nist/javax2/sip/header/ContentType;
    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/ContentType;->setContentType(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0, p2}, Lgov2/nist/javax2/sip/header/ContentType;->setContentSubType(Ljava/lang/String;)V

    .line 401
    return-object v0
.end method

.method public createExpiresHeader(I)Ljavax2/sip/header/ExpiresHeader;
    .locals 4
    .param p1, "expires"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 443
    if-ltz p1, :cond_0

    .line 444
    new-instance v0, Lgov2/nist/javax2/sip/header/Expires;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/Expires;-><init>()V

    .line 445
    .local v0, "e":Lgov2/nist/javax2/sip/header/Expires;
    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/Expires;->setExpires(I)V

    .line 447
    return-object v0

    .line 443
    .end local v0    # "e":Lgov2/nist/javax2/sip/header/Expires;
    :cond_0
    new-instance v1, Ljavax2/sip/InvalidArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bad value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createFromHeader(Ljavax2/sip/address/Address;Ljava/lang/String;)Ljavax2/sip/header/FromHeader;
    .locals 3
    .param p1, "address"    # Ljavax2/sip/address/Address;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 482
    if-eqz p1, :cond_0

    .line 483
    new-instance v0, Lgov2/nist/javax2/sip/header/From;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/From;-><init>()V

    .line 484
    .local v0, "from":Lgov2/nist/javax2/sip/header/From;
    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/From;->setAddress(Ljavax2/sip/address/Address;)V

    .line 485
    if-nez p2, :cond_1

    .line 487
    :goto_0
    return-object v0

    .line 482
    .end local v0    # "from":Lgov2/nist/javax2/sip/header/From;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null address arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 485
    .restart local v0    # "from":Lgov2/nist/javax2/sip/header/From;
    :cond_1
    invoke-virtual {v0, p2}, Lgov2/nist/javax2/sip/header/From;->setTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;
    .locals 8
    .param p1, "headerText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1069
    new-instance v3, Lgov2/nist/javax2/sip/parser/StringMsgParser;

    invoke-direct {v3}, Lgov2/nist/javax2/sip/parser/StringMsgParser;-><init>()V

    .line 1070
    .local v3, "smp":Lgov2/nist/javax2/sip/parser/StringMsgParser;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgov2/nist/javax2/sip/parser/StringMsgParser;->parseSIPHeader(Ljava/lang/String;)Lgov2/nist/javax2/sip/header/SIPHeader;

    move-result-object v2

    .line 1071
    .local v2, "sipHeader":Lgov2/nist/javax2/sip/header/SIPHeader;
    instance-of v4, v2, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    if-nez v4, :cond_0

    .line 1088
    return-object v2

    :cond_0
    move-object v4, v2

    .line 1072
    check-cast v4, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    move-object v4, v2

    .line 1074
    check-cast v4, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 1085
    check-cast v2, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .end local v2    # "sipHeader":Lgov2/nist/javax2/sip/header/SIPHeader;
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v4

    return-object v4

    .line 1073
    .restart local v2    # "sipHeader":Lgov2/nist/javax2/sip/header/SIPHeader;
    :cond_1
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Only singleton allowed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 1076
    :cond_2
    :try_start_0
    check-cast v2, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .end local v2    # "sipHeader":Lgov2/nist/javax2/sip/header/SIPHeader;
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->getMyClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax2/sip/header/Header;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v4

    :catch_0
    move-exception v1

    .line 1078
    .local v1, "ex":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 1079
    return-object v6

    .end local v1    # "ex":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 1081
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 1082
    return-object v6
.end method

.method public createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;
    .locals 3
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1103
    if-eqz p1, :cond_0

    .line 1104
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1106
    .local v0, "hdrText":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/HeaderFactoryImpl;->createHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v1

    return-object v1

    .line 1103
    .end local v0    # "hdrText":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "header name is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createMaxForwardsHeader(I)Ljavax2/sip/header/MaxForwardsHeader;
    .locals 4
    .param p1, "maxForwards"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 518
    if-gez p1, :cond_1

    .line 519
    :cond_0
    new-instance v1, Ljavax2/sip/InvalidArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bad maxForwards arg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/16 v1, 0xff

    .line 518
    if-gt p1, v1, :cond_0

    .line 520
    new-instance v0, Lgov2/nist/javax2/sip/header/MaxForwards;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/MaxForwards;-><init>()V

    .line 521
    .local v0, "m":Lgov2/nist/javax2/sip/header/MaxForwards;
    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/MaxForwards;->setMaxForwards(I)V

    .line 523
    return-object v0
.end method

.method public createReasonHeader(Ljava/lang/String;ILjava/lang/String;)Ljavax2/sip/header/ReasonHeader;
    .locals 3
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "cause"    # I
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 748
    if-eqz p1, :cond_0

    .line 749
    if-ltz p2, :cond_1

    .line 750
    new-instance v0, Lgov2/nist/javax2/sip/header/Reason;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/Reason;-><init>()V

    .line 751
    .local v0, "reason":Lgov2/nist/javax2/sip/header/Reason;
    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/Reason;->setProtocol(Ljava/lang/String;)V

    .line 752
    invoke-virtual {v0, p2}, Lgov2/nist/javax2/sip/header/Reason;->setCause(I)V

    .line 753
    invoke-virtual {v0, p3}, Lgov2/nist/javax2/sip/header/Reason;->setText(Ljava/lang/String;)V

    .line 755
    return-object v0

    .line 748
    .end local v0    # "reason":Lgov2/nist/javax2/sip/header/Reason;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "bad protocol arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 749
    :cond_1
    new-instance v1, Ljavax2/sip/InvalidArgumentException;

    const-string/jumbo v2, "bad cause"

    invoke-direct {v1, v2}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createRouteHeader(Ljavax2/sip/address/Address;)Ljavax2/sip/header/RouteHeader;
    .locals 3
    .param p1, "address"    # Ljavax2/sip/address/Address;

    .prologue
    .line 828
    if-eqz p1, :cond_0

    .line 829
    new-instance v0, Lgov2/nist/javax2/sip/header/Route;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/Route;-><init>()V

    .line 830
    .local v0, "route":Lgov2/nist/javax2/sip/header/Route;
    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/Route;->setAddress(Ljavax2/sip/address/Address;)V

    .line 832
    return-object v0

    .line 828
    .end local v0    # "route":Lgov2/nist/javax2/sip/header/Route;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null address arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createSupportedHeader(Ljava/lang/String;)Ljavax2/sip/header/SupportedHeader;
    .locals 3
    .param p1, "optionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 897
    if-eqz p1, :cond_0

    .line 898
    new-instance v0, Lgov2/nist/javax2/sip/header/Supported;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/Supported;-><init>()V

    .line 899
    .local v0, "supported":Lgov2/nist/javax2/sip/header/Supported;
    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/Supported;->setOptionTag(Ljava/lang/String;)V

    .line 901
    return-object v0

    .line 897
    .end local v0    # "supported":Lgov2/nist/javax2/sip/header/Supported;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null optionTag arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createToHeader(Ljavax2/sip/address/Address;Ljava/lang/String;)Ljavax2/sip/header/ToHeader;
    .locals 3
    .param p1, "address"    # Ljavax2/sip/address/Address;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 931
    if-eqz p1, :cond_0

    .line 932
    new-instance v0, Lgov2/nist/javax2/sip/header/To;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/To;-><init>()V

    .line 933
    .local v0, "to":Lgov2/nist/javax2/sip/header/To;
    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/To;->setAddress(Ljavax2/sip/address/Address;)V

    .line 934
    if-nez p2, :cond_1

    .line 936
    :goto_0
    return-object v0

    .line 931
    .end local v0    # "to":Lgov2/nist/javax2/sip/header/To;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null address"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 934
    .restart local v0    # "to":Lgov2/nist/javax2/sip/header/To;
    :cond_1
    invoke-virtual {v0, p2}, Lgov2/nist/javax2/sip/header/To;->setTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createViaHeader(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/ViaHeader;
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "transport"    # Ljava/lang/String;
    .param p4, "branch"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x5b

    const/4 v3, 0x0

    .line 988
    if-nez p1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "null arg"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-eqz p3, :cond_0

    .line 989
    new-instance v0, Lgov2/nist/javax2/sip/header/Via;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/Via;-><init>()V

    .line 990
    .local v0, "via":Lgov2/nist/javax2/sip/header/Via;
    if-nez p4, :cond_3

    :goto_0
    const/16 v2, 0x3a

    .line 993
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_4

    .line 1002
    :cond_2
    :goto_1
    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/Via;->setHost(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {v0, p2}, Lgov2/nist/javax2/sip/header/Via;->setPort(I)V

    .line 1004
    invoke-virtual {v0, p3}, Lgov2/nist/javax2/sip/header/Via;->setTransport(Ljava/lang/String;)V

    .line 1006
    return-object v0

    .line 990
    :cond_3
    invoke-virtual {v0, p4}, Lgov2/nist/javax2/sip/header/Via;->setBranch(Ljava/lang/String;)V

    goto :goto_0

    .line 993
    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_2

    .line 995
    iget-boolean v2, p0, Lgov2/nist/javax2/sip/header/HeaderFactoryImpl;->stripAddressScopeZones:Z

    if-nez v2, :cond_6

    .line 999
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    const/16 v2, 0x25

    .line 996
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, "zoneStart":I
    const/4 v2, -0x1

    .line 997
    if-eq v1, v2, :cond_5

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method
