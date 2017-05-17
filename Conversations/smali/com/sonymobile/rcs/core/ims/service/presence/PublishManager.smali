.class public Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;
.super Lcom/sonymobile/rcs/utils/PeriodicRefresher;
.source "PublishManager.java"


# instance fields
.field private authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

.field private dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

.field private entityTag:Ljava/lang/String;

.field private expirePeriod:I

.field private imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private published:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V
    .locals 5
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/ImsModule;

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 100
    invoke-direct {p0}, Lcom/sonymobile/rcs/utils/PeriodicRefresher;-><init>()V

    .line 73
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    .line 78
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->entityTag:Ljava/lang/String;

    .line 83
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->published:Z

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 101
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    .line 102
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    .line 104
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getPublishExpirePeriod()I

    move-result v0

    .line 105
    .local v0, "defaultExpirePeriod":I
    invoke-static {}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->getFactory()Lcom/sonymobile/rcs/platform/registry/RegistryFactory;

    move-result-object v2

    const-string/jumbo v3, "MinPublishExpirePeriod"

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->readInteger(Ljava/lang/String;I)I

    move-result v1

    .line 107
    .local v1, "minExpireValue":I
    if-ne v1, v4, :cond_1

    .line 110
    :cond_0
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->expirePeriod:I

    .line 114
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->readEntityTag()V

    .line 115
    return-void

    .line 107
    :cond_1
    if-ge v0, v1, :cond_0

    .line 108
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->expirePeriod:I

    goto :goto_0
.end method

.method private createDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .locals 10

    .prologue
    .line 516
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->generateCallId()Ljava/lang/String;

    move-result-object v3

    .line 519
    .local v3, "callId":Ljava/lang/String;
    sget-object v0, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v6

    .line 522
    .local v6, "target":Ljava/lang/String;
    sget-object v0, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v7

    .line 525
    .local v7, "localParty":Ljava/lang/String;
    sget-object v0, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v8

    .line 528
    .local v8, "remoteParty":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getServiceRoutePath()Ljava/util/Vector;

    move-result-object v9

    .line 531
    .local v9, "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-direct/range {v1 .. v9}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    .line 533
    .local v1, "dialog":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    return-object v1
.end method

