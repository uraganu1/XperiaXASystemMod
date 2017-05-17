.class Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;
.super Ljava/lang/Thread;
.source "UpdateSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->sendReInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

.field final synthetic val$reInvite:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

.field final synthetic val$reInviteContext:I


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;->val$reInvite:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    iput p3, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;->val$reInviteContext:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v5, 0xc8

    const/4 v7, 0x1

    .line 133
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;->val$reInvite:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v4}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getResponseTimeout()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v0

    .line 140
    .local v0, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipResponse()Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v4

    iget v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;->val$reInviteContext:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleReInviteResponse(ILcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;I)V

    .line 193
    .end local v0    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    :goto_0
    return-void

    .line 141
    .restart local v0    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    :cond_0
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 156
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v2

    const/16 v3, 0x25b

    if-eq v2, v3, :cond_2

    .line 161
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v2

    const/16 v3, 0x198

    if-eq v2, v3, :cond_3

    .line 166
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v2

    const/16 v3, 0x197

    if-eq v2, v3, :cond_4

    .line 171
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getStatusCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    .end local v0    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_5

    .line 189
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_0

    .line 144
    .end local v1    # "e":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
    .restart local v0    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getSdpContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setRemoteContent(Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v4

    iget v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;->val$reInviteContext:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleReInviteResponse(ILcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;I)V

    .line 152
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipAck(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)V

    goto/16 :goto_0

    .line 158
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v4

    iget v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;->val$reInviteContext:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleReInviteResponse(ILcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;I)V

    goto/16 :goto_0

    .line 163
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v4

    iget v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;->val$reInviteContext:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleReInviteResponse(ILcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;I)V

    goto/16 :goto_0

    .line 168
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v3

    iget v4, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;->val$reInviteContext:I

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleReInvite407ProxyAuthent(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;I)V
    :try_end_1
    .catch Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 187
    .end local v0    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .restart local v1    # "e":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
    :cond_5
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    const-string/jumbo v3, "Send ReInvite has failed"

    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method
