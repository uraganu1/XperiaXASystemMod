.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;
.super Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;
.source "TerminatingAdhocGroupChatSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 4
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 73
    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getReferredIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getListOfParticipants(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;)V

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 76
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    :cond_0
    :goto_0
    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getSubject(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "subject":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->setSubject(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->createTerminatingDialogPath(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 89
    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getContributionId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->setContributionID(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getGroupChatStatus(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 98
    :cond_1
    :goto_1
    return-void

    .line 77
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "subject":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Invite to join a group chat"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .restart local v0    # "id":Ljava/lang/String;
    .restart local v1    # "subject":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Invite to rejoin or restart a group chat"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;)Lcom/sonymobile/rcs/utils/logger/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-object v0
.end method

.method private inviteMissingParticipants(Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;)V
    .locals 1
    .param p1, "invitedParticipants"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    .prologue
    .line 327
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession$2;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession$2;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;)V

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession$2;->start()V

    .line 356
    return-void
.end method

.method private terminateOldEventSubscriptions()V
    .locals 5

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getOlderGCSessions(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)Ljava/util/Enumeration;

    move-result-object v0

    .line 369
    .local v0, "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 377
    return-void

    .line 370
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .line 371
    .local v1, "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v4

    move-object v3, v1

    check-cast v3, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    .end local v1    # "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getConferenceEventSubscriber()Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;

    move-result-object v2

    .line 374
    .local v2, "subscription":Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->stop()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    .line 105
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_2

    .line 109
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isGroupChatAutoAccept()Z

    move-result v4

    if-nez v4, :cond_4

    .line 114
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_5

    .line 118
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->send180Ringing(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->waitInvitationAnswer()I

    move-result v14

    .local v14, "answer":I
    const/4 v4, 0x2

    .line 122
    if-eq v14, v4, :cond_6

    .line 136
    if-eqz v14, :cond_9

    const/4 v4, 0x3

    .line 153
    if-eq v14, v4, :cond_c

    .line 162
    .end local v14    # "answer":I
    :cond_0
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getSdpContent()Ljava/lang/String;

    move-result-object v24

    .line 163
    .local v24, "remoteSdp":Ljava/lang/String;
    new-instance v22, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;-><init>([B)V

    .line 164
    .local v22, "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescriptions()Ljava/util/Vector;

    move-result-object v20

    .local v20, "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    const/4 v4, 0x0

    .line 165
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    .local v21, "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    const-string/jumbo v4, "path"

    .line 166
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v15

    .line 167
    .local v15, "attr1":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    invoke-virtual {v15}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 168
    .local v11, "remotePath":Ljava/lang/String;
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractRemoteHost(Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Ljava/lang/String;

    move-result-object v23

    .line 169
    .local v23, "remoteHost":Ljava/lang/String;
    move-object/from16 v0, v21

    iget v10, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->port:I

    .line 170
    .local v10, "remotePort":I
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractFingerprint(Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Ljava/lang/String;

    move-result-object v13

    .local v13, "fingerprint":Ljava/lang/String;
    const-string/jumbo v25, "passive"

    .local v25, "remoteSetup":Ljava/lang/String;
    const-string/jumbo v4, "setup"

    .line 174
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v16

    .line 175
    .local v16, "attr2":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    if-nez v16, :cond_e

    .line 178
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_f

    .line 183
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->createSetupAnswer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 184
    .local v7, "localSetup":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_10

    :goto_5
    const-string/jumbo v4, "active"

    .line 190
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPort()I

    move-result v3

    .line 197
    .local v3, "localMsrpPort":I
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "ipAddress":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalSocketProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getAcceptTypes()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getWrappedTypes()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPath()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "sendrecv"

    invoke-static/range {v2 .. v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->buildGroupChatSDP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 205
    .local v27, "sdp":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->isSessionInterrupted()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 209
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_13

    .line 212
    :goto_7
    return-void

    .line 106
    .end local v2    # "ipAddress":Ljava/lang/String;
    .end local v3    # "localMsrpPort":I
    .end local v7    # "localSetup":Ljava/lang/String;
    .end local v10    # "remotePort":I
    .end local v11    # "remotePath":Ljava/lang/String;
    .end local v13    # "fingerprint":Ljava/lang/String;
    .end local v15    # "attr1":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v16    # "attr2":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v20    # "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .end local v21    # "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .end local v22    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .end local v23    # "remoteHost":Ljava/lang/String;
    .end local v24    # "remoteSdp":Ljava/lang/String;
    .end local v25    # "remoteSetup":Ljava/lang/String;
    .end local v27    # "sdp":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Initiate a new ad-hoc group chat session as terminating"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 315
    :catch_0
    move-exception v18

    .line 309
    .local v18, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 314
    :goto_8
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;

    const/4 v5, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 316
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_9
    return-void

    .line 110
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Auto accept group chat invitation"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 115
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Accept manually group chat invitation"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 123
    .restart local v14    # "answer":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_7

    .line 128
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/16 v19, 0x0

    .line 131
    .local v19, "i":I
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, v19

    if-lt v0, v4, :cond_8

    .line 135
    return-void

    .line 124
    .end local v19    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session has been rejected by user"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_a

    .line 132
    .restart local v19    # "i":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionAborted(I)V

    .line 131
    add-int/lit8 v19, v19, 0x1

    goto :goto_b

    .line 137
    .end local v19    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_a

    .line 142
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->send486Busy(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/16 v19, 0x0

    .line 148
    .restart local v19    # "i":I
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, v19

    if-lt v0, v4, :cond_b

    .line 152
    return-void

    .line 138
    .end local v19    # "i":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session has been rejected on timeout"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_c

    .line 149
    .restart local v19    # "i":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionAborted(I)V

    .line 148
    add-int/lit8 v19, v19, 0x1

    goto :goto_d

    .line 154
    .end local v19    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_d

    .line 157
    :goto_e
    return-void

    .line 155
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session has been canceled"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_e

    .line 176
    .end local v14    # "answer":I
    .restart local v10    # "remotePort":I
    .restart local v11    # "remotePath":Ljava/lang/String;
    .restart local v13    # "fingerprint":Ljava/lang/String;
    .restart local v15    # "attr1":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .restart local v16    # "attr2":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .restart local v20    # "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .restart local v21    # "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .restart local v22    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .restart local v23    # "remoteHost":Ljava/lang/String;
    .restart local v24    # "remoteSdp":Ljava/lang/String;
    .restart local v25    # "remoteSetup":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_3

    .line 179
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Remote setup attribute is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 185
    .restart local v7    # "localSetup":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Local setup attribute is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_11
    const/16 v3, 0x9

    .line 191
    .restart local v3    # "localMsrpPort":I
    goto/16 :goto_6

    .line 208
    .restart local v2    # "ipAddress":Ljava/lang/String;
    .restart local v27    # "sdp":Ljava/lang/String;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "passive"

    .line 216
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 242
    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_15

    .line 245
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getFeatureTags()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->create200OkInviteResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v26

    .line 249
    .local v26, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sigEstablished()V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v17

    .line 256
    .local v17, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipAck()Z

    move-result v4

    if-nez v4, :cond_16

    .line 301
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 306
    :goto_11
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;

    const/16 v5, 0x65

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto/16 :goto_9

    .line 210
    .end local v17    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v26    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session has been interrupted: end of processing"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 218
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v11, v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->createMsrpServerSession(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v28

    .line 219
    .local v28, "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setFailureReportOption(Z)V

    .line 220
    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setSuccessReportOption(Z)V

    .line 223
    new-instance v29, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession$1;

    invoke-direct/range {v29 .. v30}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession$1;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;)V

    .line 238
    .local v29, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Thread;->start()V

    goto :goto_f

    .line 243
    .end local v28    # "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    .end local v29    # "thread":Ljava/lang/Thread;
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Send 200 OK"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_10

    .line 258
    .restart local v17    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .restart local v26    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_17

    .line 263
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionEstablished()V

    const-string/jumbo v4, "active"

    .line 266
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    :goto_13
    const/16 v19, 0x0

    .line 281
    .restart local v19    # "i":I
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, v19

    if-lt v0, v4, :cond_19

    .line 286
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->terminateOldEventSubscriptions()V

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->inviteMissingParticipants(Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;)V

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getConferenceEventSubscriber()Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceEventSubscribeManager;->subscribe()Z

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionTimerManager()Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->isSessionTimerActivated(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionTimerManager()Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    move-result-object v4

    const-string/jumbo v5, "uas"

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSessionExpireTime()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->start(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 259
    .end local v19    # "i":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "ACK request received"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_12

    .line 268
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v8

    move-object/from16 v9, v23

    move-object/from16 v12, p0

    invoke-virtual/range {v8 .. v13}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->createMsrpClientSession(Ljava/lang/String;ILjava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v28

    .line 270
    .restart local v28    # "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setFailureReportOption(Z)V

    .line 271
    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setSuccessReportOption(Z)V

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->openMsrpSession()V

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->sendEmptyDataChunk()V

    goto :goto_13

    .line 282
    .end local v28    # "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    .restart local v19    # "i":I
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    invoke-interface {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionStarted()V

    .line 281
    add-int/lit8 v19, v19, 0x1

    goto :goto_14

    .line 302
    .end local v19    # "i":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "No ACK received for INVITE"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_11

    .line 310
    .end local v2    # "ipAddress":Ljava/lang/String;
    .end local v3    # "localMsrpPort":I
    .end local v7    # "localSetup":Ljava/lang/String;
    .end local v10    # "remotePort":I
    .end local v11    # "remotePath":Ljava/lang/String;
    .end local v13    # "fingerprint":Ljava/lang/String;
    .end local v15    # "attr1":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v16    # "attr2":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v17    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v20    # "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .end local v21    # "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .end local v22    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .end local v23    # "remoteHost":Ljava/lang/String;
    .end local v24    # "remoteSdp":Ljava/lang/String;
    .end local v25    # "remoteSetup":Ljava/lang/String;
    .end local v26    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v27    # "sdp":Ljava/lang/String;
    .restart local v18    # "e":Ljava/lang/Exception;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session initiation has failed"

    move-object/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8
.end method
