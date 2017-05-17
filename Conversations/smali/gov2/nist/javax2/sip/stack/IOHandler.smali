.class Lgov2/nist/javax2/sip/stack/IOHandler;
.super Ljava/lang/Object;
.source "IOHandler.java"


# static fields
.field private static TCP:Ljava/lang/String;

.field private static TLS:Ljava/lang/String;


# instance fields
.field private sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

.field private socketTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "tcp"

    .line 76
    sput-object v0, Lgov2/nist/javax2/sip/stack/IOHandler;->TCP:Ljava/lang/String;

    const-string/jumbo v0, "tls"

    .line 79
    sput-object v0, Lgov2/nist/javax2/sip/stack/IOHandler;->TLS:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;)V
    .locals 1
    .param p1, "sipStack"    # Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    check-cast p1, Lgov2/nist/javax2/sip/SipStackImpl;

    .end local p1    # "sipStack":Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/IOHandler;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    return-void
.end method

.method private getIpAddressFromHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    const-string/jumbo v2, "["

    .line 431
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 432
    .local v0, "index0":I
    if-ne v0, v3, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string/jumbo v2, "]"

    .line 433
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 434
    .local v1, "index1":I
    if-eq v1, v3, :cond_0

    .line 435
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected static makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;
    .locals 2
    .param p0, "addr"    # Ljava/net/InetAddress;
    .param p1, "port"    # I

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

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

    return-object v0
.end method

.method private updateContactHeaderPort(ILgov2/nist/javax2/sip/message/SIPMessage;)V
    .locals 3
    .param p1, "localPort"    # I
    .param p2, "message"    # Lgov2/nist/javax2/sip/message/SIPMessage;

    .prologue
    .line 413
    if-nez p2, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPMessage;->getContactHeader()Lgov2/nist/javax2/sip/header/Contact;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 414
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPMessage;->getContactHeader()Lgov2/nist/javax2/sip/header/Contact;

    move-result-object v1

    .line 415
    .local v1, "contactHeader":Ljavax2/sip/header/ContactHeader;
    invoke-interface {v1}, Ljavax2/sip/header/ContactHeader;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v0

    .line 416
    .local v0, "contactAddress":Ljavax2/sip/address/Address;
    if-eqz v0, :cond_0

    .line 417
    invoke-interface {v0, p1}, Ljavax2/sip/address/Address;->setPort(I)V

    goto :goto_0
.end method

