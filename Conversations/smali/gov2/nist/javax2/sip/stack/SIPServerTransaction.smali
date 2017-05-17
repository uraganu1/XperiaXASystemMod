.class public Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
.super Lgov2/nist/javax2/sip/stack/SIPTransaction;
.source "SIPServerTransaction.java"

# interfaces
.implements Lgov2/nist/javax2/sip/stack/ServerRequestInterface;
.implements Ljavax2/sip/ServerTransaction;
.implements Ljavax2/sip/Transaction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov2/nist/javax2/sip/stack/SIPServerTransaction$TransactionTimer;,
        Lgov2/nist/javax2/sip/stack/SIPServerTransaction$SendTrying;,
        Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;,
        Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ProvisionalResponseTask;,
        Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;
    }
.end annotation


# instance fields
.field private dialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

.field private inviteTransaction:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

.field protected isAckSeen:Z

.field private pendingReliableResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

.field private pendingSubscribeTransaction:Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

.field private provisionalResponseSem:Ljava/util/concurrent/Semaphore;

.field private provisionalResponseTask:Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

.field private transient requestOf:Lgov2/nist/javax2/sip/stack/ServerRequestInterface;

.field private retransmissionAlertEnabled:Z

.field private retransmissionAlertTimerTask:Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

.field private rseqNumber:I


