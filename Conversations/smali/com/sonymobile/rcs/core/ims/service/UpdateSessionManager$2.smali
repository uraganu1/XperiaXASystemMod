.class Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;
.super Ljava/lang/Thread;
.source "UpdateSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->send200OkReInviteResp(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;[Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

.field final synthetic val$reInvite:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

.field final synthetic val$reInviteContext:I

.field final synthetic val$respFeatureTags:[Ljava/lang/String;

.field final synthetic val$sdp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;->val$reInvite:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    iput-object p3, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;->val$respFeatureTags:[Ljava/lang/String;

    iput-object p4, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;->val$sdp:Ljava/lang/String;

    iput p5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;->val$reInviteContext:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 221
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 225
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;->val$reInvite:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;->val$respFeatureTags:[Ljava/lang/String;

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;->val$sdp:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->create200OkReInviteResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v2

    .line 227
    .local v2, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v0

    .line 230
    .local v0, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipAck()Z

    move-result v3

    if-nez v3, :cond_1

    .line 238
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_3

    .line 242
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;

    const/4 v5, 0x1

    const-string/jumbo v6, "ack not received"

    invoke-direct {v4, v5, v6}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 252
    .end local v0    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v2    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :goto_2
    return-void

    .line 222
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v3

    const-string/jumbo v4, "Send 200 OK"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_4

    .line 249
    :goto_3
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_2

    .line 232
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .restart local v2    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_2

    .line 236
    :goto_4
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v3

    const/16 v4, 0xc8

    iget v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;->val$reInviteContext:I

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleReInviteAck(II)V

    goto :goto_2

    .line 233
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v3

    const-string/jumbo v4, "ACK request received"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_4

    .line 239
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v3

    const-string/jumbo v4, "No ACK received for ReINVITE"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 247
    .end local v0    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v2    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v3

    const-string/jumbo v4, "Session update refresh has failed"

    invoke-virtual {v3, v4, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method