.method private handle200OK(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V
    .locals 4
    .param p1, "ctx"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    .prologue
    .line 294
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->published:Z

    .line 299
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v0

    .line 302
    .local v0, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    invoke-virtual {v1, v0}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->readProxyAuthenticateHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 305
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->retrieveExpirePeriod(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    const-string/jumbo v1, "SIP-ETag"

    .line 308
    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax2/sip/header/SIPETagHeader;

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->saveEntityTag(Ljavax2/sip/header/SIPETagHeader;)V

    .line 311
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->expirePeriod:I

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->startTimer(ID)V

    .line 312
    return-void

    .line 295
    .end local v0    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "200 OK response received"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handle200OkUnpublish(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V
    .locals 3
    .param p1, "ctx"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    .prologue
    .line 321
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v0

    .local v0, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    const-string/jumbo v1, "SIP-ETag"

    .line 328
    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax2/sip/header/SIPETagHeader;

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->saveEntityTag(Ljavax2/sip/header/SIPETagHeader;)V

    .line 329
    return-void

    .line 322
    .end local v0    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "200 OK response received"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handle407Authentication(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V
    .locals 6
    .param p1, "ctx"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 339
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 343
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    .line 346
    .local v1, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->readProxyAuthenticateHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 349
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 352
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 355
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getTransaction()Ljavax2/sip/Transaction;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/Transaction;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/message/Request;->getExpires()Ljavax2/sip/header/ExpiresHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/header/ExpiresHeader;->getExpires()I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->entityTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalContent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createPublish(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;ILjava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    .line 359
    .local v0, "publish":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 362
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->sendPublish(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 363
    return-void

    .line 340
    .end local v0    # "publish":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v1    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "407 response received"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 353
    .restart local v1    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Send second PUBLISH"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handle412ConditionalRequestFailed(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V
    .locals 5
    .param p1, "ctx"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 372
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 377
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    const/4 v1, 0x0

    .line 380
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->saveEntityTag(Ljavax2/sip/header/SIPETagHeader;)V

    .line 383
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    iget v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->expirePeriod:I

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->entityTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createPublish(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;ILjava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    .line 387
    .local v0, "publish":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->sendPublish(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 388
    return-void

    .line 373
    .end local v0    # "publish":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "412 conditional response received"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handle423IntervalTooBrief(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V
    .locals 7
    .param p1, "ctx"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 398
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 402
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v2

    .line 405
    .local v2, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 408
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getMinExpiresPeriod(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)I

    move-result v0

    .local v0, "minExpire":I
    const/4 v3, -0x1

    .line 409
    if-eq v0, v3, :cond_1

    .line 419
    invoke-static {}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->getFactory()Lcom/sonymobile/rcs/platform/registry/RegistryFactory;

    move-result-object v3

    const-string/jumbo v4, "MinPublishExpirePeriod"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->writeInteger(Ljava/lang/String;I)V

    .line 422
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->expirePeriod:I

    .line 425
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    iget v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->expirePeriod:I

    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->entityTag:Ljava/lang/String;

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalContent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createPublish(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;ILjava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .line 429
    .local v1, "publish":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->sendPublish(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 430
    return-void

    .line 399
    .end local v0    # "minExpire":I
    .end local v1    # "publish":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v2    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "423 interval too brief response received"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 410
    .restart local v0    # "minExpire":I
    .restart local v2    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_2

    .line 413
    :goto_1
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;

    const/16 v4, 0x12e

    const-string/jumbo v5, "No Min-Expires value found"

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->handleError(Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;)V

    .line 415
    return-void

    .line 411
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t read the Min-Expires value"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleError(Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;)V
    .locals 4
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;

    .prologue
    const/4 v3, 0x0

    .line 439
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    :goto_0
    iput-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->published:Z

    .line 446
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->stopTimer()V

    .line 449
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 452
    :goto_1
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Publish has failed: "

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

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Publish has failed"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private readEntityTag()V
    .locals 6

    .prologue
    .line 501
    invoke-static {}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->getFactory()Lcom/sonymobile/rcs/platform/registry/RegistryFactory;

    move-result-object v2

    const-string/jumbo v3, "SipEntityTag"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->entityTag:Ljava/lang/String;

    .line 502
    invoke-static {}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->getFactory()Lcom/sonymobile/rcs/platform/registry/RegistryFactory;

    move-result-object v2

    const-string/jumbo v3, "SipETagExpiration"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 504
    .local v0, "etagExpiration":J
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 507
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "New entity tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->entityTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", expire at="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private retrieveExpirePeriod(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    const-string/jumbo v2, "Expires"

    .line 461
    invoke-virtual {p1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax2/sip/header/ExpiresHeader;

    .line 462
    .local v1, "expiresHeader":Ljavax2/sip/header/ExpiresHeader;
    if-nez v1, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    invoke-interface {v1}, Ljavax2/sip/header/ExpiresHeader;->getExpires()I

    move-result v0

    .local v0, "expires":I
    const/4 v2, -0x1

    .line 464
    if-eq v0, v2, :cond_0

    .line 465
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->expirePeriod:I

    goto :goto_0
.end method

.method private saveEntityTag(Ljavax2/sip/header/SIPETagHeader;)V
    .locals 6
    .param p1, "etagHeader"    # Ljavax2/sip/header/SIPETagHeader;

    .prologue
    const/4 v2, 0x0

    .line 476
    if-eqz p1, :cond_1

    .line 479
    invoke-interface {p1}, Ljavax2/sip/header/SIPETagHeader;->getETag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->entityTag:Ljava/lang/String;

    .line 481
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->entityTag:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 489
    invoke-static {}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->getFactory()Lcom/sonymobile/rcs/platform/registry/RegistryFactory;

    move-result-object v2

    const-string/jumbo v3, "SipEntityTag"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->removeParameter(Ljava/lang/String;)V

    .line 490
    invoke-static {}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->getFactory()Lcom/sonymobile/rcs/platform/registry/RegistryFactory;

    move-result-object v2

    const-string/jumbo v3, "SipETagExpiration"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->removeParameter(Ljava/lang/String;)V

    .line 491
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_3

    .line 495
    :cond_0
    :goto_1
    return-void

    .line 477
    :cond_1
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->entityTag:Ljava/lang/String;

    goto :goto_0

    .line 482
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->getFactory()Lcom/sonymobile/rcs/platform/registry/RegistryFactory;

    move-result-object v2

    const-string/jumbo v3, "SipEntityTag"

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->entityTag:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->expirePeriod:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 484
    .local v0, "etagExpiration":J
    invoke-static {}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->getFactory()Lcom/sonymobile/rcs/platform/registry/RegistryFactory;

    move-result-object v2

    const-string/jumbo v3, "SipETagExpiration"

    invoke-virtual {v2, v3, v0, v1}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->writeLong(Ljava/lang/String;J)V

    .line 485
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "New entity tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->entityTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", expire at="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 492
    .end local v0    # "etagExpiration":J
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Entity tag has been reset"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendPublish(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 5
    .param p1, "publish"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0x12e

    .line 241
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    :goto_0
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->published:Z

    if-nez v1, :cond_1

    .line 251
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v0

    .line 254
    .local v0, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipResponse()Z

    move-result v1

    if-nez v1, :cond_2

    .line 278
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_8

    .line 283
    :goto_2
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;

    invoke-direct {v1, v4}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->handleError(Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;)V

    .line 285
    :goto_3
    return-void

    .line 242
    .end local v0    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Send PUBLISH, expire="

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

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto :goto_1

    .line 256
    .restart local v0    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    :cond_2
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3

    .line 263
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x197

    if-eq v1, v2, :cond_5

    .line 266
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x19c

    if-eq v1, v2, :cond_6

    .line 269
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1a7

    if-eq v1, v2, :cond_7

    .line 274
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

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->handleError(Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;)V

    goto :goto_3

    .line 258
    :cond_3
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getExpires()I

    move-result v1

    if-nez v1, :cond_4

    .line 261
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->handle200OkUnpublish(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V

    goto :goto_3

    .line 259
    :cond_4
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->handle200OK(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V

    goto :goto_3

    .line 265
    :cond_5
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->handle407Authentication(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V

    goto :goto_3

    .line 268
    :cond_6
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->handle412ConditionalRequestFailed(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V

    goto/16 :goto_3

    .line 271
    :cond_7
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->handle423IntervalTooBrief(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V

    goto/16 :goto_3

    .line 279
    :cond_8
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "No response received for PUBLISH"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public isPublished()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->published:Z

    return v0
.end method

.method public periodicProcessing()V
    .locals 6

    .prologue
    .line 151
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->createDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    .line 160
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->createDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->expirePeriod:I

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->entityTag:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createPublish(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;ILjava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .line 164
    .local v1, "publish":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->sendPublish(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v1    # "publish":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :goto_1
    return-void

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Execute re-publish"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    :goto_2
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->handleError(Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;)V

    goto :goto_1

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Publish has failed"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public declared-synchronized publish(Ljava/lang/String;)Z
    .locals 5
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 182
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->createDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    .line 185
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v2, p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    iget v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->expirePeriod:I

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->entityTag:Ljava/lang/String;

    invoke-static {v2, v3, v4, p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createPublish(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;ILjava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .line 192
    .local v1, "publish":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->sendPublish(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .end local v1    # "publish":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :goto_0
    :try_start_1
    iget-boolean v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->published:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    .line 198
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    :goto_1
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->handleError(Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 195
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Publish has failed"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public terminate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    :goto_0
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->published:Z

    if-nez v0, :cond_1

    .line 141
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    :goto_2
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Terminate the publish manager"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->stopTimer()V

    .line 138
    iput-boolean v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->published:Z

    goto :goto_1

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Publish manager is terminated"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_2
.end method
