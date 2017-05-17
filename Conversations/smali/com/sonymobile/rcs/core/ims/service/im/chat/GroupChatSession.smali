.class public abstract Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;
.super Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
.source "GroupChatSession.java"


# instance fields
.field private conferenceSubscriber:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;)V
    .locals 4
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "conferenceId"    # Ljava/lang/String;
    .param p3, "participants"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;)V

    .line 66
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;

    invoke-direct {v2, p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;)V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->conferenceSubscriber:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 85
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getSupportedFeatureTagsForGroupChat()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->setFeatureTags(Ljava/util/List;)V

    const-string/jumbo v0, "message/cpim"

    .line 89
    .local v0, "acceptTypes":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->setAcceptTypes(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->setMimeTypes(Ljava/lang/String;)V

    const-string/jumbo v1, "text/plain message/imdn+xml application/im-iscomposing+xml"

    .line 94
    .local v1, "wrappedTypes":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isGeoLocationPushSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferHttpSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->setWrappedTypes(Ljava/lang/String;)V

    .line 101
    return-void

    .line 95
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " application/vnd.gsma.rcspushlocation+xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 98
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " application/vnd.gsma.rcs-ft-http+xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public addParticipant(Ljava/lang/String;)V
    .locals 11
    .param p1, "participant"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x12c

    const/16 v9, 0xc8

    .line 327
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_2

    .line 332
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v0

    .line 335
    .local v0, "authenticationAgent":Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 338
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_3

    .line 341
    :goto_1
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "contactUri":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getSubject()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v1, v7, v8}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createRefer(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v5

    .local v5, "refer":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    const-string/jumbo v6, "Contribution-ID"

    .line 344
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSubsequentRequest(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v2

    .line 349
    .local v2, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v6

    const/16 v7, 0x197

    if-eq v6, v7, :cond_4

    .line 402
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v6

    if-ge v6, v9, :cond_b

    .line 416
    :cond_0
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_d

    :goto_2
    const/4 v4, 0x0

    .line 421
    .local v4, "i":I
    :goto_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v4, v6, :cond_e

    .line 437
    .end local v0    # "authenticationAgent":Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;
    .end local v1    # "contactUri":Ljava/lang/String;
    .end local v2    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v5    # "refer":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_1
    return-void

    .line 328
    .end local v4    # "i":I
    :cond_2
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Add one participant ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") to the session"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 436
    :catch_0
    move-exception v3

    .line 427
    .local v3, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_f

    :goto_4
    const/4 v4, 0x0

    .line 432
    .restart local v4    # "i":I
    :goto_5
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 433
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleAddParticipantFailed(Ljava/lang/String;)V

    .line 432
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 339
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "i":I
    .restart local v0    # "authenticationAgent":Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Send REFER"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 351
    .restart local v1    # "contactUri":Ljava/lang/String;
    .restart local v2    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .restart local v5    # "refer":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_4
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_6

    .line 356
    :goto_6
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->readProxyAuthenticateHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 359
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 362
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_7

    .line 365
    :goto_7
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getSubject()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v1, v7, v8}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createRefer(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v5

    const-string/jumbo v6, "Contribution-ID"

    .line 367
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0, v5}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 373
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSubsequentRequest(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v2

    .line 377
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v6

    if-ge v6, v9, :cond_8

    .line 392
    :cond_5
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_a

    :goto_8
    const/4 v4, 0x0

    .line 397
    .restart local v4    # "i":I
    :goto_9
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 398
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getReasonPhrase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleAddParticipantFailed(Ljava/lang/String;)V

    .line 397
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 352
    .end local v4    # "i":I
    :cond_6
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "407 response received"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6

    .line 363
    :cond_7
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Send second REFER"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_7

    .line 377
    :cond_8
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v6

    if-ge v6, v10, :cond_5

    .line 379
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_9

    .line 383
    :goto_a
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->addParticipant(Ljava/lang/String;)V

    .line 384
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateGroupChatSession(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    const/4 v4, 0x0

    .line 386
    .restart local v4    # "i":I
    :goto_b
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 387
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    invoke-interface {v6}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleAddParticipantSuccessful()V

    .line 386
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 380
    .end local v4    # "i":I
    :cond_9
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "200 OK response received"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_a

    .line 393
    :cond_a
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "REFER has failed ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 402
    :cond_b
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v6

    if-ge v6, v10, :cond_0

    .line 404
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_c

    .line 408
    :goto_c
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->addParticipant(Ljava/lang/String;)V

    .line 409
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateGroupChatSession(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    const/4 v4, 0x0

    .line 411
    .restart local v4    # "i":I
    :goto_d
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 412
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    invoke-interface {v6}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleAddParticipantSuccessful()V

    .line 411
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 405
    .end local v4    # "i":I
    :cond_c
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "200 OK response received"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_c

    .line 417
    :cond_d
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "No response received"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 422
    .restart local v4    # "i":I
    :cond_e
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getReasonPhrase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleAddParticipantFailed(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 421
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 428
    .end local v0    # "authenticationAgent":Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;
    .end local v1    # "contactUri":Ljava/lang/String;
    .end local v2    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v4    # "i":I
    .end local v5    # "refer":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_f
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "REFER request has failed"

    invoke-virtual {v6, v7, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4
.end method

.method public addParticipants(Ljava/util/List;Ljava/lang/String;)V
    .locals 12
    .param p2, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v11, 0x12c

    const/16 v10, 0xc8

    .line 447
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    .line 452
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_3

    .line 457
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v0

    .line 460
    .local v0, "authenticationAgent":Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 463
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_4

    .line 466
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getSubject()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, p1, v8, v9}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createRefer(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v6

    .local v6, "refer":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    const-string/jumbo v7, "Contribution-ID"

    .line 468
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSubsequentRequest(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v1

    .line 472
    .local v1, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v7

    const/16 v8, 0x197

    if-eq v7, v8, :cond_5

    .line 526
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v7

    if-ge v7, v10, :cond_d

    .line 542
    :cond_0
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_10

    :goto_2
    const/4 v3, 0x0

    .line 547
    .local v3, "i":I
    :goto_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v3, v7, :cond_11

    .line 563
    .end local v0    # "authenticationAgent":Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;
    .end local v1    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v6    # "refer":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_1
    return-void

    .end local v3    # "i":I
    :cond_2
    const/4 v7, 0x0

    .line 448
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->addParticipant(Ljava/lang/String;)V

    .line 449
    return-void

    .line 453
    :cond_3
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Add "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " participants to the session"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 562
    :catch_0
    move-exception v2

    .line 553
    .local v2, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_12

    :goto_4
    const/4 v3, 0x0

    .line 558
    .restart local v3    # "i":I
    :goto_5
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 559
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleAddParticipantFailed(Ljava/lang/String;)V

    .line 558
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 464
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i":I
    .restart local v0    # "authenticationAgent":Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Send REFER"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 474
    .restart local v1    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .restart local v6    # "refer":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_5
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_7

    .line 479
    :goto_6
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->readProxyAuthenticateHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 482
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 485
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_8

    .line 488
    :goto_7
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getSubject()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, p1, v8, v9}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createRefer(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v6

    const-string/jumbo v7, "Contribution-ID"

    .line 490
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0, v6}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 496
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSubsequentRequest(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v1

    .line 499
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v7

    if-ge v7, v10, :cond_9

    .line 516
    :cond_6
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_c

    :goto_8
    const/4 v3, 0x0

    .line 521
    .restart local v3    # "i":I
    :goto_9
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 522
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleAddParticipantFailed(Ljava/lang/String;)V

    .line 521
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 475
    .end local v3    # "i":I
    :cond_7
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "407 response received"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6

    .line 486
    :cond_8
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Send second REFER"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_7

    .line 499
    :cond_9
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v7

    if-ge v7, v11, :cond_6

    .line 501
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_a

    .line 505
    :goto_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_b

    .line 508
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateGroupChatSession(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    const/4 v3, 0x0

    .line 510
    .restart local v3    # "i":I
    :goto_c
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 511
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    invoke-interface {v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleAddParticipantSuccessful()V

    .line 510
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 502
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_a
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "20x OK response received"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_a

    .line 505
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 506
    .local v5, "participant":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->addParticipant(Ljava/lang/String;)V

    goto :goto_b

    .line 517
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "participant":Ljava/lang/String;
    :cond_c
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "REFER has failed ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 526
    :cond_d
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v7

    if-ge v7, v11, :cond_0

    .line 528
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_e

    .line 532
    :goto_d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_f

    .line 535
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateGroupChatSession(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    const/4 v3, 0x0

    .line 537
    .restart local v3    # "i":I
    :goto_f
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 538
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    invoke-interface {v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleAddParticipantSuccessful()V

    .line 537
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 529
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_e
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "20x OK response received"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_d

    .line 532
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 533
    .restart local v5    # "participant":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->addParticipant(Ljava/lang/String;)V

    goto :goto_e

    .line 543
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "participant":Ljava/lang/String;
    :cond_10
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "No response received"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 548
    .restart local v3    # "i":I
    :cond_11
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleAddParticipantFailed(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 547
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 554
    .end local v0    # "authenticationAgent":Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;
    .end local v1    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v3    # "i":I
    .end local v6    # "refer":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_12
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "REFER request has failed"

    invoke-virtual {v7, v8, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4
.end method

.method public closeMediaSession()V
    .locals 0

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->closeMsrpSession()V

    .line 160
    return-void
.end method

.method public createInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 667
    return-object v0
.end method

.method public getConferenceEventSubscriber()Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->conferenceSubscriber:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;

    return-object v0
.end method

.method public getConnectedParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->conferenceSubscriber:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v0

    return-object v0
.end method

.method public getReplacedSessionId()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 128
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v5

    const-string/jumbo v6, "Session-Replaces"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v4

    check-cast v4, Ljavax2/sip/header/ExtensionHeader;

    .line 130
    .local v4, "sessionReplace":Ljavax2/sip/header/ExtensionHeader;
    if-nez v4, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteContent()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "content":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 142
    .end local v0    # "content":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 131
    .restart local v3    # "result":Ljava/lang/String;
    :cond_1
    invoke-interface {v4}, Ljavax2/sip/header/ExtensionHeader;->getValue()Ljava/lang/String;

    move-result-object v3

    .local v3, "result":Ljava/lang/String;
    goto :goto_0

    .restart local v0    # "content":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "Session-Replaces="

    .line 135
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, "index1":I
    const/4 v5, -0x1

    .line 136
    if-eq v1, v5, :cond_0

    const-string/jumbo v5, "\""

    .line 137
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 138
    .local v2, "index2":I
    add-int/lit8 v5, v1, 0x11

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .local v3, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public handle200OK(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 1
    .param p1, "resp"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    .line 676
    invoke-super {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->handle200OK(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 679
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getConferenceEventSubscriber()Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->subscribe()Z

    .line 680
    return-void
.end method

.method public isGroupChat()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public receiveBye(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 1
    .param p1, "bye"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->conferenceSubscriber:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->terminateWithOutUnSubscribe()V

    .line 185
    invoke-super {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->receiveBye(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 186
    return-void
.end method

.method public receiveCancel(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 1
    .param p1, "cancel"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->conferenceSubscriber:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->terminateWithOutUnSubscribe()V

    .line 198
    invoke-super {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->receiveCancel(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 199
    return-void
.end method

.method public rejectSession()V
    .locals 1

    .prologue
    const/16 v0, 0x25b

    .line 656
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->rejectSession(I)V

    .line 657
    return-void
.end method

.method public sendGeolocMessage(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;)Ljava/lang/String;
    .locals 12
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "geoloc"    # Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    .prologue
    const/4 v4, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getImdnManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->isImdnActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    .local v4, "useImdn":Z
    :cond_0
    :goto_0
    sget-object v1, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicAddress()Ljava/lang/String;

    move-result-object v8

    .local v8, "from":Ljava/lang/String;
    const-string/jumbo v11, "sip:anonymous@anonymous.invalid"

    .line 268
    .local v11, "to":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildGeolocDocument(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 271
    .local v9, "geoDoc":Ljava/lang/String;
    if-nez v4, :cond_2

    const-string/jumbo v1, "application/vnd.gsma.rcspushlocation+xml"

    .line 277
    invoke-static {v8, v11, v9, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildCpimMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, "content":Ljava/lang/String;
    :goto_1
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;ZLjava/lang/String;)V

    .line 283
    .local v0, "geolocMsg":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addOutgoingGeoloc(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 287
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "message/cpim"

    sget-object v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->GeoLocation:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    invoke-virtual {p0, v1, v6, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->sendDataChunks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/server/ServerApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    return-object p1

    .end local v0    # "geolocMsg":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;
    .end local v4    # "useImdn":Z
    .end local v6    # "content":Ljava/lang/String;
    .end local v8    # "from":Ljava/lang/String;
    .end local v9    # "geoDoc":Ljava/lang/String;
    .end local v11    # "to":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "0"

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getGsmaRelease()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .restart local v4    # "useImdn":Z
    .restart local v8    # "from":Ljava/lang/String;
    .restart local v9    # "geoDoc":Ljava/lang/String;
    .restart local v11    # "to":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "application/vnd.gsma.rcspushlocation+xml"

    .line 273
    invoke-static {v8, v11, p1, v9, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildCpimMessageWithImdn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "content":Ljava/lang/String;
    goto :goto_1

    .line 290
    .restart local v0    # "geolocMsg":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;
    :catch_0
    move-exception v7

    .line 293
    .local v7, "e":Lcom/sonymobile/rcs/service/api/server/ServerApiException;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->markChatMessageFailed(Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 296
    .local v10, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v10, v1, :cond_3

    .line 300
    throw v7

    .line 297
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    const-string/jumbo v2, "failed"

    invoke-interface {v1, p1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    add-int/lit8 v10, v10, 0x1

    goto :goto_2
.end method

.method public sendIsComposingStatus(Z)V
    .locals 6
    .param p1, "status"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 311
    sget-object v4, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v1

    .local v1, "from":Ljava/lang/String;
    const-string/jumbo v3, "sip:anonymous@anonymous.invalid"

    .line 313
    .local v3, "to":Ljava/lang/String;
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;->buildIsComposingInfo(Z)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "application/im-iscomposing+xml"

    invoke-static {v1, v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildCpimMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "content":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object v2

    .local v2, "msgId":Ljava/lang/String;
    const-string/jumbo v4, "message/cpim"

    .line 316
    sget-object v5, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->IsComposing:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    invoke-virtual {p0, v2, v0, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->sendDataChunks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V

    .line 318
    return-void
.end method

.method public sendMsrpMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;
    .param p4, "msgId"    # Ljava/lang/String;
    .param p5, "status"    # Ljava/lang/String;
    .param p6, "addDeliveryStatusToDatabase"    # Z
    .param p7, "route"    # Ljava/lang/String;

    .prologue
    .line 612
    invoke-static {p4, p5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildDeliveryReport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 615
    .local v2, "imdn":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 620
    :goto_0
    invoke-static {p2, p3, p7, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildCpimDeliveryReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "content":Ljava/lang/String;
    sget-object v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->OtherMessageDeliveredReportStatus:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    .local v3, "typeMsrpChunk":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;
    const-string/jumbo v4, "displayed"

    .line 624
    invoke-virtual {p5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "delivered"

    .line 626
    invoke-virtual {p5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 631
    :goto_1
    if-nez p6, :cond_3

    .line 638
    :goto_2
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "message/cpim"

    invoke-virtual {p0, v4, v0, v5, v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->sendDataChunks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/server/ServerApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    return-void

    .line 616
    .end local v0    # "content":Ljava/lang/String;
    .end local v3    # "typeMsrpChunk":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Send delivery status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 625
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v3    # "typeMsrpChunk":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;
    :cond_1
    sget-object v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->MessageDisplayedReport:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    goto :goto_1

    .line 628
    :cond_2
    sget-object v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->MessageDeliveredReport:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    goto :goto_1

    .line 633
    :cond_3
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToInternational(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 634
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v4

    invoke-virtual {v4, p4, p5, p3}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setChatMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 649
    :catch_0
    move-exception v1

    .line 641
    .local v1, "e":Lcom/sonymobile/rcs/service/api/server/ServerApiException;
    if-nez p6, :cond_5

    .line 648
    :cond_4
    :goto_3
    throw v1

    :cond_5
    const-string/jumbo v4, "displayed"

    .line 641
    invoke-virtual {p5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 645
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setChatMessageDeliveryRequested(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public sendMsrpMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 10
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "addDeliveryStatusToDatabase"    # Z
    .param p5, "route"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 584
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getUserProfileImsUserName()Ljava/lang/String;

    move-result-object v8

    .line 585
    .local v8, "myNumber":Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->formatCpimSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 587
    .local v9, "myNumberTel":Ljava/lang/String;
    move-object v2, v9

    .line 588
    .local v2, "from":Ljava/lang/String;
    move-object v3, p1

    .local v3, "to":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 589
    invoke-virtual/range {v0 .. v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->sendMsrpMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 591
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;)Ljava/lang/String;
    .locals 11
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "txt"    # Ljava/lang/String;
    .param p3, "msgAdding"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getImdnManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->isImdnActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 219
    .local v4, "useImdn":Z
    :cond_0
    :goto_0
    sget-object v1, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicAddress()Ljava/lang/String;

    move-result-object v8

    .local v8, "from":Ljava/lang/String;
    const-string/jumbo v10, "sip:anonymous@anonymous.invalid"

    .line 222
    .local v10, "to":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 226
    invoke-static {p2}, Lcom/sonymobile/rcs/utils/StringUtils;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "text/plain"

    invoke-static {v8, v10, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildCpimMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 232
    .local v6, "content":Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "message/cpim"

    sget-object v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->TextMessage:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    invoke-virtual {p0, v1, v6, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->sendDataChunks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V

    .line 234
    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;->ADD_MESSAGE:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;

    if-eq p3, v1, :cond_3

    .line 239
    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;->UPDATE_MESSAGE_MSGID:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/server/ServerApiException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p3, v1, :cond_4

    .line 242
    :goto_2
    return-object p1

    .end local v4    # "useImdn":Z
    .end local v6    # "content":Ljava/lang/String;
    .end local v8    # "from":Ljava/lang/String;
    .end local v10    # "to":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "0"

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getGsmaRelease()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 223
    .restart local v4    # "useImdn":Z
    .restart local v8    # "from":Ljava/lang/String;
    .restart local v10    # "to":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Lcom/sonymobile/rcs/utils/StringUtils;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "text/plain"

    invoke-static {v8, v10, p1, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildCpimMessageWithImdn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "content":Ljava/lang/String;
    goto :goto_1

    .line 236
    :cond_3
    :try_start_1
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 238
    .local v0, "msg":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addOutgoingChatMessage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    :try_end_1
    .catch Lcom/sonymobile/rcs/service/api/server/ServerApiException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 242
    .end local v0    # "msg":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    :catch_0
    move-exception v7

    .line 244
    .local v7, "e":Lcom/sonymobile/rcs/service/api/server/ServerApiException;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->markChatMessageFailed(Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 246
    .local v9, "i":I
    :goto_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v9, v1, :cond_5

    .line 250
    throw v7

    .line 240
    .end local v7    # "e":Lcom/sonymobile/rcs/service/api/server/ServerApiException;
    .end local v9    # "i":I
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->markQueuedChatMessageAsSent(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    :try_end_2
    .catch Lcom/sonymobile/rcs/service/api/server/ServerApiException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 247
    .restart local v7    # "e":Lcom/sonymobile/rcs/service/api/server/ServerApiException;
    .restart local v9    # "i":I
    :cond_5
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    const-string/jumbo v2, "failed"

    invoke-interface {v1, p1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method public terminateSession(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->conferenceSubscriber:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->terminate()V

    .line 172
    invoke-super {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->terminateSession(I)V

    .line 173
    return-void
.end method
