.class Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;
.super Ljava/lang/Thread;
.source "UpdateSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->waitUserAckAndSendReInviteResp(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;[Ljava/lang/String;I)V
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


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->val$reInvite:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    iput p3, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->val$reInviteContext:I

    iput-object p4, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->val$respFeatureTags:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    .line 280
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->waitInvitationAnswer()I

    move-result v0

    .line 281
    .local v0, "answer":I
    if-eq v0, v6, :cond_0

    .line 291
    if-eqz v0, :cond_2

    .line 301
    if-eq v0, v9, :cond_4

    .line 347
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v5

    new-instance v6, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;

    const/4 v7, 0x1

    const-string/jumbo v8, "ack not received"

    invoke-direct {v6, v7, v8}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 360
    .end local v0    # "answer":I
    :goto_0
    return-void

    .line 283
    .restart local v0    # "answer":I
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_1

    .line 288
    :goto_1
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->val$reInvite:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v7}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x25b

    invoke-virtual {v5, v6, v7, v8}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)V

    .line 289
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v5

    const/4 v6, 0x2

    iget v7, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->val$reInviteContext:I

    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleReInviteUserAnswer(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 359
    .end local v0    # "answer":I
    :catch_0
    move-exception v2

    .line 352
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_a

    .line 356
    :goto_2
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v5

    new-instance v6, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v9, v7}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_0

    .line 284
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "answer":I
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v5

    const-string/jumbo v6, "reInvite has been rejected by user"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 292
    :cond_2
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_3

    .line 297
    :goto_3
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->val$reInvite:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v7}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x25b

    invoke-virtual {v5, v6, v7, v8}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)V

    .line 298
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v5

    const/4 v6, 0x0

    iget v7, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->val$reInviteContext:I

    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleReInviteUserAnswer(II)V

    goto/16 :goto_0

    .line 293
    :cond_3
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v5

    const-string/jumbo v6, "Session has been rejected on timeout"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 302
    :cond_4
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_5

    .line 306
    :goto_4
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->val$reInvite:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    iget v7, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->val$reInviteContext:I

    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->buildReInviteSdpResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, "sdp":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 315
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    .line 316
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v5

    const/4 v6, 0x1

    iget v7, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->val$reInviteContext:I

    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleReInviteUserAnswer(II)V

    .line 319
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->val$reInvite:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->val$respFeatureTags:[Ljava/lang/String;

    invoke-static {v5, v6, v7, v4}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->create200OkReInviteResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v3

    .line 324
    .local v3, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v1

    .line 329
    .local v1, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipAck()Z

    move-result v5

    if-nez v5, :cond_7

    .line 339
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_9

    .line 343
    :goto_5
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v5

    new-instance v6, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;

    const/4 v7, 0x1

    const-string/jumbo v8, "ack not received"

    invoke-direct {v6, v7, v8}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto/16 :goto_0

    .line 303
    .end local v1    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v3    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v4    # "sdp":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v5

    const-string/jumbo v6, "Send 200 OK"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 309
    .restart local v4    # "sdp":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v5

    new-instance v6, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;

    const/4 v7, 0x1

    const-string/jumbo v8, "error on sdp building, sdp is null "

    invoke-direct {v6, v7, v8}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 312
    return-void

    .line 331
    .restart local v1    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .restart local v3    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_7
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_8

    .line 337
    :goto_6
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v5

    const/16 v6, 0xc8

    iget v7, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->val$reInviteContext:I

    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleReInviteAck(II)V

    goto/16 :goto_0

    .line 332
    :cond_8
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v5

    const-string/jumbo v6, "ACK request received"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 333
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ACK status code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_6

    .line 340
    :cond_9
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v5

    const-string/jumbo v6, "No ACK received for INVITE"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 353
    .end local v0    # "answer":I
    .end local v1    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v3    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v4    # "sdp":Ljava/lang/String;
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_a
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v5

    const-string/jumbo v6, "Session update refresh has failed"

    invoke-virtual {v5, v6, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method
