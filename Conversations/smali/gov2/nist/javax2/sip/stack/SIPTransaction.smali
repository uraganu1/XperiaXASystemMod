.class public abstract Lgov2/nist/javax2/sip/stack/SIPTransaction;
.super Lgov2/nist/javax2/sip/stack/MessageChannel;
.source "SIPTransaction.java"

# interfaces
.implements Ljavax2/sip/Transaction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov2/nist/javax2/sip/stack/SIPTransaction$LingerTimer;
    }
.end annotation


# static fields
.field public static final CALLING_STATE:Ljavax2/sip/TransactionState;

.field public static final COMPLETED_STATE:Ljavax2/sip/TransactionState;

.field public static final CONFIRMED_STATE:Ljavax2/sip/TransactionState;

.field public static final INITIAL_STATE:Ljavax2/sip/TransactionState;

.field public static final PROCEEDING_STATE:Ljavax2/sip/TransactionState;

.field public static final TERMINATED_STATE:Ljavax2/sip/TransactionState;

.field public static final TRYING_STATE:Ljavax2/sip/TransactionState;


# instance fields
.field protected BASE_TIMER_INTERVAL:I

.field protected T2:I

.field protected T4:I

.field protected TIMER_D:I

.field protected TIMER_I:I

.field protected TIMER_K:I

.field public auditTag:J

.field private branch:Ljava/lang/String;

.field private cSeq:J

.field protected callId:Lgov2/nist/javax2/sip/header/CallID;

.field protected collectionTime:I

.field private currentState:Ljavax2/sip/TransactionState;

.field private transient encapsulatedChannel:Lgov2/nist/javax2/sip/stack/MessageChannel;

.field protected event:Lgov2/nist/javax2/sip/header/Event;

.field private transient eventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lgov2/nist/javax2/sip/stack/SIPTransactionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected from:Lgov2/nist/javax2/sip/header/From;

.field protected fromTag:Ljava/lang/String;

.field protected isMapped:Z

.field protected isSemaphoreAquired:Z

.field protected lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

.field private method:Ljava/lang/String;

.field protected originalRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

.field protected peerAddress:Ljava/lang/String;

.field protected peerInetAddress:Ljava/net/InetAddress;

.field protected peerPacketSourceAddress:Ljava/net/InetAddress;

.field protected peerPacketSourcePort:I

.field protected peerPort:I

.field protected peerProtocol:Ljava/lang/String;

.field private transient retransmissionTimerLastTickCount:I

.field private transient retransmissionTimerTicksLeft:I

.field private semaphore:Ljava/util/concurrent/Semaphore;

.field protected transient sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

.field private terminatedEventDelivered:Z

.field protected timeoutTimerTicksLeft:I

.field protected to:Lgov2/nist/javax2/sip/header/To;

.field protected toListener:Z

.field protected toTag:Ljava/lang/String;

.field protected transactionId:Ljava/lang/String;

.field protected transactionTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 147
    sput-object v0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->INITIAL_STATE:Ljavax2/sip/TransactionState;

    .line 152
    sget-object v0, Ljavax2/sip/TransactionState;->TRYING:Ljavax2/sip/TransactionState;

    sput-object v0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->TRYING_STATE:Ljavax2/sip/TransactionState;

    .line 157
    sget-object v0, Ljavax2/sip/TransactionState;->CALLING:Ljavax2/sip/TransactionState;

    sput-object v0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->CALLING_STATE:Ljavax2/sip/TransactionState;

    .line 162
    sget-object v0, Ljavax2/sip/TransactionState;->PROCEEDING:Ljavax2/sip/TransactionState;

    sput-object v0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->PROCEEDING_STATE:Ljavax2/sip/TransactionState;

    .line 167
    sget-object v0, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    sput-object v0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->COMPLETED_STATE:Ljavax2/sip/TransactionState;

    .line 172
    sget-object v0, Ljavax2/sip/TransactionState;->CONFIRMED:Ljavax2/sip/TransactionState;

    sput-object v0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->CONFIRMED_STATE:Ljavax2/sip/TransactionState;

    .line 177
    sget-object v0, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    sput-object v0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->TERMINATED_STATE:Ljavax2/sip/TransactionState;

    return-void
.end method

