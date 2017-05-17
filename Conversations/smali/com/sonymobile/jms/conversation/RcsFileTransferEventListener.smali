.class final Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
.super Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener$Stub;
.source "RcsFileTransferEventListener.java"


# instance fields
.field private mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

.field private mMsg:Lcom/sonymobile/jms/message/ImFileMessage;

.field private mRcsEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;


# direct methods
.method constructor <init>(Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    .locals 2
    .param p1, "rcsEventHandler"    # Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;
    .param p2, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p3, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener$Stub;-><init>()V

    const-string/jumbo v0, "ImConversation \'"

    .line 29
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' msg \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 31
    iput-object p1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mRcsEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    .line 32
    iput-object p2, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 33
    iput-object p3, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mMsg:Lcom/sonymobile/jms/message/ImFileMessage;

    .line 34
    return-void
.end method


# virtual methods
.method connect(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)V
    .locals 5
    .param p1, "imPersistedMessageManager"    # Lcom/sonymobile/jms/message/ImMessageStorageManager;
    .param p2, "rcsFileTransferSession"    # Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 39
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mMsg:Lcom/sonymobile/jms/message/ImFileMessage;

    invoke-virtual {v3}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "msgId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 44
    :goto_0
    invoke-interface {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    .local v2, "rcsFileTransferSessionId":Ljava/lang/String;
    const-string/jumbo v3, "ImConversation \'"

    .line 45
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' rcs file transfer sesson \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' msg \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 48
    invoke-interface {p2, p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->addSessionListener(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;)V

    .line 53
    return-void

    .line 41
    .end local v2    # "rcsFileTransferSessionId":Ljava/lang/String;
    :cond_0
    invoke-interface {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->getMessageID()Ljava/lang/String;

    move-result-object v1

    .line 42
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mMsg:Lcom/sonymobile/jms/message/ImFileMessage;

    invoke-virtual {p1, v3, v1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->setMessageId(Lcom/sonymobile/jms/message/AbstractImUserMessage;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    .end local v1    # "msgId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v4, "Unable to connect rcs file transfer session to this listener!"

    invoke-direct {v3, v4, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method disconnect(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)V
    .locals 4
    .param p1, "rcsFileTransferSession"    # Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 58
    :try_start_0
    invoke-interface {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    .local v1, "rcsFileTransferSessionId":Ljava/lang/String;
    const-string/jumbo v2, "ImConversation \'"

    .line 59
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\' rcs file transfer sesson \'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\' msg \'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mMsg:Lcom/sonymobile/jms/message/ImFileMessage;

    invoke-virtual {v3}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 62
    invoke-interface {p1, p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->removeSessionListener(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return-void

    .line 66
    .end local v1    # "rcsFileTransferSessionId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v3, "Unable to disconnect rcs file transfer session from this listener!"

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public handleFileTransferAcceptCalled()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 140
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' msg \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mMsg:Lcom/sonymobile/jms/message/ImFileMessage;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 142
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mRcsEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mMsg:Lcom/sonymobile/jms/message/ImFileMessage;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsFileTransferAccepted(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V

    .line 143
    return-void
.end method

.method public handleFileTransferPaused()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 103
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' msg \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mMsg:Lcom/sonymobile/jms/message/ImFileMessage;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 105
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mRcsEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mMsg:Lcom/sonymobile/jms/message/ImFileMessage;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsFileTransferPaused(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V

    .line 106
    return-void
.end method

.method public handleFileTransferRejectCalled()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 147
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' msg \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mMsg:Lcom/sonymobile/jms/message/ImFileMessage;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 149
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mRcsEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mMsg:Lcom/sonymobile/jms/message/ImFileMessage;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsFileTransferRejected(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V

    .line 150
    return-void
.end method

.method public handleFileTransferResumed()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 110
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' msg \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mMsg:Lcom/sonymobile/jms/message/ImFileMessage;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 112
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mRcsEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mMsg:Lcom/sonymobile/jms/message/ImFileMessage;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsFileTransferResumed(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V

    .line 113
    return-void
.end method

.method public handleFileTransfered(Landroid/net/Uri;Ljava/lang/String;J)V
    .locals 3
    .param p1, "receivedFileUri"    # Landroid/net/Uri;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "fileSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 125
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' msg \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mMsg:Lcom/sonymobile/jms/message/ImFileMessage;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' received file uri \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 127
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mRcsEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mMsg:Lcom/sonymobile/jms/message/ImFileMessage;

    invoke-virtual {v0, v1, v2, p1}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsFileTransfered(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Landroid/net/Uri;)V

    .line 128
    return-void
.end method

.method public handleFileUploaded(Ljava/lang/String;)V
    .locals 3
    .param p1, "rcsChatSessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 117
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' rcsChatSessionId \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' msg \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mMsg:Lcom/sonymobile/jms/message/ImFileMessage;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 119
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mRcsEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mMsg:Lcom/sonymobile/jms/message/ImFileMessage;

    invoke-virtual {v0, v1, v2, p1}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsFileUploaded(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public handleSessionAborted(I)V
    .locals 0
    .param p1, "rcsSessionAbortReason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    return-void
.end method

.method public handleSessionStarted()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 87
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' msg \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mMsg:Lcom/sonymobile/jms/message/ImFileMessage;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 89
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mRcsEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mMsg:Lcom/sonymobile/jms/message/ImFileMessage;

    sget-object v3, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ESTABLISHED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsFileTransferSessionStateChange(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;)V

    .line 91
    return-void
.end method

.method public handleSessionTerminatedByRemote()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    return-void
.end method

.method public handleTransferError(I)V
    .locals 0
    .param p1, "rcsErrorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 136
    return-void
.end method

.method public handleTransferProgress(JJ)V
    .locals 3
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 95
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' msg \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mMsg:Lcom/sonymobile/jms/message/ImFileMessage;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' current size "

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(J)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, " total size "

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/sonymobile/jms/util/LogUtil;->add(J)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 98
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mRcsEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->mMsg:Lcom/sonymobile/jms/message/ImFileMessage;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsFileTransferProgress(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;J)V

    .line 99
    return-void
.end method
