.class Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$2;
.super Ljava/lang/Object;
.source "OriginatingHttpGroupFileSharingSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->restartGroupChatSession()V
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
    .line 293
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAddParticipantFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 324
    return-void
.end method

.method public handleAddParticipantSuccessful()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public handleConferenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "contactDisplayname"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/String;

    .prologue
    .line 312
    return-void
.end method

.method public handleImError(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;)V
    .locals 3
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/16 v2, 0x81

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 302
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->chatSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->access$200(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->removeListener(Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;)V

    .line 303
    return-void
.end method

.method public handleIsComposingEvent(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "status"    # Z

    .prologue
    .line 307
    return-void
.end method

.method public handleMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 316
    return-void
.end method

.method public handleReceiveGeoloc(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;)V
    .locals 0
    .param p1, "geoloc"    # Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;

    .prologue
    .line 328
    return-void
.end method

.method public handleReceiveMessage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    .prologue
    .line 296
    return-void
.end method

.method public handleSessionAborted(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->chatSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->access$200(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->removeListener(Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;)V

    .line 347
    return-void
.end method

.method public handleSessionStarted()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    # invokes: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->sendFileTransferInfo()V
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->access$300(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;)V

    .line 341
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->handleFileUploaded()V

    .line 342
    return-void
.end method

.method public handleSessionTerminatedByRemote()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->chatSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->access$200(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->removeListener(Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;)V

    .line 352
    return-void
.end method