.method protected constructor <init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/MessageChannel;)V
    .locals 4
    .param p1, "newParentStack"    # Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    .param p2, "newEncapsulatedChannel"    # Lgov2/nist/javax2/sip/stack/MessageChannel;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 324
    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/MessageChannel;-><init>()V

    const/16 v0, 0x1f4

    .line 81
    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    .line 86
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    const/16 v1, 0x1388

    div-int v0, v1, v0

    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->T4:I

    .line 92
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    const/16 v1, 0xfa0

    div-int v0, v1, v0

    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->T2:I

    .line 94
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->T4:I

    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->TIMER_I:I

    .line 96
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->T4:I

    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->TIMER_K:I

    .line 98
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    const/16 v1, 0x7d00

    div-int v0, v1, v0

    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->TIMER_D:I

    const-wide/16 v0, 0x0

    .line 142
    iput-wide v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->auditTag:J

    .line 211
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->transactionTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 326
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    .line 327
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3, v3}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 329
    iput-object p2, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov2/nist/javax2/sip/stack/MessageChannel;

    .line 332
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getPeerPort()I

    move-result v0

    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->peerPort:I

    .line 333
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getPeerAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->peerAddress:Ljava/lang/String;

    .line 334
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getPeerInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->peerInetAddress:Ljava/net/InetAddress;

    .line 336
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getPeerPacketSourcePort()I

    move-result v0

    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->peerPacketSourcePort:I

    .line 337
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getPeerPacketSourceAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->peerPacketSourceAddress:Ljava/net/InetAddress;

    .line 338
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getPeerProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->peerProtocol:Ljava/lang/String;

    .line 339
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->isReliable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 347
    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->currentState:Ljavax2/sip/TransactionState;

    .line 349
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->disableRetransmissionTimer()V

    .line 350
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->disableTimeoutTimer()V

    .line 351
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->eventListeners:Ljava/util/Set;

    .line 355
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->addEventListener(Lgov2/nist/javax2/sip/stack/SIPTransactionEventListener;)V

    .line 357
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov2/nist/javax2/sip/stack/MessageChannel;

    iget v1, v0, Lgov2/nist/javax2/sip/stack/MessageChannel;->useCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lgov2/nist/javax2/sip/stack/MessageChannel;->useCount:I

    .line 341
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "use count for encapsulated channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov2/nist/javax2/sip/stack/MessageChannel;

    iget v2, v2, Lgov2/nist/javax2/sip/stack/MessageChannel;->useCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lgov2/nist/javax2/sip/stack/SIPTransaction;)Lgov2/nist/javax2/sip/stack/MessageChannel;
    .locals 1
    .param p0, "x0"    # Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .prologue
    .line 74
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov2/nist/javax2/sip/stack/MessageChannel;

    return-object v0
.end method


# virtual methods
.method public acquireSem()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1110
    const/4 v1, 0x0

    .line 1112
    .local v1, "retval":Z
    :try_start_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov2/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1116
    :goto_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->semaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0x3e8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 1117
    .local v1, "retval":Z
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 1126
    :goto_1
    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->isSemaphoreAquired:Z

    return v1

    .line 1113
    .local v1, "retval":Z
    :cond_0
    :try_start_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "acquireSem [[[["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1114
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov2/nist/core/StackLogger;->logStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1126
    .end local v1    # "retval":Z
    :catch_0
    move-exception v0

    .line 1121
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1123
    :goto_2
    invoke-static {v0}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1126
    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->isSemaphoreAquired:Z

    return v6

    .line 1118
    .end local v0    # "ex":Ljava/lang/Exception;
    .local v1, "retval":Z
    :cond_1
    :try_start_3
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "acquireSem() returning : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1126
    .end local v1    # "retval":Z
    :catchall_0
    move-exception v2

    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->isSemaphoreAquired:Z

    throw v2

    .line 1122
    .restart local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_4
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    const-string/jumbo v3, "Unexpected exception acquiring sem"

    invoke-interface {v2, v3, v0}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public addEventListener(Lgov2/nist/javax2/sip/stack/SIPTransactionEventListener;)V
    .locals 1
    .param p1, "newListener"    # Lgov2/nist/javax2/sip/stack/SIPTransactionEventListener;

    .prologue
    .line 745
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->eventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 746
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 1035
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov2/nist/javax2/sip/stack/MessageChannel;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->close()V

    .line 1036
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1039
    :goto_0
    return-void

    .line 1037
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Closing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov2/nist/javax2/sip/stack/MessageChannel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final disableRetransmissionTimer()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 573
    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    .line 574
    return-void
.end method

.method protected final disableTimeoutTimer()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 595
    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    .line 596
    return-void
.end method

