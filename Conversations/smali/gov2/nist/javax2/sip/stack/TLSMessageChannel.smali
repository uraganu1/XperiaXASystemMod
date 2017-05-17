.class public final Lgov2/nist/javax2/sip/stack/TLSMessageChannel;
.super Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;
.source "TLSMessageChannel.java"


# instance fields
.field private handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;


# direct methods
.method protected constructor <init>(Ljava/net/InetAddress;ILgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;)V
    .locals 3
    .param p1, "inetAddr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "sipStack"    # Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    .param p4, "messageProcessor"    # Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0, p3}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;)V

    .line 137
    invoke-virtual {p3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    :goto_0
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 142
    iput p2, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->peerPort:I

    .line 143
    invoke-virtual {p4}, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->getPort()I

    move-result v0

    iput v0, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->myPort:I

    const-string/jumbo v0, "TLS"

    .line 144
    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->peerProtocol:Ljava/lang/String;

    .line 145
    iput-object p3, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    .line 146
    invoke-virtual {p4}, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->myAddress:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->peerPort:I

    const-string/jumbo v2, "TLS"

    invoke-static {v0, v1, v2}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->key:Ljava/lang/String;

    .line 148
    iput-object p4, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    .line 150
    return-void

    .line 138
    :cond_0
    invoke-virtual {p3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    const-string/jumbo v1, "creating new TLSMessageChannel (outgoing)"

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/net/Socket;Lgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;)V
    .locals 4
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "sipStack"    # Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    .param p3, "msgProcessor"    # Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 95
    invoke-direct {p0, p2}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;)V

    .line 96
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    :goto_0
    instance-of v1, p1, Ljavax/net/ssl/SSLSocket;

    if-nez v1, :cond_1

    .line 111
    :goto_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 112
    invoke-virtual {p3}, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->myAddress:Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    .line 115
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->mythread:Ljava/lang/Thread;

    .line 116
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->mythread:Ljava/lang/Thread;

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 117
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->mythread:Ljava/lang/Thread;

    const-string/jumbo v2, "TLSMessageChannelThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p3}, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->getPort()I

    move-result v1

    iput v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->myPort:I

    .line 119
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getPort()I

    move-result v1

    iput v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->peerPort:I

    .line 121
    iput-object p3, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    .line 123
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->mythread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 124
    return-void

    .line 97
    :cond_0
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    const-string/jumbo v2, "creating new TLSMessageChannel (incoming)"

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 103
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 104
    .local v0, "sslSock":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v0, v3}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    .line 105
    new-instance v1, Lgov2/nist/javax2/sip/stack/HandshakeCompletedListenerImpl;

    invoke-direct {v1, p0}, Lgov2/nist/javax2/sip/stack/HandshakeCompletedListenerImpl;-><init>(Lgov2/nist/javax2/sip/stack/TLSMessageChannel;)V

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;

    .line 106
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 107
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->close(Z)V

    .line 157
    return-void
.end method

.method protected close(Z)V
    .locals 4
    .param p1, "b"    # Z

    .prologue
    .line 339
    :try_start_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    if-nez v1, :cond_1

    .line 340
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 346
    :cond_0
    :goto_1
    return-void

    .line 339
    :cond_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 343
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

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

    .line 341
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

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

    .line 306
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 309
    check-cast v0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;

    .line 310
    .local v0, "that":Lgov2/nist/javax2/sip/stack/TLSMessageChannel;
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    if-ne v1, v2, :cond_1

    .line 313
    const/4 v1, 0x1

    return v1

    .line 307
    .end local v0    # "that":Lgov2/nist/javax2/sip/stack/TLSMessageChannel;
    :cond_0
    return v3

    .line 311
    .restart local v0    # "that":Lgov2/nist/javax2/sip/stack/TLSMessageChannel;
    :cond_1
    return v3
.end method

