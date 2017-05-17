.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;
.super Ljava/lang/Object;
.source "IsComposingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;
    }
.end annotation


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

.field private timeout:I

.field private timer:Ljava/util/Timer;

.field private timerTask:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    .locals 1
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->timer:Ljava/util/Timer;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->timerTask:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;

    const/16 v0, 0x78

    .line 50
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->timeout:I

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 68
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;)Lcom/sonymobile/rcs/utils/logger/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    return-object v0
.end method


# virtual methods
.method public receiveIsComposingEvent(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    const/4 v0, 0x0

    .line 124
    .local v0, "j":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 130
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->stopExpirationTimer(Ljava/lang/String;)V

    .line 131
    return-void

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    invoke-interface {v1, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleIsComposingEvent(Ljava/lang/String;Z)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public receiveIsComposingEvent(Ljava/lang/String;[B)V
    .locals 10
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "event"    # [B

    .prologue
    .line 80
    :try_start_0
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 81
    .local v1, "input":Lorg/xml/sax/InputSource;
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;

    invoke-direct {v4, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;-><init>(Lorg/xml/sax/InputSource;)V

    .line 82
    .local v4, "parser":Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->getIsComposingInfo()Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;

    move-result-object v2

    .line 83
    .local v2, "isComposingInfo":Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;
    if-nez v2, :cond_2

    :cond_0
    const/4 v3, 0x0

    .line 98
    .local v3, "j":I
    :goto_0
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v3, v5, :cond_5

    .line 104
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->stopExpirationTimer(Ljava/lang/String;)V

    .line 111
    .end local v1    # "input":Lorg/xml/sax/InputSource;
    .end local v2    # "isComposingInfo":Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;
    .end local v3    # "j":I
    .end local v4    # "parser":Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;
    :cond_1
    :goto_1
    return-void

    .line 83
    .restart local v1    # "input":Lorg/xml/sax/InputSource;
    .restart local v2    # "isComposingInfo":Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;
    .restart local v4    # "parser":Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;
    :cond_2
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;->isStateActive()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x0

    .line 85
    .restart local v3    # "j":I
    :goto_2
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v3, v5, :cond_3

    .line 91
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;->getRefreshTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    .line 92
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;->getRefreshTime()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->startExpirationTimer(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 110
    .end local v1    # "input":Lorg/xml/sax/InputSource;
    .end local v2    # "isComposingInfo":Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;
    .end local v3    # "j":I
    .end local v4    # "parser":Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Can\'t parse is-composing event"

    invoke-virtual {v5, v6, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "input":Lorg/xml/sax/InputSource;
    .restart local v2    # "isComposingInfo":Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;
    .restart local v3    # "j":I
    .restart local v4    # "parser":Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    const/4 v6, 0x1

    invoke-interface {v5, p1, v6}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleIsComposingEvent(Ljava/lang/String;Z)V

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 94
    :cond_4
    iget v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->timeout:I

    int-to-long v6, v5

    invoke-virtual {p0, v6, v7, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->startExpirationTimer(JLjava/lang/String;)V

    goto :goto_1

    .line 99
    :cond_5
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    const/4 v6, 0x0

    invoke-interface {v5, p1, v6}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleIsComposingEvent(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public declared-synchronized startExpirationTimer(JLjava/lang/String;)V
    .locals 5
    .param p1, "duration"    # J
    .param p3, "contact"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->timerTask:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;

    if-nez v0, :cond_0

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    :goto_1
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;

    invoke-direct {v0, p0, p3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->timerTask:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;

    .line 151
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->timer:Ljava/util/Timer;

    .line 152
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->timerTask:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 153
    return-void

    .line 142
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->timerTask:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;->cancel()Z

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->timerTask:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 148
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Start is-composing timer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized stopExpirationTimer(Ljava/lang/String;)V
    .locals 2
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->timerTask:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :goto_1
    monitor-exit p0

    .line 171
    return-void

    .line 163
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Stop is-composing timer"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 168
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->timerTask:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;->cancel()Z

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->timerTask:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
