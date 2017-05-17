.class public abstract Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;
.super Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
.source "OneOneChatSession.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;)V
    .locals 4
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "contact"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->generateOneOneParticipants(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;)V

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 82
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getSupportedFeatureTagsForChat()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->setFeatureTags(Ljava/util/List;)V

    const-string/jumbo v0, "message/cpim application/im-iscomposing+xml"

    .line 86
    .local v0, "acceptTypes":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->setAcceptTypes(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->setMimeTypes(Ljava/lang/String;)V

    const-string/jumbo v1, "text/plain message/imdn+xml"

    .line 91
    .local v1, "wrappedTypes":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isGeoLocationPushSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferHttpSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->setWrappedTypes(Ljava/lang/String;)V

    .line 98
    return-void

    .line 92
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

    .line 95
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

.method private createInviteRequest(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->CHAT_FEATURE_TAGS:[Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    .local v0, "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    const-string/jumbo v1, "Contribution-ID"

    .line 422
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-object v0
.end method

.method private createMultipartInviteRequest(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 5
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getFeatureTags()[Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "boundary1"

    invoke-static {v2, v3, p1, v4}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createMultipartInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .line 395
    .local v1, "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getFirstMessage()Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v2, "Contribution-ID"

    .line 405
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-object v1

    .line 396
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getFirstMessage()Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getTextMessage()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "firstMessage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->parseFileTransferHttpDocument([B)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Subject"

    .line 400
    invoke-static {v0}, Lcom/sonymobile/rcs/utils/StringUtils;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static generateOneOneParticipants(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    .locals 1
    .param p0, "contact"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    invoke-direct {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;-><init>()V

    .line 117
    .local v0, "list":Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    invoke-virtual {v0, p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->addParticipant(Ljava/lang/String;)V

    .line 118
    return-object v0
.end method


# virtual methods
.method public addParticipant(Ljava/lang/String;)V
    .locals 2
    .param p1, "participant"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v0, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 263
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->addParticipants(Ljava/util/List;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public addParticipants(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
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
    .line 274
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 275
    .local v6, "existingParticipant":Ljava/lang/String;
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getImConferenceUri()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    invoke-direct {v5, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;-><init>(Ljava/util/List;)V

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;)V

    .line 283
    .local v0, "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->startSession()V

    .line 284
    return-void
.end method

.method public closeMediaSession()V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getActivityManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->stop()V

    .line 138
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->closeMsrpSession()V

    .line 139
    return-void
.end method

.method public createInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getFirstMessage()Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v1

    if-nez v1, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->createInviteRequest(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    .line 442
    .local v0, "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :goto_0
    return-object v0

    .line 438
    .end local v0    # "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->createMultipartInviteRequest(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    .restart local v0    # "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    goto :goto_0
.end method

.method public getConnectedParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v0

    return-object v0
.end method

.method public handle200OK(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 1
    .param p1, "resp"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    .line 451
    invoke-super {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->handle200OK(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 454
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getActivityManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->start()V

    .line 455
    return-void
.end method

.method public isGroupChat()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public msrpTransferError(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V
    .locals 2
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "typeMsrpChunk"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    .prologue
    .line 478
    invoke-super {p0, p1, p2, p3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->msrpTransferError(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V

    .line 481
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->requestContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .line 483
    return-void
.end method

.method public rejectSession()V
    .locals 1

    .prologue
    const/16 v0, 0x1e6

    .line 379
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->rejectSession(I)V

    .line 380
    return-void
.end method

.method public sendGeolocMessage(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;)Ljava/lang/String;
    .locals 13
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "geoloc"    # Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getImdnManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->isImdnActivated()Z

    move-result v4

    .local v4, "useImdn":Z
    const-string/jumbo v11, "message/cpim"

    .local v11, "mime":Ljava/lang/String;
    const-string/jumbo v8, "sip:anonymous@anonymous.invalid"

    .local v8, "from":Ljava/lang/String;
    const-string/jumbo v12, "sip:anonymous@anonymous.invalid"

    .line 207
    .local v12, "to":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildGeolocDocument(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 211
    .local v9, "geoDoc":Ljava/lang/String;
    if-nez v4, :cond_0

    const-string/jumbo v1, "application/vnd.gsma.rcspushlocation+xml"

    .line 217
    invoke-static {v8, v12, v9, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildCpimMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, "content":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->GeoLocation:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    invoke-virtual {p0, v1, v6, v11, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->sendDataChunks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V

    .line 225
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;ZLjava/lang/String;)V

    .line 227
    .local v0, "geolocMsg":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addOutgoingGeoloc(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/server/ServerApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    return-object p1

    .end local v0    # "geolocMsg":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;
    .end local v6    # "content":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "application/vnd.gsma.rcspushlocation+xml"

    .line 213
    invoke-static {v8, v12, p1, v9, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildCpimMessageWithImdn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "content":Ljava/lang/String;
    goto :goto_0

    .line 228
    :catch_0
    move-exception v7

    .line 231
    .local v7, "e":Lcom/sonymobile/rcs/service/api/server/ServerApiException;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->markChatMessageFailed(Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 234
    .local v10, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v10, v1, :cond_1

    .line 238
    throw v7

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    const-string/jumbo v2, "failed"

    invoke-interface {v1, p1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method public sendIsComposingStatus(Z)V
    .locals 4
    .param p1, "status"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;->buildIsComposingInfo(Z)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "content":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object v1

    .local v1, "msgId":Ljava/lang/String;
    const-string/jumbo v2, "application/im-iscomposing+xml"

    .line 251
    sget-object v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->IsComposing:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->sendDataChunks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V

    .line 253
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
    .line 335
    invoke-static {p4, p5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildDeliveryReport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "imdn":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 343
    :goto_0
    invoke-static {p2, p3, p7, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildCpimDeliveryReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "content":Ljava/lang/String;
    sget-object v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->OtherMessageDeliveredReportStatus:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    .local v3, "typeMsrpChunk":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;
    const-string/jumbo v4, "displayed"

    .line 347
    invoke-virtual {p5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "delivered"

    .line 349
    invoke-virtual {p5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 354
    :goto_1
    if-nez p6, :cond_3

    .line 361
    :goto_2
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "message/cpim"

    invoke-virtual {p0, v4, v0, v5, v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->sendDataChunks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/server/ServerApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    return-void

    .line 339
    .end local v0    # "content":Ljava/lang/String;
    .end local v3    # "typeMsrpChunk":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    .line 348
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v3    # "typeMsrpChunk":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;
    :cond_1
    sget-object v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->MessageDisplayedReport:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    goto :goto_1

    .line 351
    :cond_2
    sget-object v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->MessageDeliveredReport:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    goto :goto_1

    .line 356
    :cond_3
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToInternational(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 357
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v4

    invoke-virtual {v4, p4, p5, p3}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setChatMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 372
    :catch_0
    move-exception v1

    .line 364
    .local v1, "e":Lcom/sonymobile/rcs/service/api/server/ServerApiException;
    if-nez p6, :cond_5

    .line 371
    :cond_4
    :goto_3
    throw v1

    :cond_5
    const-string/jumbo v4, "displayed"

    .line 364
    invoke-virtual {p5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 368
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setChatMessageDeliveryRequested(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public sendMsrpMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8
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
    .line 306
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const-string/jumbo v2, "sip:anonymous@anonymous.invalid"

    .local v2, "from":Ljava/lang/String;
    const-string/jumbo v3, "sip:anonymous@anonymous.invalid"

    .local v3, "to":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 312
    invoke-virtual/range {v0 .. v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->sendMsrpMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 314
    return-void

    .line 307
    .end local v2    # "from":Ljava/lang/String;
    .end local v3    # "to":Ljava/lang/String;
    :cond_0
    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getIMDNRecordRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;)Ljava/lang/String;
    .locals 12
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "txt"    # Ljava/lang/String;
    .param p3, "msgAdding"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getImdnManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->isImdnActivated()Z

    move-result v4

    .local v4, "useImdn":Z
    const-string/jumbo v10, "message/cpim"

    .line 156
    .local v10, "mime":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicAddress()Ljava/lang/String;

    move-result-object v8

    .local v8, "from":Ljava/lang/String;
    const-string/jumbo v11, "sip:anonymous@anonymous.invalid"

    .line 161
    .local v11, "to":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 165
    invoke-static {p2}, Lcom/sonymobile/rcs/utils/StringUtils;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "text/plain"

    invoke-static {v8, v11, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildCpimMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, "content":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "message/cpim"

    sget-object v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->TextMessage:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    invoke-virtual {p0, v1, v6, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->sendDataChunks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V

    .line 173
    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;->ADD_MESSAGE:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;

    if-eq p3, v1, :cond_1

    .line 178
    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;->UPDATE_MESSAGE_MSGID:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/server/ServerApiException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p3, v1, :cond_2

    .line 181
    :goto_1
    return-object p1

    .line 162
    .end local v6    # "content":Ljava/lang/String;
    :cond_0
    invoke-static {p2}, Lcom/sonymobile/rcs/utils/StringUtils;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "text/plain"

    invoke-static {v8, v11, p1, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildCpimMessageWithImdn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "content":Ljava/lang/String;
    goto :goto_0

    .line 175
    :cond_1
    :try_start_1
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 177
    .local v0, "msg":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addOutgoingChatMessage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    :try_end_1
    .catch Lcom/sonymobile/rcs/service/api/server/ServerApiException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 181
    .end local v0    # "msg":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    :catch_0
    move-exception v7

    .line 184
    .local v7, "e":Lcom/sonymobile/rcs/service/api/server/ServerApiException;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->markChatMessageFailed(Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 187
    .local v9, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v9, v1, :cond_3

    .line 191
    throw v7

    .line 179
    .end local v7    # "e":Lcom/sonymobile/rcs/service/api/server/ServerApiException;
    .end local v9    # "i":I
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->markQueuedChatMessageAsSent(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    :try_end_2
    .catch Lcom/sonymobile/rcs/service/api/server/ServerApiException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 188
    .restart local v7    # "e":Lcom/sonymobile/rcs/service/api/server/ServerApiException;
    .restart local v9    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    const-string/jumbo v2, "failed"

    invoke-interface {v1, p1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    add-int/lit8 v9, v9, 0x1

    goto :goto_2
.end method