.method public doesCancelMatchTransaction(Lgov2/nist/javax2/sip/message/SIPRequest;)Z
    .locals 8
    .param p1, "requestToTest"    # Lgov2/nist/javax2/sip/message/SIPRequest;

    .prologue
    const/4 v6, 0x0

    .line 907
    const/4 v2, 0x0

    .line 909
    .local v2, "transactionMatches":Z
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v4

    if-nez v4, :cond_1

    .line 910
    :cond_0
    return v6

    .line 909
    :cond_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "CANCEL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 912
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;

    move-result-object v3

    .line 913
    .local v3, "viaHeaders":Lgov2/nist/javax2/sip/header/ViaList;
    if-nez v3, :cond_3

    .line 972
    :cond_2
    :goto_0
    if-nez v2, :cond_9

    .line 975
    :goto_1
    return v2

    .line 915
    :cond_3
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/ViaList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/Via;

    .line 916
    .local v1, "topViaHeader":Lgov2/nist/javax2/sip/header/Via;
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .line 917
    .local v0, "messageBranch":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 934
    .end local v0    # "messageBranch":Ljava/lang/String;
    :cond_4
    :goto_2
    if-nez v0, :cond_7

    .line 951
    :cond_5
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-nez v4, :cond_8

    .line 954
    :goto_3
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/message/SIPRequest;->getRequestURI()Ljavax2/sip/address/URI;

    move-result-object v4

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getRequestURI()Ljavax2/sip/address/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v4

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v4

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax2/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax2/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v4

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v6

    invoke-interface {v6}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/message/SIPRequest;->getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/ViaList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgov2/nist/javax2/sip/header/Via;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 963
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 921
    .restart local v0    # "messageBranch":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "z9hg4bk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v0, 0x0

    .line 927
    .local v0, "messageBranch":Ljava/lang/String;
    goto/16 :goto_2

    .line 934
    .end local v0    # "messageBranch":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getBranch()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 938
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getBranch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/Via;->getSentBy()Lgov2/nist/core/HostPort;

    move-result-object v5

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/message/SIPRequest;->getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/ViaList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v4

    check-cast v4, Lgov2/nist/javax2/sip/header/Via;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/Via;->getSentBy()Lgov2/nist/core/HostPort;

    move-result-object v4

    invoke-virtual {v5, v4}, Lgov2/nist/core/HostPort;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 941
    const/4 v2, 0x1

    .line 942
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 943
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    const-string/jumbo v5, "returning  true"

    invoke-interface {v4, v5}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 952
    :cond_8
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "testing against "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 973
    .end local v1    # "topViaHeader":Lgov2/nist/javax2/sip/header/Via;
    :cond_9
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->setPassToListener()V

    goto/16 :goto_1
.end method

.method protected final enableRetransmissionTimer()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 548
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->enableRetransmissionTimer(I)V

    .line 549
    return-void
.end method

.method protected final enableRetransmissionTimer(I)V
    .locals 1
    .param p1, "tickCount"    # I

    .prologue
    .line 560
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->isInviteTransaction()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    .line 564
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    .line 566
    :goto_0
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->retransmissionTimerLastTickCount:I

    .line 567
    return-void

    .line 560
    :cond_1
    instance-of v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    if-eqz v0, :cond_0

    .line 561
    iput p1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    goto :goto_0
.end method

.method protected final enableTimeoutTimer(I)V
    .locals 3
    .param p1, "tickCount"    # I

    .prologue
    .line 583
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    :goto_0
    iput p1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    .line 589
    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableTimeoutTimer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " tickCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " currentTickCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract fireRetransmissionTimer()V
.end method

.method protected abstract fireTimeoutTimer()V
.end method

.method final fireTimer()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 605
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    if-ne v0, v1, :cond_2

    .line 614
    :cond_0
    :goto_0
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    if-ne v0, v1, :cond_3

    .line 624
    :cond_1
    :goto_1
    return-void

    .line 607
    :cond_2
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    if-nez v0, :cond_0

    .line 609
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->fireTimeoutTimer()V

    goto :goto_0

    .line 616
    :cond_3
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    if-nez v0, :cond_1

    .line 619
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->retransmissionTimerLastTickCount:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->enableRetransmissionTimer(I)V

    .line 621
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->fireRetransmissionTimer()V

    goto :goto_1
.end method

.method public final getBranch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->branch:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 485
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->branch:Ljava/lang/String;

    return-object v0

    .line 483
    :cond_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v0

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->branch:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBranchId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->branch:Ljava/lang/String;

    return-object v0
