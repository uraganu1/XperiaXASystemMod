.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;
.super Lcom/sonymobile/rcs/utils/PeriodicRefresher;
.source "ChatActivityManager.java"


# instance fields
.field private activityTimesamp:J

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

.field private timeout:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    .locals 2
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sonymobile/rcs/utils/PeriodicRefresher;-><init>()V

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->activityTimesamp:J

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 63
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .line 64
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getChatIdleDuration()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->timeout:I

    .line 65
    return-void
.end method


# virtual methods
.method public declared-synchronized periodicProcessing()V
    .locals 8

    .prologue
    monitor-enter p0

    .line 106
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 107
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->activityTimesamp:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    add-int/lit8 v2, v4, 0x1

    .line 108
    .local v2, "inactivityPeriod":I
    iget v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->timeout:I

    sub-int v3, v4, v2

    .line 109
    .local v3, "remainingPeriod":I
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 114
    :goto_0
    iget v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->timeout:I

    if-ge v2, v4, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 122
    invoke-virtual {p0, v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->startTimer(ID)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    .line 124
    return-void

    .line 110
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Check inactivity period: inactivity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", remaining="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "currentTime":J
    .end local v2    # "inactivityPeriod":I
    .end local v3    # "remainingPeriod":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 115
    .restart local v0    # "currentTime":J
    .restart local v2    # "inactivityPeriod":I
    .restart local v3    # "remainingPeriod":I
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_2

    .line 119
    :goto_2
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->handleChatInactivityEvent()V

    goto :goto_1

    .line 116
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No activity on the session during "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->timeout:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "s: abort the session"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public start()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->updateActivity()V

    .line 87
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->timeout:I

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->startTimer(ID)V

    .line 88
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Start the activity manager for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->timeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->stopTimer()V

    .line 100
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Stop the activity manager"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized updateActivity()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 71
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->activityTimesamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 72
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
