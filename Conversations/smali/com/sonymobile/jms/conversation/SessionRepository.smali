.class Lcom/sonymobile/jms/conversation/SessionRepository;
.super Ljava/lang/Object;
.source "SessionRepository.java"


# instance fields
.field private final mSessionOperationLock:Ljava/lang/Object;

.field private mSessionsByImConversationId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/jms/conversation/ImConversationId;",
            "Lcom/sonymobile/jms/conversation/Session;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionsByRcsSessionId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/jms/conversation/Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/jms/conversation/SessionRepository;->mSessionOperationLock:Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/jms/conversation/SessionRepository;->mSessionsByImConversationId:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/jms/conversation/SessionRepository;->mSessionsByRcsSessionId:Ljava/util/Map;

    .line 24
    return-void
.end method


# virtual methods
.method addRcsSession(Lcom/sonymobile/jms/conversation/Session;Ljava/lang/String;)V
    .locals 3
    .param p1, "session"    # Lcom/sonymobile/jms/conversation/Session;
    .param p2, "rcsSessionId"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "Session \'"

    .line 44
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' rcs session \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 46
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/SessionRepository;->mSessionOperationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/SessionRepository;->mSessionsByImConversationId:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/Session;->getId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/SessionRepository;->mSessionsByRcsSessionId:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method addSession(Lcom/sonymobile/jms/conversation/Session;)V
    .locals 3
    .param p1, "session"    # Lcom/sonymobile/jms/conversation/Session;

    .prologue
    const-string/jumbo v0, "Session \'"

    .line 37
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 38
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/SessionRepository;->mSessionOperationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/SessionRepository;->mSessionsByImConversationId:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/Session;->getId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    monitor-exit v1

    .line 41
    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method cleanup()V
    .locals 2

    .prologue
    const-string/jumbo v0, "enter"

    .line 27
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->d(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/SessionRepository;->mSessionOperationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/SessionRepository;->mSessionsByImConversationId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/sonymobile/jms/conversation/SessionRepository;->mSessionsByImConversationId:Ljava/util/Map;

    .line 31
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/SessionRepository;->mSessionsByRcsSessionId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/sonymobile/jms/conversation/SessionRepository;->mSessionsByRcsSessionId:Ljava/util/Map;

    .line 33
    monitor-exit v1

    .line 34
    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getSessionByImConversationId(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;
    .locals 5
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/SessionNotFoundException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "ImConversation \'"

    .line 75
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 76
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/SessionRepository;->mSessionOperationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/SessionRepository;->mSessionsByImConversationId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/conversation/Session;

    .line 78
    .local v0, "session":Lcom/sonymobile/jms/conversation/Session;
    if-eqz v0, :cond_0

    .line 82
    monitor-exit v2

    return-object v0

    .line 79
    :cond_0
    new-instance v1, Lcom/sonymobile/jms/conversation/SessionNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Session belonging to ImConversation \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' not found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sonymobile/jms/conversation/SessionNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    .end local v0    # "session":Lcom/sonymobile/jms/conversation/Session;
    :catchall_0
    move-exception v1

    .line 83
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSessionByRcsSessionId(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/Session;
    .locals 5
    .param p1, "rcsSessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/SessionNotFoundException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "Rcs session \'"

    .line 88
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 89
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/SessionRepository;->mSessionOperationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/SessionRepository;->mSessionsByRcsSessionId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/conversation/Session;

    .line 91
    .local v0, "session":Lcom/sonymobile/jms/conversation/Session;
    if-eqz v0, :cond_0

    .line 95
    monitor-exit v2

    return-object v0

    .line 92
    :cond_0
    new-instance v1, Lcom/sonymobile/jms/conversation/SessionNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Session containing rcs session \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' not found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sonymobile/jms/conversation/SessionNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    .end local v0    # "session":Lcom/sonymobile/jms/conversation/Session;
    :catchall_0
    move-exception v1

    .line 96
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeReferencesToRcsSession(Ljava/lang/String;)V
    .locals 2
    .param p1, "rcsSessionId"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "Rcs session \'"

    .line 67
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 68
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/SessionRepository;->mSessionOperationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/SessionRepository;->mSessionsByRcsSessionId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    monitor-exit v1

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeSessionByRcsSessionId(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/Session;
    .locals 5
    .param p1, "rcsSessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/SessionNotFoundException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "Rcs session \'"

    .line 54
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 55
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/SessionRepository;->mSessionOperationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/SessionRepository;->mSessionsByRcsSessionId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/conversation/Session;

    .line 57
    .local v0, "session":Lcom/sonymobile/jms/conversation/Session;
    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/SessionRepository;->mSessionsByImConversationId:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sonymobile/jms/conversation/Session;->getId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    monitor-exit v2

    return-object v0

    .line 58
    :cond_0
    new-instance v1, Lcom/sonymobile/jms/conversation/SessionNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found no session that was connected to rcs session \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sonymobile/jms/conversation/SessionNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    .end local v0    # "session":Lcom/sonymobile/jms/conversation/Session;
    :catchall_0
    move-exception v1

    .line 63
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