.method private updateViaHeaderPort(ILjava/net/InetAddress;Lgov2/nist/javax2/sip/message/SIPMessage;)V
    .locals 7
    .param p1, "localport"    # I
    .param p2, "localAddress"    # Ljava/net/InetAddress;
    .param p3, "message"    # Lgov2/nist/javax2/sip/message/SIPMessage;

    .prologue
    .line 380
    if-nez p3, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-virtual {p3}, Lgov2/nist/javax2/sip/message/SIPMessage;->getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 381
    invoke-virtual {p3}, Lgov2/nist/javax2/sip/message/SIPMessage;->getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;

    move-result-object v4

    .line 382
    .local v4, "viaList":Lgov2/nist/javax2/sip/header/ViaList;
    if-eqz v4, :cond_0

    .line 383
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/ViaList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/header/Via;

    .line 385
    .local v3, "via":Lgov2/nist/javax2/sip/header/Via;
    if-eqz v3, :cond_0

    :try_start_0
    const-string/jumbo v1, ""

    .line 387
    .local v1, "hostAddress":Ljava/lang/String;
    if-nez p2, :cond_2

    .line 390
    :goto_1
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/Via;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/Via;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/Via;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lgov2/nist/javax2/sip/stack/IOHandler;->getIpAddressFromHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 392
    invoke-virtual {v3, p1}, Lgov2/nist/javax2/sip/header/Via;->setPort(I)V
    :try_end_0
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    .end local v1    # "hostAddress":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljavax2/sip/InvalidArgumentException;
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/IOHandler;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 397
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/IOHandler;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    invoke-virtual {v0}, Ljavax2/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 388
    .end local v0    # "e":Ljavax2/sip/InvalidArgumentException;
    .restart local v1    # "hostAddress":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_1
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method private writeChunks(Ljava/io/OutputStream;[BIZ)V
    .locals 4
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "bytes"    # [B
    .param p3, "length"    # I
    .param p4, "smallChunks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    monitor-enter p1

    const/16 v1, 0x2000

    .line 126
    .local v1, "chunksize":I
    if-nez p4, :cond_0

    :goto_0
    const/4 v2, 0x0

    .line 129
    .local v2, "p":I
    :goto_1
    if-lt v2, p3, :cond_1

    .line 133
    :try_start_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 135
    return-void

    .end local v2    # "p":I
    :cond_0
    const/16 v1, 0x200

    .line 127
    goto :goto_0

    .line 130
    .restart local v2    # "p":I
    :cond_1
    add-int v3, v2, v1

    if-lt v3, p3, :cond_2

    sub-int v0, p3, v2

    .line 131
    .local v0, "chunk":I
    :goto_2
    :try_start_1
    invoke-virtual {p1, p2, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 129
    add-int/2addr v2, v1

    goto :goto_1

    .end local v0    # "chunk":I
    :cond_2
    move v0, v1

    .line 130
    goto :goto_2

    .line 133
    :catchall_0
    move-exception v3

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public closeAll()V
    .locals 3

    .prologue
    .line 445
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "values":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/Socket;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 453
    return-void

    .line 446
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 448
    .local v0, "s":Ljava/net/Socket;
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected getSocket(Ljava/lang/String;)Ljava/net/Socket;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    return-object v0
.end method

.method protected putSocket(Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sock"    # Ljava/net/Socket;

    .prologue
    .line 97
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method protected removeSocket(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;Lgov2/nist/javax2/sip/message/SIPMessage;ZLgov2/nist/javax2/sip/stack/MessageChannel;)Ljava/net/Socket;
    .locals 18
    .param p1, "senderAddress"    # Ljava/net/InetAddress;
    .param p2, "receiverAddress"    # Ljava/net/InetAddress;
    .param p3, "contactPort"    # I
    .param p4, "transport"    # Ljava/lang/String;
    .param p5, "message"    # Lgov2/nist/javax2/sip/message/SIPMessage;
    .param p6, "retry"    # Z
    .param p7, "messageChannel"    # Lgov2/nist/javax2/sip/stack/MessageChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v16, 0x0

    .line 186
    .local v16, "retry_count":I
    if-nez p6, :cond_1

    const/4 v14, 0x1

    .line 188
    .local v14, "max_retry":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/IOHandler;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 193
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/IOHandler;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 196
    :cond_0
    :goto_2
    sget-object v4, Lgov2/nist/javax2/sip/stack/IOHandler;->TCP:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    .line 275
    sget-object v4, Lgov2/nist/javax2/sip/stack/IOHandler;->TLS:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_d

    .line 353
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/IOHandler;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->getNetworkLayer()Lgov2/nist/core/net/NetworkLayer;

    move-result-object v4

    invoke-interface {v4}, Lgov2/nist/core/net/NetworkLayer;->createDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v9

    .line 354
    .local v9, "datagramSock":Ljava/net/DatagramSocket;
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v9, v0, v1}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 357
    invoke-virtual {v9}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v4

    invoke-virtual {v9}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v4, v5, v1}, Lgov2/nist/javax2/sip/stack/IOHandler;->updateViaHeaderPort(ILjava/net/InetAddress;Lgov2/nist/javax2/sip/message/SIPMessage;)V

    .line 360
    invoke-virtual {v9}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v4, v1}, Lgov2/nist/javax2/sip/stack/IOHandler;->updateContactHeaderPort(ILgov2/nist/javax2/sip/message/SIPMessage;)V

    .line 362
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 364
    .local v3, "bytes":[B
    new-instance v2, Ljava/net/DatagramPacket;

    const/4 v4, 0x0

    array-length v5, v3

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 366
    .local v2, "dgPacket":Ljava/net/DatagramPacket;
    invoke-virtual {v9, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 367
    invoke-virtual {v9}, Ljava/net/DatagramSocket;->close()V

    const/4 v4, 0x0

    .line 368
    return-object v4

    .end local v2    # "dgPacket":Ljava/net/DatagramPacket;
    .end local v3    # "bytes":[B
    .end local v9    # "datagramSock":Ljava/net/DatagramSocket;
    .end local v14    # "max_retry":I
    :cond_1
    const/4 v14, 0x2

    .line 186
    goto :goto_0

    .line 189
    .restart local v14    # "max_retry":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/IOHandler;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendBytes "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " inAddr "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " port = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 193
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/IOHandler;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->isLogStackTraceOnMessageSend()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/IOHandler;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    const/16 v5, 0x10

    invoke-interface {v4, v5}, Lgov2/nist/core/StackLogger;->logStackTrace(I)V

    goto/16 :goto_2

    .line 197
    :cond_4
    invoke-static/range {p2 .. p3}, Lgov2/nist/javax2/sip/stack/IOHandler;->makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v12

    .line 201
    .local v12, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgov2/nist/javax2/sip/stack/IOHandler;->getSocket(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v8

    .line 203
    :goto_3
    move/from16 v0, v16

    if-lt v0, v14, :cond_5

    .line 271
    :goto_4
    return-object v8

    .line 204
    :cond_5
    if-eqz v8, :cond_7

    .line 238
    :try_start_0
    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    .line 243
    .local v15, "outputStream":Ljava/io/OutputStream;
    const/4 v10, 0x0

    .line 244
    .local v10, "doIssue34727workarround":Z
    invoke-virtual {v8}, Ljava/net/Socket;->getLocalPort()I

    move-result v4

    const/16 v5, 0x13c4

    if-ne v4, v5, :cond_b

    .line 245
    :cond_6
    const/4 v10, 0x1

    .line 247
    :goto_5
    invoke-virtual {v8}, Ljava/net/Socket;->getLocalPort()I

    move-result v4

    invoke-virtual {v8}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v4, v5, v1}, Lgov2/nist/javax2/sip/stack/IOHandler;->updateViaHeaderPort(ILjava/net/InetAddress;Lgov2/nist/javax2/sip/message/SIPMessage;)V

    .line 250
    invoke-virtual {v8}, Ljava/net/Socket;->getLocalPort()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v4, v1}, Lgov2/nist/javax2/sip/stack/IOHandler;->updateContactHeaderPort(ILgov2/nist/javax2/sip/message/SIPMessage;)V

    .line 252
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 253
    .restart local v3    # "bytes":[B
    array-length v4, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3, v4, v10}, Lgov2/nist/javax2/sip/stack/IOHandler;->writeChunks(Ljava/io/OutputStream;[BIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 254
    .end local v3    # "bytes":[B
    .end local v10    # "doIssue34727workarround":Z
    .end local v15    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v11

    .line 256
    .local v11, "ex":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/IOHandler;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-nez v4, :cond_c

    .line 261
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgov2/nist/javax2/sip/stack/IOHandler;->removeSocket(Ljava/lang/String;)V

    .line 263
    :try_start_1
    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_7
    const/4 v8, 0x0

    .line 267
    .local v8, "clientSock":Ljava/net/Socket;
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 205
    .end local v8    # "clientSock":Ljava/net/Socket;
    .end local v11    # "ex":Ljava/io/IOException;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/IOHandler;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-nez v4, :cond_9

    .line 216
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/IOHandler;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->getNetworkLayer()Lgov2/nist/core/net/NetworkLayer;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v4, v0, v1}, Lgov2/nist/core/net/NetworkLayer;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v8

    .line 218
    .local v8, "clientSock":Ljava/net/Socket;
    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    .line 223
    .restart local v15    # "outputStream":Ljava/io/OutputStream;
    const/4 v10, 0x0

    .line 224
    .restart local v10    # "doIssue34727workarround":Z
    invoke-virtual {v8}, Ljava/net/Socket;->getLocalPort()I

    move-result v4

    const/16 v5, 0x13c4

    if-ne v4, v5, :cond_a

    .line 225
    :cond_8
    const/4 v10, 0x1

    .line 227
    :goto_9
    invoke-virtual {v8}, Ljava/net/Socket;->getLocalPort()I

    move-result v4

    invoke-virtual {v8}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v4, v5, v1}, Lgov2/nist/javax2/sip/stack/IOHandler;->updateViaHeaderPort(ILjava/net/InetAddress;Lgov2/nist/javax2/sip/message/SIPMessage;)V

    .line 230
    invoke-virtual {v8}, Ljava/net/Socket;->getLocalPort()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v4, v1}, Lgov2/nist/javax2/sip/stack/IOHandler;->updateContactHeaderPort(ILgov2/nist/javax2/sip/message/SIPMessage;)V

    .line 232
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 233
    .restart local v3    # "bytes":[B
    array-length v4, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3, v4, v10}, Lgov2/nist/javax2/sip/stack/IOHandler;->writeChunks(Ljava/io/OutputStream;[BIZ)V

    .line 234
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, Lgov2/nist/javax2/sip/stack/IOHandler;->putSocket(Ljava/lang/String;Ljava/net/Socket;)V

    goto/16 :goto_4

    .line 206
    .end local v3    # "bytes":[B
    .end local v8    # "clientSock":Ljava/net/Socket;
    .end local v10    # "doIssue34727workarround":Z
    .end local v15    # "outputStream":Ljava/io/OutputStream;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/IOHandler;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "inaddr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/IOHandler;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "port = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_8

    .restart local v8    # "clientSock":Ljava/net/Socket;
    .restart local v10    # "doIssue34727workarround":Z
    .restart local v15    # "outputStream":Ljava/io/OutputStream;
    :cond_a
    const/16 v4, 0x13c4

    .line 224
    move/from16 v0, p3

    if-eq v0, v4, :cond_8

    goto :goto_9

    .end local v8    # "clientSock":Ljava/net/Socket;
    :cond_b
    const/16 v4, 0x13c4

    .line 244
    move/from16 v0, p3

    if-eq v0, v4, :cond_6

    goto/16 :goto_5

    .line 257
    .end local v10    # "doIssue34727workarround":Z
    .end local v15    # "outputStream":Ljava/io/OutputStream;
    .restart local v11    # "ex":Ljava/io/IOException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/IOHandler;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IOException occured retryCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 265
    :catch_1
    move-exception v4

    goto/16 :goto_7

    .line 276
    .end local v11    # "ex":Ljava/io/IOException;
    .end local v12    # "key":Ljava/lang/String;
    :cond_d
    invoke-static/range {p2 .. p3}, Lgov2/nist/javax2/sip/stack/IOHandler;->makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v12

    .line 277
    .restart local v12    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgov2/nist/javax2/sip/stack/IOHandler;->getSocket(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v8

    .line 280
    :goto_a
    move/from16 v0, v16

    if-lt v0, v14, :cond_e

    .line 349
    .end local p7    # "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    :goto_b
    return-object v8

    .line 281
    .restart local p7    # "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    :cond_e
    if-eqz v8, :cond_10

    .line 321
    const/4 v10, 0x0

    .line 322
    .restart local v10    # "doIssue34727workarround":Z
    :try_start_2
    invoke-virtual {v8}, Ljava/net/Socket;->getLocalPort()I

    move-result v4

    const/16 v5, 0x13c4

    if-ne v4, v5, :cond_14

    .line 323
    :cond_f
    const/4 v10, 0x1

    .line 324
    :goto_c
    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    .line 326
    .restart local v15    # "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v8}, Ljava/net/Socket;->getLocalPort()I

    move-result v4

    invoke-virtual {v8}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v4, v5, v1}, Lgov2/nist/javax2/sip/stack/IOHandler;->updateViaHeaderPort(ILjava/net/InetAddress;Lgov2/nist/javax2/sip/message/SIPMessage;)V

    .line 329
    invoke-virtual {v8}, Ljava/net/Socket;->getLocalPort()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v4, v1}, Lgov2/nist/javax2/sip/stack/IOHandler;->updateContactHeaderPort(ILgov2/nist/javax2/sip/message/SIPMessage;)V

    .line 331
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 332
    .restart local v3    # "bytes":[B
    array-length v4, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3, v4, v10}, Lgov2/nist/javax2/sip/stack/IOHandler;->writeChunks(Ljava/io/OutputStream;[BIZ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_b

    .line 333
    .end local v3    # "bytes":[B
    .end local v15    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v11

    .line 335
    .restart local v11    # "ex":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/IOHandler;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-nez v4, :cond_15

    .line 339
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgov2/nist/javax2/sip/stack/IOHandler;->removeSocket(Ljava/lang/String;)V

    .line 341
    :try_start_3
    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_e
    const/4 v8, 0x0

    .line 345
    .local v8, "clientSock":Ljava/net/Socket;
    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    .line 282
    .end local v8    # "clientSock":Ljava/net/Socket;
    .end local v10    # "doIssue34727workarround":Z
    .end local v11    # "ex":Ljava/io/IOException;
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/IOHandler;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-nez v4, :cond_12

    .line 287
    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/IOHandler;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->getNetworkLayer()Lgov2/nist/core/net/NetworkLayer;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v4, v0, v1}, Lgov2/nist/core/net/NetworkLayer;->createSSLSocket(Ljava/net/InetAddress;I)Ljavax/net/ssl/SSLSocket;

    move-result-object v8

    .local v8, "clientSock":Ljava/net/Socket;
    move-object/from16 v17, v8

    .line 289
    check-cast v17, Ljavax/net/ssl/SSLSocket;

    .line 290
    .local v17, "sslsock":Ljavax/net/ssl/SSLSocket;
    new-instance v13, Lgov2/nist/javax2/sip/stack/HandshakeCompletedListenerImpl;

    move-object/from16 v4, p7

    check-cast v4, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;

    invoke-direct {v13, v4}, Lgov2/nist/javax2/sip/stack/HandshakeCompletedListenerImpl;-><init>(Lgov2/nist/javax2/sip/stack/TLSMessageChannel;)V

    .line 292
    .local v13, "listner":Ljavax/net/ssl/HandshakeCompletedListener;
    check-cast p7, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;

    .end local p7    # "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->setHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 293
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/IOHandler;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {v17 .. v17}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 301
    const/4 v10, 0x0

    .line 302
    .restart local v10    # "doIssue34727workarround":Z
    invoke-virtual {v8}, Ljava/net/Socket;->getLocalPort()I

    move-result v4

    const/16 v5, 0x13c4

    if-ne v4, v5, :cond_13

    .line 303
    :cond_11
    const/4 v10, 0x1

    .line 304
    :goto_10
    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    .line 306
    .restart local v15    # "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v8}, Ljava/net/Socket;->getLocalPort()I

    move-result v4

    invoke-virtual {v8}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v4, v5, v1}, Lgov2/nist/javax2/sip/stack/IOHandler;->updateViaHeaderPort(ILjava/net/InetAddress;Lgov2/nist/javax2/sip/message/SIPMessage;)V

    .line 309
    invoke-virtual {v8}, Ljava/net/Socket;->getLocalPort()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v4, v1}, Lgov2/nist/javax2/sip/stack/IOHandler;->updateContactHeaderPort(ILgov2/nist/javax2/sip/message/SIPMessage;)V

    .line 311
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 312
    .restart local v3    # "bytes":[B
    array-length v4, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3, v4, v10}, Lgov2/nist/javax2/sip/stack/IOHandler;->writeChunks(Ljava/io/OutputStream;[BIZ)V

    .line 313
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, Lgov2/nist/javax2/sip/stack/IOHandler;->putSocket(Ljava/lang/String;Ljava/net/Socket;)V

    goto/16 :goto_b

    .line 283
    .end local v3    # "bytes":[B
    .end local v8    # "clientSock":Ljava/net/Socket;
    .end local v10    # "doIssue34727workarround":Z
    .end local v13    # "listner":Ljavax/net/ssl/HandshakeCompletedListener;
    .end local v15    # "outputStream":Ljava/io/OutputStream;
    .end local v17    # "sslsock":Ljavax/net/ssl/SSLSocket;
    .restart local p7    # "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/IOHandler;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "inaddr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/IOHandler;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "port = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_f

    .end local p7    # "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    .restart local v8    # "clientSock":Ljava/net/Socket;
    .restart local v10    # "doIssue34727workarround":Z
    .restart local v13    # "listner":Ljavax/net/ssl/HandshakeCompletedListener;
    .restart local v17    # "sslsock":Ljavax/net/ssl/SSLSocket;
    :cond_13
    const/16 v4, 0x13c4

    .line 302
    move/from16 v0, p3

    if-eq v0, v4, :cond_11

    goto :goto_10

    .end local v8    # "clientSock":Ljava/net/Socket;
    .end local v13    # "listner":Ljavax/net/ssl/HandshakeCompletedListener;
    .end local v17    # "sslsock":Ljavax/net/ssl/SSLSocket;
    .restart local p7    # "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    :cond_14
    const/16 v4, 0x13c4

    .line 322
    move/from16 v0, p3

    if-eq v0, v4, :cond_f

    goto/16 :goto_c

    .line 336
    .restart local v11    # "ex":Ljava/io/IOException;
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/IOHandler;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    invoke-interface {v4, v11}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 343
    :catch_3
    move-exception v4

    goto/16 :goto_e
.end method
