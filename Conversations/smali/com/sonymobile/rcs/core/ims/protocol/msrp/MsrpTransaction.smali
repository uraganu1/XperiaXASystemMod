.class public Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;
.super Ljava/lang/Object;
.source "MsrpTransaction.java"


# instance fields
.field private isTerminated:Z

.field private isWaiting:Z

.field private timer:Ljava/util/Timer;

.field private totalReceivedResponses:I

.field private waitingCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->waitingCount:I

    .line 48
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->totalReceivedResponses:I

    .line 53
    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->isWaiting:Z

    .line 58
    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->isTerminated:Z

    .line 63
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->timer:Ljava/util/Timer;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->timerExpire()V

    return-void
.end method

.method private startTimer()V
    .locals 4

    .prologue
    .line 158
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->timer:Ljava/util/Timer;

    .line 159
    new-instance v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction$1;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;)V

    .line 165
    .local v0, "timertask":Ljava/util/TimerTask;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 166
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 173
    return-void
.end method

.method private declared-synchronized timerExpire()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 180
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 181
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getNumberReceivedOk()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->totalReceivedResponses:I

    return v0
.end method

.method public handleRequest()V
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->waitingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->waitingCount:I

    .line 98
    monitor-exit p0

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized handleResponse()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 108
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    :try_start_1
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->waitingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->waitingCount:I

    .line 110
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :try_start_2
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->totalReceivedResponses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->totalReceivedResponses:I

    .line 113
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->isWaiting:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    .line 123
    return-void

    .line 110
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 114
    :cond_0
    :try_start_5
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->waitingCount:I

    if-eqz v0, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->stopTimer()V

    .line 120
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->startTimer()V

    goto :goto_0

    .line 116
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->notify()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public isAllResponsesReceived()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 131
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->waitingCount:I

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTerminated()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->isTerminated:Z

    return v0
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 138
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->isTerminated:Z

    .line 140
    invoke-super {p0}, Ljava/lang/Object;->notify()V

    .line 142
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->stopTimer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 143
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitAllResponses()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 75
    :try_start_0
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->waitingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    :goto_0
    monitor-exit p0

    .line 87
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->isWaiting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->startTimer()V

    .line 82
    invoke-super {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
