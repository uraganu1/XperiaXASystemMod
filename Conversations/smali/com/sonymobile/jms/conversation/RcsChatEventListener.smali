.class final Lcom/sonymobile/jms/conversation/RcsChatEventListener;
.super Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener$Stub;
.source "RcsChatEventListener.java"


# instance fields
.field private mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

.field private mRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;


# direct methods
.method public constructor <init>(Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 2
    .param p1, "rcsSessionEventHandler"    # Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;
    .param p2, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener$Stub;-><init>()V

    const-string/jumbo v0, "ImConversation \'"

    .line 25
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 26
    iput-object p1, p0, Lcom/sonymobile/jms/conversation/RcsChatEventListener;->mRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    .line 27
    iput-object p2, p0, Lcom/sonymobile/jms/conversation/RcsChatEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 28
    return-void
.end method


# virtual methods
.method connect(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V
    .locals 3
    .param p1, "rcsChatSession"    # Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    :try_start_0
    const-string/jumbo v1, "ImConversation \'"

    .line 32
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/RcsChatEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' rcs chat sesson \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-interface {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 34
    invoke-interface {p1, p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->addSessionListener(Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v2, "Unable to connect rcs chat session to this listener!"

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method disconnect(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V
    .locals 3
    .param p1, "rcsChatSession"    # Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    :try_start_0
    const-string/jumbo v1, "ImConversation \'"

    .line 42
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/RcsChatEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' rcs chat sesson \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-interface {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 44
    invoke-interface {p1, p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->removeSessionListener(Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v2, "Unable to disconnect rcs chat session from this listener!"

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public handleAddParticipantFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "rcsFailureReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 126
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsChatEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' rcsFailureReason \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 128
    return-void
.end method

.method public handleAddParticipantSuccessful()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 121
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsChatEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 122
    return-void
.end method

.method public handleConferenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "rcsContactNumber"    # Ljava/lang/String;
    .param p2, "rcsContactDisplayName"    # Ljava/lang/String;
    .param p3, "rcsConferenceStatus"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 112
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsChatEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' rcsContactNumber \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' rcsContactDisplayName \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' rcsConferenceStatus \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 115
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsChatEventListener;->mRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsChatEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsChatSessionConferenceEvent(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public handleImError(I)V
    .locals 0
    .param p1, "rcsImErrorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    return-void
.end method

.method public handleIsComposingEvent(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "rcsContactNumber"    # Ljava/lang/String;
    .param p2, "rcsComposingStatus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 102
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsChatEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' rcsContactNumber \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' rcsComposingStatus "

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Z)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 105
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsChatEventListener;->mRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsChatEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1, p1, p2}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsChatSessionComposingEvent(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;Z)V

    .line 107
    return-void
.end method

.method public handleMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "rcsMsgDeliveryStatus"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 85
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsChatEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' msg \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' rcsMsgDeliveryStatus \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 87
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsChatEventListener;->mRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsChatEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1, p1, p2}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsChatSessionDeliveryStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public handleReceiveGeoloc(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;)V
    .locals 2
    .param p1, "arg0"    # Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 132
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsChatEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 133
    return-void
.end method

.method public handleReceiveMessage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V
    .locals 0
    .param p1, "instantMessage"    # Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
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
    .line 57
    return-void
.end method

.method public handleSessionStarted()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 69
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsChatEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 70
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsChatEventListener;->mRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsChatEventListener;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ESTABLISHED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsChatSessionStateChange(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;)V

    .line 72
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
    .line 65
    return-void
.end method