.end method

.method public final getCSeq()J
    .locals 2

    .prologue
    .line 503
    iget-wide v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->cSeq:J

    return-wide v0
.end method

.method public abstract getDialog()Ljavax2/sip/Dialog;
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov2/nist/javax2/sip/stack/MessageChannel;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastResponse()Lgov2/nist/javax2/sip/message/SIPResponse;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    return-object v0
.end method

.method public getMessageChannel()Lgov2/nist/javax2/sip/stack/MessageChannel;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov2/nist/javax2/sip/stack/MessageChannel;

    return-object v0
.end method

.method public getMessageProcessor()Lgov2/nist/javax2/sip/stack/MessageProcessor;
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov2/nist/javax2/sip/stack/MessageChannel;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getMessageProcessor()Lgov2/nist/javax2/sip/stack/MessageProcessor;

    move-result-object v0

    return-object v0
.end method

.method public final getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->originalRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

    return-object v0
.end method

.method public getPeerAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->peerAddress:Ljava/lang/String;

    return-object v0
.end method

.method protected getPeerInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->peerInetAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPeerPacketSourceAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->peerPacketSourceAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPeerPacketSourcePort()I
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->peerPacketSourcePort:I

    return v0
.end method

.method public getPeerPort()I
    .locals 1

    .prologue
    .line 656
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->peerPort:I

    return v0
.end method

.method protected getPeerProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->peerProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov2/nist/javax2/sip/stack/MessageChannel;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getPort()I

    move-result v0

    return v0
.end method

.method public getRequest()Ljavax2/sip/message/Request;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->originalRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

    return-object v0
.end method

.method public getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;
    .locals 1

    .prologue
    .line 1089
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getMessageProcessor()Lgov2/nist/javax2/sip/stack/MessageProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getListeningPoint()Lgov2/nist/javax2/sip/ListeningPointImpl;

    move-result-object v0

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/ListeningPointImpl;->getProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljavax2/sip/TransactionState;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->currentState:Ljavax2/sip/TransactionState;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov2/nist/javax2/sip/stack/MessageChannel;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getTransport()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->transactionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    .line 875
    return v0
.end method

.method public final isByeTransaction()Z
    .locals 2

    .prologue
    .line 454
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "BYE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isInviteTransaction()Z
    .locals 2

    .prologue
    .line 436
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "INVITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isReliable()Z
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov2/nist/javax2/sip/stack/MessageChannel;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/MessageChannel;->isReliable()Z

    move-result v0

    return v0
.end method

.method protected isServerTransaction()Z
    .locals 1

    .prologue
    .line 804
    instance-of v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    return v0
.end method

.method public final isTerminated()Z
    .locals 2

    .prologue
    .line 632
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v0

    sget-object v1, Lgov2/nist/javax2/sip/stack/SIPTransaction;->TERMINATED_STATE:Ljavax2/sip/TransactionState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public passToListener()Z
    .locals 1

    .prologue
    .line 1169
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->toListener:Z

    return v0
.end method

