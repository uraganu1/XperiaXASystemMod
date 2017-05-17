.class public abstract Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
.super Ljava/lang/Object;
.source "SIPTransactionStack.java"

# interfaces
.implements Lgov2/nist/javax2/sip/stack/SIPTransactionEventListener;
.implements Lgov2/nist/javax2/sip/stack/SIPDialogEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov2/nist/javax2/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;,
        Lgov2/nist/javax2/sip/stack/SIPTransactionStack$PingTimer;
    }
.end annotation


# static fields
.field protected static final dialogCreatingMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected addressResolver:Lgov2/nist/core/net/AddressResolver;

.field protected cacheClientConnections:Z

.field protected cacheServerConnections:Z

.field protected cancelClientTransactionChecked:Z

.field protected checkBranchId:Z

.field private clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov2/nist/javax2/sip/stack/SIPClientTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected clientTransactionTableHiwaterMark:I

.field protected clientTransactionTableLowaterMark:I

.field protected defaultRouter:Lgov2/nist/javax2/sip/stack/DefaultRouter;

.field protected dialogTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov2/nist/javax2/sip/stack/SIPDialog;",
            ">;"
        }
    .end annotation
.end field

.field protected earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov2/nist/javax2/sip/stack/SIPDialog;",
            ">;"
        }
    .end annotation
.end field

.field private forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov2/nist/javax2/sip/stack/SIPClientTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected forkedEvents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected generateTimeStampHeader:Z

.field protected ioHandler:Lgov2/nist/javax2/sip/stack/IOHandler;

.field protected isAutomaticDialogErrorHandlingEnabled:Z

.field protected isAutomaticDialogSupportEnabled:Z

.field protected isBackToBackUserAgent:Z

.field protected isDialogTerminatedEventDeliveredForNullDialog:Z

.field protected logStackTraceOnMessageSend:Z

.field protected maxConnections:I

.field protected maxForkTime:I

.field protected maxListenerResponseTime:I

.field protected maxMessageSize:I

.field private mergeTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov2/nist/javax2/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private messageProcessors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lgov2/nist/javax2/sip/stack/MessageProcessor;",
            ">;"
        }
    .end annotation
.end field

.field protected networkLayer:Lgov2/nist/core/net/NetworkLayer;

.field private non2XXAckPassedToListener:Z

.field private pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov2/nist/javax2/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected readTimeout:I

.field protected receiveUdpBufferSize:I

.field protected reliableConnectionKeepAliveTimeout:I

.field protected remoteTagReassignmentAllowed:Z

.field protected retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov2/nist/javax2/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected rfc2543Supported:Z

.field protected router:Ljavax2/sip/address/Router;

.field protected sendUdpBufferSize:I

.field protected serverLogger:Lgov2/nist/core/ServerLogger;

.field private serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov2/nist/javax2/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected serverTransactionTableHighwaterMark:I

.field protected serverTransactionTableLowaterMark:I

.field protected sipMessageFactory:Lgov2/nist/javax2/sip/stack/StackMessageFactory;

.field protected stackDoesCongestionControl:Z

.field private stackLogger:Lgov2/nist/core/StackLogger;

.field private terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov2/nist/javax2/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected threadAuditor:Lgov2/nist/core/ThreadAuditor;

.field protected threadPoolSize:I

.field private timer:Ljava/util/Timer;

.field protected toExit:Z

.field udpFlag:Z

.field protected unlimitedClientTransactionTableSize:Z

.field protected unlimitedServerTransactionTableSize:Z

