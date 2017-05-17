.class Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$1;
.super Ljava/lang/Object;
.source "OriginatingHttpGroupFileSharingSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->rejoinGroupChatSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAddParticipantFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 245
    return-void
.end method

.method public handleAddParticipantSuccessful()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public handleConferenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "contactDisplayname"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/String;

    .prologue
    .line 230
    return-void
.end method

.method public handleImError(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;)V
    .locals 4
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;

    .prologue
    .line 209
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;->getErrorCode()I

    move-result v0

    .local v0, "errorCode":I
    const/16 v1, 0x71

    .line 210
    if-eq v0, v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/16 v3, 0x81

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 219
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->chatSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->access$200(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->removeListener(Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;)V

    .line 220
    return-void

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    # invokes: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->restartGroupChatSession()V
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->access$100(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;)V

    goto :goto_0

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    const-string/jumbo v2, "Rejoin failed, restarting the group chat session"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public handleIsComposingEvent(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "status"    # Z

    .prologue
    .line 224
    return-void
.end method

.method public handleMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 235
    return-void
.end method

.method public handleReceiveGeoloc(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;)V
    .locals 0
    .param p1, "geoloc"    # Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;

    .prologue
    .line 250
    return-void
.end method

.method public handleReceiveMessage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    .prologue
    .line 205
    return-void
.end method

.method public handleSessionAborted(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->chatSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->access$200(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->removeListener(Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;)V

    .line 269
    return-void
.end method

.method public handleSessionStarted()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    # invokes: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->sendFileTransferInfo()V
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->access$300(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;)V

    .line 263
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->handleFileUploaded()V

    .line 264
    return-void
.end method

.method public handleSessionTerminatedByRemote()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->chatSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->access$200(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->removeListener(Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;)V

    .line 274
    return-void
.end method
