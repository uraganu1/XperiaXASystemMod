.class public Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;
.super Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;
.source "TLSMessageProcessor.java"


# direct methods
.method protected constructor <init>(Ljava/net/InetAddress;Lgov2/nist/javax2/sip/stack/SIPTransactionStack;I)V
    .locals 1
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "sipStack"    # Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    .param p3, "port"    # I

    .prologue
    const-string/jumbo v0, "tls"

    .line 81
    invoke-direct {p0, p1, p3, v0, p2}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;-><init>(Ljava/net/InetAddress;ILjava/lang/String;Lgov2/nist/javax2/sip/stack/SIPTransactionStack;)V

    .line 82
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
    const-string/jumbo v2, "TLS"

    .line 207
    invoke-static {p1, v2}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getKey(Lgov2/nist/core/HostPort;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->messageChannels:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 211
    new-instance v1, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;

    invoke-virtual {p1}, Lgov2/nist/core/HostPort;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {p1}, Lgov2/nist/core/HostPort;->getPort()I

    move-result v3

    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-direct {v1, v2, v3, v4, p0}, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;-><init>(Ljava/net/InetAddress;ILgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;)V

    .line 213
    .local v1, "retval":Lgov2/nist/javax2/sip/stack/TLSMessageChannel;
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->messageChannels:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const/4 v2, 0x1

    iput-boolean v2, v1, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->isCached:Z

    .line 215
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    monitor-exit p0

    .line 219
    return-object v1

    .line 209
    .end local v1    # "retval":Lgov2/nist/javax2/sip/stack/TLSMessageChannel;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->messageChannels:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 216
    .restart local v1    # "retval":Lgov2/nist/javax2/sip/stack/TLSMessageChannel;
    :cond_1
    :try_start_2
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

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

    .line 217
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

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
    .end local v1    # "retval":Lgov2/nist/javax2/sip/stack/TLSMessageChannel;
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
    const-string/jumbo v3, "TLS"

    .line 236
    invoke-static {p1, p2, v3}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->messageChannels:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 240
    new-instance v2, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;

    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-direct {v2, p1, p2, v3, p0}, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;-><init>(Ljava/net/InetAddress;ILgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;)V

    .line 241
    .local v2, "retval":Lgov2/nist/javax2/sip/stack/TLSMessageChannel;
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->messageChannels:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const/4 v3, 0x1

    iput-boolean v3, v2, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->isCached:Z

    .line 243
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    monitor-exit p0

    .line 247
    return-object v2

    .line 238
    .end local v2    # "retval":Lgov2/nist/javax2/sip/stack/TLSMessageChannel;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->messageChannels:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 244
    .restart local v2    # "retval":Lgov2/nist/javax2/sip/stack/TLSMessageChannel;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

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

    .line 245
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

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

    .line 247
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "retval":Lgov2/nist/javax2/sip/stack/TLSMessageChannel;
    :catch_0
    move-exception v0

    .line 250
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

    const-string/jumbo v1, "TLS"

    .line 224
    invoke-static {p1, v1}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getKey(Lgov2/nist/core/HostPort;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->messageChannels:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 229
    return-object v2

    .line 226
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->messageChannels:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;

    return-object v1
.end method

.method public getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 113
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->isRunning:Z

    if-nez v7, :cond_2

    .line 167
    :cond_1
    :goto_1
    return-void

    .line 115
    :cond_2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 121
    :cond_3
    :try_start_1
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget v7, v7, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->maxConnections:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_5

    .line 130
    :cond_4
    :goto_2
    iget v7, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->nConnections:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->nConnections:I

    .line 131
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :try_start_2
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    invoke-virtual {v7}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v6

    .line 135
    .local v6, "newsock":Ljava/net/Socket;
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-nez v7, :cond_6

    .line 141
    :goto_3
    new-instance v5, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;

    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-direct {v5, v6, v7, p0}, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;-><init>(Ljava/net/Socket;Lgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;)V

    .line 142
    .local v5, "newChannel":Lgov2/nist/javax2/sip/stack/TLSMessageChannel;
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->incomingMessageChannels:Ljava/util/Map;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 165
    .end local v5    # "newChannel":Lgov2/nist/javax2/sip/stack/TLSMessageChannel;
    .end local v6    # "newsock":Ljava/net/Socket;
    :catch_0
    move-exception v3

    .line 144
    .local v3, "ex":Ljava/net/SocketException;
    iget-boolean v7, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->isRunning:Z

    if-eqz v7, :cond_0

    .line 145
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-nez v7, :cond_7

    .line 148
    :goto_4
    iput-boolean v9, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->isRunning:Z

    goto :goto_1

    .line 121
    .end local v3    # "ex":Ljava/net/SocketException;
    :cond_5
    :try_start_3
    iget v7, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->nConnections:I

    iget-object v8, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget v8, v8, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->maxConnections:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lt v7, v8, :cond_4

    .line 123
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 125
    iget-boolean v7, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->isRunning:Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v7, :cond_3

    :try_start_5
    monitor-exit p0

    return-void

    .line 128
    :catch_1
    move-exception v2

    .line 126
    .local v2, "ex":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 131
    .end local v2    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v7
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 165
    :catch_2
    move-exception v4

    .line 152
    .local v4, "ex":Ljavax/net/ssl/SSLException;
    iput-boolean v9, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->isRunning:Z

    .line 153
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 154
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v7

    const-string/jumbo v8, "Fatal - SSSLException occured while Accepting connection"

    invoke-interface {v7, v8, v4}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 136
    .end local v4    # "ex":Ljavax/net/ssl/SSLException;
    .restart local v6    # "newsock":Ljava/net/Socket;
    :cond_6
    :try_start_7
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v7

    const-string/jumbo v8, "Accepting new connection!"

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 156
    .end local v6    # "newsock":Ljava/net/Socket;
    :catch_3
    move-exception v0

    .line 159
    .local v0, "ex":Ljava/io/IOException;
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 160
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v7

    const-string/jumbo v8, "Problem Accepting Connection"

    invoke-interface {v7, v8, v0}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 146
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v3    # "ex":Ljava/net/SocketException;
    :cond_7
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v7

    const-string/jumbo v8, "Fatal - SocketException occured while Accepting connection"

    invoke-interface {v7, v8, v3}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4

    .line 161
    .end local v3    # "ex":Ljava/net/SocketException;
    :catch_4
    move-exception v1

    .line 163
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 164
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v7

    const-string/jumbo v8, "Unexpected Exception!"

    invoke-interface {v7, v8, v1}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method public start()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 88
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v1, "thread":Ljava/lang/Thread;
    const-string/jumbo v2, "TLSMessageProcessorThread"

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/16 v2, 0xa

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 92
    invoke-virtual {v1, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 94
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getNetworkLayer()Lgov2/nist/core/net/NetworkLayer;

    move-result-object v2

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->getPort()I

    move-result v3

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-interface {v2, v3, v6, v4}, Lgov2/nist/core/net/NetworkLayer;->createSSLServerSocket(IILjava/net/InetAddress;)Ljavax/net/ssl/SSLServerSocket;

    move-result-object v2

    iput-object v2, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    .line 96
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    check-cast v2, Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v2, v6}, Ljavax/net/ssl/SSLServerSocket;->setNeedClientAuth(Z)V

    .line 97
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    check-cast v2, Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v2, v6}, Ljavax/net/ssl/SSLServerSocket;->setUseClientMode(Z)V

    .line 98
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    check-cast v2, Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v2, v5}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    .line 99
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    check-cast v2, Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/SipStackImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "enabledCiphers":[Ljava/lang/String;
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    check-cast v2, Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v2, v0}, Ljavax/net/ssl/SSLServerSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    check-cast v2, Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v2, v5}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    .line 103
    iput-boolean v5, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->isRunning:Z

    .line 104
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 106
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 182
    :try_start_0
    iget-boolean v5, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->isRunning:Z

    if-eqz v5, :cond_0

    .line 184
    const/4 v5, 0x0

    iput-boolean v5, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->isRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :try_start_1
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :goto_0
    :try_start_2
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->messageChannels:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 192
    .local v1, "en":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 196
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;->incomingMessageChannels:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 197
    .local v2, "incomingMCIterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 203
    return-void

    .end local v1    # "en":Ljava/util/Collection;
    .end local v2    # "incomingMCIterator":Ljava/util/Iterator;
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    .line 182
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 188
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

    .line 193
    .restart local v1    # "en":Ljava/util/Collection;
    .restart local v3    # "it":Ljava/util/Iterator;
    :cond_1
    :try_start_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;

    .line 194
    .local v4, "next":Lgov2/nist/javax2/sip/stack/TLSMessageChannel;
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->close()V

    goto :goto_1

    .line 198
    .end local v4    # "next":Lgov2/nist/javax2/sip/stack/TLSMessageChannel;
    .restart local v2    # "incomingMCIterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;

    .line 199
    .restart local v4    # "next":Lgov2/nist/javax2/sip/stack/TLSMessageChannel;
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method