.field protected useRouterForAll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    .line 430
    sget-object v0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    const-string/jumbo v1, "REFER"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 431
    sget-object v0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    const-string/jumbo v1, "INVITE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 432
    sget-object v0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    const-string/jumbo v1, "SUBSCRIBE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 433
    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->unlimitedServerTransactionTableSize:Z

    .line 147
    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->unlimitedClientTransactionTableSize:Z

    const/16 v0, 0x1388

    .line 151
    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->serverTransactionTableHighwaterMark:I

    const/16 v0, 0xfa0

    .line 155
    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->serverTransactionTableLowaterMark:I

    const/16 v0, 0x3e8

    .line 160
    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->clientTransactionTableHiwaterMark:I

    const/16 v0, 0x320

    .line 163
    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->clientTransactionTableLowaterMark:I

    .line 165
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 332
    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    .line 336
    new-instance v0, Lgov2/nist/core/ThreadAuditor;

    invoke-direct {v0}, Lgov2/nist/core/ThreadAuditor;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->threadAuditor:Lgov2/nist/core/ThreadAuditor;

    .line 343
    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->cancelClientTransactionChecked:Z

    .line 346
    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->remoteTagReassignmentAllowed:Z

    .line 348
    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->logStackTraceOnMessageSend:Z

    .line 356
    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackDoesCongestionControl:Z

    .line 358
    iput-boolean v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    .line 362
    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isAutomaticDialogErrorHandlingEnabled:Z

    .line 364
    iput-boolean v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isDialogTerminatedEventDeliveredForNullDialog:Z

    .line 372
    iput v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->reliableConnectionKeepAliveTimeout:I

    .line 379
    iput v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->maxForkTime:I

    .line 439
    iput-boolean v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->toExit:Z

    .line 440
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->forkedEvents:Ljava/util/HashSet;

    .line 443
    iput v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->threadPoolSize:I

    .line 446
    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    .line 449
    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    .line 451
    iput v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->maxConnections:I

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    .line 455
    new-instance v0, Lgov2/nist/javax2/sip/stack/IOHandler;

    invoke-direct {v0, p0}, Lgov2/nist/javax2/sip/stack/IOHandler;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->ioHandler:Lgov2/nist/javax2/sip/stack/IOHandler;

    .line 458
    iput v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->readTimeout:I

    .line 460
    iput v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    .line 464
    new-instance v0, Lgov2/nist/javax2/sip/DefaultAddressResolver;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/DefaultAddressResolver;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->addressResolver:Lgov2/nist/core/net/AddressResolver;

    .line 471
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 472
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 474
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 475
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 476
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    .line 477
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 478
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 482
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    .line 483
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 485
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 487
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov2/nist/core/ThreadAuditor;

    move-result-object v0

    invoke-virtual {v0}, Lgov2/nist/core/ThreadAuditor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    new-instance v1, Lgov2/nist/javax2/sip/stack/SIPTransactionStack$PingTimer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack$PingTimer;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/core/ThreadAuditor$ThreadHandle;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method static synthetic access$000(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    .prologue
    .line 105
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private addTransactionHash(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V
    .locals 6
    .param p1, "sipTransaction"    # Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .prologue
    .line 1537
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v2

    .line 1538
    .local v2, "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    instance-of v3, p1, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    if-nez v3, :cond_1

    .line 1564
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    .line 1566
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1569
    :goto_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p1, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .end local p1    # "sipTransaction":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    invoke-virtual {v3, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    :cond_0
    :goto_1
    return-void

    .line 1539
    .end local v1    # "key":Ljava/lang/String;
    .restart local p1    # "sipTransaction":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    :cond_1
    iget-boolean v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->unlimitedClientTransactionTableSize:Z

    if-eqz v3, :cond_3

    .line 1555
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1557
    :cond_2
    :goto_2
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    .line 1558
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p1, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .end local p1    # "sipTransaction":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    invoke-virtual {v3, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1561
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " putTransactionHash :  key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .line 1540
    .end local v1    # "key":Ljava/lang/String;
    .restart local p1    # "sipTransaction":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    :cond_3
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget v4, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->clientTransactionTableHiwaterMark:I

    if-le v3, v4, :cond_2

    .line 1542
    :try_start_0
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1543
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 1544
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1545
    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1552
    :catch_0
    move-exception v0

    .line 1548
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1549
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    const-string/jumbo v4, "Exception occured while waiting for room"

    invoke-interface {v3, v4, v0}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 1567
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "key":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " putTransactionHash :  key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static isDialogCreated(Ljava/lang/String;)Z
    .locals 1
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 587
    sget-object v0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addForkedClientTransaction(Lgov2/nist/javax2/sip/stack/SIPClientTransaction;)V
    .locals 2
    .param p1, "clientTransaction"    # Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .prologue
    .line 2510
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2512
    return-void
.end method

.method protected addMessageProcessor(Lgov2/nist/javax2/sip/stack/MessageProcessor;)V
    .locals 2
    .param p1, "newMessageProcessor"    # Lgov2/nist/javax2/sip/stack/MessageProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1922
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    monitor-enter v1

    .line 1931
    :try_start_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1933
    monitor-exit v1

    .line 1934
    return-void

    .line 1933
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addTransaction(Lgov2/nist/javax2/sip/stack/SIPClientTransaction;)V
    .locals 3
    .param p1, "clientTransaction"    # Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .prologue
    .line 1455
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1456
    :goto_0
    invoke-direct {p0, p1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 1458
    return-void

    .line 1455
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "added transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    .locals 3
    .param p1, "serverTransaction"    # Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1525
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1526
    :goto_0
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->map()V

    .line 1528
    invoke-direct {p0, p1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 1530
    return-void

    .line 1525
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "added transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addTransactionPendingAck(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    .locals 2
    .param p1, "serverTransaction"    # Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .prologue
    .line 857
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v1

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "branchId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 862
    :goto_0
    return-void

    .line 859
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public checkBranchId()Z
    .locals 1

    .prologue
    .line 2488
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->checkBranchId:Z

    return v0
.end method

.method public createClientTransaction(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/MessageChannel;)Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .locals 1
    .param p1, "sipRequest"    # Lgov2/nist/javax2/sip/message/SIPRequest;
    .param p2, "encapsulatedMessageChannel"    # Lgov2/nist/javax2/sip/stack/MessageChannel;

    .prologue
    .line 1398
    new-instance v0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    invoke-direct {v0, p0, p2}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/MessageChannel;)V

    .line 1399
    .local v0, "ct":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setOriginalRequest(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 1400
    return-object v0
.end method

.method public createDialog(Lgov2/nist/javax2/sip/SipProviderImpl;Lgov2/nist/javax2/sip/message/SIPResponse;)Lgov2/nist/javax2/sip/stack/SIPDialog;
    .locals 1
    .param p1, "sipProvider"    # Lgov2/nist/javax2/sip/SipProviderImpl;
    .param p2, "sipResponse"    # Lgov2/nist/javax2/sip/message/SIPResponse;

    .prologue
    .line 690
    new-instance v0, Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-direct {v0, p1, p2}, Lgov2/nist/javax2/sip/stack/SIPDialog;-><init>(Lgov2/nist/javax2/sip/SipProviderImpl;Lgov2/nist/javax2/sip/message/SIPResponse;)V

    return-object v0
.end method

.method public createDialog(Lgov2/nist/javax2/sip/stack/SIPClientTransaction;Lgov2/nist/javax2/sip/message/SIPResponse;)Lgov2/nist/javax2/sip/stack/SIPDialog;
    .locals 4
    .param p1, "transaction"    # Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .param p2, "sipResponse"    # Lgov2/nist/javax2/sip/message/SIPResponse;

    .prologue
    const/4 v3, 0x0

    .line 667
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v2, v3}, Lgov2/nist/javax2/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v0

    .local v0, "dialogId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 669
    .local v1, "retval":Lgov2/nist/javax2/sip/stack/SIPDialog;
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 676
    new-instance v1, Lgov2/nist/javax2/sip/stack/SIPDialog;

    .end local v1    # "retval":Lgov2/nist/javax2/sip/stack/SIPDialog;
    invoke-direct {v1, p1, p2}, Lgov2/nist/javax2/sip/stack/SIPDialog;-><init>(Lgov2/nist/javax2/sip/stack/SIPClientTransaction;Lgov2/nist/javax2/sip/message/SIPResponse;)V

    .line 678
    .local v1, "retval":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_0
    :goto_0
    return-object v1

    .line 670
    .local v1, "retval":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "retval":Lgov2/nist/javax2/sip/stack/SIPDialog;
    check-cast v1, Lgov2/nist/javax2/sip/stack/SIPDialog;

    .line 671
    .local v1, "retval":Lgov2/nist/javax2/sip/stack/SIPDialog;
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->isFinalResponse()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 672
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public createDialog(Lgov2/nist/javax2/sip/stack/SIPTransaction;)Lgov2/nist/javax2/sip/stack/SIPDialog;
    .locals 5
    .param p1, "transaction"    # Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 636
    .local v2, "retval":Lgov2/nist/javax2/sip/stack/SIPDialog;
    instance-of v3, p1, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    if-nez v3, :cond_0

    .line 651
    new-instance v2, Lgov2/nist/javax2/sip/stack/SIPDialog;

    .end local v2    # "retval":Lgov2/nist/javax2/sip/stack/SIPDialog;
    invoke-direct {v2, p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 654
    .local v2, "retval":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :goto_0
    return-object v2

    .line 637
    .local v2, "retval":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_0
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v3, v4}, Lgov2/nist/javax2/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, "dialogId":Ljava/lang/String;
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 647
    new-instance v2, Lgov2/nist/javax2/sip/stack/SIPDialog;

    .end local v2    # "retval":Lgov2/nist/javax2/sip/stack/SIPDialog;
    invoke-direct {v2, p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 648
    .local v2, "retval":Lgov2/nist/javax2/sip/stack/SIPDialog;
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 639
    .local v2, "retval":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPDialog;

    .line 640
    .local v0, "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v3

    if-nez v3, :cond_3

    .line 641
    :cond_2
    move-object v2, v0

    .local v2, "retval":Lgov2/nist/javax2/sip/stack/SIPDialog;
    goto :goto_0

    .line 640
    .local v2, "retval":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_3
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v3

    sget-object v4, Ljavax2/sip/DialogState;->EARLY:Ljavax2/sip/DialogState;

    if-eq v3, v4, :cond_2

    .line 643
    new-instance v2, Lgov2/nist/javax2/sip/stack/SIPDialog;

    .end local v2    # "retval":Lgov2/nist/javax2/sip/stack/SIPDialog;
    invoke-direct {v2, p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 644
    .local v2, "retval":Lgov2/nist/javax2/sip/stack/SIPDialog;
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public createMessageChannel(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/MessageProcessor;Ljavax2/sip/address/Hop;)Lgov2/nist/javax2/sip/stack/MessageChannel;
    .locals 6
    .param p1, "request"    # Lgov2/nist/javax2/sip/message/SIPRequest;
    .param p2, "mp"    # Lgov2/nist/javax2/sip/stack/MessageProcessor;
    .param p3, "nextHop"    # Ljavax2/sip/address/Hop;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1366
    new-instance v2, Lgov2/nist/core/Host;

    invoke-direct {v2}, Lgov2/nist/core/Host;-><init>()V

    .line 1367
    .local v2, "targetHost":Lgov2/nist/core/Host;
    invoke-interface {p3}, Ljavax2/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgov2/nist/javax2/sip/Utils;->getIpAddressFromHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgov2/nist/core/Host;->setHostname(Ljava/lang/String;)V

    .line 1368
    new-instance v3, Lgov2/nist/core/HostPort;

    invoke-direct {v3}, Lgov2/nist/core/HostPort;-><init>()V

    .line 1369
    .local v3, "targetHostPort":Lgov2/nist/core/HostPort;
    invoke-virtual {v3, v2}, Lgov2/nist/core/HostPort;->setHost(Lgov2/nist/core/Host;)V

    .line 1370
    invoke-interface {p3}, Ljavax2/sip/address/Hop;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Lgov2/nist/core/HostPort;->setPort(I)V

    .line 1371
    invoke-virtual {p2, v3}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->createMessageChannel(Lgov2/nist/core/HostPort;)Lgov2/nist/javax2/sip/stack/MessageChannel;

    move-result-object v0

    .line 1375
    .local v0, "mc":Lgov2/nist/javax2/sip/stack/MessageChannel;
    if-eqz v0, :cond_0

    .line 1377
    invoke-virtual {p0, p1, v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->createClientTransaction(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/MessageChannel;)Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    move-result-object v1

    .local v1, "returnChannel":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    move-object v4, v1

    .line 1379
    check-cast v4, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    invoke-interface {p3}, Ljavax2/sip/address/Hop;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setViaPort(I)V

    move-object v4, v1

    .line 1380
    check-cast v4, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    invoke-interface {p3}, Ljavax2/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setViaHost(Ljava/lang/String;)V

    .line 1381
    invoke-direct {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 1386
    return-object v1

    .line 1375
    .end local v1    # "returnChannel":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    :cond_0
    return-object v5
.end method

.method protected createMessageProcessor(Ljava/net/InetAddress;ILjava/lang/String;)Lgov2/nist/javax2/sip/stack/MessageProcessor;
    .locals 10
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string/jumbo v8, "udp"

    .line 1972
    invoke-virtual {p3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "tcp"

    .line 1977
    invoke-virtual {p3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "tls"

    .line 1982
    invoke-virtual {p3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "sctp"

    .line 1987
    invoke-virtual {p3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 2008
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "bad transport"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1973
    :cond_0
    new-instance v7, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;

    invoke-direct {v7, p1, p0, p2}, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;-><init>(Ljava/net/InetAddress;Lgov2/nist/javax2/sip/stack/SIPTransactionStack;I)V

    .line 1974
    .local v7, "udpMessageProcessor":Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;
    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov2/nist/javax2/sip/stack/MessageProcessor;)V

    .line 1975
    const/4 v8, 0x1

    iput-boolean v8, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->udpFlag:Z

    .line 1976
    return-object v7

    .line 1978
    .end local v7    # "udpMessageProcessor":Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;
    :cond_1
    new-instance v5, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;

    invoke-direct {v5, p1, p0, p2}, Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;-><init>(Ljava/net/InetAddress;Lgov2/nist/javax2/sip/stack/SIPTransactionStack;I)V

    .line 1979
    .local v5, "tcpMessageProcessor":Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov2/nist/javax2/sip/stack/MessageProcessor;)V

    .line 1981
    return-object v5

    .line 1983
    .end local v5    # "tcpMessageProcessor":Lgov2/nist/javax2/sip/stack/TCPMessageProcessor;
    :cond_2
    new-instance v6, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;

    invoke-direct {v6, p1, p0, p2}, Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;-><init>(Ljava/net/InetAddress;Lgov2/nist/javax2/sip/stack/SIPTransactionStack;I)V

    .line 1984
    .local v6, "tlsMessageProcessor":Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;
    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov2/nist/javax2/sip/stack/MessageProcessor;)V

    .line 1986
    return-object v6

    .line 1993
    .end local v6    # "tlsMessageProcessor":Lgov2/nist/javax2/sip/stack/TLSMessageProcessor;
    :cond_3
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const-string/jumbo v9, "gov2.nist.javax2.sip.stack.sctp.SCTPMessageProcessor"

    invoke-virtual {v8, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1995
    .local v4, "mpc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/stack/MessageProcessor;

    .line 1996
    .local v3, "mp":Lgov2/nist/javax2/sip/stack/MessageProcessor;
    invoke-virtual {v3, p1, p2, p0}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->initialize(Ljava/net/InetAddress;ILgov2/nist/javax2/sip/stack/SIPTransactionStack;)V

    .line 1997
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov2/nist/javax2/sip/stack/MessageProcessor;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1998
    return-object v3

    .end local v3    # "mp":Lgov2/nist/javax2/sip/stack/MessageProcessor;
    .end local v4    # "mpc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 2000
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "SCTP not supported (needs Java 7 and SCTP jar in classpath)"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 2003
    .local v2, "ie":Ljava/lang/InstantiationException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Error initializing SCTP"

    invoke-direct {v8, v9, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .end local v2    # "ie":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 2005
    .local v1, "ie":Ljava/lang/IllegalAccessException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Error initializing SCTP"

    invoke-direct {v8, v9, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public createRawMessageChannel(Ljava/lang/String;ILjavax2/sip/address/Hop;)Lgov2/nist/javax2/sip/stack/MessageChannel;
    .locals 9
    .param p1, "sourceIpAddress"    # Ljava/lang/String;
    .param p2, "sourcePort"    # I
    .param p3, "nextHop"    # Ljavax2/sip/address/Hop;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 2041
    new-instance v5, Lgov2/nist/core/Host;

    invoke-direct {v5}, Lgov2/nist/core/Host;-><init>()V

    .line 2042
    .local v5, "targetHost":Lgov2/nist/core/Host;
    invoke-interface {p3}, Ljavax2/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lgov2/nist/javax2/sip/Utils;->getIpAddressFromHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lgov2/nist/core/Host;->setHostname(Ljava/lang/String;)V

    .line 2043
    new-instance v6, Lgov2/nist/core/HostPort;

    invoke-direct {v6}, Lgov2/nist/core/HostPort;-><init>()V

    .line 2044
    .local v6, "targetHostPort":Lgov2/nist/core/HostPort;
    invoke-virtual {v6, v5}, Lgov2/nist/core/HostPort;->setHost(Lgov2/nist/core/Host;)V

    .line 2045
    invoke-interface {p3}, Ljavax2/sip/address/Hop;->getPort()I

    move-result v7

    invoke-virtual {v6, v7}, Lgov2/nist/core/HostPort;->setPort(I)V

    const/4 v2, 0x0

    .line 2049
    .local v2, "newChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2050
    .end local v2    # "newChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    .local v4, "processorIterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2072
    :cond_1
    return-object v2

    .line 2050
    :cond_2
    if-nez v2, :cond_1

    .line 2051
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/stack/MessageProcessor;

    .line 2054
    .local v3, "nextProcessor":Lgov2/nist/javax2/sip/stack/MessageProcessor;
    invoke-interface {p3}, Ljavax2/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getPort()I

    move-result v7

    if-ne p2, v7, :cond_0

    .line 2060
    :try_start_0
    invoke-virtual {v3, v6}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->createMessageChannel(Lgov2/nist/core/HostPort;)Lgov2/nist/javax2/sip/stack/MessageChannel;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .local v2, "newChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    goto :goto_0

    .line 2068
    .end local v2    # "newChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    :catch_0
    move-exception v1

    .line 2062
    .local v1, "ex":Ljava/net/UnknownHostException;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2063
    :goto_1
    throw v1

    .line 2062
    :cond_3
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    invoke-interface {v7, v1}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2063
    .end local v1    # "ex":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 2065
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    invoke-interface {v7, v0}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public createServerTransaction(Lgov2/nist/javax2/sip/stack/MessageChannel;)Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .locals 8
    .param p1, "encapsulatedMessageChannel"    # Lgov2/nist/javax2/sip/stack/MessageChannel;

    .prologue
    const/4 v0, 0x0

    .line 1413
    iget-boolean v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->unlimitedServerTransactionTableSize:Z

    if-nez v2, :cond_1

    .line 1416
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    iget v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->serverTransactionTableLowaterMark:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->serverTransactionTableHighwaterMark:I

    iget v4, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->serverTransactionTableLowaterMark:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 1418
    .local v1, "threshold":F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    float-to-double v4, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v4, v6, v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 1419
    .local v0, "decision":Z
    :cond_0
    if-nez v0, :cond_2

    .line 1422
    new-instance v2, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-direct {v2, p0, p1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/MessageChannel;)V

    return-object v2

    .line 1414
    .end local v0    # "decision":Z
    .end local v1    # "threshold":F
    :cond_1
    new-instance v2, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-direct {v2, p0, p1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/MessageChannel;)V

    return-object v2

    .restart local v0    # "decision":Z
    .restart local v1    # "threshold":F
    :cond_2
    const/4 v2, 0x0

    .line 1420
    return-object v2
.end method

.method protected decrementActiveClientTransactionCount()V
    .locals 2

    .prologue
    .line 1581
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    iget v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->clientTransactionTableLowaterMark:I

    if-le v0, v1, :cond_1

    .line 1589
    :cond_0
    :goto_0
    return-void

    .line 1581
    :cond_1
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->unlimitedClientTransactionTableSize:Z

    if-nez v0, :cond_0

    .line 1583
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 1585
    :try_start_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1587
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized dialogErrorEvent(Lgov2/nist/javax2/sip/stack/SIPDialogErrorEvent;)V
    .locals 4
    .param p1, "dialogErrorEvent"    # Lgov2/nist/javax2/sip/stack/SIPDialogErrorEvent;

    .prologue
    monitor-enter p0

    .line 1642
    :try_start_0
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPDialogErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/stack/SIPDialog;

    .line 1643
    .local v1, "sipDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    move-object v0, p0

    check-cast v0, Lgov2/nist/javax2/sip/SipStackImpl;

    move-object v3, v0

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/SipStackImpl;->getSipListener()Ljavax2/sip/SipListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1646
    .local v2, "sipListener":Ljavax2/sip/SipListener;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 1649
    return-void

    .line 1646
    :cond_1
    :try_start_1
    instance-of v3, v2, Lgov2/nist/javax2/sip/SipListenerExt;

    if-nez v3, :cond_0

    .line 1647
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1    # "sipDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    .end local v2    # "sipListener":Ljavax2/sip/SipListener;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public findCancelTransaction(Lgov2/nist/javax2/sip/message/SIPRequest;Z)Lgov2/nist/javax2/sip/stack/SIPTransaction;
    .locals 8
    .param p1, "cancelRequest"    # Lgov2/nist/javax2/sip/message/SIPRequest;
    .param p2, "isServer"    # Z

    .prologue
    .line 988
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 993
    :goto_0
    if-nez p2, :cond_3

    .line 1004
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1005
    .local v0, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPClientTransaction;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1015
    .end local v0    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPClientTransaction;>;"
    :cond_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-nez v5, :cond_6

    :goto_1
    const/4 v5, 0x0

    .line 1017
    return-object v5

    .line 989
    :cond_2
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "findCancelTransaction request= \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\nfindCancelRequest isServer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 994
    :cond_3
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 995
    .local v1, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPServerTransaction;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 996
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .local v4, "transaction":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    move-object v3, v4

    .line 998
    check-cast v3, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .line 999
    .local v3, "sipServerTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    invoke-virtual {v3, p1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->doesCancelMatchTransaction(Lgov2/nist/javax2/sip/message/SIPRequest;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1000
    return-object v3

    .line 1006
    .end local v1    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPServerTransaction;>;"
    .end local v3    # "sipServerTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .end local v4    # "transaction":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    .restart local v0    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPClientTransaction;>;"
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .restart local v4    # "transaction":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    move-object v2, v4

    .line 1008
    check-cast v2, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .line 1009
    .local v2, "sipClientTransaction":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    invoke-virtual {v2, p1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->doesCancelMatchTransaction(Lgov2/nist/javax2/sip/message/SIPRequest;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1010
    return-object v2

    .line 1016
    .end local v0    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPClientTransaction;>;"
    .end local v2    # "sipClientTransaction":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .end local v4    # "transaction":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    :cond_6
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    const-string/jumbo v6, "Could not find transaction for cancel request"

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public findMergedTransaction(Lgov2/nist/javax2/sip/message/SIPRequest;)Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .locals 10
    .param p1, "sipRequest"    # Lgov2/nist/javax2/sip/message/SIPRequest;

    .prologue
    const/4 v9, 0x0

    .line 1061
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "INVITE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1068
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v2

    .line 1069
    .local v2, "mergeId":Ljava/lang/String;
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .line 1070
    .local v3, "mergedTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    if-eqz v2, :cond_3

    .line 1072
    if-nez v3, :cond_4

    .line 1079
    :cond_0
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1093
    return-object v9

    .line 1066
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mergeId":Ljava/lang/String;
    .end local v3    # "mergedTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_2
    return-object v9

    .line 1071
    .restart local v2    # "mergeId":Ljava/lang/String;
    .restart local v3    # "mergedTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_3
    return-object v9

    .line 1072
    :cond_4
    invoke-virtual {v3, p1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov2/nist/javax2/sip/message/SIPMessage;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1074
    return-object v3

    .line 1079
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax2/sip/Dialog;

    .local v0, "dialog":Ljavax2/sip/Dialog;
    move-object v5, v0

    .line 1080
    check-cast v5, Lgov2/nist/javax2/sip/stack/SIPDialog;

    .line 1081
    .local v5, "sipDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getFirstTransaction()Ljavax2/sip/Transaction;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getFirstTransaction()Ljavax2/sip/Transaction;

    move-result-object v7

    instance-of v7, v7, Ljavax2/sip/ServerTransaction;

    if-eqz v7, :cond_1

    .line 1083
    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getFirstTransaction()Ljavax2/sip/Transaction;

    move-result-object v4

    check-cast v4, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .line 1085
    .local v4, "serverTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getFirstTransaction()Ljavax2/sip/Transaction;

    move-result-object v7

    check-cast v7, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v6

    .line 1087
    .local v6, "transactionRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    invoke-virtual {v4, p1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov2/nist/javax2/sip/message/SIPMessage;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1089
    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getFirstTransaction()Ljavax2/sip/Transaction;

    move-result-object v7

    check-cast v7, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    return-object v7
.end method

.method public findPendingTransaction(Lgov2/nist/javax2/sip/message/SIPRequest;)Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .locals 3
    .param p1, "requestReceived"    # Lgov2/nist/javax2/sip/message/SIPRequest;

    .prologue
    .line 1041
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1045
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    return-object v0

    .line 1042
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "looking for pending tx for :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public findSubscribeTransaction(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/ListeningPointImpl;)Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .locals 12
    .param p1, "notifyMessage"    # Lgov2/nist/javax2/sip/message/SIPRequest;
    .param p2, "listeningPoint"    # Lgov2/nist/javax2/sip/ListeningPointImpl;

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 800
    .local v5, "retval":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    :try_start_0
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 801
    .local v4, "it":Ljava/util/Iterator;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 803
    :goto_0
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax2/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v6

    .line 804
    .local v6, "thisToTag":Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string/jumbo v7, "Event"

    .line 807
    invoke-virtual {p1, v7}, Lgov2/nist/javax2/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/Event;

    .line 808
    .local v1, "eventHdr":Lgov2/nist/javax2/sip/header/Event;
    if-eqz v1, :cond_4

    .line 815
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_7

    .line 844
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-nez v7, :cond_b

    .line 845
    :goto_1
    return-object v11

    .line 802
    .end local v1    # "eventHdr":Lgov2/nist/javax2/sip/header/Event;
    .end local v6    # "thisToTag":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ct table size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 845
    .end local v4    # "it":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    .line 844
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v8

    if-nez v8, :cond_c

    .line 845
    :goto_2
    throw v7

    .line 844
    .restart local v4    # "it":Ljava/util/Iterator;
    .restart local v6    # "thisToTag":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-nez v7, :cond_3

    .line 845
    :goto_3
    return-object v11

    :cond_3
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "findSubscribeTransaction : returning "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_3

    .line 809
    .restart local v1    # "eventHdr":Lgov2/nist/javax2/sip/header/Event;
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-nez v7, :cond_5

    .line 844
    :goto_4
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-nez v7, :cond_6

    .line 845
    :goto_5
    return-object v11

    .line 810
    :cond_5
    :try_start_3
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    const-string/jumbo v8, "event Header is null -- returning null"

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 845
    :cond_6
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "findSubscribeTransaction : returning "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_5

    .line 816
    :cond_7
    :try_start_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .line 817
    .local v0, "ct":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "SUBSCRIBE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 820
    iget-object v7, v0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->from:Lgov2/nist/javax2/sip/header/From;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 821
    .local v2, "fromTag":Ljava/lang/String;
    iget-object v3, v0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->event:Lgov2/nist/javax2/sip/header/Event;

    .line 824
    .local v3, "hisEvent":Lgov2/nist/javax2/sip/header/Event;
    if-eqz v3, :cond_0

    .line 825
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-nez v7, :cond_8

    .line 832
    :goto_6
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Lgov2/nist/javax2/sip/header/Event;->match(Lgov2/nist/javax2/sip/header/Event;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax2/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->callId:Lgov2/nist/javax2/sip/header/CallID;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 837
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->acquireSem()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v7

    if-nez v7, :cond_9

    .line 844
    .end local v5    # "retval":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    :goto_7
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-nez v7, :cond_a

    .line 845
    :goto_8
    return-object v5

    .line 826
    .restart local v5    # "retval":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    :cond_8
    :try_start_5
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ct.fromTag = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 827
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "thisToTag = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 828
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hisEvent = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 829
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "eventHdr "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_6

    .line 837
    :cond_9
    move-object v5, v0

    .local v5, "retval":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    goto :goto_7

    .line 845
    .end local v5    # "retval":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    :cond_a
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "findSubscribeTransaction : returning "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_8

    .end local v0    # "ct":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .end local v2    # "fromTag":Ljava/lang/String;
    .end local v3    # "hisEvent":Lgov2/nist/javax2/sip/header/Event;
    .local v5, "retval":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    :cond_b
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "findSubscribeTransaction : returning "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v1    # "eventHdr":Lgov2/nist/javax2/sip/header/Event;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v6    # "thisToTag":Ljava/lang/String;
    :cond_c
    iget-object v8, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "findSubscribeTransaction : returning "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public findTransaction(Lgov2/nist/javax2/sip/message/SIPMessage;Z)Lgov2/nist/javax2/sip/stack/SIPTransaction;
    .locals 12
    .param p1, "sipMessage"    # Lgov2/nist/javax2/sip/message/SIPMessage;
    .param p2, "isServer"    # Z

    .prologue
    const/4 v5, 0x0

    .line 919
    .local v5, "retval":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    if-nez p2, :cond_3

    .line 947
    :try_start_0
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v7

    .line 948
    .local v7, "via":Lgov2/nist/javax2/sip/header/Via;
    invoke-virtual {v7}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_a

    .line 962
    .end local v5    # "retval":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    :cond_0
    iget-object v8, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 963
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPClientTransaction;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_d

    .line 974
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPClientTransaction;>;"
    :cond_2
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v8

    if-nez v8, :cond_f

    .line 978
    :goto_0
    return-object v5

    .line 920
    .end local v7    # "via":Lgov2/nist/javax2/sip/header/Via;
    .restart local v5    # "retval":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v7

    .line 921
    .restart local v7    # "via":Lgov2/nist/javax2/sip/header/Via;
    invoke-virtual {v7}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_6

    .line 937
    .end local v5    # "retval":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    :cond_4
    iget-object v8, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 938
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPServerTransaction;>;"
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 939
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .line 940
    .local v6, "sipServerTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    invoke-virtual {v6, p1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov2/nist/javax2/sip/message/SIPMessage;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_5

    .line 941
    move-object v5, v6

    .line 974
    .local v5, "retval":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v8

    if-nez v8, :cond_9

    .line 975
    :goto_1
    return-object v5

    .line 922
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPServerTransaction;>;"
    .end local v6    # "sipServerTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .local v5, "retval":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    :cond_6
    :try_start_2
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v4

    .line 924
    .local v4, "key":Ljava/lang/String;
    iget-object v8, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-object v5, v0

    .line 926
    .local v5, "retval":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v8

    if-nez v8, :cond_7

    :goto_2
    const-string/jumbo v8, "z9hg4bk"

    .line 930
    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-eqz v8, :cond_4

    .line 974
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v8

    if-nez v8, :cond_8

    .line 975
    :goto_3
    return-object v5

    .line 927
    :cond_7
    :try_start_3
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "serverTx: looking for key "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " existing="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 975
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "retval":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    .end local v7    # "via":Lgov2/nist/javax2/sip/header/Via;
    :catchall_0
    move-exception v8

    .line 974
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v9

    if-nez v9, :cond_10

    .line 975
    :goto_4
    throw v8

    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "retval":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    .restart local v7    # "via":Lgov2/nist/javax2/sip/header/Via;
    :cond_8
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "findTransaction: returning  : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_3

    .end local v4    # "key":Ljava/lang/String;
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPServerTransaction;>;"
    .restart local v6    # "sipServerTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_9
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "findTransaction: returning  : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 949
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPServerTransaction;>;"
    .end local v6    # "sipServerTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .local v5, "retval":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    :cond_a
    :try_start_4
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v4

    .line 951
    .restart local v4    # "key":Ljava/lang/String;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v8

    if-nez v8, :cond_b

    .line 953
    :goto_5
    iget-object v8, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-object v5, v0

    .local v5, "retval":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    const-string/jumbo v8, "z9hg4bk"

    .line 954
    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v8

    if-eqz v8, :cond_0

    .line 974
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v8

    if-nez v8, :cond_c

    .line 975
    :goto_6
    return-object v5

    .line 952
    .local v5, "retval":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    :cond_b
    :try_start_5
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "clientTx: looking for key "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 975
    .local v5, "retval":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    :cond_c
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "findTransaction: returning  : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_6

    .line 964
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "retval":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPClientTransaction;>;"
    :cond_d
    :try_start_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .line 965
    .local v1, "clientTransaction":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    invoke-virtual {v1, p1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isMessagePartOfTransaction(Lgov2/nist/javax2/sip/message/SIPMessage;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 966
    move-object v5, v1

    .line 974
    .restart local v5    # "retval":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v8

    if-nez v8, :cond_e

    .line 975
    :goto_7
    return-object v5

    :cond_e
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "findTransaction: returning  : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_7

    .end local v1    # "clientTransaction":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPClientTransaction;>;"
    .end local v5    # "retval":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    :cond_f
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "findTransaction: returning  : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v7    # "via":Lgov2/nist/javax2/sip/header/Via;
    :cond_10
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "findTransaction: returning  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public findTransactionPendingAck(Lgov2/nist/javax2/sip/message/SIPRequest;)Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .locals 2
    .param p1, "ackMessage"    # Lgov2/nist/javax2/sip/message/SIPRequest;

    .prologue
    .line 872
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v1

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    return-object v0
.end method

.method public getAddressResolver()Lgov2/nist/core/net/AddressResolver;
    .locals 1

    .prologue
    .line 2096
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->addressResolver:Lgov2/nist/core/net/AddressResolver;

    return-object v0
.end method

.method public getDialog(Ljava/lang/String;)Lgov2/nist/javax2/sip/stack/SIPDialog;
    .locals 4
    .param p1, "dialogId"    # Ljava/lang/String;

    .prologue
    .line 760
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPDialog;

    .line 761
    .local v0, "sipDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 764
    :goto_0
    return-object v0

    .line 762
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDialog("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") : returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getForkedTransaction(Ljava/lang/String;)Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .locals 1
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 2515
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    return-object v0
.end method

.method public getMaxMessageSize()I
    .locals 1

    .prologue
    .line 1773
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->maxMessageSize:I

    return v0
.end method

.method protected getMessageProcessors()[Lgov2/nist/javax2/sip/stack/MessageProcessor;
    .locals 3

    .prologue
    .line 1957
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    monitor-enter v1

    .line 1958
    :try_start_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    const/4 v2, 0x0

    new-array v2, v2, [Lgov2/nist/javax2/sip/stack/MessageProcessor;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgov2/nist/javax2/sip/stack/MessageProcessor;

    check-cast v0, [Lgov2/nist/javax2/sip/stack/MessageProcessor;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 1959
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNetworkLayer()Lgov2/nist/core/net/NetworkLayer;
    .locals 1

    .prologue
    .line 1717
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->networkLayer:Lgov2/nist/core/net/NetworkLayer;

    if-eqz v0, :cond_0

    .line 1720
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->networkLayer:Lgov2/nist/core/net/NetworkLayer;

    return-object v0

    .line 1718
    :cond_0
    sget-object v0, Lgov2/nist/core/net/DefaultNetworkLayer;->SINGLETON:Lgov2/nist/core/net/DefaultNetworkLayer;

    return-object v0
.end method

.method public getNextHop(Lgov2/nist/javax2/sip/message/SIPRequest;)Ljavax2/sip/address/Hop;
    .locals 2
    .param p1, "sipRequest"    # Lgov2/nist/javax2/sip/message/SIPRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1812
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->useRouterForAll:Z

    if-nez v0, :cond_1

    .line 1821
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getRequestURI()Ljavax2/sip/address/URI;

    move-result-object v0

    invoke-interface {v0}, Ljavax2/sip/address/URI;->isSipURI()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1822
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->defaultRouter:Lgov2/nist/javax2/sip/stack/DefaultRouter;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/stack/DefaultRouter;->getNextHop(Ljavax2/sip/message/Request;)Ljavax2/sip/address/Hop;

    move-result-object v0

    return-object v0

    .line 1814
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->router:Ljavax2/sip/address/Router;

    if-nez v0, :cond_2

    .line 1817
    return-object v1

    .line 1815
    :cond_2
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->router:Ljavax2/sip/address/Router;

    invoke-interface {v0, p1}, Ljavax2/sip/address/Router;->getNextHop(Ljavax2/sip/message/Request;)Ljavax2/sip/address/Hop;

    move-result-object v0

    return-object v0

    .line 1821
    :cond_3
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getRouteHeaders()Lgov2/nist/javax2/sip/header/RouteList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1823
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->router:Ljavax2/sip/address/Router;

    if-nez v0, :cond_4

    .line 1826
    return-object v1

    .line 1824
    :cond_4
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->router:Ljavax2/sip/address/Router;

    invoke-interface {v0, p1}, Ljavax2/sip/address/Router;->getNextHop(Ljavax2/sip/message/Request;)Ljavax2/sip/address/Hop;

    move-result-object v0

    return-object v0
.end method

.method public getReceiveUdpBufferSize()I
    .locals 1

    .prologue
    .line 2442
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->receiveUdpBufferSize:I

    return v0
.end method

.method public getRetransmissionAlertTransaction(Ljava/lang/String;)Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .locals 1
    .param p1, "dialogId"    # Ljava/lang/String;

    .prologue
    .line 578
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    return-object v0
.end method

.method public getRouter()Ljavax2/sip/address/Router;
    .locals 1

    .prologue
    .line 1904
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->router:Ljavax2/sip/address/Router;

    return-object v0
.end method

.method public getRouter(Lgov2/nist/javax2/sip/message/SIPRequest;)Ljavax2/sip/address/Router;
    .locals 2
    .param p1, "request"    # Lgov2/nist/javax2/sip/message/SIPRequest;

    .prologue
    .line 1882
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getRequestLine()Lgov2/nist/javax2/sip/header/RequestLine;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1884
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->useRouterForAll:Z

    if-nez v0, :cond_2

    .line 1887
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getRequestURI()Ljavax2/sip/address/URI;

    move-result-object v0

    invoke-interface {v0}, Ljavax2/sip/address/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1889
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->defaultRouter:Lgov2/nist/javax2/sip/stack/DefaultRouter;

    return-object v0

    .line 1883
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->defaultRouter:Lgov2/nist/javax2/sip/stack/DefaultRouter;

    return-object v0

    .line 1885
    :cond_2
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->router:Ljavax2/sip/address/Router;

    return-object v0

    .line 1887
    :cond_3
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getRequestURI()Ljavax2/sip/address/URI;

    move-result-object v0

    invoke-interface {v0}, Ljavax2/sip/address/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sips"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1891
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->router:Ljavax2/sip/address/Router;

    if-nez v0, :cond_4

    .line 1894
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->defaultRouter:Lgov2/nist/javax2/sip/stack/DefaultRouter;

    return-object v0

    .line 1892
    :cond_4
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->router:Ljavax2/sip/address/Router;

    return-object v0
.end method

.method public getSendUdpBufferSize()I
    .locals 1

    .prologue
    .line 2462
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->sendUdpBufferSize:I

    return v0
.end method

.method public abstract getSipListener()Ljavax2/sip/SipListener;
.end method

.method public getStackLogger()Lgov2/nist/core/StackLogger;
    .locals 1

    .prologue
    .line 1752
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    return-object v0
.end method

.method public getThreadAuditor()Lgov2/nist/core/ThreadAuditor;
    .locals 1

    .prologue
    .line 2123
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->threadAuditor:Lgov2/nist/core/ThreadAuditor;

    return-object v0
.end method

.method public getTimer()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 2432
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method public isAlive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1913
    iget-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->toExit:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCancelClientTransactionChecked()Z
    .locals 1

    .prologue
    .line 2314
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->cancelClientTransactionChecked:Z

    return v0
.end method

.method public isEventForked(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ename"    # Ljava/lang/String;

    .prologue
    .line 2083
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2087
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->forkedEvents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2084
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEventForked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->forkedEvents:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isLogStackTraceOnMessageSend()Z
    .locals 1

    .prologue
    .line 2502
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->logStackTraceOnMessageSend:Z

    return v0
.end method

.method public isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 1730
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    invoke-interface {v0}, Lgov2/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoggingEnabled(I)Z
    .locals 1
    .param p1, "logLevel"    # I

    .prologue
    .line 1742
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    invoke-interface {v0, p1}, Lgov2/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNon2XXAckPassedToListener()Z
    .locals 1

    .prologue
    .line 2295
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->non2XXAckPassedToListener:Z

    return v0
.end method

.method public isRemoteTagReassignmentAllowed()Z
    .locals 1

    .prologue
    .line 2318
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->remoteTagReassignmentAllowed:Z

    return v0
.end method

.method public isRfc2543Supported()Z
    .locals 1

    .prologue
    .line 2310
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    return v0
.end method

.method public isTransactionPendingAck(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)Z
    .locals 3
    .param p1, "serverTransaction"    # Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .prologue
    const/4 v2, 0x0

    .line 900
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v1

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .line 901
    .local v0, "branchId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 904
    return v2

    .line 902
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public mapTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    .locals 1
    .param p1, "transaction"    # Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .prologue
    .line 1146
    iget-boolean v0, p1, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isMapped:Z

    if-nez v0, :cond_0

    .line 1147
    invoke-direct {p0, p1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 1149
    const/4 v0, 0x1

    iput-boolean v0, p1, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isMapped:Z

    .line 1150
    return-void

    .line 1146
    :cond_0
    return-void
.end method

.method public newSIPServerRequest(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/MessageChannel;)Lgov2/nist/javax2/sip/stack/ServerRequestInterface;
    .locals 10
    .param p1, "requestReceived"    # Lgov2/nist/javax2/sip/message/SIPRequest;
    .param p2, "requestMessageChannel"    # Lgov2/nist/javax2/sip/stack/MessageChannel;

    .prologue
    const/4 v9, 0x0

    .line 1169
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    .line 1171
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, p2}, Lgov2/nist/javax2/sip/message/SIPRequest;->setMessageChannel(Ljava/lang/Object;)V

    .line 1173
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .line 1176
    .local v0, "currentTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    if-nez v0, :cond_4

    .line 1180
    :cond_0
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPServerTransaction;>;"
    const/4 v0, 0x0

    .line 1182
    .local v0, "currentTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "z9hg4bk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1197
    .end local v0    # "currentTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_1
    :goto_0
    if-eqz v0, :cond_8

    .line 1223
    .end local v4    # "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPServerTransaction;>;"
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-nez v6, :cond_c

    .line 1228
    :goto_2
    if-nez v0, :cond_d

    .line 1232
    :goto_3
    if-nez v0, :cond_e

    .line 1234
    :cond_3
    if-nez v0, :cond_f

    .line 1251
    return-object v9

    .line 1176
    .local v0, "currentTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_4
    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov2/nist/javax2/sip/message/SIPMessage;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 1185
    .end local v0    # "currentTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .restart local v4    # "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPServerTransaction;>;"
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .line 1188
    .local v3, "nextTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    invoke-virtual {v3, p1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov2/nist/javax2/sip/message/SIPMessage;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1183
    .end local v3    # "nextTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v0, :cond_5

    goto :goto_0

    .line 1191
    .restart local v3    # "nextTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_7
    move-object v0, v3

    .restart local v0    # "currentTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    goto :goto_4

    .line 1198
    .end local v0    # "currentTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .end local v3    # "nextTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_8
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->findPendingTransaction(Lgov2/nist/javax2/sip/message/SIPRequest;)Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-result-object v0

    .line 1199
    .restart local v0    # "currentTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    if-nez v0, :cond_9

    .line 1209
    invoke-virtual {p0, p2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->createServerTransaction(Lgov2/nist/javax2/sip/stack/MessageChannel;)Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-result-object v0

    .line 1210
    if-eqz v0, :cond_2

    .line 1212
    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 1214
    invoke-virtual {p1, v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->setTransaction(Ljava/lang/Object;)V

    goto :goto_1

    .line 1201
    :cond_9
    invoke-virtual {p1, v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->setTransaction(Ljava/lang/Object;)V

    .line 1202
    if-nez v0, :cond_b

    .line 1205
    :cond_a
    return-object v9

    .line 1202
    :cond_b
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->acquireSem()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1203
    return-object v0

    .line 1224
    .end local v0    # "currentTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .end local v4    # "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPServerTransaction;>;"
    :cond_c
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "newSIPServerRequest( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v8

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2

    .line 1229
    :cond_d
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov2/nist/javax2/sip/stack/StackMessageFactory;

    invoke-interface {v6, p1, v0}, Lgov2/nist/javax2/sip/stack/StackMessageFactory;->newSIPServerRequest(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/MessageChannel;)Lgov2/nist/javax2/sip/stack/ServerRequestInterface;

    move-result-object v6

    invoke-virtual {v0, v6}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setRequestInterface(Lgov2/nist/javax2/sip/stack/ServerRequestInterface;)V

    goto/16 :goto_3

    .line 1232
    :cond_e
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->acquireSem()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1233
    return-object v0

    .line 1240
    :cond_f
    :try_start_0
    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov2/nist/javax2/sip/message/SIPMessage;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 1249
    :cond_10
    :goto_5
    return-object v9

    .line 1240
    :cond_11
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/16 v6, 0x64

    .line 1242
    invoke-virtual {p1, v6}, Lgov2/nist/javax2/sip/message/SIPRequest;->createResponse(I)Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v5

    .line 1243
    .local v5, "trying":Lgov2/nist/javax2/sip/message/SIPResponse;
    invoke-virtual {v5}, Lgov2/nist/javax2/sip/message/SIPResponse;->removeContent()V

    .line 1244
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getMessageChannel()Lgov2/nist/javax2/sip/stack/MessageChannel;

    move-result-object v6

    invoke-virtual {v6, v5}, Lgov2/nist/javax2/sip/stack/MessageChannel;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 1248
    .end local v5    # "trying":Lgov2/nist/javax2/sip/message/SIPResponse;
    :catch_0
    move-exception v1

    .line 1247
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    const-string/jumbo v7, "Exception occured sending TRYING"

    invoke-interface {v6, v7}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public newSIPServerResponse(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;)Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    .locals 10
    .param p1, "responseReceived"    # Lgov2/nist/javax2/sip/message/SIPResponse;
    .param p2, "responseMessageChannel"    # Lgov2/nist/javax2/sip/stack/MessageChannel;

    .prologue
    const/16 v7, 0x10

    const/4 v9, 0x0

    .line 1273
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    .line 1278
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .line 1280
    .local v1, "currentTransaction":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    if-nez v1, :cond_4

    .line 1285
    :cond_0
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPClientTransaction;>;"
    const/4 v1, 0x0

    .line 1287
    .end local v1    # "currentTransaction":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1303
    :cond_2
    if-eqz v1, :cond_6

    .line 1320
    .end local v5    # "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPClientTransaction;>;"
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->acquireSem()Z

    move-result v0

    .line 1323
    .local v0, "acquired":Z
    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled(I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1328
    :goto_2
    if-nez v0, :cond_9

    .line 1341
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-nez v6, :cond_c

    .line 1344
    :goto_3
    if-nez v0, :cond_d

    .line 1347
    return-object v9

    .line 1280
    .end local v0    # "acquired":Z
    .restart local v1    # "currentTransaction":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    :cond_4
    invoke-virtual {v1, p1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isMessagePartOfTransaction(Lgov2/nist/javax2/sip/message/SIPMessage;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "z9hg4bk"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 1287
    .end local v1    # "currentTransaction":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .restart local v5    # "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPClientTransaction;>;"
    :cond_5
    if-nez v1, :cond_2

    .line 1289
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .line 1292
    .local v3, "nextTransaction":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    invoke-virtual {v3, p1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isMessagePartOfTransaction(Lgov2/nist/javax2/sip/message/SIPMessage;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1296
    move-object v1, v3

    .restart local v1    # "currentTransaction":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    goto :goto_0

    .line 1307
    .end local v1    # "currentTransaction":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .end local v3    # "nextTransaction":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    :cond_6
    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1313
    :goto_4
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov2/nist/javax2/sip/stack/StackMessageFactory;

    invoke-interface {v6, p1, p2}, Lgov2/nist/javax2/sip/stack/StackMessageFactory;->newSIPServerResponse(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;)Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    move-result-object v6

    return-object v6

    .line 1308
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v8, "before processing"

    invoke-virtual {p2, p1, v6, v7, v8}, Lgov2/nist/javax2/sip/stack/MessageChannel;->logResponse(Lgov2/nist/javax2/sip/message/SIPResponse;JLjava/lang/String;)V

    goto :goto_4

    .line 1324
    .end local v5    # "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPClientTransaction;>;"
    .restart local v0    # "acquired":Z
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v8, "before processing"

    invoke-virtual {v1, p1, v6, v7, v8}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->logResponse(Lgov2/nist/javax2/sip/message/SIPResponse;JLjava/lang/String;)V

    goto :goto_2

    .line 1329
    :cond_9
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov2/nist/javax2/sip/stack/StackMessageFactory;

    invoke-interface {v6, p1, v1}, Lgov2/nist/javax2/sip/stack/StackMessageFactory;->newSIPServerResponse(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;)Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    move-result-object v4

    .line 1331
    .local v4, "sri":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    if-nez v4, :cond_a

    .line 1334
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-nez v6, :cond_b

    .line 1337
    :goto_5
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->releaseSem()V

    .line 1338
    return-object v9

    .line 1332
    :cond_a
    invoke-virtual {v1, v4}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setResponseInterface(Lgov2/nist/javax2/sip/stack/ServerResponseInterface;)V

    goto :goto_3

    .line 1335
    :cond_b
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    const-string/jumbo v7, "returning null - serverResponseInterface is null!"

    invoke-interface {v6, v7}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_5

    .line 1341
    .end local v4    # "sri":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    :cond_c
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    const-string/jumbo v7, "Could not aquire semaphore !!"

    invoke-interface {v6, v7}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_3

    .line 1345
    :cond_d
    return-object v1
.end method

.method public putDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;)V
    .locals 4
    .param p1, "dialog"    # Lgov2/nist/javax2/sip/stack/SIPDialog;

    .prologue
    .line 609
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "dialogId":Ljava/lang/String;
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 617
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 620
    :goto_0
    invoke-virtual {p1, p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setStack(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;)V

    .line 621
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 622
    :goto_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    return-void

    .line 611
    :cond_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 615
    :goto_2
    return-void

    .line 612
    :cond_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "putDialog: dialog already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in table = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2

    .line 618
    :cond_2
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "putDialog dialogId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 621
    :cond_3
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    invoke-interface {v1}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    goto :goto_1
.end method

.method public putInMergeTable(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;Lgov2/nist/javax2/sip/message/SIPRequest;)V
    .locals 2
    .param p1, "sipTransaction"    # Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .param p2, "sipRequest"    # Lgov2/nist/javax2/sip/message/SIPRequest;

    .prologue
    .line 1132
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v0

    .line 1133
    .local v0, "mergeKey":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1136
    :goto_0
    return-void

    .line 1134
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putPendingTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    .locals 3
    .param p1, "tr"    # Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .prologue
    .line 1704
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1706
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    return-void

    .line 1704
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putPendingTransaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected reInit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 497
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    .line 502
    new-instance v0, Lgov2/nist/javax2/sip/stack/IOHandler;

    invoke-direct {v0, p0}, Lgov2/nist/javax2/sip/stack/IOHandler;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->ioHandler:Lgov2/nist/javax2/sip/stack/IOHandler;

    .line 505
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 506
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 507
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 508
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 509
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 511
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 512
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 513
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    .line 514
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 516
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    .line 518
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 520
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    const-string/jumbo v1, "Re-initializing !"

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;)V
    .locals 6
    .param p1, "dialog"    # Lgov2/nist/javax2/sip/stack/SIPDialog;

    .prologue
    const/4 v5, 0x0

    .line 700
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v2

    .line 702
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getEarlyDialogId()Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "earlyId":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 709
    :goto_0
    if-nez v2, :cond_2

    .line 736
    iget-boolean v4, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isDialogTerminatedEventDeliveredForNullDialog:Z

    if-nez v4, :cond_4

    .line 748
    :cond_0
    :goto_1
    return-void

    .line 705
    :cond_1
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 715
    :cond_2
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 717
    .local v3, "old":Ljava/lang/Object;
    if-eq v3, p1, :cond_3

    .line 726
    :goto_2
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->testAndSetIsDialogTerminatedEventDelivered()Z

    move-result v4

    if-nez v4, :cond_0

    .line 727
    new-instance v1, Ljavax2/sip/DialogTerminatedEvent;

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Ljavax2/sip/DialogTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax2/sip/Dialog;)V

    .line 732
    .local v1, "event":Ljavax2/sip/DialogTerminatedEvent;
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v4

    invoke-virtual {v4, v1, v5}, Lgov2/nist/javax2/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    goto :goto_1

    .line 718
    .end local v1    # "event":Ljavax2/sip/DialogTerminatedEvent;
    :cond_3
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 737
    .end local v3    # "old":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->testAndSetIsDialogTerminatedEventDelivered()Z

    move-result v4

    if-nez v4, :cond_0

    .line 738
    new-instance v1, Ljavax2/sip/DialogTerminatedEvent;

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Ljavax2/sip/DialogTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax2/sip/Dialog;)V

    .line 743
    .restart local v1    # "event":Ljavax2/sip/DialogTerminatedEvent;
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v4

    invoke-virtual {v4, v1, v5}, Lgov2/nist/javax2/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    goto :goto_1
.end method

.method public removeDialog(Ljava/lang/String;)V
    .locals 2
    .param p1, "dialogId"    # Ljava/lang/String;

    .prologue
    .line 775
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    return-void

    .line 776
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    const-string/jumbo v1, "Silently removing dialog from table"

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeFromMergeTable(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    .locals 3
    .param p1, "tr"    # Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .prologue
    .line 1117
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1120
    :goto_0
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v0

    .line 1121
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1124
    :goto_1
    return-void

    .line 1118
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    const-string/jumbo v2, "Removing tx from merge table "

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 1122
    .restart local v0    # "key":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method protected removeMessageProcessor(Lgov2/nist/javax2/sip/stack/MessageProcessor;)V
    .locals 2
    .param p1, "oldMessageProcessor"    # Lgov2/nist/javax2/sip/stack/MessageProcessor;

    .prologue
    .line 1942
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    monitor-enter v1

    .line 1943
    :try_start_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1946
    :goto_0
    monitor-exit v1

    .line 1947
    return-void

    .line 1944
    :cond_0
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->stop()V

    goto :goto_0

    .line 1946
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removePendingTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    .locals 3
    .param p1, "tr"    # Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .prologue
    .line 1104
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1107
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    return-void

    .line 1105
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removePendingTx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V
    .locals 10
    .param p1, "sipTransaction"    # Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .prologue
    .line 1465
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1469
    :goto_0
    instance-of v7, p1, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    if-nez v7, :cond_3

    .line 1490
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    .line 1491
    .local v2, "key":Ljava/lang/String;
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1493
    .local v4, "removed":Ljava/lang/Object;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1506
    :cond_0
    :goto_1
    if-nez v4, :cond_7

    .line 1515
    :cond_1
    :goto_2
    return-void

    .line 1466
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "removed":Ljava/lang/Object;
    :cond_2
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Removing Transaction = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " transaction = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 1470
    :cond_3
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1471
    :goto_3
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    .line 1472
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1473
    .restart local v4    # "removed":Ljava/lang/Object;
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v3

    .local v3, "method":Ljava/lang/String;
    move-object v7, p1

    .line 1474
    check-cast v7, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->removePendingTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    move-object v7, p1

    .line 1475
    check-cast v7, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->removeTransactionPendingAck(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)Z

    const-string/jumbo v7, "INVITE"

    .line 1476
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1480
    :goto_4
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v5

    .line 1481
    .local v5, "sipProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->testAndSetTransactionTerminatedEvent()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1482
    new-instance v1, Ljavax2/sip/TransactionTerminatedEvent;

    move-object v7, p1

    check-cast v7, Ljavax2/sip/ServerTransaction;

    invoke-direct {v1, v5, v7}, Ljavax2/sip/TransactionTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax2/sip/ServerTransaction;)V

    .line 1485
    .local v1, "event":Ljavax2/sip/TransactionTerminatedEvent;
    invoke-virtual {v5, v1, p1}, Lgov2/nist/javax2/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    goto :goto_2

    .line 1470
    .end local v1    # "event":Ljavax2/sip/TransactionTerminatedEvent;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "method":Ljava/lang/String;
    .end local v4    # "removed":Ljava/lang/Object;
    .end local v5    # "sipProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    :cond_4
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    invoke-interface {v7}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    goto :goto_3

    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "method":Ljava/lang/String;
    .restart local v4    # "removed":Ljava/lang/Object;
    :cond_5
    move-object v7, p1

    .line 1477
    check-cast v7, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->removeFromMergeTable(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    goto :goto_4

    .line 1494
    .end local v3    # "method":Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "REMOVED client tx "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " KEY = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1495
    if-eqz v4, :cond_0

    move-object v0, v4

    .line 1496
    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .line 1497
    .local v0, "clientTx":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "INVITE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->maxForkTime:I

    if-eqz v7, :cond_0

    .line 1498
    new-instance v6, Lgov2/nist/javax2/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;

    invoke-direct {v6, p0, v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/SIPClientTransaction;)V

    .line 1500
    .local v6, "ttask":Lgov2/nist/javax2/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    iget v8, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->maxForkTime:I

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    invoke-virtual {v7, v6, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1

    .line 1506
    .end local v0    # "clientTx":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .end local v6    # "ttask":Lgov2/nist/javax2/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;
    :cond_7
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->testAndSetTransactionTerminatedEvent()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1507
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v5

    .line 1508
    .restart local v5    # "sipProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    new-instance v1, Ljavax2/sip/TransactionTerminatedEvent;

    move-object v7, p1

    check-cast v7, Ljavax2/sip/ClientTransaction;

    invoke-direct {v1, v5, v7}, Ljavax2/sip/TransactionTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax2/sip/ClientTransaction;)V

    .line 1511
    .restart local v1    # "event":Ljavax2/sip/TransactionTerminatedEvent;
    invoke-virtual {v5, v1, p1}, Lgov2/nist/javax2/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    goto/16 :goto_2
.end method

.method protected removeTransactionHash(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V
    .locals 5
    .param p1, "sipTransaction"    # Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .prologue
    .line 1595
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v1

    .line 1596
    .local v1, "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    if-eqz v1, :cond_1

    .line 1597
    instance-of v2, p1, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    if-nez v2, :cond_2

    .line 1605
    instance-of v2, p1, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    if-nez v2, :cond_4

    .line 1612
    :cond_0
    :goto_0
    return-void

    .line 1596
    :cond_1
    return-void

    .line 1598
    :cond_2
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    .line 1599
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1603
    :goto_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1600
    :cond_3
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    invoke-interface {v2}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    .line 1601
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removing client Tx : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .line 1606
    .end local v0    # "key":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    .line 1607
    .restart local v0    # "key":Ljava/lang/String;
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1609
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removing server Tx : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeTransactionPendingAck(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)Z
    .locals 3
    .param p1, "serverTransaction"    # Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .prologue
    const/4 v2, 0x0

    .line 884
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v1

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, "branchId":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 889
    :cond_0
    return v2

    .line 885
    :cond_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 886
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    const/4 v1, 0x1

    return v1
.end method

.method protected setMessageFactory(Lgov2/nist/javax2/sip/stack/StackMessageFactory;)V
    .locals 0
    .param p1, "messageFactory"    # Lgov2/nist/javax2/sip/stack/StackMessageFactory;

    .prologue
    .line 2019
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov2/nist/javax2/sip/stack/StackMessageFactory;

    .line 2020
    return-void
.end method

.method public stopStack()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1660
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    if-nez v3, :cond_0

    .line 1663
    :goto_0
    iput-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    .line 1664
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1665
    const/4 v3, 0x1

    iput-boolean v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->toExit:Z

    .line 1666
    monitor-enter p0

    .line 1667
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1668
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1669
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v4

    .line 1670
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1671
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1673
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    monitor-enter v4

    .line 1676
    :try_start_2
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getMessageProcessors()[Lgov2/nist/javax2/sip/stack/MessageProcessor;

    move-result-object v2

    .local v2, "processorList":[Lgov2/nist/javax2/sip/stack/MessageProcessor;
    const/4 v1, 0x0

    .line 1677
    .local v1, "processorIndex":I
    :goto_1
    array-length v3, v2

    if-lt v1, v3, :cond_1

    .line 1680
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->ioHandler:Lgov2/nist/javax2/sip/stack/IOHandler;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/IOHandler;->closeAll()V

    .line 1683
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-wide/16 v4, 0x3e8

    .line 1686
    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1690
    :goto_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1691
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1693
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1694
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->serverLogger:Lgov2/nist/core/ServerLogger;

    invoke-interface {v3}, Lgov2/nist/core/ServerLogger;->closeLogFile()V

    .line 1696
    return-void

    .line 1660
    .end local v1    # "processorIndex":I
    .end local v2    # "processorList":[Lgov2/nist/javax2/sip/stack/MessageProcessor;
    :cond_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 1668
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 1671
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    .line 1678
    .restart local v1    # "processorIndex":I
    .restart local v2    # "processorList":[Lgov2/nist/javax2/sip/stack/MessageProcessor;
    :cond_1
    :try_start_6
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->removeMessageProcessor(Lgov2/nist/javax2/sip/stack/MessageProcessor;)V

    .line 1677
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1683
    .end local v1    # "processorIndex":I
    .end local v2    # "processorList":[Lgov2/nist/javax2/sip/stack/MessageProcessor;
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v3

    .line 1689
    .restart local v1    # "processorIndex":I
    .restart local v2    # "processorList":[Lgov2/nist/javax2/sip/stack/MessageProcessor;
    :catch_0
    move-exception v0

    .line 1688
    .local v0, "ex":Ljava/lang/InterruptedException;
    goto :goto_2
.end method

.method public declared-synchronized transactionErrorEvent(Lgov2/nist/javax2/sip/stack/SIPTransactionErrorEvent;)V
    .locals 4
    .param p1, "transactionErrorEvent"    # Lgov2/nist/javax2/sip/stack/SIPTransactionErrorEvent;

    .prologue
    monitor-enter p0

    .line 1620
    :try_start_0
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .line 1622
    .local v1, "transaction":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransactionErrorEvent;->getErrorID()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    :goto_0
    monitor-exit p0

    .line 1633
    return-void

    .line 1624
    :cond_0
    :try_start_1
    sget-object v2, Lgov2/nist/javax2/sip/stack/SIPTransaction;->TERMINATED_STATE:Ljavax2/sip/TransactionState;

    invoke-virtual {v1, v2}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 1625
    instance-of v2, v1, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    if-nez v2, :cond_1

    .line 1629
    :goto_1
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->disableTimeoutTimer()V

    .line 1630
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->disableRetransmissionTimer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1    # "transaction":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1627
    .restart local v1    # "transaction":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    :cond_1
    :try_start_2
    move-object v0, v1

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->collectionTime:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
