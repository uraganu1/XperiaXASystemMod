.class public abstract Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;
.super Lcom/sonymobile/rcs/utils/PeriodicRefresher;
.source "SubscribeManager.java"


# instance fields
.field private authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

.field private dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

.field private expirePeriod:I

.field private imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private subscribed:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V
    .locals 5
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/ImsModule;

    .prologue
    const/4 v4, -0x1

    .line 84
    invoke-direct {p0}, Lcom/sonymobile/rcs/utils/PeriodicRefresher;-><init>()V

    const/4 v2, 0x0

    .line 57
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    .line 67
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->subscribed:Z

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 85
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    .line 86
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    .line 88
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getSubscribeExpirePeriod()I

    move-result v0

    .line 89
    .local v0, "defaultExpirePeriod":I
    invoke-static {}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->getFactory()Lcom/sonymobile/rcs/platform/registry/RegistryFactory;

    move-result-object v2

    const-string/jumbo v3, "MinSubscribeExpirePeriod"

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->readInteger(Ljava/lang/String;I)I

    move-result v1

    .line 91
    .local v1, "minExpireValue":I
    if-ne v1, v4, :cond_1

    .line 94
    :cond_0
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->expirePeriod:I

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_1
    if-ge v0, v1, :cond_0

    .line 92
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->expirePeriod:I

    goto :goto_0
.end method

