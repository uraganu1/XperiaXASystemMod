.class public Lgov2/nist/javax2/sip/SipStackImpl;
.super Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
.source "SipStackImpl.java"

# interfaces
.implements Ljavax2/sip/SipStack;


# static fields
.field public static final MAX_DATAGRAM_SIZE:Ljava/lang/Integer;


# instance fields
.field private cipherSuites:[Ljava/lang/String;

.field deliverTerminatedEventForAck:Z

.field deliverUnsolicitedNotify:Z

.field private enabledProtocols:[Ljava/lang/String;

.field private eventScanner:Lgov2/nist/javax2/sip/EventScanner;

.field private listeningPoints:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lgov2/nist/javax2/sip/ListeningPointImpl;",
            ">;"
        }
    .end annotation
.end field

.field reEntrantListener:Z

.field sipListener:Ljavax2/sip/SipListener;

.field private sipProviders:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lgov2/nist/javax2/sip/SipProviderImpl;",
            ">;"
        }
    .end annotation
.end field

.field private stackSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x2000

    .line 396
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lgov2/nist/javax2/sip/SipStackImpl;->MAX_DATAGRAM_SIZE:Ljava/lang/Integer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 441
    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;-><init>()V

    .line 406
    iput-boolean v3, p0, Lgov2/nist/javax2/sip/SipStackImpl;->deliverTerminatedEventForAck:Z

    .line 410
    iput-boolean v3, p0, Lgov2/nist/javax2/sip/SipStackImpl;->deliverUnsolicitedNotify:Z

    .line 413
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lgov2/nist/javax2/sip/SipStackImpl;->stackSemaphore:Ljava/util/concurrent/Semaphore;

    .line 418
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TLS_RSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v1, v3

    const-string/jumbo v2, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v1, v4

    iput-object v1, p0, Lgov2/nist/javax2/sip/SipStackImpl;->cipherSuites:[Ljava/lang/String;

    const/4 v1, 0x3

    .line 432
    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "SSLv3"

    aput-object v2, v1, v3

    const-string/jumbo v2, "SSLv2Hello"

    aput-object v2, v1, v4

    const-string/jumbo v2, "TLSv1"

    aput-object v2, v1, v5

    iput-object v1, p0, Lgov2/nist/javax2/sip/SipStackImpl;->enabledProtocols:[Ljava/lang/String;

    .line 442
    new-instance v0, Lgov2/nist/javax2/sip/NistSipMessageFactoryImpl;

    invoke-direct {v0, p0}, Lgov2/nist/javax2/sip/NistSipMessageFactoryImpl;-><init>(Lgov2/nist/javax2/sip/SipStackImpl;)V

    .line 443
    .local v0, "msgFactory":Lgov2/nist/javax2/sip/NistSipMessageFactoryImpl;
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->setMessageFactory(Lgov2/nist/javax2/sip/stack/StackMessageFactory;)V

    .line 444
    new-instance v1, Lgov2/nist/javax2/sip/EventScanner;

    invoke-direct {v1, p0}, Lgov2/nist/javax2/sip/EventScanner;-><init>(Lgov2/nist/javax2/sip/SipStackImpl;)V

    iput-object v1, p0, Lgov2/nist/javax2/sip/SipStackImpl;->eventScanner:Lgov2/nist/javax2/sip/EventScanner;

    .line 445
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lgov2/nist/javax2/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    .line 446
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lgov2/nist/javax2/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    .line 448
    return-void
.end method

.method private reInitialize()V
    .locals 1

    .prologue
    .line 454
    invoke-super {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->reInit()V

    .line 455
    new-instance v0, Lgov2/nist/javax2/sip/EventScanner;

    invoke-direct {v0, p0}, Lgov2/nist/javax2/sip/EventScanner;-><init>(Lgov2/nist/javax2/sip/SipStackImpl;)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/SipStackImpl;->eventScanner:Lgov2/nist/javax2/sip/EventScanner;

    .line 456
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    .line 457
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 458
    iput-object v0, p0, Lgov2/nist/javax2/sip/SipStackImpl;->sipListener:Ljavax2/sip/SipListener;

    .line 460
    return-void
.end method


# virtual methods
.method public acquireSem()Z
    .locals 5

    .prologue
    .line 1328
    :try_start_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/SipStackImpl;->stackSemaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .line 1330
    .local v0, "ex":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    return v1
.end method

.method public declared-synchronized createListeningPoint(Ljava/lang/String;ILjava/lang/String;)Ljavax2/sip/ListeningPoint;
    .locals 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/TransportNotSupportedException;,
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 953
    :try_start_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 958
    :goto_0
    if-eqz p1, :cond_2

    .line 960
    if-eqz p3, :cond_3

    .line 961
    if-lez p2, :cond_4

    const-string/jumbo v6, "UDP"

    .line 963
    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 968
    :cond_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/SipStackImpl;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 973
    :goto_1
    invoke-static {p1, p2, p3}, Lgov2/nist/javax2/sip/ListeningPointImpl;->makeKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 975
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Lgov2/nist/javax2/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/ListeningPointImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    .local v3, "lip":Lgov2/nist/javax2/sip/ListeningPointImpl;
    if-nez v3, :cond_7

    .line 980
    :try_start_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 981
    .local v1, "inetAddr":Ljava/net/InetAddress;
    invoke-virtual {p0, v1, p2, p3}, Lgov2/nist/javax2/sip/SipStackImpl;->createMessageProcessor(Ljava/net/InetAddress;ILjava/lang/String;)Lgov2/nist/javax2/sip/stack/MessageProcessor;

    move-result-object v5

    .line 983
    .local v5, "messageProcessor":Lgov2/nist/javax2/sip/stack/MessageProcessor;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-nez v6, :cond_8

    .line 988
    :goto_2
    new-instance v4, Lgov2/nist/javax2/sip/ListeningPointImpl;

    invoke-direct {v4, p0, p2, p3}, Lgov2/nist/javax2/sip/ListeningPointImpl;-><init>(Ljavax2/sip/SipStack;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 989
    .end local v3    # "lip":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .local v4, "lip":Lgov2/nist/javax2/sip/ListeningPointImpl;
    :try_start_2
    iput-object v5, v4, Lgov2/nist/javax2/sip/ListeningPointImpl;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 990
    :try_start_3
    invoke-virtual {v5, v4}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->setListeningPoint(Lgov2/nist/javax2/sip/ListeningPointImpl;)V

    .line 991
    iget-object v6, p0, Lgov2/nist/javax2/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v6, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->start()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 994
    return-object v4

    .line 954
    .end local v1    # "inetAddr":Ljava/net/InetAddress;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "lip":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .end local v5    # "messageProcessor":Lgov2/nist/javax2/sip/stack/MessageProcessor;
    :cond_1
    :try_start_5
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "createListeningPoint : address = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " port = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " transport = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 959
    :cond_2
    :try_start_6
    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "Address for listening point is null!"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 960
    :cond_3
    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "null transport"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 961
    :cond_4
    new-instance v6, Ljavax2/sip/InvalidArgumentException;

    const-string/jumbo v7, "bad port"

    invoke-direct {v6, v7}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    const-string/jumbo v6, "TLS"

    .line 963
    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "TCP"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "SCTP"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 965
    new-instance v6, Ljavax2/sip/TransportNotSupportedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "bad transport "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax2/sip/TransportNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 969
    :cond_6
    const/4 v6, 0x0

    iput-boolean v6, p0, Lgov2/nist/javax2/sip/SipStackImpl;->toExit:Z

    .line 970
    invoke-direct {p0}, Lgov2/nist/javax2/sip/SipStackImpl;->reInitialize()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "lip":Lgov2/nist/javax2/sip/ListeningPointImpl;
    :cond_7
    monitor-exit p0

    .line 977
    return-object v3

    .line 984
    .restart local v1    # "inetAddr":Ljava/net/InetAddress;
    .restart local v5    # "messageProcessor":Lgov2/nist/javax2/sip/stack/MessageProcessor;
    :cond_8
    :try_start_7
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Created Message Processor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " port = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " transport = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 994
    .end local v1    # "inetAddr":Ljava/net/InetAddress;
    .end local v5    # "messageProcessor":Lgov2/nist/javax2/sip/stack/MessageProcessor;
    :catch_0
    move-exception v0

    .line 996
    .local v0, "ex":Ljava/io/IOException;
    :goto_3
    :try_start_8
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1000
    :goto_4
    new-instance v6, Ljavax2/sip/InvalidArgumentException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 997
    :cond_9
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid argument address = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " port = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " transport = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 994
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v3    # "lip":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .restart local v1    # "inetAddr":Ljava/net/InetAddress;
    .restart local v4    # "lip":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .restart local v5    # "messageProcessor":Lgov2/nist/javax2/sip/stack/MessageProcessor;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "lip":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .restart local v3    # "lip":Lgov2/nist/javax2/sip/ListeningPointImpl;
    goto :goto_3

    .end local v3    # "lip":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .restart local v4    # "lip":Lgov2/nist/javax2/sip/ListeningPointImpl;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "lip":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .restart local v3    # "lip":Lgov2/nist/javax2/sip/ListeningPointImpl;
    goto :goto_3
.end method

.method public createSipProvider(Ljavax2/sip/ListeningPoint;)Ljavax2/sip/SipProvider;
    .locals 5
    .param p1, "listeningPoint"    # Ljavax2/sip/ListeningPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/ObjectInUseException;
        }
    .end annotation

    .prologue
    .line 1010
    if-eqz p1, :cond_0

    .line 1011
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    move-object v0, p1

    .line 1013
    check-cast v0, Lgov2/nist/javax2/sip/ListeningPointImpl;

    .line 1014
    .local v0, "listeningPointImpl":Lgov2/nist/javax2/sip/ListeningPointImpl;
    iget-object v2, v0, Lgov2/nist/javax2/sip/ListeningPointImpl;->sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;

    if-nez v2, :cond_2

    .line 1017
    new-instance v1, Lgov2/nist/javax2/sip/SipProviderImpl;

    invoke-direct {v1, p0}, Lgov2/nist/javax2/sip/SipProviderImpl;-><init>(Lgov2/nist/javax2/sip/SipStackImpl;)V

    .line 1019
    .local v1, "provider":Lgov2/nist/javax2/sip/SipProviderImpl;
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/SipProviderImpl;->setListeningPoint(Ljavax2/sip/ListeningPoint;)V

    .line 1020
    iput-object v1, v0, Lgov2/nist/javax2/sip/ListeningPointImpl;->sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;

    .line 1021
    iget-object v2, p0, Lgov2/nist/javax2/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1022
    return-object v1

    .line 1010
    .end local v0    # "listeningPointImpl":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .end local v1    # "provider":Lgov2/nist/javax2/sip/SipProviderImpl;
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "null listeningPoint"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1012
    :cond_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createSipProvider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 1015
    .restart local v0    # "listeningPointImpl":Lgov2/nist/javax2/sip/ListeningPointImpl;
    :cond_2
    new-instance v2, Ljavax2/sip/ObjectInUseException;

    const-string/jumbo v3, "Provider already attached!"

    invoke-direct {v2, v3}, Ljavax2/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public deleteSipProvider(Ljavax2/sip/SipProvider;)V
    .locals 3
    .param p1, "sipProvider"    # Ljavax2/sip/SipProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/ObjectInUseException;
        }
    .end annotation

    .prologue
    .line 1045
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 1046
    check-cast v0, Lgov2/nist/javax2/sip/SipProviderImpl;

    .line 1052
    .local v0, "sipProviderImpl":Lgov2/nist/javax2/sip/SipProviderImpl;
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/SipProviderImpl;->getSipListener()Ljavax2/sip/SipListener;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1056
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/SipProviderImpl;->removeListeningPoints()V

    .line 1059
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/SipProviderImpl;->stop()V

    .line 1060
    iget-object v1, p0, Lgov2/nist/javax2/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1061
    iget-object v1, p0, Lgov2/nist/javax2/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1064
    :goto_0
    return-void

    .line 1045
    .end local v0    # "sipProviderImpl":Lgov2/nist/javax2/sip/SipProviderImpl;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null provider arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1053
    .restart local v0    # "sipProviderImpl":Lgov2/nist/javax2/sip/SipProviderImpl;
    :cond_1
    new-instance v1, Ljavax2/sip/ObjectInUseException;

    const-string/jumbo v2, "SipProvider still has an associated SipListener!"

    invoke-direct {v1, v2}, Ljavax2/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1062
    :cond_2
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/SipStackImpl;->stopStack()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 1117
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/SipStackImpl;->stopStack()V

    .line 1118
    return-void
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lgov2/nist/javax2/sip/SipStackImpl;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1303
    iget-object v0, p0, Lgov2/nist/javax2/sip/SipStackImpl;->enabledProtocols:[Ljava/lang/String;

    return-object v0
.end method

.method public getEventScanner()Lgov2/nist/javax2/sip/EventScanner;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1219
    iget-object v0, p0, Lgov2/nist/javax2/sip/SipStackImpl;->eventScanner:Lgov2/nist/javax2/sip/EventScanner;

    return-object v0
.end method

.method public getSipListener()Ljavax2/sip/SipListener;
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lgov2/nist/javax2/sip/SipStackImpl;->sipListener:Ljavax2/sip/SipListener;

    return-object v0
.end method

.method public getSipProviders()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lgov2/nist/javax2/sip/SipProviderImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1099
    iget-object v0, p0, Lgov2/nist/javax2/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public isAutomaticDialogErrorHandlingEnabled()Z
    .locals 1

    .prologue
    .line 1323
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isAutomaticDialogErrorHandlingEnabled:Z

    return v0
.end method

.method isAutomaticDialogSupportEnabled()Z
    .locals 1

    .prologue
    .line 469
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isAutomaticDialogSupportEnabled:Z

    return v0
.end method

.method public releaseSem()V
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lgov2/nist/javax2/sip/SipStackImpl;->stackSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1336
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/ProviderDoesNotExistException;,
            Ljavax2/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1160
    iget-object v0, p0, Lgov2/nist/javax2/sip/SipStackImpl;->eventScanner:Lgov2/nist/javax2/sip/EventScanner;

    if-eqz v0, :cond_0

    .line 1164
    :goto_0
    return-void

    .line 1161
    :cond_0
    new-instance v0, Lgov2/nist/javax2/sip/EventScanner;

    invoke-direct {v0, p0}, Lgov2/nist/javax2/sip/EventScanner;-><init>(Lgov2/nist/javax2/sip/SipStackImpl;)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/SipStackImpl;->eventScanner:Lgov2/nist/javax2/sip/EventScanner;

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1139
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1142
    :goto_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/SipStackImpl;->stopStack()V

    .line 1143
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    .line 1144
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    .line 1149
    iget-object v0, p0, Lgov2/nist/javax2/sip/SipStackImpl;->eventScanner:Lgov2/nist/javax2/sip/EventScanner;

    if-nez v0, :cond_1

    .line 1150
    :goto_1
    iput-object v2, p0, Lgov2/nist/javax2/sip/SipStackImpl;->eventScanner:Lgov2/nist/javax2/sip/EventScanner;

    .line 1152
    return-void

    .line 1140
    :cond_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    const-string/jumbo v1, "stopStack -- stoppping the stack"

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 1149
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/SipStackImpl;->eventScanner:Lgov2/nist/javax2/sip/EventScanner;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/EventScanner;->forceStop()V

    goto :goto_1
.end method