.method protected raiseErrorEvent(I)V
    .locals 5
    .param p1, "errorEventID"    # I

    .prologue
    .line 774
    new-instance v1, Lgov2/nist/javax2/sip/stack/SIPTransactionErrorEvent;

    invoke-direct {v1, p0, p1}, Lgov2/nist/javax2/sip/stack/SIPTransactionErrorEvent;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransaction;I)V

    .line 777
    .local v1, "newErrorEvent":Lgov2/nist/javax2/sip/stack/SIPTransactionErrorEvent;
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->eventListeners:Ljava/util/Set;

    monitor-enter v4

    .line 778
    :try_start_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->eventListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 779
    .local v0, "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPTransactionEventListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 784
    monitor-exit v4

    const/4 v3, 0x3

    .line 788
    if-ne p1, v3, :cond_2

    .line 798
    :cond_0
    :goto_1
    return-void

    .line 781
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/stack/SIPTransactionEventListener;

    .line 782
    .local v2, "nextListener":Lgov2/nist/javax2/sip/stack/SIPTransactionEventListener;
    invoke-interface {v2, v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionEventListener;->transactionErrorEvent(Lgov2/nist/javax2/sip/stack/SIPTransactionErrorEvent;)V

    goto :goto_0

    .line 784
    .end local v0    # "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPTransactionEventListener;>;"
    .end local v2    # "nextListener":Lgov2/nist/javax2/sip/stack/SIPTransactionEventListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 789
    .restart local v0    # "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPTransactionEventListener;>;"
    :cond_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->eventListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 792
    sget-object v3, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 794
    instance-of v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->isByeTransaction()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getDialog()Ljavax2/sip/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 796
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getDialog()Ljavax2/sip/Dialog;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/stack/SIPDialog;

    sget v4, Lgov2/nist/javax2/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {v3, v4}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setState(I)V

    goto :goto_1
.end method

.method public raiseIOExceptionEvent()V
    .locals 5

    .prologue
    .line 1097
    sget-object v4, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 1098
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getPeerAddress()Ljava/lang/String;

    move-result-object v1

    .line 1099
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getPeerPort()I

    move-result v2

    .line 1100
    .local v2, "port":I
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getTransport()Ljava/lang/String;

    move-result-object v3

    .line 1101
    .local v3, "transport":Ljava/lang/String;
    new-instance v0, Ljavax2/sip/IOExceptionEvent;

    invoke-direct {v0, p0, v1, v2, v3}, Ljavax2/sip/IOExceptionEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V

    .line 1102
    .local v0, "exceptionEvent":Ljavax2/sip/IOExceptionEvent;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v4

    invoke-virtual {v4, v0, p0}, Lgov2/nist/javax2/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 1103
    return-void
.end method

.method public releaseSem()V
    .locals 3

    .prologue
    .line 1137
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->toListener:Z

    .line 1138
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->semRelease()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1144
    :catch_0
    move-exception v0

    .line 1141
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1142
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    const-string/jumbo v2, "Unexpected exception releasing sem"

    invoke-interface {v1, v2, v0}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected semRelease()V
    .locals 4

    .prologue
    .line 1150
    :try_start_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1154
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->isSemaphoreAquired:Z

    .line 1155
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1162
    :cond_0
    :goto_1
    return-void

    .line 1151
    :cond_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semRelease ]]]]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1152
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov2/nist/core/StackLogger;->logStackTrace()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1161
    :catch_0
    move-exception v0

    .line 1158
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1159
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    const-string/jumbo v2, "Unexpected exception releasing sem"

    invoke-interface {v1, v2, v0}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    .locals 3
    .param p1, "messageToSend"    # Lgov2/nist/javax2/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 715
    :try_start_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov2/nist/javax2/sip/stack/MessageChannel;

    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->peerInetAddress:Ljava/net/InetAddress;

    iget v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->peerPort:I

    invoke-virtual {v0, p1, v1, v2}, Lgov2/nist/javax2/sip/stack/MessageChannel;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/net/InetAddress;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->startTransactionTimer()V

    .line 719
    return-void

    .line 718
    :catchall_0
    move-exception v0

    .line 717
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->startTransactionTimer()V

    throw v0
.end method

.method protected sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/net/InetAddress;IZ)V
    .locals 2
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
    .line 735
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Cannot send unparsed message through Transaction Channel!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setBranch(Ljava/lang/String;)V
    .locals 0
    .param p1, "newBranch"    # Ljava/lang/String;

    .prologue
    .line 473
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->branch:Ljava/lang/String;

    .line 474
    return-void
.end method

.method public abstract setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V
.end method

.method public setEncapsulatedChannel(Lgov2/nist/javax2/sip/stack/MessageChannel;)V
    .locals 1
    .param p1, "messageChannel"    # Lgov2/nist/javax2/sip/stack/MessageChannel;

    .prologue
    .line 1077
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov2/nist/javax2/sip/stack/MessageChannel;

    .line 1078
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getPeerInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->peerInetAddress:Ljava/net/InetAddress;

    .line 1079
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getPeerPort()I

    move-result v0

    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->peerPort:I

    .line 1080
    return-void
.end method

