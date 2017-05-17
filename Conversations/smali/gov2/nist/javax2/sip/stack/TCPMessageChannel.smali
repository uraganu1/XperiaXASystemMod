.class public Lgov2/nist/javax2/sip/stack/TCPMessageChannel;
.super Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;
.source "TCPMessageChannel.java"


# instance fields
.field protected myClientOutputStream:Ljava/io/OutputStream;


# direct methods
.method protected constructor <init>(Ljava/net/InetAddress;ILgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;)V
    .locals 3
    .param p1, "inetAddr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "sipStack"    # Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    .param p4, "messageProcessor"    # Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p3}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;)V

    .line 125
    invoke-virtual {p3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    :goto_0
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 130
    iput p2, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->peerPort:I

    .line 131
    invoke-virtual {p4}, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->getPort()I

    move-result v0

    iput v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->myPort:I

    const-string/jumbo v0, "TCP"

    .line 132
    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->peerProtocol:Ljava/lang/String;

    .line 133
    invoke-virtual {p4}, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->myAddress:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v1, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->peerPort:I

    const-string/jumbo v2, "TCP"

    invoke-static {v0, v1, v2}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->key:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    .line 138
    return-void

    .line 126
    :cond_0
    invoke-virtual {p3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    const-string/jumbo v1, "creating new TCPMessageChannel "

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/net/Socket;Lgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;)V
    .locals 2
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "sipStack"    # Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    .param p3, "msgProcessor"    # Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p2}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;)V

    .line 94
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    :goto_0
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    .line 99
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 100
    invoke-virtual {p3}, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->myAddress:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    .line 102
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->myClientOutputStream:Ljava/io/OutputStream;

    .line 103
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mythread:Ljava/lang/Thread;

    .line 104
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mythread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 105
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mythread:Ljava/lang/Thread;

    const-string/jumbo v1, "TCPMessageChannelThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    iput v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->peerPort:I

    .line 108
    iput-object p3, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    .line 110
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mythread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 111
    return-void

    .line 95
    :cond_0
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    const-string/jumbo v1, "creating new TCPMessageChannel "

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->close(Z)V

    .line 145
    return-void
.end method

.method protected close(Z)V
    .locals 4
    .param p1, "b"    # Z

    .prologue
    .line 347
    :try_start_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    if-nez v1, :cond_1

    .line 351
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 358
    :cond_0
    :goto_1
    return-void

    .line 348
    :cond_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    const/4 v1, 0x0

    .line 349
    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 354
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error closing socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .line 352
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Closing message Channel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 326
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 329
    check-cast v0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;

    .line 330
    .local v0, "that":Lgov2/nist/javax2/sip/stack/TCPMessageChannel;
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    if-ne v1, v2, :cond_1

    .line 333
    const/4 v1, 0x1

    return v1

    .line 327
    .end local v0    # "that":Lgov2/nist/javax2/sip/stack/TCPMessageChannel;
    :cond_0
    return v3

    .line 331
    .restart local v0    # "that":Lgov2/nist/javax2/sip/stack/TCPMessageChannel;
    :cond_1
    return v3
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "TCP"

    .line 153
    return-object v0
.end method

.method public handleException(Ljava/text/ParseException;Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "ex"    # Ljava/text/ParseException;
    .param p2, "sipMessage"    # Lgov2/nist/javax2/sip/message/SIPMessage;
    .param p3, "hdrClass"    # Ljava/lang/Class;
    .param p4, "header"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 276
    :goto_0
    if-nez p3, :cond_1

    .line 314
    :goto_1
    invoke-virtual {p2, p4}, Lgov2/nist/javax2/sip/message/SIPMessage;->addUnparsed(Ljava/lang/String;)V

    .line 316
    return-void

    .line 274
    :cond_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3, p1}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-class v3, Lgov2/nist/javax2/sip/header/From;

    .line 276
    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 281
    :cond_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 288
    :goto_2
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPMessage;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "msgString":Ljava/lang/String;
    const-string/jumbo v3, "SIP/"

    .line 289
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 312
    :cond_3
    :goto_3
    throw p1

    .end local v2    # "msgString":Ljava/lang/String;
    :cond_4
    const-class v3, Lgov2/nist/javax2/sip/header/To;

    .line 276
    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Lgov2/nist/javax2/sip/header/CSeq;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Lgov2/nist/javax2/sip/header/Via;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Lgov2/nist/javax2/sip/header/CallID;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Lgov2/nist/javax2/sip/header/StatusLine;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 282
    :cond_5
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Encountered Bad Message \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPMessage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2

    .restart local v2    # "msgString":Ljava/lang/String;
    :cond_6
    const-string/jumbo v3, "ACK "

    .line 289
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 291
    invoke-virtual {p0, v2, p1}, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->createBadReqRes(Ljava/lang/String;Ljava/text/ParseException;)Lgov2/nist/javax2/sip/message/SIPMessage;

    move-result-object v0

    .line 292
    .local v0, "badReqRes":Lgov2/nist/javax2/sip/message/SIPMessage;
    if-nez v0, :cond_7

    .line 305
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 306
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    const-string/jumbo v4, "Could not formulate automatic 400 Bad Request"

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_3

    .line 293
    :cond_7
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_8

    .line 298
    :goto_4
    :try_start_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->getPeerInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->getPeerPort()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v3, v4, v5}, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/net/InetAddress;IZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 303
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Ljava/io/IOException;
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 302
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3, v1}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 294
    .end local v1    # "e":Ljava/io/IOException;
    :cond_8
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    const-string/jumbo v4, "Sending automatic 400 Bad Request:"

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 295
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/net/InetAddress;IZ)V
    .locals 10
    .param p1, "message"    # Lgov2/nist/javax2/sip/message/SIPMessage;
    .param p2, "receiverAddress"    # Ljava/net/InetAddress;
    .param p3, "receiverPort"    # I
    .param p4, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    if-nez p1, :cond_1

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    if-eqz p2, :cond_0

    .line 211
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-object v0, v0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->ioHandler:Lgov2/nist/javax2/sip/stack/IOHandler;

    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    const-string/jumbo v4, "TCP"

    move-object v2, p2

    move v3, p3

    move-object v5, p1

    move v6, p4

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lgov2/nist/javax2/sip/stack/IOHandler;->sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;Lgov2/nist/javax2/sip/message/SIPMessage;ZLgov2/nist/javax2/sip/stack/MessageChannel;)Ljava/net/Socket;

    move-result-object v9

    .line 213
    .local v9, "sock":Ljava/net/Socket;
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    if-ne v9, v0, :cond_3

    .line 256
    :cond_2
    if-eqz v9, :cond_5

    .line 261
    :goto_0
    return-void

    .line 213
    :cond_3
    if-eqz v9, :cond_2

    .line 214
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    if-nez v0, :cond_4

    .line 248
    :goto_1
    iput-object v9, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    .line 249
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    .line 250
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->myClientOutputStream:Ljava/io/OutputStream;

    .line 252
    new-instance v8, Ljava/lang/Thread;

    invoke-direct {v8, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 253
    .local v8, "mythread":Ljava/lang/Thread;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    const-string/jumbo v0, "TCPMessageChannelThread"

    .line 254
    invoke-virtual {v8, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 219
    .end local v8    # "mythread":Ljava/lang/Thread;
    :cond_4
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lgov2/nist/javax2/sip/stack/TCPMessageChannel$1;

    invoke-direct {v1, p0}, Lgov2/nist/javax2/sip/stack/TCPMessageChannel$1;-><init>(Lgov2/nist/javax2/sip/stack/TCPMessageChannel;)V

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1

    .line 257
    :cond_5
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->handleSocketClose()V

    goto :goto_0
.end method

.method protected sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Z)V
    .locals 10
    .param p1, "message"    # Lgov2/nist/javax2/sip/message/SIPMessage;
    .param p2, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-object v0, v0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->ioHandler:Lgov2/nist/javax2/sip/stack/IOHandler;

    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v3, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->peerPort:I

    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->peerProtocol:Ljava/lang/String;

    move-object v5, p1

    move v6, p2

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lgov2/nist/javax2/sip/stack/IOHandler;->sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;Lgov2/nist/javax2/sip/message/SIPMessage;ZLgov2/nist/javax2/sip/stack/MessageChannel;)Ljava/net/Socket;

    move-result-object v8

    .line 181
    .local v8, "sock":Ljava/net/Socket;
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    if-ne v8, v0, :cond_1

    .line 193
    :cond_0
    if-eqz v8, :cond_3

    .line 197
    :goto_0
    return-void

    .line 181
    :cond_1
    if-eqz v8, :cond_0

    .line 183
    :try_start_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    .line 186
    :goto_1
    iput-object v8, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    .line 187
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    .line 188
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->myClientOutputStream:Ljava/io/OutputStream;

    .line 189
    new-instance v9, Ljava/lang/Thread;

    invoke-direct {v9, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 190
    .local v9, "thread":Ljava/lang/Thread;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    const-string/jumbo v0, "TCPMessageChannelThread"

    .line 191
    invoke-virtual {v9, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 183
    .end local v9    # "thread":Ljava/lang/Thread;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 185
    :catch_0
    move-exception v0

    goto :goto_1

    .line 194
    :cond_3
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->handleSocketClose()V

    goto :goto_0
.end method
