.class public abstract Lgov2/nist/javax2/sip/stack/MessageChannel;
.super Ljava/lang/Object;
.source "MessageChannel.java"


# instance fields
.field protected transient messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

.field protected useCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final copyHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fromReq"    # Ljava/lang/String;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v3, -0x1

    .line 442
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 443
    .local v1, "start":I
    if-ne v1, v3, :cond_1

    .line 452
    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    const-string/jumbo v2, "\r\n"

    .line 444
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 445
    .local v0, "end":I
    if-eq v0, v3, :cond_0

    .line 447
    add-int/lit8 v2, v1, -0x2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 449
    const/4 v2, 0x1

    return v2
.end method

.method private static final copyViaHeaders(Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 5
    .param p0, "fromReq"    # Ljava/lang/String;
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v4, -0x1

    const-string/jumbo v3, "Via"

    .line 464
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 465
    .local v2, "start":I
    const/4 v1, 0x0

    .line 466
    .local v1, "found":Z
    :goto_0
    if-ne v2, v4, :cond_0

    .line 478
    return v1

    :cond_0
    const-string/jumbo v3, "\r\n"

    .line 467
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 468
    .local v0, "end":I
    if-ne v0, v4, :cond_1

    .line 475
    const/4 v3, 0x0

    return v3

    .line 470
    :cond_1
    add-int/lit8 v3, v2, -0x2

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 472
    const/4 v1, 0x1

    const-string/jumbo v3, "Via"

    .line 473
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0
.end method

.method public static getKey(Lgov2/nist/core/HostPort;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "hostPort"    # Lgov2/nist/core/HostPort;
    .param p1, "transport"    # Ljava/lang/String;

    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov2/nist/core/HostPort;->getHost()Lgov2/nist/core/Host;

    move-result-object v1

    invoke-virtual {v1}, Lgov2/nist/core/Host;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov2/nist/core/HostPort;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "inetAddr"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .param p2, "transport"    # Ljava/lang/String;

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract close()V
.end method

.method protected final createBadReqRes(Ljava/lang/String;Ljava/text/ParseException;)Lgov2/nist/javax2/sip/message/SIPMessage;
    .locals 13
    .param p1, "badReq"    # Ljava/lang/String;
    .param p2, "pe"    # Ljava/text/ParseException;

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 384
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v8, 0x200

    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 385
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SIP/2.0 400 Bad Request ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/text/ParseException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x29

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    invoke-static {p1, v0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->copyViaHeaders(Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "CSeq"

    .line 389
    invoke-static {v8, p1, v0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->copyHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "Call-ID"

    .line 390
    invoke-static {v8, p1, v0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->copyHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "From"

    .line 391
    invoke-static {v8, p1, v0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->copyHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "To"

    .line 392
    invoke-static {v8, p1, v0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->copyHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string/jumbo v8, "To"

    .line 395
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 396
    .local v7, "toStart":I
    if-ne v7, v12, :cond_7

    .line 401
    :cond_0
    :goto_0
    invoke-static {}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax2/sip/header/ServerHeader;

    move-result-object v6

    .line 402
    .local v6, "s":Ljavax2/sip/header/ServerHeader;
    if-nez v6, :cond_8

    .line 405
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 406
    .local v1, "clength":I
    instance-of v8, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;

    if-nez v8, :cond_9

    .line 413
    :cond_1
    new-instance v3, Lgov2/nist/javax2/sip/header/ContentType;

    const-string/jumbo v8, "message"

    const-string/jumbo v9, "sipfrag"

    invoke-direct {v3, v8, v9}, Lgov2/nist/javax2/sip/header/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .local v3, "cth":Ljavax2/sip/header/ContentTypeHeader;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    new-instance v2, Lgov2/nist/javax2/sip/header/ContentLength;

    invoke-direct {v2, v1}, Lgov2/nist/javax2/sip/header/ContentLength;-><init>(I)V

    .line 416
    .local v2, "clengthHeader":Lgov2/nist/javax2/sip/header/ContentLength;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/ContentLength;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\r\n\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    .end local v3    # "cth":Ljavax2/sip/header/ContentTypeHeader;
    :goto_2
    new-instance v5, Lgov2/nist/javax2/sip/parser/StringMsgParser;

    invoke-direct {v5}, Lgov2/nist/javax2/sip/parser/StringMsgParser;-><init>()V

    .line 424
    .local v5, "msgParser":Lgov2/nist/javax2/sip/parser/StringMsgParser;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Lgov2/nist/javax2/sip/parser/StringMsgParser;->parseSIPMessage([B)Lgov2/nist/javax2/sip/message/SIPMessage;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    return-object v8

    .line 388
    .end local v1    # "clength":I
    .end local v2    # "clengthHeader":Lgov2/nist/javax2/sip/header/ContentLength;
    .end local v5    # "msgParser":Lgov2/nist/javax2/sip/parser/StringMsgParser;
    .end local v6    # "s":Ljavax2/sip/header/ServerHeader;
    .end local v7    # "toStart":I
    :cond_2
    return-object v11

    .line 389
    :cond_3
    return-object v11

    .line 390
    :cond_4
    return-object v11

    .line 391
    :cond_5
    return-object v11

    .line 392
    :cond_6
    return-object v11

    .restart local v7    # "toStart":I
    :cond_7
    const-string/jumbo v8, "tag"

    .line 396
    invoke-virtual {v0, v8, v7}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v12, :cond_0

    const-string/jumbo v8, ";tag=badreq"

    .line 397
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 403
    .restart local v6    # "s":Ljavax2/sip/header/ServerHeader;
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 406
    .restart local v1    # "clength":I
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    add-int/2addr v8, v1

    const-string/jumbo v9, "Content-Type"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    const-string/jumbo v9, ": message/sipfrag\r\n"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    const-string/jumbo v9, "Content-Length"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    const/16 v9, 0x514

    if-lt v8, v9, :cond_1

    .line 419
    new-instance v2, Lgov2/nist/javax2/sip/header/ContentLength;

    invoke-direct {v2, v10}, Lgov2/nist/javax2/sip/header/ContentLength;-><init>(I)V

    .line 420
    .restart local v2    # "clengthHeader":Lgov2/nist/javax2/sip/header/ContentLength;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/ContentLength;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 424
    .restart local v5    # "msgParser":Lgov2/nist/javax2/sip/parser/StringMsgParser;
    :catch_0
    move-exception v4

    .line 426
    .local v4, "e":Ljava/text/ParseException;
    invoke-static {v4}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 428
    return-object v11
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getMessageProcessor()Lgov2/nist/javax2/sip/stack/MessageProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageProcessor()Lgov2/nist/javax2/sip/stack/MessageProcessor;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/MessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    return-object v0
.end method

.method public abstract getPeerAddress()Ljava/lang/String;
.end method

.method public getPeerHostPort()Lgov2/nist/core/HostPort;
    .locals 3

    .prologue
    .line 303
    new-instance v0, Lgov2/nist/core/HostPort;

    invoke-direct {v0}, Lgov2/nist/core/HostPort;-><init>()V

    .line 304
    .local v0, "retval":Lgov2/nist/core/HostPort;
    new-instance v1, Lgov2/nist/core/Host;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getPeerAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lgov2/nist/core/Host;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgov2/nist/core/HostPort;->setHost(Lgov2/nist/core/Host;)V

    .line 305
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getPeerPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lgov2/nist/core/HostPort;->setPort(I)V

    .line 306
    return-object v0
.end method

.method protected abstract getPeerInetAddress()Ljava/net/InetAddress;
.end method

.method public abstract getPeerPacketSourceAddress()Ljava/net/InetAddress;
.end method

.method public abstract getPeerPacketSourcePort()I
.end method

.method public abstract getPeerPort()I
.end method

.method protected abstract getPeerProtocol()Ljava/lang/String;
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/MessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 191
    return v0

    .line 189
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/MessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getPort()I

    move-result v0

    return v0
.end method

.method public abstract getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
.end method

.method public abstract getTransport()Ljava/lang/String;
.end method

.method public abstract isReliable()Z
.end method

.method protected logMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V
    .locals 8
    .param p1, "sipMessage"    # Lgov2/nist/javax2/sip/message/SIPMessage;
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .param p4, "time"    # J

    .prologue
    .line 348
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 351
    if-eq p3, v0, :cond_1

    .line 352
    :goto_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v0

    iget-object v1, v0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->serverLogger:Lgov2/nist/core/ServerLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getPort()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v2, p1

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lgov2/nist/core/ServerLogger;->logMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 354
    return-void

    .line 348
    :cond_0
    return-void

    :cond_1
    const/16 p3, 0x13c4

    .line 351
    goto :goto_0
.end method

.method public logResponse(Lgov2/nist/javax2/sip/message/SIPResponse;JLjava/lang/String;)V
    .locals 10
    .param p1, "sipResponse"    # Lgov2/nist/javax2/sip/message/SIPResponse;
    .param p2, "receptionTime"    # J
    .param p4, "status"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 364
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getPeerPort()I

    move-result v9

    .line 365
    .local v9, "peerport":I
    if-eqz v9, :cond_1

    .line 370
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getPeerAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "from":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, "to":Ljava/lang/String;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v0

    iget-object v0, v0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->serverLogger:Lgov2/nist/core/ServerLogger;

    move-object v1, p1

    move-object v4, p4

    move-wide v6, p2

    invoke-interface/range {v0 .. v7}, Lgov2/nist/core/ServerLogger;->logMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 374
    return-void

    .line 365
    .end local v2    # "from":Ljava/lang/String;
    .end local v3    # "to":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getContactHeaders()Lgov2/nist/javax2/sip/header/ContactList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getContactHeaders()Lgov2/nist/javax2/sip/header/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/ContactList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v8

    check-cast v8, Ljavax2/sip/header/ContactHeader;

    .line 367
    .local v8, "contact":Ljavax2/sip/header/ContactHeader;
    invoke-interface {v8}, Ljavax2/sip/header/ContactHeader;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/address/AddressImpl;->getPort()I

    move-result v9

    goto :goto_0
.end method

.method public abstract sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/net/InetAddress;I)V
    .locals 6
    .param p1, "sipMessage"    # Lgov2/nist/javax2/sip/message/SIPMessage;
    .param p2, "receiverAddress"    # Ljava/net/InetAddress;
    .param p3, "receiverPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 252
    .local v4, "time":J
    instance-of v0, p1, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {p0, p1, p2, p3, v0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/net/InetAddress;IZ)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 253
    invoke-virtual/range {v0 .. v5}, Lgov2/nist/javax2/sip/stack/MessageChannel;->logMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    .line 254
    return-void
.end method

.method protected abstract sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/net/InetAddress;IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected uncache()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
