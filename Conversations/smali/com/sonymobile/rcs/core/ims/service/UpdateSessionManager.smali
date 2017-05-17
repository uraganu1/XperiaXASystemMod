.class public Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;
.super Ljava/lang/Object;
.source "UpdateSessionManager.java"


# instance fields
.field private final logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private reInviteStatus:I

.field private ringingPeriod:I

.field private session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

.field private waitUserAnswer:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V
    .locals 1
    .param p1, "mysession"    # Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->reInviteStatus:I

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->waitUserAnswer:Ljava/lang/Object;

    .line 40
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getRingingPeriod()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->ringingPeriod:I

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 53
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-object v0
.end method


# virtual methods
.method public acceptReInvite()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->waitUserAnswer:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    .line 396
    :try_start_0
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->reInviteStatus:I

    .line 399
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->waitUserAnswer:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 400
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "ReInvite has been accepted"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public createReInvite([Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 12
    .param p1, "featureTags"    # [Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 64
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_0
    const/4 v3, 0x0

    .line 72
    .local v3, "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 73
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_3

    .line 79
    :goto_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getStackDialog()Ljavax2/sip/Dialog;

    move-result-object v0

    .line 80
    .local v0, "dlg":Ljavax2/sip/Dialog;
    :cond_0
    :goto_2
    if-nez v0, :cond_4

    .line 89
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createReInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v3

    .line 90
    .local v3, "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_6

    .line 95
    :goto_3
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 98
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    .end local v0    # "dlg":Ljavax2/sip/Dialog;
    .end local v3    # "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :goto_4
    return-object v3

    .line 65
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "createReInvite()"

    invoke-virtual {v4, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .local v3, "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Increment DialogPath CSeq - DialogPath CSeq ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCseq()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 108
    .end local v3    # "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    new-instance v6, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_4

    .line 80
    .end local v2    # "e":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
    .restart local v0    # "dlg":Ljavax2/sip/Dialog;
    .restart local v3    # "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_4
    :try_start_2
    invoke-interface {v0}, Ljavax2/sip/Dialog;->getLocalSeqNumber()J

    move-result-wide v8

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCseq()J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-ltz v4, :cond_5

    move v4, v5

    :goto_5
    if-nez v4, :cond_1

    .line 81
    invoke-interface {v0}, Ljavax2/sip/Dialog;->incrementLocalSequenceNumber()V

    .line 82
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Increment LocalSequenceNumber -  Dialog local Seq Number ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljavax2/sip/Dialog;->getLocalSeqNumber()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 108
    .end local v0    # "dlg":Ljavax2/sip/Dialog;
    .end local v3    # "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :catch_1
    move-exception v1

    .line 106
    .local v1, "e":Lcom/sonymobile/rcs/core/CoreException;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    new-instance v6, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/CoreException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto/16 :goto_4

    .end local v1    # "e":Lcom/sonymobile/rcs/core/CoreException;
    .restart local v0    # "dlg":Ljavax2/sip/Dialog;
    .restart local v3    # "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_5
    move v4, v6

    .line 80
    goto :goto_5

    .line 91
    .local v3, "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_6
    :try_start_3
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reInvite created -  reInvite CSeq ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getCSeq()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3
.end method

.method public rejectReInvite(I)V
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->waitUserAnswer:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x2

    .line 377
    :try_start_0
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->reInviteStatus:I

    .line 380
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->waitUserAnswer:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 381
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "ReInvite  has been rejected"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public send200OkReInviteResp(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p2, "featureTags"    # [Ljava/lang/String;
    .param p3, "sdpResponse"    # Ljava/lang/String;
    .param p4, "serviceContext"    # I

    .prologue
    .line 209
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    :goto_0
    move-object v2, p1

    .line 214
    .local v2, "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    move-object v4, p3

    .line 215
    .local v4, "sdp":Ljava/lang/String;
    move v5, p4

    .line 216
    .local v5, "reInviteContext":I
    move-object v3, p2

    .line 218
    .local v3, "respFeatureTags":[Ljava/lang/String;
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$2;-><init>(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;[Ljava/lang/String;Ljava/lang/String;I)V

    .line 255
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 257
    return-void

    .line 210
    .end local v0    # "thread":Ljava/lang/Thread;
    .end local v2    # "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v3    # "respFeatureTags":[Ljava/lang/String;
    .end local v4    # "sdp":Ljava/lang/String;
    .end local v5    # "reInviteContext":I
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "receiveReInvite()"

    invoke-virtual {v1, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendReInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V
    .locals 5
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p2, "serviceContext"    # I

    .prologue
    .line 121
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    :goto_0
    move-object v0, p1

    .line 126
    .local v0, "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    move v1, p2

    .line 128
    .local v1, "reInviteContext":I
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$1;-><init>(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 195
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 197
    return-void

    .line 122
    .end local v0    # "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v1    # "reInviteContext":I
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "sendReInvite()"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public waitInvitationAnswer()I
    .locals 6

    .prologue
    .line 409
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->reInviteStatus:I

    if-nez v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 418
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->waitUserAnswer:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->waitUserAnswer:Ljava/lang/Object;

    iget v3, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->ringingPeriod:I

    mul-int/lit16 v3, v3, 0x1f4

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 421
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    :goto_1
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->reInviteStatus:I

    return v1

    .line 410
    :cond_0
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->reInviteStatus:I

    return v1

    .line 414
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Wait session invitation answer"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 424
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method public waitUserAckAndSendReInviteResp(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;[Ljava/lang/String;I)V
    .locals 7
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p2, "featureTags"    # [Ljava/lang/String;
    .param p3, "serviceContext"    # I

    .prologue
    const/4 v6, 0x0

    .line 267
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 271
    :goto_0
    iput v6, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->reInviteStatus:I

    .line 272
    move-object v0, p1

    .line 273
    .local v0, "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    move v1, p3

    .line 274
    .local v1, "reInviteContext":I
    move-object v2, p2

    .line 276
    .local v2, "respFeatureTags":[Ljava/lang/String;
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager$3;-><init>(Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I[Ljava/lang/String;)V

    .line 363
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 364
    return-void

    .line 268
    .end local v0    # "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v1    # "reInviteContext":I
    .end local v2    # "respFeatureTags":[Ljava/lang/String;
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "receiveReInviteAndWait()"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
