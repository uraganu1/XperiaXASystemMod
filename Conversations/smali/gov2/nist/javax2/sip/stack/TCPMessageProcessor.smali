.class public Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;
.super Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;
.source "TCPMessageProcessor.java"


# direct methods
.method protected constructor <init>(Ljava/net/InetAddress;Lgov2/nist/javax2/sip/stack/SIPTransactionStack;I)V
    .locals 1
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "sipStack"    # Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    .param p3, "port"    # I

    .prologue
    const-string/jumbo v0, "tcp"

    .line 70
    invoke-direct {p0, p1, p3, v0, p2}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;-><init>(Ljava/net/InetAddress;ILjava/lang/String;Lgov2/nist/javax2/sip/stack/SIPTransactionStack;)V

    .line 71
    return-void
.end method


# virtual methods
.method public declared-synchronized createMessageChannel(Lgov2/nist/core/HostPort;)Lgov2/nist/javax2/sip/stack/MessageChannel;
    .locals 5
    .param p1, "targetHostPort"    # Lgov2/nist/core/HostPort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "TCP"

    .line 177
    invoke-static {p1, v2}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getKey(Lgov2/nist/core/HostPort;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->messageChannels:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 181
    new-instance v1, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;

    invoke-virtual {p1}, Lgov2/nist/core/HostPort;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {p1}, Lgov2/nist/core/HostPort;->getPort()I

    move-result v3

    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-direct {v1, v2, v3, v4, p0}, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;-><init>(Ljava/net/InetAddress;ILgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;)V

    .line 183
    .local v1, "retval":Lgov2/nist/javax2/sip/stack/TCPMessageChannel;
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->messageChannels:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const/4 v2, 0x1

    iput-boolean v2, v1, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->isCached:Z

    .line 185
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    monitor-exit p0

    .line 189
    return-object v1

    .line 179
    .end local v1    # "retval":Lgov2/nist/javax2/sip/stack/TCPMessageChannel;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->messageChannels:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 186
    .restart local v1    # "retval":Lgov2/nist/javax2/sip/stack/TCPMessageChannel;
    :cond_1
    :try_start_2
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Creating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "retval":Lgov2/nist/javax2/sip/stack/TCPMessageChannel;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized createMessageChannel(Ljava/net/InetAddress;I)Lgov2/nist/javax2/sip/stack/MessageChannel;
    .locals 6
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string/jumbo v3, "TCP"

    .line 205
    invoke-static {p1, p2, v3}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->messageChannels:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 209
    new-instance v2, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;

    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-direct {v2, p1, p2, v3, p0}, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;-><init>(Ljava/net/InetAddress;ILgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;)V

    .line 210
    .local v2, "retval":Lgov2/nist/javax2/sip/stack/TCPMessageChannel;
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->messageChannels:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const/4 v3, 0x1

    iput-boolean v3, v2, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->isCached:Z

    .line 212
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    monitor-exit p0

    .line 216
    return-object v2

    .line 207
    .end local v2    # "retval":Lgov2/nist/javax2/sip/stack/TCPMessageChannel;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->messageChannels:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 213
    .restart local v2    # "retval":Lgov2/nist/javax2/sip/stack/TCPMessageChannel;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 214
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Creating "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 216
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "retval":Lgov2/nist/javax2/sip/stack/TCPMessageChannel;
    :catch_0
    move-exception v0

    .line 219
    .local v0, "ex":Ljava/net/UnknownHostException;
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "ex":Ljava/net/UnknownHostException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getCurrentMsgChannel(Lgov2/nist/core/HostPort;)Lgov2/nist/javax2/sip/stack/MessageChannel;
    .locals 3
    .param p1, "targetHostPort"    # Lgov2/nist/core/HostPort;

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v1, "TCP"

    .line 194
    invoke-static {p1, v1}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getKey(Lgov2/nist/core/HostPort;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->messageChannels:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 198
    return-object v2

    .line 196
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->messageChannels:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;

    return-object v1
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "tcp"

    .line 145
    return-object v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 98
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->isRunning:Z

    if-nez v6, :cond_1

    .line 137
    return-void

    .line 100
    :cond_1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 106
    :cond_2
    :try_start_1
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget v6, v6, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->maxConnections:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 115
    :cond_3
    :goto_1
    iget v6, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->nConnections:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->nConnections:I

    .line 116
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :try_start_2
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->sock:Ljava/net/ServerSocket;

    invoke-virtual {v6}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v5

    .line 119
    .local v5, "newsock":Ljava/net/Socket;
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-nez v6, :cond_5

    .line 125
    :goto_2
    new-instance v4, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;

    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-direct {v4, v5, v6, p0}, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;-><init>(Ljava/net/Socket;Lgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;)V

    .line 126
    .local v4, "newChannel":Lgov2/nist/javax2/sip/stack/TCPMessageChannel;
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->incomingMessageChannels:Ljava/util/Map;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 135
    .end local v4    # "newChannel":Lgov2/nist/javax2/sip/stack/TCPMessageChannel;
    .end local v5    # "newsock":Ljava/net/Socket;
    :catch_0
    move-exception v3

    .line 128
    .local v3, "ex":Ljava/net/SocketException;
    iput-boolean v8, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->isRunning:Z

    goto :goto_0

    .line 106
    .end local v3    # "ex":Ljava/net/SocketException;
    :cond_4
    :try_start_3
    iget v6, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->nConnections:I

    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget v7, v7, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->maxConnections:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lt v6, v7, :cond_3

    .line 108
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 110
    iget-boolean v6, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->isRunning:Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v6, :cond_2

    :try_start_5
    monitor-exit p0

    return-void

    .line 113
    :catch_1
    move-exception v2

    .line 111
    .local v2, "ex":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 116
    .end local v2    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 135
    :catch_2
    move-exception v0

    .line 131
    .local v0, "ex":Ljava/io/IOException;
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v6

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    invoke-interface {v6, v0}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 120
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v5    # "newsock":Ljava/net/Socket;
    :cond_5
    :try_start_7
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v6

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    const-string/jumbo v7, "Accepting new connection!"

    invoke-interface {v6, v7}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 132
    .end local v5    # "newsock":Ljava/net/Socket;
    :catch_3
    move-exception v1

    .line 134
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public start()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 77
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v0, "thread":Ljava/lang/Thread;
    const-string/jumbo v1, "TCPMessageProcessorThread"

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 80
    invoke-virtual {v0, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 81
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getNetworkLayer()Lgov2/nist/core/net/NetworkLayer;

    move-result-object v1

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->getPort()I

    move-result v2

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v1, v2, v4, v3}, Lgov2/nist/core/net/NetworkLayer;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v1

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->sock:Ljava/net/ServerSocket;

    .line 82
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0.0.0.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->sock:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-super {p0, v1}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->setIpAddress(Ljava/net/InetAddress;)V

    .line 88
    :goto_0
    iput-boolean v5, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->isRunning:Z

    .line 89
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 91
    return-void

    .line 82
    :cond_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "::0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public declared-synchronized stop()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 152
    const/4 v5, 0x0

    :try_start_0
    iput-boolean v5, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->isRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :try_start_1
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->sock:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :goto_0
    :try_start_2
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->messageChannels:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 161
    .local v1, "en":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 166
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;->incomingMessageChannels:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 167
    .local v2, "incomingMCIterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 173
    return-void

    .line 158
    .end local v1    # "en":Ljava/util/Collection;
    .end local v2    # "incomingMCIterator":Ljava/util/Iterator;
    .end local v3    # "it":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 162
    .restart local v1    # "en":Ljava/util/Collection;
    .restart local v3    # "it":Ljava/util/Iterator;
    :cond_0
    :try_start_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;

    .line 163
    .local v4, "next":Lgov2/nist/javax2/sip/stack/TCPMessageChannel;
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->close()V

    goto :goto_1

    .line 168
    .end local v4    # "next":Lgov2/nist/javax2/sip/stack/TCPMessageChannel;
    .restart local v2    # "incomingMCIterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;

    .line 169
    .restart local v4    # "next":Lgov2/nist/javax2/sip/stack/TCPMessageChannel;
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method