.method public getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "tls"

    .line 174
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
    .line 259
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 261
    :goto_0
    if-nez p3, :cond_1

    .line 294
    :goto_1
    invoke-virtual {p2, p4}, Lgov2/nist/javax2/sip/message/SIPMessage;->addUnparsed(Ljava/lang/String;)V

    .line 296
    return-void

    .line 259
    :cond_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3, p1}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-class v3, Lgov2/nist/javax2/sip/header/From;

    .line 261
    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 266
    :cond_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 269
    :goto_2
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPMessage;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "msgString":Ljava/lang/String;
    const-string/jumbo v3, "SIP/"

    .line 270
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 292
    :cond_3
    :goto_3
    throw p1

    .end local v2    # "msgString":Ljava/lang/String;
    :cond_4
    const-class v3, Lgov2/nist/javax2/sip/header/To;

    .line 261
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

    .line 267
    :cond_5
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Encountered bad message \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2

    .restart local v2    # "msgString":Ljava/lang/String;
    :cond_6
    const-string/jumbo v3, "ACK "

    .line 270
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 272
    invoke-virtual {p0, v2, p1}, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->createBadReqRes(Ljava/lang/String;Ljava/text/ParseException;)Lgov2/nist/javax2/sip/message/SIPMessage;

    move-result-object v0

    .line 273
    .local v0, "badReqRes":Lgov2/nist/javax2/sip/message/SIPMessage;
    if-nez v0, :cond_7

    .line 286
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 287
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    const-string/jumbo v4, "Could not formulate automatic 400 Bad Request"

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_3

    .line 274
    :cond_7
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_8

    .line 279
    :goto_4
    :try_start_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->getPeerInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->getPeerPort()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v3, v4, v5}, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/net/InetAddress;IZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 284
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Ljava/io/IOException;
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 283
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3, v1}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 275
    .end local v1    # "e":Ljava/io/IOException;
    :cond_8
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    const-string/jumbo v4, "Sending automatic 400 Bad Request:"

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 276
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

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
    .line 221
    if-nez p1, :cond_1

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1
    if-eqz p2, :cond_0

    .line 223
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-object v0, v0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->ioHandler:Lgov2/nist/javax2/sip/stack/IOHandler;

    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    const-string/jumbo v4, "TLS"

    move-object v2, p2

    move v3, p3

    move-object v5, p1

    move v6, p4

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lgov2/nist/javax2/sip/stack/IOHandler;->sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;Lgov2/nist/javax2/sip/message/SIPMessage;ZLgov2/nist/javax2/sip/stack/MessageChannel;)Ljava/net/Socket;

    move-result-object v9

    .line 228
    .local v9, "sock":Ljava/net/Socket;
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    if-ne v9, v0, :cond_3

    .line 242
    :cond_2
    if-eqz v9, :cond_5

    .line 246
    :goto_0
    return-void

    .line 228
    :cond_3
    if-eqz v9, :cond_2

    .line 230
    :try_start_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_4

    .line 234
    :goto_1
    iput-object v9, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    .line 235
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    .line 238
    new-instance v8, Ljava/lang/Thread;

    invoke-direct {v8, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 239
    .local v8, "mythread":Ljava/lang/Thread;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    const-string/jumbo v0, "TLSMessageChannelThread"

    .line 240
    invoke-virtual {v8, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 230
    .end local v8    # "mythread":Ljava/lang/Thread;
    :cond_4
    :try_start_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 233
    :catch_0
    move-exception v0

    goto :goto_1

    .line 243
    :cond_5
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->handleSocketClose()V

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
    .line 185
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-object v0, v0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->ioHandler:Lgov2/nist/javax2/sip/stack/IOHandler;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->getMessageProcessor()Lgov2/nist/javax2/sip/stack/MessageProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v3, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->peerPort:I

    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->peerProtocol:Ljava/lang/String;

    move-object v5, p1

    move v6, p2

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lgov2/nist/javax2/sip/stack/IOHandler;->sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;Lgov2/nist/javax2/sip/message/SIPMessage;ZLgov2/nist/javax2/sip/stack/MessageChannel;)Ljava/net/Socket;

    move-result-object v8

    .line 193
    .local v8, "sock":Ljava/net/Socket;
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    if-ne v8, v0, :cond_2

    .line 205
    :cond_0
    if-eqz v8, :cond_4

    .line 209
    :goto_1
    return-void

    .line 186
    .end local v8    # "sock":Ljava/net/Socket;
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMessage isClient  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    .restart local v8    # "sock":Ljava/net/Socket;
    :cond_2
    if-eqz v8, :cond_0

    .line 195
    :try_start_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    .line 198
    :goto_2
    iput-object v8, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    .line 199
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    .line 201
    new-instance v9, Ljava/lang/Thread;

    invoke-direct {v9, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 202
    .local v9, "thread":Ljava/lang/Thread;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    const-string/jumbo v0, "TLSMessageChannelThread"

    .line 203
    invoke-virtual {v9, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 195
    .end local v9    # "thread":Ljava/lang/Thread;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 197
    :catch_0
    move-exception v0

    goto :goto_2

    .line 206
    :cond_4
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->handleSocketClose()V

    goto :goto_1
.end method

.method public setHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 0
    .param p1, "handshakeCompletedListenerImpl"    # Ljavax/net/ssl/HandshakeCompletedListener;

    .prologue
    .line 326
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;

    .line 327
    return-void
.end method
