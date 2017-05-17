.class public abstract Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;
.super Lgov2/nist/javax2/sip/stack/MessageProcessor;
.source "ConnectionOrientedMessageProcessor.java"


# instance fields
.field protected incomingMessageChannels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected isRunning:Z

.field protected messageChannels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected nConnections:I

.field protected sock:Ljava/net/ServerSocket;

.field protected useCount:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;ILjava/lang/String;Lgov2/nist/javax2/sip/stack/SIPTransactionStack;)V
    .locals 1
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "transport"    # Ljava/lang/String;
    .param p4, "sipStack"    # Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lgov2/nist/javax2/sip/stack/MessageProcessor;-><init>(Ljava/net/InetAddress;ILjava/lang/String;Lgov2/nist/javax2/sip/stack/SIPTransactionStack;)V

    .line 65
    iput-object p4, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->messageChannels:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->incomingMessageChannels:Ljava/util/Map;

    .line 69
    return-void
.end method


# virtual methods
.method protected declared-synchronized cacheMessageChannel(Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;)V
    .locals 5
    .param p1, "messageChannel"    # Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    .prologue
    monitor-enter p0

    .line 95
    :try_start_0
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->messageChannels:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    .line 97
    .local v0, "currentChannel":Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;
    if-nez v0, :cond_0

    .line 102
    :goto_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 104
    :goto_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->messageChannels:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 105
    return-void

    .line 98
    :cond_0
    :try_start_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    :goto_2
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "currentChannel":Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;
    .end local v1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 99
    .restart local v0    # "currentChannel":Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;
    .restart local v1    # "key":Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Closing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2

    .line 103
    :cond_2
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Caching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method protected declared-synchronized remove(Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;)V
    .locals 4
    .param p1, "messageChannel"    # Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    .prologue
    monitor-enter p0

    .line 82
    :try_start_0
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->messageChannels:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    .line 91
    :goto_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->incomingMessageChannels:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 92
    return-void

    .line 84
    :cond_0
    :try_start_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " removing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 89
    .restart local v0    # "key":Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageProcessor;->messageChannels:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