# direct methods
.method protected constructor <init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/MessageChannel;)V
    .locals 4
    .param p1, "sipStack"    # Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    .param p2, "newChannelToUse"    # Lgov2/nist/javax2/sip/stack/MessageChannel;

    .prologue
    .line 502
    invoke-direct {p0, p1, p2}, Lgov2/nist/javax2/sip/stack/SIPTransaction;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/MessageChannel;)V

    .line 204
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->provisionalResponseSem:Ljava/util/concurrent/Semaphore;

    .line 504
    iget v0, p1, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 509
    :goto_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->rseqNumber:I

    .line 512
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    :goto_1
    return-void

    .line 505
    :cond_0
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;

    invoke-direct {v1, p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;-><init>(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    iget v2, p1, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 513
    :cond_1
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating Server Transaction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getBranchId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    .locals 0
    .param p0, "x0"    # Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .prologue
    .line 173
    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->fireReliableResponseRetransmissionTimer()V

    return-void
.end method

.method static synthetic access$100(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)Ljavax2/sip/TransactionState;
    .locals 1
    .param p0, "x0"    # Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .prologue
    .line 173
    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;

    move-result-object v0

    return-object v0
.end method

.method private fireReliableResponseRetransmissionTimer()V
    .locals 2

    .prologue
    .line 1153
    :try_start_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    invoke-super {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    :goto_0
    return-void

    .line 1160
    :catch_0
    move-exception v0

    .line 1156
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1157
    :goto_1
    sget-object v1, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setState(Ljavax2/sip/TransactionState;)V

    const/4 v1, 0x2

    .line 1158
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    goto :goto_0

    .line 1156
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private getRealState()Ljavax2/sip/TransactionState;
    .locals 1

    .prologue
    .line 1423
    invoke-super {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v0

    return-object v0
.end method

.method private sendResponse(Lgov2/nist/javax2/sip/message/SIPResponse;)V
    .locals 9
    .param p1, "transactionResponse"    # Lgov2/nist/javax2/sip/message/SIPResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 420
    :try_start_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 430
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v5

    .line 431
    .local v5, "via":Lgov2/nist/javax2/sip/header/Via;
    invoke-virtual {v5}, Lgov2/nist/javax2/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v4

    .line 432
    .local v4, "transport":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 434
    invoke-virtual {v5}, Lgov2/nist/javax2/sip/header/Via;->getRPort()I

    move-result v3

    .line 435
    .local v3, "port":I
    if-eq v3, v7, :cond_2

    .line 436
    :goto_0
    if-eq v3, v7, :cond_3

    :goto_1
    const/4 v1, 0x0

    .line 453
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {v5}, Lgov2/nist/javax2/sip/header/Via;->getMAddr()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "received"

    .line 465
    invoke-virtual {v5, v6}, Lgov2/nist/javax2/sip/header/Via;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "host":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 476
    :goto_2
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-object v6, v6, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->addressResolver:Lgov2/nist/core/net/AddressResolver;

    new-instance v7, Lgov2/nist/javax2/sip/stack/HopImpl;

    invoke-direct {v7, v1, v3, v4}, Lgov2/nist/javax2/sip/stack/HopImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v6, v7}, Lgov2/nist/core/net/AddressResolver;->resolveAddress(Ljavax2/sip/address/Hop;)Ljavax2/sip/address/Hop;

    move-result-object v0

    .line 479
    .local v0, "hop":Ljavax2/sip/address/Hop;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v6

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v7

    invoke-interface {v0}, Ljavax2/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgov2/nist/javax2/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax2/sip/ListeningPoint;

    move-result-object v7

    invoke-interface {v7}, Ljavax2/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getPort()I

    move-result v8

    invoke-virtual {v6, v7, v8, v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->createRawMessageChannel(Ljava/lang/String;ILjavax2/sip/address/Hop;)Lgov2/nist/javax2/sip/stack/MessageChannel;

    move-result-object v2

    .line 483
    .local v2, "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    if-nez v2, :cond_7

    .line 486
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Could not create a message channel for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    .end local v0    # "hop":Ljavax2/sip/address/Hop;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    .end local v3    # "port":I
    .end local v4    # "transport":Ljava/lang/String;
    .end local v5    # "via":Lgov2/nist/javax2/sip/header/Via;
    :catchall_0
    move-exception v6

    .line 490
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    throw v6

    .line 422
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getMessageChannel()Lgov2/nist/javax2/sip/stack/MessageChannel;

    move-result-object v6

    invoke-virtual {v6, p1}, Lgov2/nist/javax2/sip/stack/MessageChannel;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    :goto_3
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    .line 492
    return-void

    .line 432
    .restart local v4    # "transport":Ljava/lang/String;
    .restart local v5    # "via":Lgov2/nist/javax2/sip/header/Via;
    :cond_1
    :try_start_2
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "missing transport!"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 435
    .restart local v3    # "port":I
    :cond_2
    invoke-virtual {v5}, Lgov2/nist/javax2/sip/header/Via;->getPort()I

    move-result v3

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "TLS"

    .line 437
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const/16 v3, 0x13c4

    .line 440
    goto :goto_1

    :cond_4
    const/16 v3, 0x13c5

    .line 438
    goto/16 :goto_1

    .line 454
    .local v1, "host":Ljava/lang/String;
    :cond_5
    invoke-virtual {v5}, Lgov2/nist/javax2/sip/header/Via;->getMAddr()Ljava/lang/String;

    move-result-object v1

    .local v1, "host":Ljava/lang/String;
    goto :goto_2

    .line 472
    :cond_6
    invoke-virtual {v5}, Lgov2/nist/javax2/sip/header/Via;->getHost()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 484
    .restart local v0    # "hop":Ljavax2/sip/address/Hop;
    .restart local v2    # "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    :cond_7
    invoke-virtual {v2, p1}, Lgov2/nist/javax2/sip/stack/MessageChannel;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public disableRetransmissionAlerts()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1624
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    if-nez v1, :cond_1

    .line 1634
    :cond_0
    :goto_0
    return-void

    .line 1624
    :cond_1
    iget-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    if-eqz v1, :cond_0

    .line 1625
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->cancel()Z

    .line 1626
    iput-boolean v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    .line 1628
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    iget-object v0, v1, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    .line 1629
    .local v0, "dialogId":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1632
    :goto_1
    iput-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    goto :goto_0

    .line 1630
    :cond_2
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-object v1, v1, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1475
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1478
    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .line 1479
    .local v0, "sst":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1476
    .end local v0    # "sst":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_0
    return v3
.end method

.method protected fireRetransmissionTimer()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 1124
    :try_start_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1128
    :goto_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1148
    :cond_0
    :goto_1
    return-void

    .line 1125
    :cond_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    const-string/jumbo v4, "fireRetransmissionTimer() -- "

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1146
    :catch_0
    move-exception v0

    .line 1143
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1144
    :goto_2
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    goto :goto_1

    .line 1128
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    if-eqz v3, :cond_0

    .line 1130
    iget-boolean v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    if-nez v3, :cond_4

    .line 1132
    :cond_3
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    if-le v3, v5, :cond_0

    iget-boolean v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isAckSeen:Z

    if-nez v3, :cond_0

    .line 1133
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    invoke-super {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V

    goto :goto_1

    .line 1130
    :cond_4
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3, p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isTransactionPendingAck(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1136
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v1

    .line 1137
    .local v1, "sipProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    new-instance v2, Ljavax2/sip/TimeoutEvent;

    sget-object v3, Ljavax2/sip/Timeout;->RETRANSMIT:Ljavax2/sip/Timeout;

    invoke-direct {v2, v1, p0, v3}, Ljavax2/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax2/sip/ServerTransaction;Ljavax2/sip/Timeout;)V

    .line 1138
    .local v2, "txTimeout":Ljavax2/sip/TimeoutEvent;
    invoke-virtual {v1, v2, p0}, Lgov2/nist/javax2/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1143
    .end local v1    # "sipProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    .end local v2    # "txTimeout":Ljavax2/sip/TimeoutEvent;
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_5
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3, v0}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected fireTimeoutTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1168
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1174
    :goto_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "INVITE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1181
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->dialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    .line 1182
    .local v0, "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1187
    :goto_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "BYE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1192
    :cond_1
    :goto_2
    sget-object v1, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;

    move-result-object v2

    if-eq v1, v2, :cond_d

    .line 1197
    :cond_2
    sget-object v1, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;

    move-result-object v2

    if-eq v1, v2, :cond_e

    .line 1201
    :cond_3
    sget-object v1, Ljavax2/sip/TransactionState;->CONFIRMED:Ljavax2/sip/TransactionState;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;

    move-result-object v2

    if-eq v1, v2, :cond_f

    .line 1208
    :cond_4
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1212
    :goto_3
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1219
    :cond_5
    :goto_4
    return-void

    .line 1169
    .end local v0    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_6
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SIPServerTransaction.fireTimeoutTimer this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " method = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v3

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1174
    :cond_7
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->removeTransactionPendingAck(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1175
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1178
    :goto_5
    return-void

    .line 1176
    :cond_8
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    const-string/jumbo v2, "Found tx pending ACK - returning"

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_5

    .line 1182
    .restart local v0    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_9
    sget-object v1, Ljavax2/sip/TransactionState;->CALLING:Ljavax2/sip/TransactionState;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_b

    .line 1186
    :cond_a
    sget v1, Lgov2/nist/javax2/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setState(I)V

    goto/16 :goto_2

    .line 1182
    :cond_b
    sget-object v1, Ljavax2/sip/TransactionState;->TRYING:Ljavax2/sip/TransactionState;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;

    move-result-object v2

    if-eq v1, v2, :cond_a

    goto/16 :goto_1

    .line 1188
    :cond_c
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1189
    sget v1, Lgov2/nist/javax2/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setState(I)V

    goto/16 :goto_2

    .line 1192
    :cond_d
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1193
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    .line 1194
    sget-object v1, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 1195
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->removeTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    goto/16 :goto_4

    .line 1197
    :cond_e
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1198
    sget-object v1, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 1199
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->removeTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    goto/16 :goto_4

    .line 1201
    :cond_f
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1206
    sget-object v1, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 1207
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->removeTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    goto/16 :goto_4

    .line 1208
    :cond_10
    sget-object v1, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_12

    .line 1211
    :cond_11
    sget-object v1, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setState(Ljavax2/sip/TransactionState;)V

    goto/16 :goto_4

    .line 1208
    :cond_12
    sget-object v1, Ljavax2/sip/TransactionState;->CONFIRMED:Ljavax2/sip/TransactionState;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;

    move-result-object v2

    if-eq v1, v2, :cond_11

    goto/16 :goto_3

    .line 1212
    :cond_13
    sget-object v1, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_5

    .line 1215
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    .line 1216
    if-eqz v0, :cond_5

    sget v1, Lgov2/nist/javax2/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setState(I)V

    goto/16 :goto_4
.end method

.method public getDialog()Ljavax2/sip/Dialog;
    .locals 1

    .prologue
    .line 1488
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->dialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    return-object v0
.end method

.method public getLastResponse()Lgov2/nist/javax2/sip/message/SIPResponse;
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    return-object v0
.end method

.method public getReliableProvisionalResponse()Lgov2/nist/javax2/sip/message/SIPResponse;
    .locals 1

    .prologue
    .line 1582
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    return-object v0
.end method

.method public getState()Ljavax2/sip/TransactionState;
    .locals 2

    .prologue
    .line 1435
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1438
    :cond_0
    invoke-super {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v0

    return-object v0

    .line 1435
    :cond_1
    sget-object v0, Ljavax2/sip/TransactionState;->TRYING:Ljavax2/sip/TransactionState;

    invoke-super {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1436
    sget-object v0, Ljavax2/sip/TransactionState;->PROCEEDING:Ljavax2/sip/TransactionState;

    return-object v0
.end method

.method public isMessagePartOfTransaction(Lgov2/nist/javax2/sip/message/SIPMessage;)Z
    .locals 18
    .param p1, "messageToTest"    # Lgov2/nist/javax2/sip/message/SIPMessage;

    .prologue
    .line 556
    const/4 v12, 0x0

    .line 558
    .local v12, "transactionMatches":Z
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v4

    .local v4, "method":Ljava/lang/String;
    const-string/jumbo v14, "INVITE"

    .line 563
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 566
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;

    move-result-object v13

    .line 567
    .local v13, "viaHeaders":Lgov2/nist/javax2/sip/header/ViaList;
    if-nez v13, :cond_3

    .line 659
    .end local v12    # "transactionMatches":Z
    .end local v13    # "viaHeaders":Lgov2/nist/javax2/sip/header/ViaList;
    :cond_1
    :goto_0
    return v12

    .line 563
    .restart local v12    # "transactionMatches":Z
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isTerminated()Z

    move-result v14

    if-eqz v14, :cond_0

    goto :goto_0

    .line 569
    .restart local v13    # "viaHeaders":Lgov2/nist/javax2/sip/header/ViaList;
    :cond_3
    invoke-virtual {v13}, Lgov2/nist/javax2/sip/header/ViaList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v11

    check-cast v11, Lgov2/nist/javax2/sip/header/Via;

    .line 570
    .local v11, "topViaHeader":Lgov2/nist/javax2/sip/header/Via;
    invoke-virtual {v11}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v3

    .line 571
    .local v3, "messageBranch":Ljava/lang/String;
    if-nez v3, :cond_d

    .line 588
    .end local v3    # "messageBranch":Ljava/lang/String;
    :cond_4
    :goto_1
    if-nez v3, :cond_e

    .line 618
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->fromTag:Ljava/lang/String;

    .line 620
    .local v5, "originalFromTag":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax2/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v9

    .line 622
    .local v9, "thisFromTag":Ljava/lang/String;
    if-nez v5, :cond_14

    :cond_6
    const/4 v7, 0x1

    .line 624
    .local v7, "skipFrom":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->toTag:Ljava/lang/String;

    .line 626
    .local v6, "originalToTag":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax2/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v10

    .line 628
    .local v10, "thisToTag":Ljava/lang/String;
    if-nez v6, :cond_15

    :cond_7
    const/4 v8, 0x1

    .line 629
    .local v8, "skipTo":Z
    :goto_3
    move-object/from16 v0, p1

    instance-of v2, v0, Lgov2/nist/javax2/sip/message/SIPResponse;

    .line 633
    .local v2, "isResponse":Z
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "CANCEL"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_16

    .line 637
    :cond_8
    if-eqz v2, :cond_17

    :cond_9
    if-eqz v7, :cond_18

    :cond_a
    if-eqz v8, :cond_19

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v14

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax2/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v15

    invoke-interface {v15}, Ljavax2/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v14

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-nez v14, :cond_1

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "CANCEL"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v14

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/message/SIPRequest;->getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;

    move-result-object v14

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/header/ViaList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v14

    invoke-virtual {v11, v14}, Lgov2/nist/javax2/sip/header/Via;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 651
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 575
    .end local v2    # "isResponse":Z
    .end local v5    # "originalFromTag":Ljava/lang/String;
    .end local v6    # "originalToTag":Ljava/lang/String;
    .end local v7    # "skipFrom":Z
    .end local v8    # "skipTo":Z
    .end local v9    # "thisFromTag":Ljava/lang/String;
    .end local v10    # "thisToTag":Ljava/lang/String;
    .restart local v3    # "messageBranch":Ljava/lang/String;
    :cond_d
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "z9hg4bk"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    const/4 v3, 0x0

    .line 581
    .local v3, "messageBranch":Ljava/lang/String;
    goto/16 :goto_1

    .line 588
    .end local v3    # "messageBranch":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    const-string/jumbo v14, "CANCEL"

    .line 589
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    .line 602
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_13

    :cond_f
    const/4 v12, 0x0

    .local v12, "transactionMatches":Z
    :goto_4
    goto/16 :goto_0

    .line 593
    .local v12, "transactionMatches":Z
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "CANCEL"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    :cond_11
    const/4 v12, 0x0

    .local v12, "transactionMatches":Z
    :goto_5
    goto/16 :goto_0

    .local v12, "transactionMatches":Z
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-virtual {v11}, Lgov2/nist/javax2/sip/header/Via;->getSentBy()Lgov2/nist/core/HostPort;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v14

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/message/SIPRequest;->getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;

    move-result-object v14

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/header/ViaList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v14

    check-cast v14, Lgov2/nist/javax2/sip/header/Via;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/header/Via;->getSentBy()Lgov2/nist/core/HostPort;

    move-result-object v14

    invoke-virtual {v15, v14}, Lgov2/nist/core/HostPort;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    const/4 v12, 0x1

    goto :goto_5

    .line 602
    :cond_13
    invoke-virtual {v11}, Lgov2/nist/javax2/sip/header/Via;->getSentBy()Lgov2/nist/core/HostPort;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v14

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/message/SIPRequest;->getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;

    move-result-object v14

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/header/ViaList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v14

    check-cast v14, Lgov2/nist/javax2/sip/header/Via;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/header/Via;->getSentBy()Lgov2/nist/core/HostPort;

    move-result-object v14

    invoke-virtual {v15, v14}, Lgov2/nist/core/HostPort;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    const/4 v12, 0x1

    goto :goto_4

    .line 622
    .restart local v5    # "originalFromTag":Ljava/lang/String;
    .restart local v9    # "thisFromTag":Ljava/lang/String;
    :cond_14
    if-eqz v9, :cond_6

    const/4 v7, 0x0

    goto/16 :goto_2

    .line 628
    .restart local v6    # "originalToTag":Ljava/lang/String;
    .restart local v7    # "skipFrom":Z
    .restart local v10    # "thisToTag":Ljava/lang/String;
    :cond_15
    if-eqz v10, :cond_7

    const/4 v8, 0x0

    goto/16 :goto_3

    .line 633
    .restart local v2    # "isResponse":Z
    .restart local v8    # "skipTo":Z
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v14

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "CANCEL"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 636
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 637
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v14

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/message/SIPRequest;->getRequestURI()Ljavax2/sip/address/URI;

    move-result-object v15

    move-object/from16 v14, p1

    check-cast v14, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/message/SIPRequest;->getRequestURI()Ljavax2/sip/address/URI;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    goto/16 :goto_0

    :cond_18
    if-eqz v5, :cond_1

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    goto/16 :goto_0

    :cond_19
    if-eqz v6, :cond_1

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_b

    goto/16 :goto_0

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v14

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v15

    invoke-interface {v15}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    goto/16 :goto_0
.end method

.method public isRetransmissionAlertEnabled()Z
    .locals 1

    .prologue
    .line 1617
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    return v0
.end method

.method public isTransactionMapped()Z
    .locals 1

    .prologue
    .line 696
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isMapped:Z

    return v0
.end method

.method protected map()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 670
    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;

    move-result-object v0

    .line 672
    .local v0, "realState":Ljavax2/sip/TransactionState;
    if-nez v0, :cond_2

    .line 677
    :cond_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-nez v1, :cond_3

    .line 684
    :cond_1
    iput-boolean v2, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isMapped:Z

    .line 689
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->removePendingTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 690
    return-void

    .line 672
    :cond_2
    sget-object v1, Ljavax2/sip/TransactionState;->TRYING:Ljavax2/sip/TransactionState;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 677
    :cond_3
    iget-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isMapped:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 678
    iput-boolean v2, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isMapped:Z

    .line 681
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$SendTrying;

    invoke-direct {v2, p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$SendTrying;-><init>(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public prackRecieved()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1593
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    if-eqz v0, :cond_0

    .line 1594
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    if-nez v0, :cond_1

    .line 1595
    :goto_0
    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    .line 1596
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->provisionalResponseSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1597
    const/4 v0, 0x1

    return v0

    .line 1593
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1594
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->cancel()Z

    goto :goto_0
.end method

.method public processRequest(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/MessageChannel;)V
    .locals 6
    .param p1, "transactionRequest"    # Lgov2/nist/javax2/sip/message/SIPRequest;
    .param p2, "sourceChannel"    # Lgov2/nist/javax2/sip/stack/MessageChannel;

    .prologue
    .line 707
    const/4 v2, 0x0

    .line 713
    .local v2, "toTu":Z
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 722
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 743
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v3

    if-nez v3, :cond_6

    .line 780
    :cond_0
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 813
    :cond_1
    :goto_1
    sget-object v3, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;

    move-result-object v4

    if-ne v3, v4, :cond_11

    .line 829
    :cond_2
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v3

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 846
    :cond_3
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "CANCEL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 858
    :goto_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1b

    .line 868
    :goto_3
    return-void

    .line 714
    :cond_4
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processRequest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 716
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tx state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 725
    :cond_5
    :try_start_1
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 726
    sget-object v3, Ljavax2/sip/TransactionState;->TRYING:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 727
    const/4 v2, 0x1

    .line 728
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setPassToListener()V

    .line 731
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isMapped:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x64

    const-string/jumbo v4, "Trying"

    .line 738
    invoke-virtual {p1, v3, v4}, Lgov2/nist/javax2/sip/message/SIPRequest;->createResponse(ILjava/lang/String;)Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 866
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 864
    :goto_4
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->semRelease()V

    .line 865
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->raiseIOExceptionEvent()V

    goto :goto_3

    .line 743
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    :try_start_2
    sget-object v3, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;

    move-result-object v4

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ACK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 747
    sget-object v3, Ljavax2/sip/TransactionState;->CONFIRMED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 748
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->disableRetransmissionTimer()V

    .line 749
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 754
    sget-object v3, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 760
    :goto_5
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isNon2XXAckPassedToListener()Z

    move-result v3

    if-nez v3, :cond_8

    .line 767
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_9

    .line 774
    :goto_6
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->semRelease()V

    .line 776
    :goto_7
    return-void

    .line 750
    :cond_7
    iget v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->TIMER_I:I

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    goto :goto_5

    .line 763
    :cond_8
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->requestOf:Lgov2/nist/javax2/sip/stack/ServerRequestInterface;

    invoke-interface {v3, p1, p0}, Lgov2/nist/javax2/sip/stack/ServerRequestInterface;->processRequest(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/MessageChannel;)V

    goto :goto_7

    .line 768
    :cond_9
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ACK received for server Tx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not delivering to application!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_6

    .line 782
    :cond_a
    sget-object v3, Ljavax2/sip/TransactionState;->PROCEEDING:Ljavax2/sip/TransactionState;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;

    move-result-object v4

    if-ne v3, v4, :cond_d

    .line 784
    :cond_b
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->semRelease()V

    .line 787
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    if-nez v3, :cond_e

    .line 801
    :cond_c
    :goto_8
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_10

    .line 808
    :goto_9
    return-void

    .line 782
    :cond_d
    sget-object v3, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;

    move-result-object v4

    if-eq v3, v4, :cond_b

    .line 793
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ACK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 796
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->requestOf:Lgov2/nist/javax2/sip/stack/ServerRequestInterface;

    if-nez v3, :cond_f

    .line 799
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->semRelease()V

    goto :goto_8

    .line 790
    :cond_e
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    invoke-super {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V

    goto :goto_8

    .line 797
    :cond_f
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->requestOf:Lgov2/nist/javax2/sip/stack/ServerRequestInterface;

    invoke-interface {v3, p1, p0}, Lgov2/nist/javax2/sip/stack/ServerRequestInterface;->processRequest(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/MessageChannel;)V

    goto :goto_8

    .line 802
    :cond_10
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "completed processing retransmitted request : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " txState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " lastResponse = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getLastResponse()Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_9

    .line 813
    :cond_11
    sget-object v3, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;

    move-result-object v4

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->requestOf:Lgov2/nist/javax2/sip/stack/ServerRequestInterface;

    if-eqz v3, :cond_2

    .line 815
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v3

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 822
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->requestOf:Lgov2/nist/javax2/sip/stack/ServerRequestInterface;

    if-nez v3, :cond_14

    .line 825
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->semRelease()V

    goto/16 :goto_3

    .line 817
    :cond_12
    if-nez v2, :cond_13

    .line 820
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->semRelease()V

    goto/16 :goto_3

    .line 818
    :cond_13
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->requestOf:Lgov2/nist/javax2/sip/stack/ServerRequestInterface;

    invoke-interface {v3, p1, p0}, Lgov2/nist/javax2/sip/stack/ServerRequestInterface;->processRequest(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/MessageChannel;)V

    goto/16 :goto_3

    .line 823
    :cond_14
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->requestOf:Lgov2/nist/javax2/sip/stack/ServerRequestInterface;

    invoke-interface {v3, p1, p0}, Lgov2/nist/javax2/sip/stack/ServerRequestInterface;->processRequest(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/MessageChannel;)V

    goto/16 :goto_3

    .line 829
    :cond_15
    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;

    move-result-object v3

    sget-object v4, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    if-ne v3, v4, :cond_3

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ACK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->requestOf:Lgov2/nist/javax2/sip/stack/ServerRequestInterface;

    if-eqz v3, :cond_3

    .line 833
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->dialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    .line 835
    .local v1, "thisDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    if-nez v1, :cond_17

    .line 837
    :cond_16
    if-nez v1, :cond_18

    .line 841
    :goto_a
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->requestOf:Lgov2/nist/javax2/sip/stack/ServerRequestInterface;

    invoke-interface {v3, p1, p0}, Lgov2/nist/javax2/sip/stack/ServerRequestInterface;->processRequest(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/MessageChannel;)V

    goto/16 :goto_2

    .line 835
    :cond_17
    iget-boolean v3, v1, Lgov2/nist/javax2/sip/stack/SIPDialog;->ackProcessed:Z

    if-eqz v3, :cond_16

    .line 843
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->semRelease()V

    goto/16 :goto_2

    .line 838
    :cond_18
    invoke-virtual {v1, p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->ackReceived(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 839
    const/4 v3, 0x1

    iput-boolean v3, v1, Lgov2/nist/javax2/sip/stack/SIPDialog;->ackProcessed:Z

    goto :goto_a

    .line 847
    .end local v1    # "thisDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_19
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 849
    :goto_b
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->semRelease()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v3, 0xc8

    .line 852
    :try_start_3
    invoke-virtual {p1, v3}, Lgov2/nist/javax2/sip/message/SIPRequest;->createResponse(I)Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 856
    :catch_1
    move-exception v3

    goto/16 :goto_2

    .line 848
    :cond_1a
    :try_start_4
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    const-string/jumbo v4, "Too late to cancel Transaction"

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_b

    .line 859
    :cond_1b
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Dropping request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 863
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_1c
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    const-string/jumbo v4, "IOException "

    invoke-interface {v3, v4, v0}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_4
.end method

.method public releaseSem()V
    .locals 2

    .prologue
    .line 1661
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->pendingSubscribeTransaction:Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    if-nez v0, :cond_1

    .line 1667
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->inviteTransaction:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    if-nez v0, :cond_2

    .line 1674
    :cond_0
    :goto_0
    invoke-super {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->releaseSem()V

    .line 1675
    return-void

    .line 1666
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->pendingSubscribeTransaction:Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->releaseSem()V

    goto :goto_0

    .line 1667
    :cond_2
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1672
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->inviteTransaction:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->releaseSem()V

    goto :goto_0
.end method

.method public scheduleAckRemoval()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1699
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1700
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Method is null["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] or method is not ACK["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1699
    :cond_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ACK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1704
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    .line 1705
    return-void

    :cond_2
    const/4 v0, 0x1

    .line 1700
    goto :goto_0
.end method

.method public sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    .locals 9
    .param p1, "messageToSend"    # Lgov2/nist/javax2/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x2bb

    .line 884
    :try_start_0
    move-object v0, p1

    check-cast v0, Lgov2/nist/javax2/sip/message/SIPResponse;

    move-object v4, v0

    .line 885
    .local v4, "transactionResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 891
    .local v3, "statusCode":I
    :try_start_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 894
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v5

    const-string/jumbo v6, "branch"

    invoke-virtual {v5, v6}, Lgov2/nist/javax2/sip/header/Via;->removeParameter(Ljava/lang/String;)V

    .line 898
    :goto_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/header/Via;->hasPort()Z
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 906
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v6

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 914
    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;

    move-result-object v5

    sget-object v6, Ljavax2/sip/TransactionState;->TRYING:Ljavax2/sip/TransactionState;

    if-eq v5, v6, :cond_4

    .line 1016
    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;

    move-result-object v5

    sget-object v6, Ljavax2/sip/TransactionState;->PROCEEDING:Ljavax2/sip/TransactionState;

    if-eq v5, v6, :cond_a

    .line 1077
    sget-object v5, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    if-eq v5, v6, :cond_f

    .line 1085
    :cond_0
    :goto_2
    :try_start_3
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-nez v5, :cond_10

    .line 1089
    :goto_3
    iput-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    .line 1090
    invoke-direct {p0, v4}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sendResponse(Lgov2/nist/javax2/sip/message/SIPResponse;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1100
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    .line 1103
    return-void

    .line 892
    :cond_1
    :try_start_4
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v5

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgov2/nist/javax2/sip/header/Via;->setBranch(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 902
    :catch_0
    move-exception v2

    .line 901
    .local v2, "ex":Ljava/text/ParseException;
    :try_start_5
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1101
    .end local v2    # "ex":Ljava/text/ParseException;
    .end local v3    # "statusCode":I
    .end local v4    # "transactionResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    :catchall_0
    move-exception v5

    .line 1100
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    throw v5

    .line 899
    .restart local v3    # "statusCode":I
    .restart local v4    # "transactionResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    :cond_2
    :try_start_6
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/header/Via;->removePort()V
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 907
    :cond_3
    :try_start_7
    invoke-direct {p0, v4}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sendResponse(Lgov2/nist/javax2/sip/message/SIPResponse;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1100
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    return-void

    .line 915
    :cond_4
    :try_start_8
    div-int/lit8 v5, v3, 0x64

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    const/16 v5, 0xc8

    .line 917
    if-gt v5, v3, :cond_0

    if-gt v3, v7, :cond_0

    .line 924
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 962
    div-int/lit8 v5, v3, 0x64

    if-eq v5, v8, :cond_8

    .line 992
    sget-object v5, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 993
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v5

    if-eqz v5, :cond_9

    :goto_4
    const/16 v5, 0x40

    .line 1009
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    goto :goto_2

    .line 916
    :cond_5
    sget-object v5, Ljavax2/sip/TransactionState;->PROCEEDING:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setState(Ljavax2/sip/TransactionState;)V

    goto :goto_2

    .line 925
    :cond_6
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 950
    sget-object v5, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setState(Ljavax2/sip/TransactionState;)V

    goto :goto_2

    .line 929
    :cond_7
    sget-object v5, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setState(Ljavax2/sip/TransactionState;)V

    const/16 v5, 0x40

    .line 948
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    goto :goto_2

    .line 985
    :cond_8
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->disableRetransmissionTimer()V

    .line 986
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->disableTimeoutTimer()V

    const/16 v5, 0x40

    .line 987
    iput v5, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->collectionTime:I

    .line 988
    sget-object v5, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 989
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->dialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->dialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setRetransmissionTicks()V

    goto/16 :goto_2

    .line 1006
    :cond_9
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->enableRetransmissionTimer()V

    goto :goto_4

    .line 1018
    :cond_a
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v5

    if-nez v5, :cond_b

    const/16 v5, 0xc8

    .line 1057
    if-gt v5, v3, :cond_0

    if-gt v3, v7, :cond_0

    .line 1062
    sget-object v5, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 1063
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1070
    sget-object v5, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setState(Ljavax2/sip/TransactionState;)V

    goto/16 :goto_2

    .line 1021
    :cond_b
    div-int/lit8 v5, v3, 0x64

    if-eq v5, v8, :cond_c

    const/16 v5, 0x12c

    .line 1032
    if-gt v5, v3, :cond_0

    if-gt v3, v7, :cond_0

    .line 1035
    sget-object v5, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 1036
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v5

    if-eqz v5, :cond_d

    :goto_5
    const/16 v5, 0x40

    .line 1051
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    goto/16 :goto_2

    .line 1026
    :cond_c
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->disableRetransmissionTimer()V

    .line 1027
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->disableTimeoutTimer()V

    const/16 v5, 0x40

    .line 1028
    iput v5, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->collectionTime:I

    .line 1029
    sget-object v5, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 1030
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->dialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->dialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setRetransmissionTicks()V

    goto/16 :goto_2

    .line 1048
    :cond_d
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->enableRetransmissionTimer()V

    goto :goto_5

    .line 1065
    :cond_e
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->disableRetransmissionTimer()V

    const/16 v5, 0x40

    .line 1066
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 1100
    :cond_f
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    return-void

    .line 1086
    :cond_10
    :try_start_9
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendMessage : tx = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " getState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    .line 1098
    :catch_1
    move-exception v1

    .line 1094
    .local v1, "e":Ljava/io/IOException;
    :try_start_a
    sget-object v5, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setState(Ljavax2/sip/TransactionState;)V

    const/4 v5, 0x0

    .line 1095
    iput v5, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->collectionTime:I

    .line 1096
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public sendResponse(Ljavax2/sip/message/Response;)V
    .locals 21
    .param p1, "response"    # Ljavax2/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/SipException;
        }
    .end annotation

    .prologue
    move-object/from16 v20, p1

    .line 1242
    check-cast v20, Lgov2/nist/javax2/sip/message/SIPResponse;

    .line 1244
    .local v20, "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    move-object/from16 v0, p0

    iget-object v9, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->dialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    .line 1245
    .local v9, "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    if-eqz p1, :cond_8

    .line 1248
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/message/SIPResponse;->checkHeaders()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1254
    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1264
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SUBSCRIBE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1285
    :cond_0
    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_c

    :cond_1
    move-object/from16 v2, p1

    .line 1290
    check-cast v2, Lgov2/nist/javax2/sip/message/SIPMessage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov2/nist/javax2/sip/message/SIPMessage;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1304
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    if-nez v2, :cond_e

    .line 1325
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    if-nez v2, :cond_f

    .line 1333
    :cond_3
    :goto_0
    if-nez v9, :cond_10

    .line 1359
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax2/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v16

    .line 1360
    .local v16, "fromTag":Ljava/lang/String;
    if-nez v16, :cond_17

    .line 1363
    :cond_5
    if-nez v16, :cond_18

    .line 1366
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_19

    .line 1372
    :goto_1
    if-nez v9, :cond_1a

    .line 1386
    :cond_6
    if-eqz v9, :cond_1b

    .line 1401
    :cond_7
    :goto_2
    move-object/from16 v0, p1

    check-cast v0, Lgov2/nist/javax2/sip/message/SIPResponse;

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1403
    if-nez v9, :cond_1c

    .line 1417
    .end local p1    # "response":Ljavax2/sip/message/Response;
    :goto_3
    return-void

    .line 1245
    .end local v16    # "fromTag":Ljava/lang/String;
    .restart local p1    # "response":Ljavax2/sip/message/Response;
    :cond_8
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "null response"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1251
    :catch_0
    move-exception v14

    .line 1250
    .local v14, "ex":Ljava/text/ParseException;
    new-instance v2, Ljavax2/sip/SipException;

    invoke-virtual {v14}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1255
    .end local v14    # "ex":Ljava/text/ParseException;
    :cond_9
    new-instance v2, Ljavax2/sip/SipException;

    const-string/jumbo v3, "CSeq method does not match Request method of request that created the tx."

    invoke-direct {v2, v3}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1264
    :cond_a
    invoke-interface/range {p1 .. p1}, Ljavax2/sip/message/Response;->getStatusCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "Expires"

    .line 1266
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax2/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1269
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getExpires()Ljavax2/sip/header/ExpiresHeader;

    move-result-object v18

    check-cast v18, Lgov2/nist/javax2/sip/header/Expires;

    .line 1270
    .local v18, "requestExpires":Lgov2/nist/javax2/sip/header/Expires;
    invoke-interface/range {p1 .. p1}, Ljavax2/sip/message/Response;->getExpires()Ljavax2/sip/header/ExpiresHeader;

    move-result-object v19

    check-cast v19, Lgov2/nist/javax2/sip/header/Expires;

    .line 1275
    .local v19, "responseExpires":Lgov2/nist/javax2/sip/header/Expires;
    if-eqz v18, :cond_0

    invoke-virtual/range {v19 .. v19}, Lgov2/nist/javax2/sip/header/Expires;->getExpires()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Lgov2/nist/javax2/sip/header/Expires;->getExpires()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 1277
    new-instance v2, Ljavax2/sip/SipException;

    const-string/jumbo v3, "Response Expires time exceeds request Expires time : See RFC 3265 3.1.1"

    invoke-direct {v2, v3}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1267
    .end local v18    # "requestExpires":Lgov2/nist/javax2/sip/header/Expires;
    .end local v19    # "responseExpires":Lgov2/nist/javax2/sip/header/Expires;
    :cond_b
    new-instance v2, Ljavax2/sip/SipException;

    const-string/jumbo v3, "Expires header is mandatory in 2xx response of SUBSCRIBE"

    invoke-direct {v2, v3}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1285
    :cond_c
    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "INVITE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Contact"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1288
    new-instance v2, Ljavax2/sip/SipException;

    const-string/jumbo v3, "Contact Header is mandatory for the OK to the INVITE"

    invoke-direct {v2, v3}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1291
    :cond_d
    new-instance v2, Ljavax2/sip/SipException;

    const-string/jumbo v3, "Response does not belong to this transaction."

    invoke-direct {v2, v3}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1304
    :cond_e
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getDialog()Ljavax2/sip/Dialog;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v2

    sget-object v3, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p1

    check-cast v0, Lgov2/nist/javax2/sip/message/SIPResponse;

    move-object v2, v0

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getContentTypeHeader()Lgov2/nist/javax2/sip/header/ContentType;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface/range {p1 .. p1}, Ljavax2/sip/message/Response;->getStatusCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p1

    check-cast v0, Lgov2/nist/javax2/sip/message/SIPResponse;

    move-object v2, v0

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getContentTypeHeader()Lgov2/nist/javax2/sip/header/ContentType;

    move-result-object v2

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/ContentType;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "application"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    check-cast v0, Lgov2/nist/javax2/sip/message/SIPResponse;

    move-object v2, v0

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getContentTypeHeader()Lgov2/nist/javax2/sip/header/ContentType;

    move-result-object v2

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/ContentType;->getContentSubType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sdp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v2

    if-eqz v2, :cond_2

    .line 1314
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->provisionalResponseSem:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v8

    .line 1315
    .local v8, "acquired":Z
    if-nez v8, :cond_3

    .line 1316
    new-instance v2, Ljavax2/sip/SipException;

    const-string/jumbo v3, "cannot send response -- unacked povisional"

    invoke-direct {v2, v3}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1321
    .end local v8    # "acquired":Z
    :catch_1
    move-exception v13

    .line 1319
    .local v13, "ex":Ljava/lang/Exception;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1320
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    const-string/jumbo v3, "Could not acquire PRACK sem "

    invoke-interface {v2, v3, v13}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 1416
    .end local v13    # "ex":Ljava/lang/Exception;
    .end local p1    # "response":Ljavax2/sip/message/Response;
    :catch_2
    move-exception v12

    .line 1408
    .local v12, "ex":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1409
    :goto_4
    sget-object v2, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setState(Ljavax2/sip/TransactionState;)V

    const/4 v2, 0x2

    .line 1410
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    .line 1411
    new-instance v2, Ljavax2/sip/SipException;

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1325
    .end local v12    # "ex":Ljava/io/IOException;
    .restart local p1    # "response":Ljavax2/sip/message/Response;
    :cond_f
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/message/SIPResponse;->isFinalResponse()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1326
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->cancel()Z

    const/4 v2, 0x0

    .line 1327
    move-object/from16 v0, p0

    iput-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ProvisionalResponseTask;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 1411
    .end local p1    # "response":Ljavax2/sip/message/Response;
    :catch_3
    move-exception v15

    .line 1413
    .local v15, "ex1":Ljava/text/ParseException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1414
    :goto_5
    sget-object v2, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 1415
    new-instance v2, Ljavax2/sip/SipException;

    invoke-virtual {v15}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1334
    .end local v15    # "ex1":Ljava/text/ParseException;
    .restart local p1    # "response":Ljavax2/sip/message/Response;
    :cond_10
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x2

    if-eq v2, v3, :cond_12

    .line 1351
    :cond_11
    :goto_6
    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax2/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1352
    new-instance v2, Ljavax2/sip/SipException;

    const-string/jumbo v3, "Dialog mismatch!"

    invoke-direct {v2, v3}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1334
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1336
    invoke-virtual {v9}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 1342
    :cond_13
    invoke-virtual {v9}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_16

    .line 1344
    :cond_14
    invoke-virtual {v9}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v9}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1346
    new-instance v2, Ljavax2/sip/SipException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tag mismatch dialogTag is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " responseTag is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1336
    :cond_15
    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax2/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    .line 1341
    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v2

    invoke-static {}, Lgov2/nist/javax2/sip/Utils;->getInstance()Lgov2/nist/javax2/sip/Utils;

    move-result-object v3

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/Utils;->generateTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax2/sip/header/ToHeader;->setTag(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1342
    :cond_16
    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_14

    .line 1343
    invoke-virtual {v9}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/message/SIPResponse;->setToTag(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1360
    .restart local v16    # "fromTag":Ljava/lang/String;
    :cond_17
    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1362
    new-instance v2, Ljavax2/sip/SipException;

    const-string/jumbo v3, "From tag of request does not match response from tag"

    invoke-direct {v2, v3}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1364
    :cond_18
    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/message/SIPResponse;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljavax2/sip/header/FromHeader;->setTag(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1367
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    const-string/jumbo v3, "WARNING -- Null From tag in request!!"

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1372
    :cond_1a
    invoke-interface/range {p1 .. p1}, Ljavax2/sip/message/Response;->getStatusCode()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_6

    .line 1373
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setResponseTags(Lgov2/nist/javax2/sip/message/SIPResponse;)V

    .line 1374
    invoke-virtual {v9}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v17

    .line 1375
    .local v17, "oldState":Ljavax2/sip/DialogState;
    move-object/from16 v0, p1

    check-cast v0, Lgov2/nist/javax2/sip/message/SIPResponse;

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v2}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setLastResponse(Lgov2/nist/javax2/sip/stack/SIPTransaction;Lgov2/nist/javax2/sip/message/SIPResponse;)V

    .line 1376
    if-nez v17, :cond_7

    invoke-virtual {v9}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v2

    sget-object v3, Ljavax2/sip/DialogState;->TERMINATED:Ljavax2/sip/DialogState;

    if-ne v2, v3, :cond_7

    .line 1377
    new-instance v11, Ljavax2/sip/DialogTerminatedEvent;

    invoke-virtual {v9}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v2

    invoke-direct {v11, v2, v9}, Ljavax2/sip/DialogTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax2/sip/Dialog;)V

    .line 1382
    .local v11, "event":Ljavax2/sip/DialogTerminatedEvent;
    invoke-virtual {v9}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v11, v0}, Lgov2/nist/javax2/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    goto/16 :goto_2

    .line 1386
    .end local v11    # "event":Ljavax2/sip/DialogTerminatedEvent;
    .end local v17    # "oldState":Ljavax2/sip/DialogState;
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "INVITE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    if-nez v2, :cond_7

    invoke-interface/range {p1 .. p1}, Ljavax2/sip/message/Response;->getStatusCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 1389
    move-object/from16 v0, p1

    check-cast v0, Lgov2/nist/javax2/sip/message/SIPResponse;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov2/nist/javax2/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v10

    .line 1391
    .local v10, "dialogId":Ljava/lang/String;
    new-instance v2, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;-><init>(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    .line 1392
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-object v2, v2, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    invoke-virtual {v2, v10, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1f4

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_2

    .line 1404
    .end local v10    # "dialogId":Ljava/lang/String;
    :cond_1c
    check-cast p1, Lgov2/nist/javax2/sip/message/SIPResponse;

    .end local p1    # "response":Ljavax2/sip/message/Response;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v9, v0, v1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->startRetransmitTimer(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;Ljavax2/sip/message/Response;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_3

    .line 1408
    .end local v16    # "fromTag":Ljava/lang/String;
    .restart local v12    # "ex":Ljava/io/IOException;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2, v12}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1413
    .end local v12    # "ex":Ljava/io/IOException;
    .restart local v15    # "ex1":Ljava/text/ParseException;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2, v15}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_5
.end method

.method public setAckSeen()V
    .locals 1

    .prologue
    .line 1640
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isAckSeen:Z

    .line 1641
    return-void
.end method

.method public setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V
    .locals 5
    .param p1, "sipDialog"    # Lgov2/nist/javax2/sip/stack/SIPDialog;
    .param p2, "dialogId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1498
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1500
    :goto_0
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->dialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    .line 1501
    if-nez p2, :cond_2

    .line 1502
    :goto_1
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    if-nez v0, :cond_3

    .line 1511
    :cond_0
    :goto_2
    iput-boolean v4, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    .line 1513
    return-void

    .line 1499
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 1501
    :cond_2
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->dialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setAssigned()V

    goto :goto_1

    .line 1502
    :cond_3
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    if-eqz v0, :cond_0

    .line 1503
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->cancel()Z

    .line 1504
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    iget-object v0, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 1508
    :goto_3
    iput-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    goto :goto_2

    .line 1505
    :cond_4
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-object v0, v0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    iget-object v1, v1, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public setInviteTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    .locals 0
    .param p1, "st"    # Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .prologue
    .line 1685
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->inviteTransaction:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .line 1687
    return-void
.end method

.method public setMapped(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 1651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isMapped:Z

    .line 1653
    return-void
.end method

.method public setOriginalRequest(Lgov2/nist/javax2/sip/message/SIPRequest;)V
    .locals 0
    .param p1, "originalRequest"    # Lgov2/nist/javax2/sip/message/SIPRequest;

    .prologue
    .line 1232
    invoke-super {p0, p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->setOriginalRequest(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 1234
    return-void
.end method

.method public setPendingSubscribe(Lgov2/nist/javax2/sip/stack/SIPClientTransaction;)V
    .locals 0
    .param p1, "pendingSubscribeClientTx"    # Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .prologue
    .line 1656
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->pendingSubscribeTransaction:Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .line 1658
    return-void
.end method

.method public setRequestInterface(Lgov2/nist/javax2/sip/stack/ServerRequestInterface;)V
    .locals 0
    .param p1, "newRequestOf"    # Lgov2/nist/javax2/sip/stack/ServerRequestInterface;

    .prologue
    .line 526
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->requestOf:Lgov2/nist/javax2/sip/stack/ServerRequestInterface;

    .line 528
    return-void
.end method

.method public setState(Ljavax2/sip/TransactionState;)V
    .locals 1
    .param p1, "newState"    # Ljavax2/sip/TransactionState;

    .prologue
    .line 1449
    sget-object v0, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    if-eq p1, v0, :cond_1

    .line 1456
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 1458
    return-void

    .line 1449
    :cond_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v0

    iget-boolean v0, v0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    if-nez v0, :cond_0

    const/16 v0, 0x40

    .line 1453
    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->collectionTime:I

    goto :goto_0
.end method

.method protected startTransactionTimer()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1464
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->transactionTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1472
    :cond_0
    :goto_0
    return-void

    .line 1465
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1468
    new-instance v1, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$TransactionTimer;

    invoke-direct {v1, p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$TransactionTimer;-><init>(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 1469
    .local v1, "myTimer":Ljava/util/TimerTask;
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    iget v2, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->BASE_TIMER_INTERVAL:I

    int-to-long v2, v2

    iget v4, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->BASE_TIMER_INTERVAL:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public terminate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/ObjectInUseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1520
    sget-object v0, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 1521
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    if-nez v0, :cond_0

    .line 1531
    :goto_0
    return-void

    .line 1522
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->cancel()Z

    .line 1523
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    iget-object v0, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1527
    :goto_1
    iput-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    goto :goto_0

    .line 1524
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-object v0, v0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    iget-object v1, v1, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
