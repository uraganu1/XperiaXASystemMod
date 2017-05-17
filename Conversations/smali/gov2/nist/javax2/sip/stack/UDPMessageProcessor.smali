.class public Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;
.super Lgov2/nist/javax2/sip/stack/MessageProcessor;
.source "UDPMessageProcessor.java"


# instance fields
.field protected isRunning:Z

.field protected messageChannels:Ljava/util/LinkedList;

.field protected messageQueue:Ljava/util/LinkedList;

.field private port:I

.field protected sock:Ljava/net/DatagramSocket;


# direct methods
.method protected constructor <init>(Ljava/net/InetAddress;Lgov2/nist/javax2/sip/stack/SIPTransactionStack;I)V
    .locals 4
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "sipStack"    # Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "udp"

    .line 93
    invoke-direct {p0, p1, p3, v1, p2}, Lgov2/nist/javax2/sip/stack/MessageProcessor;-><init>(Ljava/net/InetAddress;ILjava/lang/String;Lgov2/nist/javax2/sip/stack/SIPTransactionStack;)V

    .line 95
    iput-object p2, p0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    .line 97
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    .line 99
    iput p3, p0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->port:I

    .line 101
    :try_start_0
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getNetworkLayer()Lgov2/nist/core/net/NetworkLayer;

    move-result-object v1

    invoke-interface {v1, p3, p1}, Lgov2/nist/core/net/NetworkLayer;->createDatagramSocket(ILjava/net/InetAddress;)Ljava/net/DatagramSocket;

    move-result-object v1

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    .line 103
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getReceiveUdpBufferSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    .line 104
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getSendUdpBufferSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setSendBufferSize(I)V

    .line 110
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov2/nist/core/ThreadAuditor;

    move-result-object v1

    invoke-virtual {v1}, Lgov2/nist/core/ThreadAuditor;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    :goto_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0.0.0.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-super {p0, v1}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->setIpAddress(Ljava/net/InetAddress;)V

    .line 125
    :goto_1
    return-void

    .line 111
    :cond_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov2/nist/core/ThreadAuditor;

    move-result-object v2

    invoke-virtual {v2}, Lgov2/nist/core/ThreadAuditor;->getPingIntervalInMillisecs()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 123
    .local v0, "ex":Ljava/net/SocketException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    .end local v0    # "ex":Ljava/net/SocketException;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "::0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1
.end method


# virtual methods
.method public createMessageChannel(Lgov2/nist/core/HostPort;)Lgov2/nist/javax2/sip/stack/MessageChannel;
    .locals 4
    .param p1, "targetHostPort"    # Lgov2/nist/core/HostPort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 299
    new-instance v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;

    invoke-virtual {p1}, Lgov2/nist/core/HostPort;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Lgov2/nist/core/HostPort;->getPort()I

    move-result v2

    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-direct {v0, v1, v2, v3, p0}, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;-><init>(Ljava/net/InetAddress;ILgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;)V

    return-object v0
.end method

.method public createMessageChannel(Ljava/net/InetAddress;I)Lgov2/nist/javax2/sip/stack/MessageChannel;
    .locals 2
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;

    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-direct {v0, p1, p2, v1, p0}, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;-><init>(Ljava/net/InetAddress;ILgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;)V

    return-object v0
.end method

.method public getCurrentMsgChannel(Lgov2/nist/core/HostPort;)Lgov2/nist/javax2/sip/stack/MessageChannel;
    .locals 1
    .param p1, "targetHostPort"    # Lgov2/nist/core/HostPort;

    .prologue
    const/4 v0, 0x0

    .line 344
    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->port:I

    return v0
.end method

.method public getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "udp"

    .line 283
    return-object v0
.end method

