.class public abstract Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;
.super Lgov2/nist/javax2/sip/stack/MessageChannel;
.source "ConnectionOrientedMessageChannel.java"

# interfaces
.implements Lgov2/nist/javax2/sip/parser/SIPMessageListener;
.implements Ljava/lang/Runnable;
.implements Lgov2/nist/javax2/sip/stack/RawMessageChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel$KeepAliveTimeoutTimerTask;
    }
.end annotation


# instance fields
.field protected isCached:Z

.field protected isRunning:Z

.field protected key:Ljava/lang/String;

.field protected myAddress:Ljava/lang/String;

.field protected myClientInputStream:Ljava/io/InputStream;

.field protected myParser:Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;

.field protected myPort:I

.field protected mySock:Ljava/net/Socket;

.field protected mythread:Ljava/lang/Thread;

.field protected peerAddress:Ljava/net/InetAddress;

.field protected peerPort:I

.field protected peerPortAdvertisedInHeaders:I

.field protected peerProtocol:Ljava/lang/String;

.field private volatile pingKeepAliveTimeoutTask:Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;

.field protected sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;


# direct methods
.method public constructor <init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;)V
    .locals 1
    .param p1, "sipStack"    # Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    .prologue
    .line 104
    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/MessageChannel;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->isRunning:Z

    const/4 v0, -0x1

    .line 95
    iput v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerPortAdvertisedInHeaders:I

    .line 105
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    .line 106
    return-void
.end method


# virtual methods
.method public cancelPingKeepAliveTimeoutTaskIfStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 503
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->pingKeepAliveTimeoutTask:Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;

    if-nez v0, :cond_0

    .line 507
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->pingKeepAliveTimeoutTask:Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;->cancel()Z

    .line 505
    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->pingKeepAliveTimeoutTask:Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->close(Z)V

    .line 120
    return-void
.end method

.method protected abstract close(Z)V
.end method

.method public getKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 462
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v1, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerPort:I

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->getTransport()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->key:Ljava/lang/String;

    .line 467
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->key:Ljava/lang/String;

    return-object v0

    .line 463
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerAddress:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 141
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPeerInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPeerPacketSourceAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPeerPacketSourcePort()I
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerPort:I

    return v0
.end method

.method public getPeerPort()I
    .locals 1

    .prologue
    .line 495
    iget v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerPort:I

    return v0
.end method

.method public getPeerProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public handleSocketClose()V
    .locals 11

    .prologue
    .line 595
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    instance-of v0, v0, Lgov2/nist/javax2/sip/SipStackImpl;

    if-nez v0, :cond_1

    .line 611
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getSipListener()Ljavax2/sip/SipListener;

    move-result-object v10

    .line 612
    .local v10, "sipListener":Ljavax2/sip/SipListener;
    instance-of v0, v10, Ljavax2/sip/SipListener;

    if-nez v0, :cond_3

    .line 622
    .end local v10    # "sipListener":Ljavax2/sip/SipListener;
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    check-cast v0, Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/SipStackImpl;->getSipProviders()Ljava/util/Iterator;

    move-result-object v8

    .line 597
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/SipProviderImpl;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgov2/nist/javax2/sip/SipProviderImpl;

    .line 599
    .local v9, "nextProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    invoke-virtual {v9}, Lgov2/nist/javax2/sip/SipProviderImpl;->getSipListener()Ljavax2/sip/SipListener;

    move-result-object v10

    .line 600
    .restart local v10    # "sipListener":Ljavax2/sip/SipListener;
    if-eqz v10, :cond_2

    instance-of v0, v10, Ljavax2/sip/SipListener;

    if-eqz v0, :cond_2

    .line 601
    new-instance v0, Lgov2/nist/javax2/sip/IOExceptionEventExt;

    sget-object v2, Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;->TCPSocketFailure:Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->myAddress:Ljava/lang/String;

    iget v4, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->myPort:I

    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerPort:I

    const-string/jumbo v7, "TCP"

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lgov2/nist/javax2/sip/IOExceptionEventExt;-><init>(Ljava/lang/Object;Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v10, v0}, Ljavax2/sip/SipListener;->processIOException(Ljavax2/sip/IOExceptionEvent;)V

    goto :goto_0

    .line 613
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/SipProviderImpl;>;"
    .end local v9    # "nextProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    :cond_3
    new-instance v0, Lgov2/nist/javax2/sip/IOExceptionEventExt;

    sget-object v2, Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;->TCPSocketFailure:Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->myAddress:Ljava/lang/String;

    iget v4, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->myPort:I

    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerPort:I

    const-string/jumbo v7, "TCP"

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lgov2/nist/javax2/sip/IOExceptionEventExt;-><init>(Ljava/lang/Object;Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v10, v0}, Ljavax2/sip/SipListener;->processIOException(Ljavax2/sip/IOExceptionEvent;)V

    goto :goto_0