.method private handle200OK(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V
    .locals 4
    .param p1, "ctx"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    .prologue
    .line 387
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->subscribed:Z

    .line 392
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v0

    .line 395
    .local v0, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getToTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setRemoteTag(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getContactURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setTarget(Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    invoke-virtual {v1, v0}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->readProxyAuthenticateHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 404
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->retrieveExpirePeriod(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 407
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->expirePeriod:I

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->startTimer(ID)V

    .line 408
    return-void

    .line 388
    .end local v0    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "200 OK response received"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handle200OkUnsubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V
    .locals 2
    .param p1, "ctx"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "200 OK response received"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handle407Authentication(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V
    .locals 4
    .param p1, "ctx"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 430
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 434
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v0

    .line 437
    .local v0, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->readProxyAuthenticateHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 440
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 443
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 446
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getTransaction()Ljavax2/sip/Transaction;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/Transaction;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/message/Request;->getExpires()Ljavax2/sip/header/ExpiresHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/header/ExpiresHeader;->getExpires()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->createSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .line 450
    .local v1, "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 453
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->sendSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 454
    return-void

    .line 431
    .end local v0    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v1    # "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "407 response received"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 444
    .restart local v0    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Send second SUBSCRIBE"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handle423IntervalTooBrief(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V
    .locals 6
    .param p1, "ctx"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 464
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 468
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    .line 471
    .local v1, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 474
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getMinExpiresPeriod(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)I

    move-result v0

    .local v0, "minExpire":I
    const/4 v3, -0x1

    .line 475
    if-eq v0, v3, :cond_1

    .line 485
    invoke-static {}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->getFactory()Lcom/sonymobile/rcs/platform/registry/RegistryFactory;

    move-result-object v3

    const-string/jumbo v4, "MinSubscribeExpirePeriod"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->writeInteger(Ljava/lang/String;I)V

    .line 488
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->expirePeriod:I

    .line 491
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    iget v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->expirePeriod:I

    invoke-virtual {p0, v3, v4}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->createSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v2

    .line 494
    .local v2, "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    invoke-virtual {v3, v2}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 497
    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->sendSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 498
    return-void

    .line 465
    .end local v0    # "minExpire":I
    .end local v1    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v2    # "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "423 interval too brief response received"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 476
    .restart local v0    # "minExpire":I
    .restart local v1    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_2

    .line 479
    :goto_1
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;

    const/16 v4, 0x12d

    const-string/jumbo v5, "No Min-Expires value found"

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->handleError(Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;)V

    .line 481
    return-void

    .line 477
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t read the Min-Expires value"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleError(Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;)V
    .locals 4
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;

    .prologue
    const/4 v3, 0x0

    .line 507
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    :goto_0
    iput-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->subscribed:Z

    .line 514
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->stopTimer()V

    .line 517
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->resetDialogPath()V

    .line 518
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Subscribe has failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetDialogPath()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 309
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    .line 310
    return-void
.end method

.method private retrieveExpirePeriod(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    const-string/jumbo v2, "Expires"

    .line 319
    invoke-virtual {p1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax2/sip/header/ExpiresHeader;

    .line 320
    .local v1, "expiresHeader":Ljavax2/sip/header/ExpiresHeader;
    if-nez v1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-interface {v1}, Ljavax2/sip/header/ExpiresHeader;->getExpires()I

    move-result v0

    .local v0, "expires":I
    const/4 v2, -0x1

    .line 322
    if-eq v0, v2, :cond_0

    .line 323
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->expirePeriod:I

    goto :goto_0
.end method

.method private sendSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 5
    .param p1, "subscribe"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0x12d

    .line 335
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    :goto_0
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->subscribed:Z

    if-nez v1, :cond_1

    .line 345
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v0

    .line 348
    .local v0, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipResponse()Z

    move-result v1

    if-nez v1, :cond_2

    .line 371
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_8

    .line 376
    :goto_2
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;

    invoke-direct {v1, v4}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->handleError(Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;)V

    .line 378
    :goto_3
    return-void

    .line 336
    .end local v0    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Send SUBSCRIBE, expire="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getExpires()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto :goto_1

    .line 350
    .restart local v0    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    :cond_2
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3

    .line 356
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0xca

    if-eq v1, v2, :cond_5

    .line 359
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x197

    if-eq v1, v2, :cond_6

    .line 362
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1a7

    if-eq v1, v2, :cond_7

    .line 367
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->handleError(Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;)V

    goto :goto_3

    .line 351
    :cond_3
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getExpires()I

    move-result v1

    if-nez v1, :cond_4

    .line 354
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->handle200OkUnsubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V

    goto :goto_3

    .line 352
    :cond_4
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->handle200OK(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V

    goto :goto_3

    .line 358
    :cond_5
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->handle200OK(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V

    goto :goto_3

    .line 361
    :cond_6
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->handle407Authentication(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V

    goto/16 :goto_3

    .line 364
    :cond_7
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->handle423IntervalTooBrief(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V

    goto/16 :goto_3

    .line 372
    :cond_8
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "No response received for SUBSCRIBE"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public abstract createSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation
.end method

.method public getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    return-object v0
.end method

.method public abstract getPresentity()Ljava/lang/String;
.end method

.method public isNotifyForThisSubscriber(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Z
    .locals 3
    .param p1, "notify"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    if-nez v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getCallId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public periodicProcessing()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->subscribe()Z

    .line 211
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Execute re-subscribe"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract receiveNotification(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
.end method

.method public declared-synchronized subscribe()Z
    .locals 11

    .prologue
    monitor-enter p0

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 225
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    if-eqz v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 251
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    iget v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->expirePeriod:I

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->createSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v10

    .line 254
    .local v10, "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-direct {p0, v10}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->sendSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    .end local v10    # "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :goto_2
    :try_start_2
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->subscribed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    .line 220
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Subscribe to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->getPresentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 227
    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->generateCallId()Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "callId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->getPresentity()Ljava/lang/String;

    move-result-object v6

    .line 233
    .local v6, "target":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v7

    .line 236
    .local v7, "localParty":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->getPresentity()Ljava/lang/String;

    move-result-object v8

    .line 239
    .local v8, "remoteParty":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getServiceRoutePath()Ljava/util/Vector;

    move-result-object v9

    .line 243
    .local v9, "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-direct/range {v1 .. v9}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 261
    .end local v3    # "callId":Ljava/lang/String;
    .end local v6    # "target":Ljava/lang/String;
    .end local v7    # "localParty":Ljava/lang/String;
    .end local v8    # "remoteParty":Ljava/lang/String;
    .end local v9    # "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 260
    :goto_3
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->handleError(Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;)V

    goto :goto_2

    .line 258
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Subscribe has failed"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method public terminate()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->stopTimer()V

    .line 179
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v0

    if-nez v0, :cond_2

    .line 184
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 187
    :goto_2
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Terminate the subscribe manager"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->unSubscribe()V

    goto :goto_1

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Subscribe manager is terminated"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public terminatedByServer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->subscribed:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->stopTimer()V

    .line 161
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->resetDialogPath()V

    .line 164
    iput-boolean v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->subscribed:Z

    .line 165
    return-void

    .line 150
    :cond_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Subscription has been terminated by server"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized unSubscribe()V
    .locals 5

    .prologue
    monitor-enter p0

    .line 269
    :try_start_0
    iget-boolean v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->subscribed:Z

    if-eqz v2, :cond_1

    .line 274
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 280
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->stopTimer()V

    .line 284
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 287
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->createSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .line 290
    .local v1, "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->sendSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    .end local v1    # "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->subscribed:Z

    .line 302
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->resetDialogPath()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 303
    return-void

    :cond_1
    monitor-exit p0

    .line 271
    return-void

    .line 275
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsubscribe to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->getPresentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 296
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "UnSubscribe has failed"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
