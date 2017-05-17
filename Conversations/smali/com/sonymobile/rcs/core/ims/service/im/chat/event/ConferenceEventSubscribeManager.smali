.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;
.super Lcom/sonymobile/rcs/utils/PeriodicRefresher;
.source "ConferenceEventSubscribeManager.java"


# instance fields
.field private authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

.field private connectedParticipants:Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

.field private dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

.field private expirePeriod:I

.field private imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private session:Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

.field private subscribed:Z

.field private terminated:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;)V
    .locals 5
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 118
    invoke-direct {p0}, Lcom/sonymobile/rcs/utils/PeriodicRefresher;-><init>()V

    const/4 v2, 0x0

    .line 80
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    .line 90
    iput-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->subscribed:Z

    .line 100
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    invoke-direct {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->connectedParticipants:Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    .line 106
    iput-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->terminated:Z

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 119
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    .line 120
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    .line 121
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    .line 123
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getSubscribeExpirePeriod()I

    move-result v0

    .line 124
    .local v0, "defaultExpirePeriod":I
    invoke-static {}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->getFactory()Lcom/sonymobile/rcs/platform/registry/RegistryFactory;

    move-result-object v2

    const-string/jumbo v3, "MinSubscribeConferenceEventExpirePeriod"

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->readInteger(Ljava/lang/String;I)I

    move-result v1

    .line 126
    .local v1, "minExpireValue":I
    if-ne v1, v4, :cond_1

    .line 129
    :cond_0
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->expirePeriod:I

    .line 131
    :goto_0
    return-void

    .line 126
    :cond_1
    if-ge v0, v1, :cond_0

    .line 127
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->expirePeriod:I

    goto :goto_0
.end method

.method private createSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 3
    .param p1, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p2, "expirePeriod"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 474
    invoke-static {p1, p2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    .line 477
    .local v0, "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->CHAT_FEATURE_TAGS:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->setFeatureTags(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;[Ljava/lang/String;)V

    const-string/jumbo v1, "Event"

    const-string/jumbo v2, "conference"

    .line 480
    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Accept"

    const-string/jumbo v2, "application/conference-info+xml"

    .line 483
    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-object v0
.end method

.method private handle200OK(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V
    .locals 6
    .param p1, "ctx"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    .prologue
    const/4 v4, 0x1

    .line 672
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 675
    :goto_0
    iput-boolean v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->subscribed:Z

    .line 677
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    .line 680
    .local v1, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-static {v1, v4}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->routeProcessing(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;Z)Ljava/util/Vector;

    move-result-object v0

    .line 681
    .local v0, "newRoute":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setRoute(Ljava/util/Vector;)V

    .line 684
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getToTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setRemoteTag(Ljava/lang/String;)V

    .line 687
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getContactURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setTarget(Ljava/lang/String;)V

    .line 690
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->readProxyAuthenticateHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 693
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->retrieveExpirePeriod(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 696
    iget v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->expirePeriod:I

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p0, v2, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->startTimer(ID)V

    .line 697
    return-void

    .line 673
    .end local v0    # "newRoute":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v1    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "200 OK response received"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handle200OkUnsubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V
    .locals 2
    .param p1, "ctx"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    .prologue
    .line 706
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    :goto_0
    return-void

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
    .line 719
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 723
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v0

    .line 726
    .local v0, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->readProxyAuthenticateHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 729
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 732
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 735
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getTransaction()Ljavax2/sip/Transaction;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/Transaction;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/message/Request;->getExpires()Ljavax2/sip/header/ExpiresHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/header/ExpiresHeader;->getExpires()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->createSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .line 739
    .local v1, "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 742
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->sendSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 743
    return-void

    .line 720
    .end local v0    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v1    # "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "407 response received"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 733
    .restart local v0    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
    .line 753
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 757
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    .line 760
    .local v1, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 763
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getMinExpiresPeriod(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)I

    move-result v0

    .local v0, "minExpire":I
    const/4 v3, -0x1

    .line 764
    if-eq v0, v3, :cond_1

    .line 774
    invoke-static {}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->getFactory()Lcom/sonymobile/rcs/platform/registry/RegistryFactory;

    move-result-object v3

    const-string/jumbo v4, "MinSubscribeConferenceEventExpirePeriod"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->writeInteger(Ljava/lang/String;I)V

    .line 777
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->expirePeriod:I

    .line 780
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    iget v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->expirePeriod:I

    invoke-direct {p0, v3, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->createSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v2

    .line 783
    .local v2, "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    invoke-virtual {v3, v2}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 786
    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->sendSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 787
    return-void

    .line 754
    .end local v0    # "minExpire":I
    .end local v1    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v2    # "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "423 interval too brief response received"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 765
    .restart local v0    # "minExpire":I
    .restart local v1    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_2

    .line 768
    :goto_1
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;

    const/16 v4, 0x70

    const-string/jumbo v5, "No Min-Expires value found"

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->handleError(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;)V

    .line 770
    return-void

    .line 766
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t read the Min-Expires value"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleError(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;)V
    .locals 4
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;

    .prologue
    const/4 v3, 0x0

    .line 796
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 800
    :goto_0
    iput-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->subscribed:Z

    .line 803
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->stopTimer()V

    .line 806
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->resetDialogPath()V

    .line 807
    return-void

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Subscribe has failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;->getMessage()Ljava/lang/String;

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

    .line 594
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    .line 595
    return-void
.end method

.method private retrieveExpirePeriod(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    const-string/jumbo v2, "Expires"

    .line 604
    invoke-virtual {p1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax2/sip/header/ExpiresHeader;

    .line 605
    .local v1, "expiresHeader":Ljavax2/sip/header/ExpiresHeader;
    if-nez v1, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    invoke-interface {v1}, Ljavax2/sip/header/ExpiresHeader;->getExpires()I

    move-result v0

    .local v0, "expires":I
    const/4 v2, -0x1

    .line 607
    if-eq v0, v2, :cond_0

    .line 608
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->expirePeriod:I

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
    const/16 v4, 0x70

    .line 620
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 624
    :goto_0
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->subscribed:Z

    if-nez v1, :cond_1

    .line 630
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v0

    .line 633
    .local v0, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipResponse()Z

    move-result v1

    if-nez v1, :cond_2

    .line 656
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_8

    .line 661
    :goto_2
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;

    invoke-direct {v1, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->handleError(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;)V

    .line 663
    :goto_3
    return-void

    .line 621
    .end local v0    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    .line 626
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto :goto_1

    .line 635
    .restart local v0    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    :cond_2
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3

    .line 641
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0xca

    if-eq v1, v2, :cond_5

    .line 644
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x197

    if-eq v1, v2, :cond_6

    .line 647
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1a7

    if-eq v1, v2, :cond_7

    .line 652
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;

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

    invoke-direct {v1, v4, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->handleError(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;)V

    goto :goto_3

    .line 636
    :cond_3
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getExpires()I

    move-result v1

    if-nez v1, :cond_4

    .line 639
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->handle200OkUnsubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V

    goto :goto_3

    .line 637
    :cond_4
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->handle200OK(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V

    goto :goto_3

    .line 643
    :cond_5
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->handle200OK(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V

    goto :goto_3

    .line 646
    :cond_6
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->handle407Authentication(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V

    goto/16 :goto_3

    .line 649
    :cond_7
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->handle423IntervalTooBrief(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V

    goto/16 :goto_3

    .line 657
    :cond_8
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "No response received for SUBSCRIBE"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private static updateSessionParticipantList(Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;)V
    .locals 3
    .param p0, "connectedUsers"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    .param p1, "disconnectedUsers"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    .param p2, "sessionUsers"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 352
    return-void

    .line 346
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 347
    .local v1, "user":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->addParticipant(Ljava/lang/String;)V

    goto :goto_0

    .line 349
    .end local v1    # "user":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 350
    .restart local v1    # "user":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->removeParticipant(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->connectedParticipants:Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    return-object v0
.end method

.method public getPresentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getImSessionIdentity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNotifyForThisSubscriber(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Z
    .locals 3
    .param p1, "notify"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    if-nez v1, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v0

    .line 362
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getCallId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public periodicProcessing()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->subscribe()Z

    .line 499
    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Execute re-subscribe"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public receiveNotification(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 25
    .param p1, "notify"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 177
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->terminated:Z

    move/from16 v22, v0

    if-nez v22, :cond_2

    .line 185
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->subscribed:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v22

    if-nez v22, :cond_6

    .line 197
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContentBytes()[B

    move-result-object v5

    .line 198
    .local v5, "content":[B
    if-nez v5, :cond_7

    :cond_0
    :goto_1
    const-string/jumbo v22, "Subscription-State"

    .line 324
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v18

    check-cast v18, Ljavax2/sip/header/SubscriptionStateHeader;

    .line 326
    .local v18, "stateHeader":Ljavax2/sip/header/SubscriptionStateHeader;
    if-nez v18, :cond_17

    .line 332
    :cond_1
    :goto_2
    return-void

    .line 179
    .end local v5    # "content":[B
    .end local v18    # "stateHeader":Ljavax2/sip/header/SubscriptionStateHeader;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v22

    if-nez v22, :cond_3

    .line 182
    :goto_3
    return-void

    .line 180
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    const-string/jumbo v23, "Notification received will be ignored. Manager already terminated."

    invoke-virtual/range {v22 .. v23}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 187
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v22

    if-nez v22, :cond_5

    .line 190
    :goto_4
    return-void

    .line 188
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    const-string/jumbo v23, "Notification received will be ignored. Manager not subscribed yet."

    invoke-virtual/range {v22 .. v23}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 193
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    const-string/jumbo v23, "New conference event notification received"

    invoke-virtual/range {v22 .. v23}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    .restart local v5    # "content":[B
    :cond_7
    :try_start_0
    new-instance v15, Lorg/xml/sax/InputSource;

    new-instance v22, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 201
    .local v15, "pidfInput":Lorg/xml/sax/InputSource;
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;

    invoke-direct {v3, v15}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;-><init>(Lorg/xml/sax/InputSource;)V

    .line 202
    .local v3, "confParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;
    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->getConferenceInfo()Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;

    move-result-object v4

    .line 203
    .local v4, "conference":Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;
    const/16 v19, 0x0

    .line 204
    .local v19, "updateSession":Z
    if-eqz v4, :cond_0

    .line 205
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;->getMaxUserCount()I

    move-result v11

    .line 206
    .local v11, "maxParticipants":I
    if-gtz v11, :cond_8

    .line 212
    :goto_5
    new-instance v6, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    invoke-direct {v6}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;-><init>()V

    .line 213
    .local v6, "disconnectedParticipants":Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;->getUsers()Ljava/util/Vector;

    move-result-object v21

    .local v21, "users":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;>;"
    const/4 v9, 0x0

    .line 214
    .local v9, "i":I
    :goto_6
    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v9, v0, :cond_a

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    if-eqz v19, :cond_0

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->connectedParticipants:Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v6, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->updateSessionParticipantList(Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 320
    .end local v3    # "confParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;
    .end local v4    # "conference":Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;
    .end local v6    # "disconnectedParticipants":Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    .end local v9    # "i":I
    .end local v11    # "maxParticipants":I
    .end local v15    # "pidfInput":Lorg/xml/sax/InputSource;
    .end local v19    # "updateSession":Z
    .end local v21    # "users":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;>;"
    :catch_0
    move-exception v7

    .line 317
    .local v7, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    const-string/jumbo v23, "Can\'t parse XML notification"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 207
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "confParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;
    .restart local v4    # "conference":Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;
    .restart local v11    # "maxParticipants":I
    .restart local v15    # "pidfInput":Lorg/xml/sax/InputSource;
    .restart local v19    # "updateSession":Z
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v22

    if-nez v22, :cond_9

    .line 210
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->setMaxParticipants(I)V

    goto :goto_5

    .line 208
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Set max number of participants to "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_7

    .line 215
    .restart local v6    # "disconnectedParticipants":Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    .restart local v9    # "i":I
    .restart local v21    # "users":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;>;"
    :cond_a
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;

    .line 216
    .local v20, "user":Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;
    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->getEntity()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 217
    .local v8, "entity":Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/rcs/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_b

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v22

    if-nez v22, :cond_c

    .line 225
    :goto_8
    sget-object v22, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v12

    .line 226
    .local v12, "me":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->isMe()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 214
    .end local v12    # "me":Ljava/lang/String;
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    .line 222
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Conference info notification for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_8

    .line 226
    .restart local v12    # "me":Ljava/lang/String;
    :cond_d
    invoke-static {v8, v12}, Lcom/sonymobile/rcs/utils/PhoneUtils;->compareNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_b

    .line 232
    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->getState()Ljava/lang/String;

    move-result-object v17

    .line 233
    .local v17, "state":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->getDisconnectionMethod()Ljava/lang/String;

    move-result-object v13

    .line 234
    .local v13, "method":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v22

    if-nez v22, :cond_11

    .line 237
    :goto_9
    if-nez v13, :cond_12

    :cond_e
    :goto_a
    const-string/jumbo v22, "dialing-out"

    .line 261
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_13

    :cond_f
    const-string/jumbo v17, "pending"

    .line 267
    :goto_b
    invoke-static/range {v17 .. v17}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->isConnected(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_14

    .line 284
    invoke-static/range {v17 .. v17}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->isDisconnected(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_16

    :cond_10
    :goto_c
    const/4 v10, 0x0

    .line 303
    .local v10, "j":I
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_b

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->getDisplayName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-interface {v0, v8, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleConferenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 235
    .end local v10    # "j":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "User conference info: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_9

    .line 240
    :cond_12
    move-object/from16 v17, v13

    const-string/jumbo v22, "failed"

    .line 244
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 245
    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->getFailureReason()Ljava/lang/String;

    move-result-object v16

    .line 246
    .local v16, "reason":Ljava/lang/String;
    if-eqz v16, :cond_e

    const-string/jumbo v22, "603"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_e

    const-string/jumbo v17, "departed"

    .line 247
    goto/16 :goto_a

    .end local v16    # "reason":Ljava/lang/String;
    :cond_13
    const-string/jumbo v22, "dialing-in"

    .line 261
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_f

    goto/16 :goto_b

    .line 269
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->connectedParticipants:Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->addParticipant(Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    const-string/jumbo v22, "connected"

    .line 278
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 279
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v8, v2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addOrUpdateGroupChatStatusForNotify(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 271
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->addParticipant(Ljava/lang/String;)V

    .line 272
    const/16 v19, 0x1

    .line 274
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateGroupChatSession(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 275
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v8, v2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addConferenceEvent(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 285
    :cond_16
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->connectedParticipants:Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 288
    .local v14, "participant":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->connectedParticipants:Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->removeParticipant(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v6, v8}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->addParticipant(Ljava/lang/String;)V

    const-string/jumbo v22, "departed"

    .line 290
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->removeParticipant(Ljava/lang/String;)V

    .line 293
    const/16 v19, 0x1

    .line 295
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateGroupChatSession(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 297
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v8, v2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addConferenceEvent(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_c

    .line 326
    .end local v3    # "confParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;
    .end local v4    # "conference":Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;
    .end local v6    # "disconnectedParticipants":Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    .end local v8    # "entity":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v11    # "maxParticipants":I
    .end local v12    # "me":Ljava/lang/String;
    .end local v13    # "method":Ljava/lang/String;
    .end local v14    # "participant":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "pidfInput":Lorg/xml/sax/InputSource;
    .end local v17    # "state":Ljava/lang/String;
    .end local v19    # "updateSession":Z
    .end local v20    # "user":Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;
    .end local v21    # "users":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;>;"
    .restart local v18    # "stateHeader":Ljavax2/sip/header/SubscriptionStateHeader;
    :cond_17
    invoke-interface/range {v18 .. v18}, Ljavax2/sip/header/SubscriptionStateHeader;->getState()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "terminated"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v22

    if-nez v22, :cond_18

    .line 330
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->terminatedByServer()V

    goto/16 :goto_2

    .line 328
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    const-string/jumbo v23, "Conference event subscription has been terminated by server"

    invoke-virtual/range {v22 .. v23}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public stop()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 408
    iget-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->subscribed:Z

    if-eqz v3, :cond_1

    .line 416
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_3

    .line 421
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->stopTimer()V

    .line 424
    iput-boolean v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->subscribed:Z

    .line 427
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->connectedParticipants:Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 436
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->resetDialogPath()V

    .line 437
    return-void

    .line 410
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_2

    .line 413
    :goto_1
    return-void

    .line 411
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Stop of subscription will be ignored. Manager no longer subscribed."

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 417
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Stop the subscription and reset the subscribe result"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 427
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "participant":Ljava/lang/String;
    const/4 v0, 0x0

    .line 429
    .local v0, "i":I
    :goto_2
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 430
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    const-string/jumbo v4, "booted"

    invoke-interface {v3, v2, v2, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleConferenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public declared-synchronized subscribe()Z
    .locals 11

    .prologue
    monitor-enter p0

    .line 507
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 513
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    if-eqz v1, :cond_1

    .line 535
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 539
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    iget v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->expirePeriod:I

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->createSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v10

    .line 542
    .local v10, "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-direct {p0, v10}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->sendSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    .end local v10    # "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :goto_2
    :try_start_2
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->subscribed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    .line 508
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Subscribe to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->getPresentity()Ljava/lang/String;

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

    .line 515
    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->generateCallId()Ljava/lang/String;

    move-result-object v3

    .line 518
    .local v3, "callId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->getPresentity()Ljava/lang/String;

    move-result-object v6

    .line 521
    .local v6, "target":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v7

    .line 524
    .local v7, "localParty":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->getPresentity()Ljava/lang/String;

    move-result-object v8

    .line 527
    .local v8, "remoteParty":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getServiceRoutePath()Ljava/util/Vector;

    move-result-object v9

    .line 531
    .local v9, "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-direct/range {v1 .. v9}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 549
    .end local v3    # "callId":Ljava/lang/String;
    .end local v6    # "target":Ljava/lang/String;
    .end local v7    # "localParty":Ljava/lang/String;
    .end local v8    # "remoteParty":Ljava/lang/String;
    .end local v9    # "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 548
    :goto_3
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->handleError(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;)V

    goto :goto_2

    .line 546
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Subscribe has failed"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method public terminate()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 448
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->terminated:Z

    .line 451
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->stopTimer()V

    .line 454
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v0

    if-nez v0, :cond_2

    .line 459
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 462
    :goto_2
    return-void

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Terminate the subscribe manager"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->unSubscribe()V

    goto :goto_1

    .line 460
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Subscribe manager is terminated"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public terminateWithOutUnSubscribe()V
    .locals 2

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->stopTimer()V

    .line 397
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Subscribe manager is terminated"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized terminatedByServer()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 372
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->subscribed:Z

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->stopTimer()V

    .line 385
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->resetDialogPath()V

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->subscribed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 389
    return-void

    :cond_0
    monitor-exit p0

    .line 374
    return-void

    .line 378
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Subscription has been terminated by server"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unSubscribe()V
    .locals 5

    .prologue
    monitor-enter p0

    .line 557
    :try_start_0
    iget-boolean v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->subscribed:Z

    if-eqz v2, :cond_1

    .line 562
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 568
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->stopTimer()V

    .line 572
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 575
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->createSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .line 578
    .local v1, "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->sendSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    .end local v1    # "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->subscribed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 588
    return-void

    :cond_1
    monitor-exit p0

    .line 559
    return-void

    .line 563
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsubscribe to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->getPresentity()Ljava/lang/String;

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

    .line 584
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 582
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "UnSubscribe has failed"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
