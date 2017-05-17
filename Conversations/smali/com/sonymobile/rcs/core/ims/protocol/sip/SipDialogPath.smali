.class public Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
.super Ljava/lang/Object;
.source "SipDialogPath.java"


# instance fields
.field private authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

.field private callId:Ljava/lang/String;

.field private cseq:J

.field private invite:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

.field private localContent:Ljava/lang/String;

.field private localParty:Ljava/lang/String;

.field private localTag:Ljava/lang/String;

.field private remoteContent:Ljava/lang/String;

.field private remoteParty:Ljava/lang/String;

.field private remoteSipInstance:Ljava/lang/String;

.field private remoteTag:Ljava/lang/String;

.field private route:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sessionCancelled:Z

.field private sessionEstablished:Z

.field private sessionExpireTime:I

.field private sessionTerminated:Z

.field private sessionTerminationReasonCode:I

.field private sessionTerminationReasonPhrase:Ljava/lang/String;

.field private sigEstablished:Z

.field private stack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

.field private target:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V
    .locals 7
    .param p1, "stack"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "cseq"    # J
    .param p5, "target"    # Ljava/lang/String;
    .param p6, "localParty"    # Ljava/lang/String;
    .param p7, "remoteParty"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p8, "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->stack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    .line 56
    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->callId:Ljava/lang/String;

    const-wide/16 v2, 0x1

    .line 61
    iput-wide v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->cseq:J

    .line 66
    invoke-static {}, Lcom/sonymobile/rcs/utils/IdGenerator;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->localTag:Ljava/lang/String;

    .line 71
    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->remoteTag:Ljava/lang/String;

    .line 76
    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->target:Ljava/lang/String;

    .line 81
    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->localParty:Ljava/lang/String;

    .line 86
    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->remoteParty:Ljava/lang/String;

    .line 91
    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->invite:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .line 96
    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->localContent:Ljava/lang/String;

    .line 101
    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->remoteContent:Ljava/lang/String;

    .line 106
    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->remoteSipInstance:Ljava/lang/String;

    .line 111
    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->route:Ljava/util/Vector;

    .line 116
    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    .line 126
    iput-boolean v5, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sigEstablished:Z

    .line 131
    iput-boolean v5, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionEstablished:Z

    .line 136
    iput-boolean v5, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionCancelled:Z

    .line 141
    iput-boolean v5, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionTerminated:Z

    .line 146
    iput v6, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionTerminationReasonCode:I

    .line 151
    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionTerminationReasonPhrase:Ljava/lang/String;

    .line 166
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->stack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    .line 167
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->callId:Ljava/lang/String;

    .line 168
    iput-wide p3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->cseq:J

    .line 169
    invoke-static {p5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->extractUriFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->target:Ljava/lang/String;

    .line 170
    iput-object p6, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->localParty:Ljava/lang/String;

    .line 171
    iput-object p7, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->remoteParty:Ljava/lang/String;

    .line 172
    iput-object p8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->route:Ljava/util/Vector;

    .line 174
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getSessionRefreshExpirePeriod()I

    move-result v0

    .line 175
    .local v0, "defaultExpireTime":I
    invoke-static {}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->getFactory()Lcom/sonymobile/rcs/platform/registry/RegistryFactory;

    move-result-object v2

    const-string/jumbo v3, "MinSessionExpirePeriod"

    invoke-virtual {v2, v3, v6}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->readInteger(Ljava/lang/String;I)I

    move-result v1

    .local v1, "minExpireValue":I
    const/16 v2, 0x5a

    .line 177
    if-gt v0, v2, :cond_1

    .line 181
    :cond_0
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionExpireTime:I

    .line 183
    :goto_0
    return-void

    .line 177
    :cond_1
    if-eq v1, v6, :cond_0

    if-ge v0, v1, :cond_0

    .line 179
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionExpireTime:I

    goto :goto_0
.end method


# virtual methods
.method public getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    return-object v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->callId:Ljava/lang/String;

    return-object v0
.end method

.method public getCseq()J
    .locals 2

    .prologue
    .line 272
    iget-wide v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->cseq:J

    return-wide v0
.end method

.method public getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->invite:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    return-object v0
.end method

.method public getLocalContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->localContent:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalParty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->localParty:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->localTag:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->remoteContent:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteParty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->remoteParty:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteSipInstance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->remoteSipInstance:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->remoteTag:Ljava/lang/String;

    return-object v0
.end method

.method public getRoute()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->route:Ljava/util/Vector;

    return-object v0
.end method

.method public getSessionExpireTime()I
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionExpireTime:I

    return v0
.end method

.method public getSessionTerminationReasonCode()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionTerminationReasonCode:I

    return v0
.end method

.method public getSessionTerminationReasonPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionTerminationReasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->stack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    return-object v0
.end method

.method public getStackDialog()Ljavax2/sip/Dialog;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 526
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->invite:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    if-nez v0, :cond_0

    .line 529
    return-object v1

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->invite:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackTransaction()Ljavax2/sip/Transaction;

    move-result-object v0

    invoke-interface {v0}, Ljavax2/sip/Transaction;->getDialog()Ljavax2/sip/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->target:Ljava/lang/String;

    return-object v0
.end method

.method public incrementCseq()V
    .locals 6

    .prologue
    .line 279
    iget-wide v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->cseq:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->cseq:J

    .line 282
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getStackDialog()Ljavax2/sip/Dialog;

    move-result-object v0

    .line 283
    .local v0, "dlg":Ljavax2/sip/Dialog;
    if-nez v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    invoke-interface {v0}, Ljavax2/sip/Dialog;->isServer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    invoke-interface {v0}, Ljavax2/sip/Dialog;->incrementLocalSequenceNumber()V

    goto :goto_0
.end method

.method public declared-synchronized isSessionCancelled()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 384
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSessionEstablished()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 400
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionEstablished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSessionTerminated()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 416
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionTerminated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSigEstablished()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 464
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sigEstablished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sessionCancelled()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 391
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 392
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sessionEstablished()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 407
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionEstablished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 408
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sessionTerminated()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 423
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionTerminated:Z

    const/4 v0, -0x1

    .line 424
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionTerminationReasonCode:I

    const/4 v0, 0x0

    .line 425
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionTerminationReasonPhrase:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 426
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sessionTerminated(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "phrase"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 435
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionTerminated:Z

    .line 436
    iput p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionTerminationReasonCode:I

    .line 437
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionTerminationReasonPhrase:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 438
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAuthenticationAgent(Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;)V
    .locals 0
    .param p1, "agent"    # Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    .line 481
    return-void
.end method

.method public setInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 0
    .param p1, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->invite:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .line 304
    return-void
.end method

.method public setLocalContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "local"    # Ljava/lang/String;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->localContent:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public setMinSessionExpireTime(I)V
    .locals 2
    .param p1, "sessionExpireTime"    # I

    .prologue
    .line 516
    invoke-static {}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->getFactory()Lcom/sonymobile/rcs/platform/registry/RegistryFactory;

    move-result-object v0

    const-string/jumbo v1, "MinSessionExpirePeriod"

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->writeInteger(Ljava/lang/String;I)V

    .line 518
    return-void
.end method

.method public setRemoteContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "remote"    # Ljava/lang/String;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->remoteContent:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public setRemoteSipInstance(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->remoteSipInstance:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public setRemoteTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->remoteTag:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setRoute(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->route:Ljava/util/Vector;

    .line 376
    return-void
.end method

.method public setSessionExpireTime(I)V
    .locals 0
    .param p1, "sessionExpireTime"    # I

    .prologue
    .line 507
    iput p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionExpireTime:I

    .line 508
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .param p1, "tg"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->target:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public declared-synchronized sigEstablished()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 471
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sigEstablished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 472
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