.method public run()V
    .locals 20

    .prologue
    .line 156
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->messageChannels:Ljava/util/LinkedList;

    .line 159
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget v14, v14, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->threadPoolSize:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_2

    .line 168
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov2/nist/core/ThreadAuditor;

    move-result-object v14

    invoke-virtual {v14}, Lgov2/nist/core/ThreadAuditor;->addCurrentThread()Lgov2/nist/core/ThreadAuditor$ThreadHandle;

    move-result-object v12

    .line 171
    .local v12, "threadHandle":Lgov2/nist/core/ThreadAuditor$ThreadHandle;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->isRunning:Z

    if-nez v14, :cond_3

    .line 262
    return-void

    .end local v12    # "threadHandle":Lgov2/nist/core/ThreadAuditor$ThreadHandle;
    :cond_2
    const/4 v9, 0x0

    .line 160
    .local v9, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget v14, v14, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->threadPoolSize:I

    if-ge v9, v14, :cond_0

    .line 161
    new-instance v3, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-object/from16 v0, p0

    invoke-direct {v3, v14, v0}, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;)V

    .line 162
    .local v3, "channel":Lgov2/nist/javax2/sip/stack/UDPMessageChannel;
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->messageChannels:Ljava/util/LinkedList;

    invoke-virtual {v14, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 175
    .end local v3    # "channel":Lgov2/nist/javax2/sip/stack/UDPMessageChannel;
    .end local v9    # "i":I
    .restart local v12    # "threadHandle":Lgov2/nist/core/ThreadAuditor$ThreadHandle;
    :cond_3
    :try_start_0
    invoke-virtual {v12}, Lgov2/nist/core/ThreadAuditor$ThreadHandle;->ping()V

    .line 177
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v14}, Ljava/net/DatagramSocket;->getReceiveBufferSize()I

    move-result v2

    .line 178
    .local v2, "bufsize":I
    new-array v10, v2, [B

    .line 179
    .local v10, "message":[B
    new-instance v11, Ljava/net/DatagramPacket;

    invoke-direct {v11, v10, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 180
    .local v11, "packet":Ljava/net/DatagramPacket;
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v14, v11}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-boolean v14, v14, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackDoesCongestionControl:Z

    if-nez v14, :cond_5

    .line 221
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget v14, v14, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->threadPoolSize:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_8

    .line 234
    new-instance v14, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;

    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-object/from16 v0, p0

    invoke-direct {v14, v15, v0, v11}, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;Ljava/net/DatagramPacket;)V

    goto :goto_0

    .line 260
    .end local v2    # "bufsize":I
    .end local v10    # "message":[B
    .end local v11    # "packet":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v8

    .line 236
    .local v8, "ex":Ljava/net/SocketTimeoutException;
    goto :goto_0

    .line 191
    .end local v8    # "ex":Ljava/net/SocketTimeoutException;
    .restart local v2    # "bufsize":I
    .restart local v10    # "message":[B
    .restart local v11    # "packet":Ljava/net/DatagramPacket;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v14

    const/16 v15, 0x1388

    if-ge v14, v15, :cond_6

    .line 199
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v14

    const/16 v15, 0x9c4

    if-le v14, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v14

    const/16 v15, 0x1388

    if-ge v14, v15, :cond_4

    .line 203
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v14

    add-int/lit16 v14, v14, -0x9c4

    int-to-float v14, v14

    const v15, 0x451c4000    # 2500.0f

    div-float v13, v14, v15

    .line 205
    .local v13, "threshold":F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    float-to-double v0, v13

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v16, v18, v16

    cmpl-double v14, v14, v16

    if-lez v14, :cond_7

    const/4 v4, 0x1

    .line 206
    .local v4, "decision":Z
    :goto_2
    if-eqz v4, :cond_4

    .line 207
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 208
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Dropping message with probability  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    float-to-double v0, v13

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v16, v18, v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_0

    .line 260
    .end local v2    # "bufsize":I
    .end local v4    # "decision":Z
    .end local v10    # "message":[B
    .end local v11    # "packet":Ljava/net/DatagramPacket;
    .end local v13    # "threshold":F
    :catch_1
    move-exception v7

    .line 240
    .local v7, "ex":Ljava/net/SocketException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-nez v14, :cond_9

    .line 242
    :goto_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->isRunning:Z

    .line 245
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    monitor-enter v15

    .line 246
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 247
    monitor-exit v15

    goto/16 :goto_0

    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14

    .line 192
    .end local v7    # "ex":Ljava/net/SocketException;
    .restart local v2    # "bufsize":I
    .restart local v10    # "message":[B
    .restart local v11    # "packet":Ljava/net/DatagramPacket;
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 193
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    const-string/jumbo v15, "Dropping message -- queue length exceeded"

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 260
    .end local v2    # "bufsize":I
    .end local v10    # "message":[B
    .end local v11    # "packet":Ljava/net/DatagramPacket;
    :catch_2
    move-exception v5

    .line 249
    .local v5, "ex":Ljava/io/IOException;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->isRunning:Z

    .line 250
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 251
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 252
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v14

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    const-string/jumbo v15, "UDPMessageProcessor: Got an IO Exception"

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v2    # "bufsize":I
    .restart local v10    # "message":[B
    .restart local v11    # "packet":Ljava/net/DatagramPacket;
    .restart local v13    # "threshold":F
    :cond_7
    const/4 v4, 0x0

    .line 205
    goto/16 :goto_2

    .line 228
    .end local v13    # "threshold":F
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    monitor-enter v15
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 230
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v14, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 231
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/lang/Object;->notify()V

    .line 232
    monitor-exit v15

    goto/16 :goto_0

    :catchall_1
    move-exception v14

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v14
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 260
    .end local v2    # "bufsize":I
    .end local v10    # "message":[B
    .end local v11    # "packet":Ljava/net/DatagramPacket;
    :catch_3
    move-exception v6

    .line 255
    .local v6, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-nez v14, :cond_a

    .line 258
    :goto_4
    invoke-static {v6}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 259
    return-void

    .line 241
    .end local v6    # "ex":Ljava/lang/Exception;
    .restart local v7    # "ex":Ljava/net/SocketException;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v14

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    const-string/jumbo v15, "UDPMessageProcessor: Stopping"

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 256
    .end local v7    # "ex":Ljava/net/SocketException;
    .restart local v6    # "ex":Ljava/lang/Exception;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v14

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    const-string/jumbo v15, "UDPMessageProcessor: Unexpected Exception - quitting"

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 141
    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->isRunning:Z

    .line 142
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 143
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    const-string/jumbo v1, "UDPMessageProcessorThread"

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 149
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 269
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 270
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->isRunning:Z

    .line 271
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 272
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 274
    monitor-exit v1

    .line 275
    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