.end method

.method public isReliable()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public processMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    .locals 24
    .param p1, "sipMessage"    # Lgov2/nist/javax2/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 196
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v5

    if-nez v5, :cond_1

    .line 201
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "badmsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 207
    :goto_0
    return-void

    .line 196
    .end local v4    # "badmsg":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 210
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;

    move-result-object v23

    .line 215
    .local v23, "viaList":Lgov2/nist/javax2/sip/header/ViaList;
    move-object/from16 v0, p1

    instance-of v5, v0, Lgov2/nist/javax2/sip/message/SIPRequest;

    if-nez v5, :cond_6

    .line 256
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 258
    .local v10, "receptionTime":J
    move-object/from16 v0, p1

    instance-of v5, v0, Lgov2/nist/javax2/sip/message/SIPRequest;

    if-nez v5, :cond_9

    .line 308
    move-object/from16 v0, p1

    check-cast v0, Lgov2/nist/javax2/sip/message/SIPResponse;

    move-object/from16 v18, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    .local v18, "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lgov2/nist/javax2/sip/message/SIPResponse;->checkHeaders()V
    :try_end_1
    .catch Landroid/net/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result v5

    if-gtz v5, :cond_13

    .line 333
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v5, v0, v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->newSIPServerResponse(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;)Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    move-result-object v20

    .line 335
    .local v20, "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    if-nez v20, :cond_16

    .line 354
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    const-string/jumbo v6, "Application is blocked -- could not acquire semaphore -- dropping response"

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 361
    .end local v18    # "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    .end local v20    # "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    :cond_4
    :goto_2
    return-void

    .line 203
    .end local v10    # "receptionTime":J
    .end local v23    # "viaList":Lgov2/nist/javax2/sip/header/ViaList;
    .restart local v4    # "badmsg":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    const-string/jumbo v6, ">>> Dropped Bad Msg"

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    invoke-interface {v5, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 360
    .end local v4    # "badmsg":Ljava/lang/String;
    :catchall_0
    move-exception v5

    .line 359
    throw v5

    .line 216
    .restart local v23    # "viaList":Lgov2/nist/javax2/sip/header/ViaList;
    :cond_6
    :try_start_3
    invoke-virtual/range {v23 .. v23}, Lgov2/nist/javax2/sip/header/ViaList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v22

    check-cast v22, Lgov2/nist/javax2/sip/header/Via;

    .line 217
    .local v22, "v":Lgov2/nist/javax2/sip/header/Via;
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-object v5, v5, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->addressResolver:Lgov2/nist/core/net/AddressResolver;

    invoke-virtual/range {v22 .. v22}, Lgov2/nist/javax2/sip/header/Via;->getHop()Ljavax2/sip/address/Hop;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov2/nist/core/net/AddressResolver;->resolveAddress(Ljavax2/sip/address/Hop;)Ljavax2/sip/address/Hop;

    move-result-object v14

    .line 218
    .local v14, "hop":Ljavax2/sip/address/Hop;
    invoke-virtual/range {v22 .. v22}, Lgov2/nist/javax2/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerProtocol:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerAddress:Ljava/net/InetAddress;

    const-string/jumbo v5, "rport"

    .line 231
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lgov2/nist/javax2/sip/header/Via;->hasParameter(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    const-string/jumbo v5, "received"

    .line 233
    move-object/from16 v0, p0

    iget-object v6, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Lgov2/nist/javax2/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string/jumbo v5, "rport"

    .line 239
    move-object/from16 v0, p0

    iget v6, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerPort:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Lgov2/nist/javax2/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 244
    :goto_4
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->isCached:Z

    if-nez v5, :cond_2

    .line 245
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    check-cast v5, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->cacheMessageChannel(Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;)V

    .line 246
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->isCached:Z

    .line 247
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    check-cast v5, Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v16

    .line 249
    .local v16, "remotePort":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    move/from16 v0, v16

    invoke-static {v5, v0}, Lgov2/nist/javax2/sip/stack/IOHandler;->makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v15

    .line 250
    .local v15, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-object v5, v5, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->ioHandler:Lgov2/nist/javax2/sip/stack/IOHandler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v5, v15, v6}, Lgov2/nist/javax2/sip/stack/IOHandler;->putSocket(Ljava/lang/String;Ljava/net/Socket;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 231
    .end local v15    # "key":Ljava/lang/String;
    .end local v16    # "remotePort":I
    :cond_8
    :try_start_6
    invoke-interface {v14}, Ljavax2/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    .line 242
    :catch_0
    move-exception v13

    .line 241
    .local v13, "ex":Ljava/text/ParseException;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    invoke-static {v13, v5}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;Lgov2/nist/core/StackLogger;)V

    goto :goto_4

    .line 260
    .end local v13    # "ex":Ljava/text/ParseException;
    .end local v14    # "hop":Ljavax2/sip/address/Hop;
    .end local v22    # "v":Lgov2/nist/javax2/sip/header/Via;
    .restart local v10    # "receptionTime":J
    :cond_9
    move-object/from16 v0, p1

    check-cast v0, Lgov2/nist/javax2/sip/message/SIPRequest;

    move-object/from16 v17, v0

    .line 264
    .local v17, "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-nez v5, :cond_b

    .line 270
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    const/16 v6, 0x10

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v5

    if-nez v5, :cond_c

    .line 277
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result v5

    if-gtz v5, :cond_d

    .line 288
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v5, v0, v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->newSIPServerRequest(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/MessageChannel;)Lgov2/nist/javax2/sip/stack/ServerRequestInterface;

    move-result-object v19

    .line 291
    .local v19, "sipServerRequest":Lgov2/nist/javax2/sip/stack/ServerRequestInterface;
    if-nez v19, :cond_f

    .line 302
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 303
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    const-string/jumbo v6, "Dropping request -- could not acquire semaphore in 10 sec"

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 265
    .end local v19    # "sipServerRequest":Lgov2/nist/javax2/sip/stack/ServerRequestInterface;
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    const-string/jumbo v6, "----Processing Message---"

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_5

    .line 271
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-object v5, v5, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->serverLogger:Lgov2/nist/core/ServerLogger;

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->getPeerHostPort()Lgov2/nist/core/HostPort;

    move-result-object v6

    invoke-virtual {v6}, Lgov2/nist/core/HostPort;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->getMessageProcessor()Lgov2/nist/javax2/sip/stack/MessageProcessor;

    move-result-object v8

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->getMessageProcessor()Lgov2/nist/javax2/sip/stack/MessageProcessor;

    move-result-object v8

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getPort()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v6, p1

    invoke-interface/range {v5 .. v11}, Lgov2/nist/core/ServerLogger;->logMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto/16 :goto_6

    .line 277
    :cond_d
    invoke-virtual/range {v17 .. v17}, Lgov2/nist/javax2/sip/message/SIPRequest;->getSize()I

    move-result v6

    invoke-virtual/range {v17 .. v17}, Lgov2/nist/javax2/sip/message/SIPRequest;->getContentLength()Ljavax2/sip/header/ContentLengthHeader;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual/range {v17 .. v17}, Lgov2/nist/javax2/sip/message/SIPRequest;->getContentLength()Ljavax2/sip/header/ContentLengthHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax2/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v5

    :goto_7
    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result v6

    if-le v5, v6, :cond_a

    const/16 v5, 0x201

    .line 282
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lgov2/nist/javax2/sip/message/SIPRequest;->createResponse(I)Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v18

    .line 284
    .restart local v18    # "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Z)V

    .line 285
    new-instance v5, Ljava/lang/Exception;

    const-string/jumbo v6, "Message size exceeded"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v18    # "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    :cond_e
    const/4 v5, 0x0

    .line 277
    goto :goto_7

    .line 293
    .restart local v19    # "sipServerRequest":Lgov2/nist/javax2/sip/stack/ServerRequestInterface;
    :cond_f
    :try_start_8
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Lgov2/nist/javax2/sip/stack/ServerRequestInterface;->processRequest(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/MessageChannel;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 295
    :try_start_9
    move-object/from16 v0, v19

    instance-of v5, v0, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    if-eqz v5, :cond_4

    .line 296
    move-object/from16 v0, v19

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-object/from16 v21, v0

    .line 297
    .local v21, "sipServerTx":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    invoke-virtual/range {v21 .. v21}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v5

    if-nez v5, :cond_4

    .line 298
    check-cast v19, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .end local v19    # "sipServerRequest":Lgov2/nist/javax2/sip/stack/ServerRequestInterface;
    invoke-virtual/range {v19 .. v19}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->releaseSem()V

    goto/16 :goto_2

    .line 299
    .end local v21    # "sipServerTx":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .restart local v19    # "sipServerRequest":Lgov2/nist/javax2/sip/stack/ServerRequestInterface;
    :catchall_1
    move-exception v5

    .line 295
    move-object/from16 v0, v19

    instance-of v6, v0, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    if-nez v6, :cond_11

    .line 299
    .end local v19    # "sipServerRequest":Lgov2/nist/javax2/sip/stack/ServerRequestInterface;
    :cond_10
    :goto_8
    throw v5

    .line 296
    .restart local v19    # "sipServerRequest":Lgov2/nist/javax2/sip/stack/ServerRequestInterface;
    :cond_11
    move-object/from16 v0, v19

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-object/from16 v21, v0

    .line 297
    .restart local v21    # "sipServerTx":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    invoke-virtual/range {v21 .. v21}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v6

    if-nez v6, :cond_10

    .line 298
    check-cast v19, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .end local v19    # "sipServerRequest":Lgov2/nist/javax2/sip/stack/ServerRequestInterface;
    invoke-virtual/range {v19 .. v19}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->releaseSem()V

    goto :goto_8

    .line 319
    .end local v17    # "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    .end local v21    # "sipServerTx":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .restart local v18    # "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    :catch_1
    move-exception v12

    .line 315
    .local v12, "ex":Landroid/net/ParseException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-nez v5, :cond_12

    .line 318
    :goto_9
    return-void

    .line 316
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dropping Badly formatted response message >>> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_9

    .line 323
    .end local v12    # "ex":Landroid/net/ParseException;
    :cond_13
    invoke-virtual/range {v18 .. v18}, Lgov2/nist/javax2/sip/message/SIPResponse;->getSize()I

    move-result v6

    invoke-virtual/range {v18 .. v18}, Lgov2/nist/javax2/sip/message/SIPResponse;->getContentLength()Ljavax2/sip/header/ContentLengthHeader;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual/range {v18 .. v18}, Lgov2/nist/javax2/sip/message/SIPResponse;->getContentLength()Ljavax2/sip/header/ContentLengthHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax2/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v5

    :goto_a
    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 328
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-nez v5, :cond_15

    .line 330
    :goto_b
    return-void

    :cond_14
    const/4 v5, 0x0

    .line 323
    goto :goto_a

    .line 329
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    const-string/jumbo v6, "Message size exceeded"

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_b

    .line 337
    .restart local v20    # "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    :cond_16
    :try_start_a
    move-object/from16 v0, v20

    instance-of v5, v0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    if-nez v5, :cond_18

    .line 347
    :cond_17
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Lgov2/nist/javax2/sip/stack/ServerResponseInterface;->processResponse(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 349
    :try_start_b
    move-object/from16 v0, v20

    instance-of v5, v0, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    if-eqz v5, :cond_4

    move-object/from16 v0, v20

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-object v5, v0

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->passToListener()Z

    move-result v5

    if-nez v5, :cond_4

    .line 351
    check-cast v20, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .end local v20    # "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->releaseSem()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    .line 337
    .restart local v20    # "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    :cond_18
    :try_start_c
    move-object/from16 v0, v20

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    move-object v5, v0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->checkFromTag(Lgov2/nist/javax2/sip/message/SIPResponse;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 340
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result v5

    if-nez v5, :cond_1a

    .line 349
    :goto_c
    :try_start_d
    move-object/from16 v0, v20

    instance-of v5, v0, Lgov2/nist/javax2/sip/stack/SIPTransaction;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-nez v5, :cond_1c

    .line 351
    .end local v20    # "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    :cond_19
    :goto_d
    return-void

    .line 341
    .restart local v20    # "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    :cond_1a
    :try_start_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dropping response message with invalid tag >>> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_c

    .line 351
    :catchall_2
    move-exception v5

    move-object v6, v5

    .line 349
    :try_start_f
    move-object/from16 v0, v20

    instance-of v5, v0, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    if-nez v5, :cond_1d

    .line 351
    .end local v20    # "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    :cond_1b
    :goto_e
    throw v6

    .line 349
    .restart local v20    # "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    :cond_1c
    move-object/from16 v0, v20

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-object v5, v0

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->passToListener()Z

    move-result v5

    if-nez v5, :cond_19

    .line 351
    check-cast v20, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .end local v20    # "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->releaseSem()V

    goto :goto_d

    .line 349
    .restart local v20    # "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    :cond_1d
    move-object/from16 v0, v20

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-object v5, v0

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->passToListener()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 351
    check-cast v20, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .end local v20    # "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->releaseSem()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_e
.end method

.method public releaseWakeLock(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 645
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    instance-of v3, v3, Lgov2/nist/javax2/sip/SipStackImpl;

    if-nez v3, :cond_1

    .line 656
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getSipListener()Ljavax2/sip/SipListener;

    move-result-object v2

    .line 657
    .local v2, "sipListener":Ljavax2/sip/SipListener;
    instance-of v3, v2, Ljavax2/sip/SipListener;

    if-nez v3, :cond_3

    .line 662
    .end local v2    # "sipListener":Ljavax2/sip/SipListener;
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    check-cast v3, Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/SipStackImpl;->getSipProviders()Ljava/util/Iterator;

    move-result-object v0

    .line 647
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/SipProviderImpl;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 648
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/SipProviderImpl;

    .line 649
    .local v1, "nextProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/SipProviderImpl;->getSipListener()Ljavax2/sip/SipListener;

    move-result-object v2

    .line 650
    .restart local v2    # "sipListener":Ljavax2/sip/SipListener;
    if-eqz v2, :cond_2

    instance-of v3, v2, Ljavax2/sip/SipListener;

    if-eqz v3, :cond_2

    .line 651
    invoke-interface {v2, p1}, Ljavax2/sip/SipListener;->releaseWakeLock(Ljava/lang/String;)V

    goto :goto_0

    .line 658
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/SipProviderImpl;>;"
    .end local v1    # "nextProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    :cond_3
    invoke-interface {v2, p1}, Ljavax2/sip/SipListener;->releaseWakeLock(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public rescheduleKeepAliveTimeout(J)V
    .locals 7
    .param p1, "newKeepAliveTimeout"    # J

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x20

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    .local v0, "methodLog":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 531
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->pingKeepAliveTimeoutTask:Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;

    if-eqz v1, :cond_2

    .line 535
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->pingKeepAliveTimeoutTask:Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;->cancel()Z

    .line 536
    iput-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->pingKeepAliveTimeoutTask:Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;

    .line 537
    new-instance v1, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel$KeepAliveTimeoutTimerTask;

    invoke-direct {v1, p0}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel$KeepAliveTimeoutTimerTask;-><init>(Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;)V

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->pingKeepAliveTimeoutTask:Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;

    .line 540
    :goto_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->pingKeepAliveTimeoutTask:Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;

    invoke-virtual {v1, v2, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 542
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 549
    :goto_2
    return-void

    :cond_0
    const-string/jumbo v1, "~~~ rescheduleKeepAliveTimeout: newKeepAliveTimeout="

    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, 0x7fffffffffffffffL

    .line 521
    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    const-string/jumbo v1, "Long.MAX_VALUE"

    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string/jumbo v1, ", newKeepAliveTimeout="

    .line 526
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 524
    :cond_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 532
    :cond_2
    new-instance v1, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel$KeepAliveTimeoutTimerTask;

    invoke-direct {v1, p0}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel$KeepAliveTimeoutTimerTask;-><init>(Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;)V

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->pingKeepAliveTimeoutTask:Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;

    goto :goto_1

    :cond_3
    const-string/jumbo v1, ", scheduling pingKeepAliveTimeoutTask to execute after "

    .line 543
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    .line 545
    div-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " seconds"

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 371
    .local v2, "hispipe":Lgov2/nist/javax2/sip/parser/Pipeline;
    new-instance v2, Lgov2/nist/javax2/sip/parser/Pipeline;

    .end local v2    # "hispipe":Lgov2/nist/javax2/sip/parser/Pipeline;
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget v6, v6, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->readTimeout:I

    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v7

    invoke-direct {v2, v5, v6, v7}, Lgov2/nist/javax2/sip/parser/Pipeline;-><init>(Ljava/io/InputStream;ILjava/util/Timer;)V

    .line 375
    .local v2, "hispipe":Lgov2/nist/javax2/sip/parser/Pipeline;
    new-instance v5, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;

    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result v6

    invoke-direct {v5, p0, v2, v6}, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;-><init>(Lgov2/nist/javax2/sip/parser/SIPMessageListener;Lgov2/nist/javax2/sip/parser/Pipeline;I)V

    iput-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->myParser:Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;

    .line 377
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->myParser:Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->processInput()V

    .line 380
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    check-cast v5, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;

    iget v6, v5, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->useCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->useCount:I

    .line 381
    const/4 v5, 0x1

    iput-boolean v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->isRunning:Z

    :goto_0
    const/16 v5, 0x1000

    .line 385
    :try_start_0
    new-array v3, v5, [B

    .line 386
    .local v3, "msg":[B
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    const/4 v6, 0x0

    const/16 v7, 0x1000

    invoke-virtual {v5, v3, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 388
    .local v4, "nbytes":I
    if-eq v4, v9, :cond_0

    const/4 v5, 0x0

    .line 403
    invoke-virtual {v2, v3, v5, v4}, Lgov2/nist/javax2/sip/parser/Pipeline;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    .line 434
    .end local v3    # "msg":[B
    .end local v4    # "nbytes":I
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v5, "\r\n\r\n"

    const-string/jumbo v6, "UTF-8"

    .line 408
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lgov2/nist/javax2/sip/parser/Pipeline;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 414
    :goto_1
    :try_start_2
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v5

    if-nez v5, :cond_3

    .line 417
    :goto_2
    :try_start_3
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget v5, v5, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->maxConnections:I

    if-ne v5, v9, :cond_4

    .line 424
    :goto_3
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->close()V

    .line 425
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/parser/Pipeline;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 437
    :goto_4
    iput-boolean v8, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->isRunning:Z

    .line 438
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    check-cast v5, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;

    invoke-virtual {v5, p0}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->remove(Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;)V

    .line 440
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    check-cast v5, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;

    iget v6, v5, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->useCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->useCount:I

    .line 443
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->myParser:Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;

    if-nez v5, :cond_5

    .line 444
    :goto_5
    return-void

    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v3    # "msg":[B
    .restart local v4    # "nbytes":I
    :cond_0
    :try_start_4
    const-string/jumbo v5, "\r\n\r\n"

    const-string/jumbo v6, "UTF-8"

    .line 389
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lgov2/nist/javax2/sip/parser/Pipeline;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 391
    :try_start_5
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget v5, v5, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->maxConnections:I

    if-ne v5, v9, :cond_1

    .line 397
    :goto_6
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/parser/Pipeline;->close()V

    .line 398
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 437
    :goto_7
    iput-boolean v8, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->isRunning:Z

    .line 438
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    check-cast v5, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;

    invoke-virtual {v5, p0}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->remove(Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;)V

    .line 440
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    check-cast v5, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;

    iget v6, v5, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->useCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->useCount:I

    .line 443
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->myParser:Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;

    if-nez v5, :cond_2

    .line 444
    :goto_8
    return-void

    .line 392
    :cond_1
    :try_start_6
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    monitor-enter v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 393
    :try_start_7
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    check-cast v5, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;

    iget v7, v5, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->nConnections:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v5, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->nConnections:I

    .line 394
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 395
    monitor-exit v6

    goto :goto_6

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v5
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 400
    :catch_1
    move-exception v5

    goto :goto_7

    .line 444
    :cond_2
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->myParser:Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->close()V

    goto :goto_8

    .line 415
    .end local v3    # "msg":[B
    .end local v4    # "nbytes":I
    .restart local v0    # "ex":Ljava/io/IOException;
    :cond_3
    :try_start_9
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IOException  closing sock "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_2

    .line 430
    :catch_2
    move-exception v5

    goto/16 :goto_4

    .line 418
    :cond_4
    :try_start_a
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    monitor-enter v6
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 419
    :try_start_b
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    check-cast v5, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;

    iget v7, v5, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->nConnections:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v5, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->nConnections:I

    .line 421
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 422
    monitor-exit v6

    goto/16 :goto_3

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v5
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 427
    :catch_3
    move-exception v5

    goto/16 :goto_4

    .line 444
    :cond_5
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->myParser:Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->close()V

    goto/16 :goto_5

    .end local v0    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 433
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_d
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    invoke-static {v1, v5}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;Lgov2/nist/core/StackLogger;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_0

    .line 434
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_2
    move-exception v5

    move-object v6, v5

    .line 437
    iput-boolean v8, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->isRunning:Z

    .line 438
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    check-cast v5, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;

    invoke-virtual {v5, p0}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->remove(Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;)V

    .line 440
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    check-cast v5, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;

    iget v7, v5, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->useCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v5, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->useCount:I

    .line 443
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->myParser:Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;

    if-nez v5, :cond_6

    .line 444
    :goto_9
    throw v6

    :cond_6
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->myParser:Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->close()V

    goto :goto_9

    .line 411
    .restart local v0    # "ex":Ljava/io/IOException;
    :catch_5
    move-exception v5

    goto/16 :goto_1
.end method

.method public sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    .locals 6
    .param p1, "sipMessage"    # Lgov2/nist/javax2/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 167
    .local v4, "time":J
    invoke-virtual {p0, p1, v0}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Z)V

    .line 169
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v3, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerPort:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->logMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    goto :goto_0
.end method

.method protected abstract sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public startKeepaliveTimer()V
    .locals 4

    .prologue
    .line 626
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    instance-of v3, v3, Lgov2/nist/javax2/sip/SipStackImpl;

    if-nez v3, :cond_1

    .line 637
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getSipListener()Ljavax2/sip/SipListener;

    move-result-object v2

    .line 638
    .local v2, "sipListener":Ljavax2/sip/SipListener;
    instance-of v3, v2, Ljavax2/sip/SipListener;

    if-nez v3, :cond_3

    .line 642
    .end local v2    # "sipListener":Ljavax2/sip/SipListener;
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    check-cast v3, Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/SipStackImpl;->getSipProviders()Ljava/util/Iterator;

    move-result-object v0

    .line 628
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/SipProviderImpl;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 629
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/SipProviderImpl;

    .line 630
    .local v1, "nextProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/SipProviderImpl;->getSipListener()Ljavax2/sip/SipListener;

    move-result-object v2

    .line 631
    .restart local v2    # "sipListener":Ljavax2/sip/SipListener;
    if-eqz v2, :cond_2

    instance-of v3, v2, Ljavax2/sip/SipListener;

    if-eqz v3, :cond_2

    .line 632
    invoke-interface {v2}, Ljavax2/sip/SipListener;->startKeepAliveTimer()V

    goto :goto_0

    .line 639
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/SipProviderImpl;>;"
    .end local v1    # "nextProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    :cond_3
    invoke-interface {v2}, Ljavax2/sip/SipListener;->startKeepAliveTimer()V

    goto :goto_0
.end method

.method protected uncache()V
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->isCached:Z

    if-nez v0, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->isRunning:Z

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    check-cast v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;

    invoke-virtual {v0, p0}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->remove(Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;)V

    goto :goto_0
.end method
