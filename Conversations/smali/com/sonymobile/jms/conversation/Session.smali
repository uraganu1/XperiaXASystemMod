.class Lcom/sonymobile/jms/conversation/Session;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/jms/conversation/Session$1;,
        Lcom/sonymobile/jms/conversation/Session$SessionInfo;,
        Lcom/sonymobile/jms/conversation/Session$InvitationState;
    }
.end annotation


# instance fields
.field private mActiveChatSAndFNotificationSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

.field private mActiveChatSAndFSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

.field private mActiveChatSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

.field private mActiveChatSessionInvitationState:Lcom/sonymobile/jms/conversation/Session$InvitationState;

.field private mActiveFileSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/jms/conversation/Session$SessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveFileSessionsInvitationStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/jms/conversation/Session$InvitationState;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Lcom/sonymobile/jms/conversation/ImConversationId;

.field private mRecipientNumbers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;"
        }
    .end annotation
.end field

.field private mRestartGcOnNextFailedRejoinAttempt:Z


# direct methods
.method protected constructor <init>(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 1
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveFileSessions:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveFileSessionsInvitationStates:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mRecipientNumbers:Ljava/util/Set;

    .line 60
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/jms/conversation/Session;->addRecipient(Lcom/sonymobile/jms/contact/ImContactNumber;)V

    goto :goto_0
.end method

.method private getChatSAndFSessionInfo()Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSAndFSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSAndFSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    return-object v0

    .line 101
    :cond_0
    new-instance v0, Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;

    const-string/jumbo v1, "No rcs chat session is connected to this session!"

    invoke-direct {v0, v1}, Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getChatSessionInfo()Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    return-object v0

    .line 93
    :cond_0
    new-instance v0, Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;

    const-string/jumbo v1, "No rcs chat session is connected to this session!"

    invoke-direct {v0, v1}, Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getFileSessionInfo(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveFileSessions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    .line 110
    .local v0, "sessionInfo":Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    if-eqz v0, :cond_0

    .line 115
    return-object v0

    .line 111
    :cond_0
    new-instance v1, Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No rcs filetransfer session is connected for file message id \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' to this session!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private warnIfSessionEventListenerIsStillPresent(Lcom/sonymobile/jms/conversation/Session$SessionInfo;)V
    .locals 2
    .param p1, "sessionInfo"    # Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    .prologue
    .line 128
    if-nez p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p1, Lcom/sonymobile/jms/conversation/Session$SessionInfo;->mEventListener:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SessionEventListener for \'"

    .line 129
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p1, Lcom/sonymobile/jms/conversation/Session$SessionInfo;->mRcsSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' to session \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' should be be properly disconnected!"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    goto :goto_0
.end method


# virtual methods
.method addFileTransferSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "rcsFileTransferSessionId"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v1, "Session \'"

    .line 213
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' rcs file transfer session \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' msgId \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 216
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveFileSessions:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    .line 217
    .local v0, "sessionInfo":Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    invoke-direct {p0, v0}, Lcom/sonymobile/jms/conversation/Session;->warnIfSessionEventListenerIsStillPresent(Lcom/sonymobile/jms/conversation/Session$SessionInfo;)V

    .line 218
    if-eqz v0, :cond_0

    .line 222
    :goto_0
    iput-object p1, v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;->mRcsSessionId:Ljava/lang/String;

    .line 223
    return-void

    .line 219
    :cond_0
    new-instance v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    .end local v0    # "sessionInfo":Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    invoke-direct {v0, v3}, Lcom/sonymobile/jms/conversation/Session$SessionInfo;-><init>(Lcom/sonymobile/jms/conversation/Session$1;)V

    .line 220
    .restart local v0    # "sessionInfo":Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveFileSessions:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method addRecipient(Lcom/sonymobile/jms/contact/ImContactNumber;)V
    .locals 2
    .param p1, "number"    # Lcom/sonymobile/jms/contact/ImContactNumber;

    .prologue
    const-string/jumbo v0, "Session \'"

    .line 357
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' recipient number \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 359
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/Session;->mRecipientNumbers:Ljava/util/Set;

    monitor-enter v1

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mRecipientNumbers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 361
    monitor-exit v1

    .line 362
    return-void

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 72
    if-eqz p1, :cond_0

    .line 75
    instance-of v1, p1, Lcom/sonymobile/jms/conversation/Session;

    if-nez v1, :cond_1

    .line 79
    return v2

    .line 73
    :cond_0
    return v2

    :cond_1
    move-object v0, p1

    .line 76
    check-cast v0, Lcom/sonymobile/jms/conversation/Session;

    .line 77
    .local v0, "otherSession":Lcom/sonymobile/jms/conversation/Session;
    iget-object v1, v0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method getChatSAndFSessionId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/Session;->getChatSAndFSessionInfo()Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;->mRcsSessionId:Ljava/lang/String;

    return-object v0
.end method

.method getChatSessionId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/Session;->getChatSessionInfo()Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;->mRcsSessionId:Ljava/lang/String;

    return-object v0
.end method

.method getChatSessionInvitationState()Lcom/sonymobile/jms/conversation/Session$InvitationState;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSessionInvitationState:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    if-eqz v0, :cond_0

    .line 343
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSessionInvitationState:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    return-object v0

    .line 341
    :cond_0
    sget-object v0, Lcom/sonymobile/jms/conversation/Session$InvitationState;->UNPROCESSED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    iput-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSessionInvitationState:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    goto :goto_0
.end method

.method getFileTransferSessionId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/Session;->getFileSessionInfo(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;->mRcsSessionId:Ljava/lang/String;

    return-object v0
.end method

.method getFileTransferSessionIds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveFileSessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 310
    .local v0, "fileTransferSessionMsgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveFileSessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    return-object v0

    .line 311
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getFileTransferSessionInvitationState(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/Session$InvitationState;
    .locals 2
    .param p1, "rcsSessionId"    # Ljava/lang/String;

    .prologue
    .line 348
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveFileSessionsInvitationStates:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/conversation/Session$InvitationState;

    .line 349
    .local v0, "invitationState":Lcom/sonymobile/jms/conversation/Session$InvitationState;
    if-eqz v0, :cond_0

    .line 352
    return-object v0

    .line 350
    :cond_0
    sget-object v1, Lcom/sonymobile/jms/conversation/Session$InvitationState;->UNPROCESSED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    return-object v1
.end method

.method public getId()Lcom/sonymobile/jms/conversation/ImConversationId;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    return-object v0
.end method

.method getRecipientNumbers()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/Session;->mRecipientNumbers:Ljava/util/Set;

    monitor-enter v1

    .line 366
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/Session;->mRecipientNumbers:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 367
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method isRestartGcOnNextFailedRejoinAttempt()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/sonymobile/jms/conversation/Session;->mRestartGcOnNextFailedRejoinAttempt:Z

    return v0
.end method

.method removeChatEventListener()Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string/jumbo v2, "Session \'"

    .line 274
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 275
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/Session;->getChatSessionInfo()Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    move-result-object v0

    .line 276
    .local v0, "chatSessionInfo":Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    iget-object v1, v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;->mEventListener:Landroid/os/IBinder;

    check-cast v1, Lcom/sonymobile/jms/conversation/RcsChatEventListener;

    .line 277
    .local v1, "listener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    if-nez v1, :cond_0

    .line 280
    :goto_0
    return-object v1

    .line 278
    :cond_0
    iput-object v4, v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;->mEventListener:Landroid/os/IBinder;

    goto :goto_0
.end method

.method removeChatSession()V
    .locals 4

    .prologue
    const-string/jumbo v2, "Session \'"

    .line 135
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 137
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/Session;->getChatSessionInfo()Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    move-result-object v1

    .line 138
    .local v1, "sessionInfo":Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    invoke-direct {p0, v1}, Lcom/sonymobile/jms/conversation/Session;->warnIfSessionEventListenerIsStillPresent(Lcom/sonymobile/jms/conversation/Session$SessionInfo;)V

    const/4 v2, 0x0

    .line 139
    iput-object v2, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    const/4 v2, 0x0

    .line 140
    iput-object v2, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSessionInvitationState:Lcom/sonymobile/jms/conversation/Session$InvitationState;
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v1    # "sessionInfo":Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    goto :goto_0
.end method

.method removeFileEventListener(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    .locals 5
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string/jumbo v2, "Session \'"

    .line 285
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\' file message id \'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 287
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/Session;->getFileSessionInfo(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    move-result-object v0

    .line 288
    .local v0, "fileSessionInfo":Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    iget-object v1, v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;->mEventListener:Landroid/os/IBinder;

    check-cast v1, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;

    .line 289
    .local v1, "listener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    if-nez v1, :cond_0

    .line 292
    :goto_0
    return-object v1

    .line 290
    :cond_0
    iput-object v4, v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;->mEventListener:Landroid/os/IBinder;

    goto :goto_0
.end method

.method removeFileTransferSession(Ljava/lang/String;)V
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v2, "Session \'"

    .line 147
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\' file message id \'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 150
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/Session;->getFileSessionInfo(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    move-result-object v1

    .line 151
    .local v1, "sessionInfo":Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    invoke-direct {p0, v1}, Lcom/sonymobile/jms/conversation/Session;->warnIfSessionEventListenerIsStillPresent(Lcom/sonymobile/jms/conversation/Session$SessionInfo;)V

    .line 152
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveFileSessions:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveFileSessionsInvitationStates:Ljava/util/Map;

    iget-object v3, v1, Lcom/sonymobile/jms/conversation/Session$SessionInfo;->mRcsSessionId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v1    # "sessionInfo":Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    goto :goto_0
.end method

.method setChatEventListener(Lcom/sonymobile/jms/conversation/RcsChatEventListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/sonymobile/jms/conversation/RcsChatEventListener;

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v1, "Session \'"

    .line 226
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 227
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    .line 228
    .local v0, "sessionInfo":Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    invoke-direct {p0, v0}, Lcom/sonymobile/jms/conversation/Session;->warnIfSessionEventListenerIsStillPresent(Lcom/sonymobile/jms/conversation/Session$SessionInfo;)V

    .line 229
    if-eqz v0, :cond_0

    .line 233
    :goto_0
    iput-object p1, v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;->mEventListener:Landroid/os/IBinder;

    .line 234
    return-void

    .line 230
    :cond_0
    new-instance v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    .end local v0    # "sessionInfo":Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    invoke-direct {v0, v3}, Lcom/sonymobile/jms/conversation/Session$SessionInfo;-><init>(Lcom/sonymobile/jms/conversation/Session$1;)V

    .line 231
    .restart local v0    # "sessionInfo":Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    iput-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    goto :goto_0
.end method

.method setChatSessionInvitationState(Lcom/sonymobile/jms/conversation/Session$InvitationState;)V
    .locals 0
    .param p1, "state"    # Lcom/sonymobile/jms/conversation/Session$InvitationState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
        }
    .end annotation

    .prologue
    .line 318
    iput-object p1, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSessionInvitationState:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    .line 319
    return-void
.end method

.method setFileEventListener(Ljava/lang/String;Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;)V
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v1, "Session \'"

    .line 260
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' file message id \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 262
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveFileSessions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    .line 263
    .local v0, "sessionInfo":Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    invoke-direct {p0, v0}, Lcom/sonymobile/jms/conversation/Session;->warnIfSessionEventListenerIsStillPresent(Lcom/sonymobile/jms/conversation/Session$SessionInfo;)V

    .line 264
    if-eqz v0, :cond_0

    .line 268
    :goto_0
    iput-object p2, v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;->mEventListener:Landroid/os/IBinder;

    .line 270
    return-void

    .line 265
    :cond_0
    new-instance v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    .end local v0    # "sessionInfo":Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    invoke-direct {v0, v3}, Lcom/sonymobile/jms/conversation/Session$SessionInfo;-><init>(Lcom/sonymobile/jms/conversation/Session$1;)V

    .line 266
    .restart local v0    # "sessionInfo":Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveFileSessions:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method setFileTransferSessionInvitationState(Lcom/sonymobile/jms/conversation/Session$InvitationState;Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # Lcom/sonymobile/jms/conversation/Session$InvitationState;
    .param p2, "rcsSessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveFileSessionsInvitationStates:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    return-void
.end method

.method setRcsGroupChatSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "rcsGroupChatSessionId"    # Ljava/lang/String;
    .param p2, "rcsChatId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "Session \'"

    .line 197
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' rcs chat session \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 199
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-interface {v0}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-static {p2}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 205
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    invoke-direct {p0, v0}, Lcom/sonymobile/jms/conversation/Session;->warnIfSessionEventListenerIsStillPresent(Lcom/sonymobile/jms/conversation/Session$SessionInfo;)V

    .line 206
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    if-eqz v0, :cond_1

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    iput-object p1, v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;->mRcsSessionId:Ljava/lang/String;

    .line 210
    return-void

    .line 200
    :cond_0
    new-instance v0, Lcom/sonymobile/jms/conversation/ImIncompatibeConversationTypeException;

    const-string/jumbo v1, "Unable to connect a non rcs group chat session to a group session"

    invoke-direct {v0, v1}, Lcom/sonymobile/jms/conversation/ImIncompatibeConversationTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_1
    new-instance v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    invoke-direct {v0, v2}, Lcom/sonymobile/jms/conversation/Session$SessionInfo;-><init>(Lcom/sonymobile/jms/conversation/Session$1;)V

    iput-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    goto :goto_0
.end method

.method setRcsOne2OneChatSAndFNotificationSession(Ljava/lang/String;)V
    .locals 3
    .param p1, "rcsOne2OneChatSessionId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "Session \'"

    .line 186
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' rcs chat S&F session \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 189
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSAndFNotificationSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    invoke-direct {p0, v0}, Lcom/sonymobile/jms/conversation/Session;->warnIfSessionEventListenerIsStillPresent(Lcom/sonymobile/jms/conversation/Session$SessionInfo;)V

    .line 190
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSAndFNotificationSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    if-eqz v0, :cond_0

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSAndFNotificationSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    iput-object p1, v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;->mRcsSessionId:Ljava/lang/String;

    .line 194
    return-void

    .line 191
    :cond_0
    new-instance v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    invoke-direct {v0, v2}, Lcom/sonymobile/jms/conversation/Session$SessionInfo;-><init>(Lcom/sonymobile/jms/conversation/Session$1;)V

    iput-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSAndFNotificationSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    goto :goto_0
.end method

.method setRcsOne2OneChatSAndFSession(Ljava/lang/String;)V
    .locals 3
    .param p1, "rcsOne2OneChatSessionId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "Session \'"

    .line 175
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' rcs chat S&F session \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 178
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSAndFSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    invoke-direct {p0, v0}, Lcom/sonymobile/jms/conversation/Session;->warnIfSessionEventListenerIsStillPresent(Lcom/sonymobile/jms/conversation/Session$SessionInfo;)V

    .line 179
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSAndFSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    if-eqz v0, :cond_0

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSAndFSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    iput-object p1, v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;->mRcsSessionId:Ljava/lang/String;

    .line 183
    return-void

    .line 180
    :cond_0
    new-instance v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    invoke-direct {v0, v2}, Lcom/sonymobile/jms/conversation/Session$SessionInfo;-><init>(Lcom/sonymobile/jms/conversation/Session$1;)V

    iput-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSAndFSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    goto :goto_0
.end method

.method setRcsOne2OneChatSession(Ljava/lang/String;)V
    .locals 3
    .param p1, "rcsOne2OneChatSessionId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "Session \'"

    .line 161
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' rcs chat session \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 163
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-interface {v0}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    invoke-direct {p0, v0}, Lcom/sonymobile/jms/conversation/Session;->warnIfSessionEventListenerIsStillPresent(Lcom/sonymobile/jms/conversation/Session$SessionInfo;)V

    .line 168
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    if-eqz v0, :cond_1

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    iput-object p1, v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;->mRcsSessionId:Ljava/lang/String;

    .line 172
    return-void

    .line 164
    :cond_0
    new-instance v0, Lcom/sonymobile/jms/conversation/ImIncompatibeConversationTypeException;

    const-string/jumbo v1, "Unable to connect a non rcs one2one chat session to a one2one session"

    invoke-direct {v0, v1}, Lcom/sonymobile/jms/conversation/ImIncompatibeConversationTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1
    new-instance v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    invoke-direct {v0, v2}, Lcom/sonymobile/jms/conversation/Session$SessionInfo;-><init>(Lcom/sonymobile/jms/conversation/Session$1;)V

    iput-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    goto :goto_0
.end method

.method setRestartGcOnNextFailedRejoinAttempt(Z)V
    .locals 0
    .param p1, "restart"    # Z

    .prologue
    .line 375
    iput-boolean p1, p0, Lcom/sonymobile/jms/conversation/Session;->mRestartGcOnNextFailedRejoinAttempt:Z

    .line 376
    return-void
.end method

.method setSAndFChatEventListener(Lcom/sonymobile/jms/conversation/RcsChatEventListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/sonymobile/jms/conversation/RcsChatEventListener;

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v1, "Session \'"

    .line 237
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 238
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSAndFSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    .line 239
    .local v0, "sessionInfo":Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    invoke-direct {p0, v0}, Lcom/sonymobile/jms/conversation/Session;->warnIfSessionEventListenerIsStillPresent(Lcom/sonymobile/jms/conversation/Session$SessionInfo;)V

    .line 240
    if-eqz v0, :cond_0

    .line 244
    :goto_0
    iput-object p1, v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;->mEventListener:Landroid/os/IBinder;

    .line 245
    return-void

    .line 241
    :cond_0
    new-instance v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    .end local v0    # "sessionInfo":Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    invoke-direct {v0, v3}, Lcom/sonymobile/jms/conversation/Session$SessionInfo;-><init>(Lcom/sonymobile/jms/conversation/Session$1;)V

    .line 242
    .restart local v0    # "sessionInfo":Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    iput-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSAndFSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    goto :goto_0
.end method

.method setSAndFNotificationEventListener(Lcom/sonymobile/jms/conversation/RcsChatEventListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/sonymobile/jms/conversation/RcsChatEventListener;

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v1, "Session \'"

    .line 248
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 249
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSAndFNotificationSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    .line 250
    .local v0, "sessionInfo":Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    invoke-direct {p0, v0}, Lcom/sonymobile/jms/conversation/Session;->warnIfSessionEventListenerIsStillPresent(Lcom/sonymobile/jms/conversation/Session$SessionInfo;)V

    .line 251
    if-eqz v0, :cond_0

    .line 255
    :goto_0
    iput-object p1, v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;->mEventListener:Landroid/os/IBinder;

    .line 256
    return-void

    .line 252
    :cond_0
    new-instance v0, Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    .end local v0    # "sessionInfo":Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    invoke-direct {v0, v3}, Lcom/sonymobile/jms/conversation/Session$SessionInfo;-><init>(Lcom/sonymobile/jms/conversation/Session$1;)V

    .line 253
    .restart local v0    # "sessionInfo":Lcom/sonymobile/jms/conversation/Session$SessionInfo;
    iput-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mActiveChatSAndFNotificationSession:Lcom/sonymobile/jms/conversation/Session$SessionInfo;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/Session;->mId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
