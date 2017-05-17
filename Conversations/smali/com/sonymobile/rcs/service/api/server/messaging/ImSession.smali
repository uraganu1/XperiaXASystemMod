.class public Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;
.super Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;
.source "ImSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;


# instance fields
.field private listeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/lang/Object;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    .locals 1
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;-><init>()V

    .line 81
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->lock:Ljava/lang/Object;

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 99
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .line 100
    invoke-virtual {p1, p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->addListener(Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;)V

    .line 101
    return-void
.end method

.method private broadcastChatErrorIntent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 955
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "reason"

    .line 956
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 957
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->doBroadcast(Landroid/content/Intent;)V

    .line 958
    return-void
.end method

.method private broadcastChatSessionTerminatedIntent()V
    .locals 2

    .prologue
    .line 961
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.rcs.messaging.CHAT_SESSION_TERMINATED_BY_REMOTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 962
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->doBroadcast(Landroid/content/Intent;)V

    .line 963
    return-void
.end method

.method private broadcastReceivedMessageIntent(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    .prologue
    .line 949
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.rcs.messaging.CHAT_MESSAGE_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "instantMessage"

    .line 950
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 951
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->doBroadcast(Landroid/content/Intent;)V

    .line 952
    return-void
.end method

.method private doBroadcast(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 967
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "number":Ljava/lang/String;
    const-string/jumbo v1, "sessionId"

    .line 968
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "contact"

    .line 969
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "isGroupChat"

    .line 970
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->isGroupChat()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "chatId"

    .line 971
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->getChatID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    const/high16 v1, 0x10000000

    .line 975
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 976
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 977
    return-void

    .line 973
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Broadcast intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public acceptSession()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->acceptSession()V

    .line 195
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Accept session invitation"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addParticipant(Ljava/lang/String;)V
    .locals 5
    .param p1, "participant"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 269
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getMaxParticipants()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 270
    .local v1, "max":I
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getConnectedParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 271
    .local v0, "connected":I
    if-lt v0, v1, :cond_1

    const-string/jumbo v2, "Maximum number of participants reached"

    .line 276
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->handleAddParticipantFailed(Ljava/lang/String;)V

    .line 278
    :goto_1
    return-void

    .line 266
    .end local v0    # "connected":I
    .end local v1    # "max":I
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Add participant "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to the session"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    .restart local v0    # "connected":I
    .restart local v1    # "max":I
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v2, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->addParticipant(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public addParticipants(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .param p2, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 291
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getMaxParticipants()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 292
    .local v1, "max":I
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getConnectedParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 293
    .local v0, "connected":I
    if-lt v0, v1, :cond_1

    const-string/jumbo v2, "Maximum number of participants reached"

    .line 298
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->handleAddParticipantFailed(Ljava/lang/String;)V

    .line 300
    :goto_1
    return-void

    .line 288
    .end local v0    # "connected":I
    .end local v1    # "max":I
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " participants to the session"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    .restart local v0    # "connected":I
    .restart local v1    # "max":I
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v2, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->addParticipants(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public addSessionListener(Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;

    .prologue
    .line 547
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 552
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Add an event listener"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 552
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cancelSession()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->abortSession(I)V

    .line 222
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Cancel session"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getChatID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstMessage()Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getFirstMessage()Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v0

    return-object v0
.end method

.method public getMaxParticipants()I
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getMaxParticipants()I

    move-result v0

    return v0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Get max number of participants in the session"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMaxParticipantsToBeAdded()I
    .locals 3

    .prologue
    .line 254
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getMaxParticipants()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 255
    .local v1, "max":I
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getConnectedParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 256
    .local v0, "connected":I
    sub-int v2, v1, v0

    return v2
.end method

.method public getParticipants()Ljava/util/List;
    .locals 2
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
    .line 230
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getConnectedParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Get list of connected participants in the session"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRemoteContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionState()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->getSessionState(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)I

    move-result v0

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleAddParticipantFailed(Ljava/lang/String;)V
    .locals 7
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 899
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 900
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 905
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 906
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 915
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 916
    monitor-exit v4

    .line 917
    return-void

    .line 901
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Add participant request has failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 916
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 908
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;

    invoke-interface {v3, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;->handleAddParticipantFailed(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 906
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 913
    :catch_0
    move-exception v1

    .line 910
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 911
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleAddParticipantSuccessful()V
    .locals 6

    .prologue
    .line 873
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 874
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 879
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 880
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 889
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 890
    monitor-exit v4

    .line 891
    return-void

    .line 875
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Add participant request is successful"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 890
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 882
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;->handleAddParticipantSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 880
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 887
    :catch_0
    move-exception v1

    .line 884
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 885
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleConferenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "contactDisplayname"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/String;

    .prologue
    .line 807
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 808
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 813
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 814
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 824
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 825
    monitor-exit v4

    .line 826
    return-void

    .line 809
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "New conference event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 825
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 816
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;->handleConferenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 822
    :catch_0
    move-exception v1

    .line 819
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 820
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleImError(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;)V
    .locals 7
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;

    .prologue
    .line 727
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 728
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 733
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;->getErrorCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 747
    :pswitch_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addChatSessionError(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 752
    :goto_1
    :pswitch_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 753
    .local v2, "i":I
    :goto_2
    if-lt v2, v0, :cond_1

    .line 762
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const-string/jumbo v3, "com.sonymobile.rcs.messaging.CHAT_IM_ERROR"

    .line 765
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;->getErrorCode()I

    move-result v5

    invoke-direct {p0, v3, v5}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->broadcastChatErrorIntent(Ljava/lang/String;I)V

    .line 768
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->removeChatSession(Ljava/lang/String;)V

    .line 769
    monitor-exit v4

    .line 770
    return-void

    .line 729
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IM error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;->getErrorCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 769
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 739
    :pswitch_2
    :try_start_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addChatSessionTermination(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    goto :goto_1

    .line 743
    :pswitch_3
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addChatSessionTermination(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 744
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->markFirstMessageFailed(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 755
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;->getErrorCode()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;->handleImError(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 753
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 760
    :catch_0
    move-exception v1

    .line 757
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 758
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 733
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public handleIsComposingEvent(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "status"    # Z

    .prologue
    .line 779
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 780
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 785
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 786
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 795
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 796
    monitor-exit v4

    .line 797
    return-void

    .line 781
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is composing status set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 796
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 788
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;

    invoke-interface {v3, p1, p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;->handleIsComposingEvent(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 786
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 793
    :catch_0
    move-exception v1

    .line 790
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 791
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 841
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 842
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->updateMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    monitor-exit v1

    .line 849
    return-void

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "New message delivery status for message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 848
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleReceiveGeoloc(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;)V
    .locals 7
    .param p1, "geoloc"    # Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;

    .prologue
    .line 921
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 922
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 927
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v3, p1, v5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addIncomingGeoloc(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 930
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getRemote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactDisplayName(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 935
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 944
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 945
    monitor-exit v4

    .line 946
    return-void

    .line 923
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "New geoloc message received"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 945
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 937
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;

    invoke-interface {v3, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;->handleReceiveGeoloc(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 935
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 942
    :catch_0
    move-exception v1

    .line 939
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 940
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleReceiveMessage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V
    .locals 7
    .param p1, "message"    # Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    .prologue
    .line 686
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 687
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 693
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getMessageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->doesMessageIdAlreadyExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 698
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v3

    if-nez v3, :cond_2

    .line 704
    :goto_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 705
    .local v2, "i":I
    :goto_3
    if-lt v2, v0, :cond_3

    .line 714
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 717
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->broadcastReceivedMessageIntent(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V

    .line 718
    monitor-exit v4

    .line 719
    return-void

    .line 688
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "New IM received"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 718
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 694
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v3, p1, v5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addIncomingChatMessage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    goto :goto_1

    .line 699
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getRemote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactDisplayName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 707
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;

    invoke-interface {v3, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;->handleReceiveMessage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 705
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 712
    :catch_0
    move-exception v1

    .line 709
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 710
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method

.method public handleSessionAborted(I)V
    .locals 7
    .param p1, "reason"    # I

    .prologue
    .line 611
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 612
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    const/4 v3, 0x1

    .line 617
    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    .line 619
    if-eq p1, v3, :cond_3

    .line 622
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addChatSessionTermination(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 626
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 627
    .local v2, "i":I
    :goto_2
    if-lt v2, v0, :cond_4

    .line 636
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const-string/jumbo v3, "com.sonymobile.rcs.messaging.CHAT_SESSION_ABORTED"

    .line 639
    invoke-direct {p0, v3, p1}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->broadcastChatErrorIntent(Ljava/lang/String;I)V

    .line 642
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->removeChatSession(Ljava/lang/String;)V

    .line 643
    monitor-exit v4

    .line 644
    return-void

    .line 613
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Session aborted (reason "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 643
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 618
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addChatSessionTerminationByUser(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    goto :goto_1

    .line 619
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 620
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addGroupChatSessionTerminationByRemote(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 629
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;

    invoke-interface {v3, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;->handleSessionAborted(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 627
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 634
    :catch_0
    move-exception v1

    .line 631
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 632
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method public handleSessionStarted()V
    .locals 7

    .prologue
    .line 573
    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 574
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 579
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v4

    iget-object v6, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v4, v6}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->markChatSessionStarted(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 581
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->isGroupChat()Z

    move-result v4

    if-nez v4, :cond_2

    .line 591
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 592
    .local v2, "i":I
    :goto_2
    if-lt v2, v0, :cond_3

    .line 601
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 602
    monitor-exit v5

    .line 603
    return-void

    .line 575
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Session started"

    invoke-virtual {v4, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 602
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 582
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->getChatID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getQueuedContacts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 584
    .local v3, "queuedParticipants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    .line 585
    invoke-virtual {p0, v3, v4}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->addParticipants(Ljava/util/List;Ljava/lang/String;)V

    .line 586
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->getChatID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->removeQueuedContacts(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 594
    .end local v3    # "queuedParticipants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;

    invoke-interface {v4}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;->handleSessionStarted()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 592
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 599
    :catch_0
    move-exception v1

    .line 596
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 597
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Can\'t notify listener"

    invoke-virtual {v4, v6, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method public handleSessionTerminatedByRemote()V
    .locals 6

    .prologue
    .line 650
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 651
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 656
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addChatSessionTerminationByRemote(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 659
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 660
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 669
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 672
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->broadcastChatSessionTerminatedIntent()V

    .line 676
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->removeChatSession(Ljava/lang/String;)V

    .line 677
    monitor-exit v4

    .line 678
    return-void

    .line 652
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session terminated by remote"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 677
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 662
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;->handleSessionTerminatedByRemote()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 667
    :catch_0
    move-exception v1

    .line 664
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 665
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public isFileTransferSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 349
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferHttpSupported()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isFileTransferSupportedByRemote()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isGeolocSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 830
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isGeoLocationPushSupported()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGeolocSupportedByRemote()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isGroupChat()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v0

    return v0
.end method

.method public isSessionRemoteOriginated()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isRemoteOriginated()Z

    move-result v0

    return v0
.end method

.method public isStoreAndForward()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isStoreAndForward()Z

    move-result v0

    return v0
.end method

.method public isStoreAndForwardNotif()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isStoreAndForwardNotif()Z

    move-result v0

    return v0
.end method

.method public rejectSession()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addChatSessionTermination(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 209
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->rejectSession()V

    .line 210
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Reject session invitation"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeSessionListener(Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 566
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Remove an event listener"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 566
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resendMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getChatData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;->UPDATE_MESSAGE_MSGID:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;)Ljava/lang/String;

    .line 328
    return-void
.end method

.method public sendFile(Landroid/net/Uri;Z)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .locals 22
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "thumbnail"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/file/FileFactory;->getFactory()Lcom/sonymobile/rcs/platform/file/FileFactory;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/platform/file/FileFactory;->getFileDescription(Landroid/net/Uri;)Lcom/sonymobile/rcs/platform/file/FileDescription;

    move-result-object v18

    .line 379
    .local v18, "desc":Lcom/sonymobile/rcs/platform/file/FileDescription;
    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/platform/file/FileDescription;->getSize()J

    move-result-wide v2

    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/sonymobile/rcs/utils/FileUtils;->getFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v5}, Lcom/sonymobile/rcs/core/content/ContentManager;->createMmContentFromUri(Landroid/net/Uri;JLjava/lang/String;)Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v4

    .line 381
    .local v4, "content":Lcom/sonymobile/rcs/core/content/MmContent;
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/sonymobile/rcs/utils/FileUtils;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/sonymobile/rcs/core/content/MmContent;->setEncoding(Ljava/lang/String;)V

    .line 383
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object v8

    .line 384
    .local v8, "messageId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->getSessionID()Ljava/lang/String;

    move-result-object v6

    .line 385
    .local v6, "chatSessionId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->getChatID()Ljava/lang/String;

    move-result-object v7

    .local v7, "chatId":Ljava/lang/String;
    const/16 v20, 0x0

    .line 387
    .local v20, "fileSharingsession":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->isGroupChat()Z

    move-result v2

    if-nez v2, :cond_1

    .line 398
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v3

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->initiateFileTransferSession(Ljava/lang/String;Lcom/sonymobile/rcs/core/content/MmContent;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    move-result-object v20

    .line 404
    .local v20, "fileSharingsession":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v15

    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getDate()Ljava/util/Date;

    move-result-object v16

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;

    move/from16 v17, v0

    move-object v11, v6

    move-object v13, v8

    move-object/from16 v14, p1

    invoke-virtual/range {v9 .. v17}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addOutgoingFileTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/util/Date;Z)V

    .line 411
    :goto_1
    new-instance v21, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;)V

    .line 412
    .local v21, "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;
    invoke-static/range {v21 .. v21}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->addFileTransferSession(Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    return-object v21

    .line 373
    .end local v4    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .end local v6    # "chatSessionId":Ljava/lang/String;
    .end local v7    # "chatId":Ljava/lang/String;
    .end local v8    # "messageId":Ljava/lang/String;
    .end local v18    # "desc":Lcom/sonymobile/rcs/platform/file/FileDescription;
    .end local v20    # "fileSharingsession":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    .end local v21    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Transfer file "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 388
    .restart local v4    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .restart local v6    # "chatSessionId":Ljava/lang/String;
    .restart local v7    # "chatId":Ljava/lang/String;
    .restart local v8    # "messageId":Ljava/lang/String;
    .restart local v18    # "desc":Lcom/sonymobile/rcs/platform/file/FileDescription;
    .local v20, "fileSharingsession":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->getParticipants()Ljava/util/List;

    move-result-object v3

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->initiateGroupFileTransferSession(Ljava/util/List;Lcom/sonymobile/rcs/core/content/MmContent;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    move-result-object v20

    .line 394
    .local v20, "fileSharingsession":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->getParticipants()Ljava/util/List;

    move-result-object v10

    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->getChatID()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v16

    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getDate()Ljava/util/Date;

    move-result-object v17

    move-object v11, v6

    move-object v13, v8

    move-object/from16 v15, p1

    invoke-virtual/range {v9 .. v17}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addOutgoingGroupFileTransfer(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 413
    .end local v4    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .end local v6    # "chatSessionId":Ljava/lang/String;
    .end local v7    # "chatId":Ljava/lang/String;
    .end local v8    # "messageId":Ljava/lang/String;
    .end local v18    # "desc":Lcom/sonymobile/rcs/platform/file/FileDescription;
    .end local v20    # "fileSharingsession":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    :catch_0
    move-exception v19

    .line 415
    .local v19, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2

    .line 418
    :goto_2
    new-instance v2, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 416
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Unexpected error"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public sendGeoloc(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;)Ljava/lang/String;
    .locals 2
    .param p1, "geoloc"    # Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    .prologue
    .line 338
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "msgId":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v1, v0, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->sendGeolocMessage(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public sendMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "msgId":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    sget-object v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;->ADD_MESSAGE:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;

    invoke-virtual {v1, v0, p1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public sendQueuedFile(Ljava/lang/String;Z)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .locals 14
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "thumbnail"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 434
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getChatData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 435
    .local v10, "fileUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->getParticipants()Ljava/util/List;

    move-result-object v1

    .line 444
    .local v1, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 447
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/platform/file/FileFactory;->getFactory()Lcom/sonymobile/rcs/platform/file/FileFactory;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/sonymobile/rcs/platform/file/FileFactory;->getFileDescription(Landroid/net/Uri;)Lcom/sonymobile/rcs/platform/file/FileDescription;

    move-result-object v7

    .line 448
    .local v7, "desc":Lcom/sonymobile/rcs/platform/file/FileDescription;
    invoke-virtual {v7}, Lcom/sonymobile/rcs/platform/file/FileDescription;->getSize()J

    move-result-wide v12

    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/sonymobile/rcs/utils/FileUtils;->getFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v12, v13, v0}, Lcom/sonymobile/rcs/core/content/ContentManager;->createMmContentFromUri(Landroid/net/Uri;JLjava/lang/String;)Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v2

    .line 450
    .local v2, "content":Lcom/sonymobile/rcs/core/content/MmContent;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->getSessionID()Ljava/lang/String;

    move-result-object v4

    .line 451
    .local v4, "chatSessionId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->getChatID()Ljava/lang/String;

    move-result-object v5

    .local v5, "chatId":Ljava/lang/String;
    const/4 v9, 0x0

    .line 454
    .local v9, "fileSharingsession":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v0

    move/from16 v3, p2

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->initiateGroupFileTransferSession(Ljava/util/List;Lcom/sonymobile/rcs/core/content/MmContent;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    move-result-object v9

    .line 461
    .local v9, "fileSharingsession":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->getChatID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v3, v6, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->markQueuedGroupFileTransferAsInitiated(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    new-instance v11, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;

    invoke-direct {v11, v9}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;)V

    .line 466
    .local v11, "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;
    invoke-static {v11}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->addFileTransferSession(Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;)V

    .line 467
    return-object v11

    .line 436
    .end local v1    # "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .end local v4    # "chatSessionId":Ljava/lang/String;
    .end local v5    # "chatId":Ljava/lang/String;
    .end local v7    # "desc":Lcom/sonymobile/rcs/platform/file/FileDescription;
    .end local v9    # "fileSharingsession":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    .end local v11    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Transfer file "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 467
    .end local v10    # "fileUri":Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 469
    .local v8, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 472
    :goto_2
    new-instance v0, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v1    # "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "fileUri":Landroid/net/Uri;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 470
    .end local v1    # "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "fileUri":Landroid/net/Uri;
    .restart local v8    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Unexpected error"

    invoke-virtual {v0, v3, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public sendQueuedMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->resendMessage(Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public setIsComposingStatus(Z)V
    .locals 1
    .param p1, "status"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isMediaEstablished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->sendIsComposingStatus(Z)V

    goto :goto_0
.end method

.method public setMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 v1, 0x0

    .line 512
    .local v1, "contact":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_2

    .line 519
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v1

    .line 525
    .local v1, "contact":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isMediaEstablished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 529
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setChatMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImdnManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

    move-result-object v0

    invoke-virtual {v0, v1, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->sendMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :goto_1
    return-void

    .line 508
    .end local v1    # "contact":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Set message delivery status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 538
    :catch_0
    move-exception v6

    .line 534
    .local v6, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_4

    .line 537
    :goto_2
    new-instance v0, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-direct {v0, v6}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 513
    .end local v6    # "e":Ljava/lang/Exception;
    .local v1, "contact":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    const-string/jumbo v2, "message_id"

    invoke-virtual {v0, p1, v2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getChatContact(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "contact":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    return-void

    .line 526
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .line 522
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    .line 526
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->sendMsrpMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 535
    .end local v1    # "contact":Ljava/lang/String;
    .restart local v6    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Could not send MSRP delivery status"

    invoke-virtual {v0, v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public updateMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 853
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setChatMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 857
    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 866
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 867
    return-void

    .line 859
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;

    invoke-interface {v3, p1, p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;->handleMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 864
    :catch_0
    move-exception v1

    .line 861
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 862
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t notify listener"

    invoke-virtual {v3, v4, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