.method public setOriginalRequest(Lgov2/nist/javax2/sip/message/SIPRequest;)V
    .locals 4
    .param p1, "newOriginalRequest"    # Lgov2/nist/javax2/sip/message/SIPRequest;

    .prologue
    .line 369
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->originalRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

    if-nez v1, :cond_1

    .line 376
    :cond_0
    :goto_0
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->originalRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

    .line 380
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->method:Ljava/lang/String;

    .line 381
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/From;

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->from:Lgov2/nist/javax2/sip/header/From;

    .line 382
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/To;

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->to:Lgov2/nist/javax2/sip/header/To;

    .line 384
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->to:Lgov2/nist/javax2/sip/header/To;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->toTag:Ljava/lang/String;

    .line 385
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->from:Lgov2/nist/javax2/sip/header/From;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->fromTag:Ljava/lang/String;

    .line 386
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/CallID;

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->callId:Lgov2/nist/javax2/sip/header/CallID;

    .line 387
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->cSeq:J

    const-string/jumbo v1, "Event"

    .line 388
    invoke-virtual {p1, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/Event;

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->event:Lgov2/nist/javax2/sip/header/Event;

    .line 389
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->transactionId:Ljava/lang/String;

    .line 391
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->originalRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v1, p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->setTransaction(Ljava/lang/Object;)V

    .line 394
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;

    move-result-object v1

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/ViaList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/Via;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "newBranch":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 404
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 407
    :goto_1
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->setBranch(Ljava/lang/String;)V

    .line 409
    :goto_2
    return-void

    .line 369
    .end local v0    # "newBranch":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->originalRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->removeTransactionHash(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    goto/16 :goto_0

    .line 396
    .restart local v0    # "newBranch":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 401
    :goto_3
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->setBranch(Ljava/lang/String;)V

    goto :goto_2

    .line 397
    :cond_3
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting Branch id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_3

    .line 405
    :cond_4
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Branch id is null - compute TID!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->encode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setPassToListener()V
    .locals 2

    .prologue
    .line 1176
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1179
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->toListener:Z

    .line 1181
    return-void

    .line 1177
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    const-string/jumbo v1, "setPassToListener()"

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRetransmitTimers(III)V
    .locals 2
    .param p1, "timer_T1"    # I
    .param p2, "timer_T2"    # I
    .param p3, "timer_T4"    # I

    .prologue
    .line 1017
    if-gtz p1, :cond_1

    .line 1018
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Retransmit timers must be positives!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1017
    :cond_1
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 1020
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->transactionTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1023
    iput p1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    .line 1024
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    div-int v0, p3, v0

    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->T4:I

    .line 1025
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    div-int v0, p2, v0

    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->T2:I

    .line 1026
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->T4:I

    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->TIMER_I:I

    .line 1027
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->T4:I

    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->TIMER_K:I

    .line 1028
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    const/16 v1, 0x7d00

    div-int v0, v1, v0

    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->TIMER_D:I

    .line 1029
    return-void

    .line 1021
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Transaction timer is already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setState(Ljavax2/sip/TransactionState;)V
    .locals 3
    .param p1, "newState"    # Ljavax2/sip/TransactionState;

    .prologue
    .line 513
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->currentState:Ljavax2/sip/TransactionState;

    sget-object v1, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    if-eq v0, v1, :cond_2

    .line 517
    :cond_0
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->currentState:Ljavax2/sip/TransactionState;

    sget-object v1, Ljavax2/sip/TransactionState;->CONFIRMED:Ljavax2/sip/TransactionState;

    if-eq v0, v1, :cond_3

    .line 520
    :cond_1
    :goto_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->currentState:Ljavax2/sip/TransactionState;

    sget-object v1, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    if-ne v0, v1, :cond_4

    .line 523
    iget-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->currentState:Ljavax2/sip/TransactionState;

    .line 525
    :goto_2
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 532
    :goto_3
    return-void

    .line 514
    :cond_2
    sget-object v0, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljavax2/sip/TransactionState;->CONFIRMED:Ljavax2/sip/TransactionState;

    if-eq p1, v0, :cond_0

    .line 515
    sget-object p1, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    goto :goto_0

    .line 518
    :cond_3
    sget-object v0, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    if-eq p1, v0, :cond_1

    sget-object p1, Ljavax2/sip/TransactionState;->CONFIRMED:Ljavax2/sip/TransactionState;

    goto :goto_1

    .line 521
    :cond_4
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->currentState:Ljavax2/sip/TransactionState;

    goto :goto_2

    .line 526
    :cond_5
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Transaction:setState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " branchID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getBranch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isClient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    instance-of v2, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    goto :goto_3
.end method

.method protected abstract startTransactionTimer()V
.end method

.method protected declared-synchronized testAndSetTransactionTerminatedEvent()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    .line 1189
    :try_start_0
    iget-boolean v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->terminatedEventDelivered:Z

    if-eqz v2, :cond_0

    .line 1190
    .local v0, "retval":Z
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction;->terminatedEventDelivered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1191
    return v0

    .end local v0    # "retval":Z
    :cond_0
    move v0, v1

    .line 1189
    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
