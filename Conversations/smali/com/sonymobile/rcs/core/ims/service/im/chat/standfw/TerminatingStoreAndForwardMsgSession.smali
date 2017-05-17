.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;
.super Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;
.source "TerminatingStoreAndForwardMsgSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 3
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 69
    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getReferredIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 72
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getSupportedFeatureTagsForChat()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->setFeatureTags(Ljava/util/List;)V

    .line 75
    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getFirstMessage(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v0

    .line 76
    .local v0, "firstMsg":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->setFirstMesssage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V

    .line 79
    invoke-virtual {p0, p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->createTerminatingDialogPath(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 82
    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getContributionId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->setContributionID(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;)Lcom/sonymobile/rcs/utils/logger/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-object v0
.end method


# virtual methods
.method public getDirection()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "sendrecv"

    .line 314
    return-object v0
.end method

.method public run()V
    .locals 31

    .prologue
    .line 91
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_3

    .line 96
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->isImdnDeliveredRequested(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 99
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getMessageId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v22

    .line 100
    .local v22, "msgId":Ljava/lang/String;
    if-nez v22, :cond_5

    .line 110
    .end local v22    # "msgId":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isChatAutoAccepted()Z

    move-result v4

    if-nez v4, :cond_6

    .line 115
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_7

    .line 119
    :goto_2
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
    if-eq v14, v4, :cond_8

    .line 136
    if-eqz v14, :cond_b

    const/4 v4, 0x3

    .line 153
    if-eq v14, v4, :cond_e

    .line 162
    .end local v14    # "answer":I
    :cond_1
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getSdpContent()Ljava/lang/String;

    move-result-object v25

    .line 163
    .local v25, "remoteSdp":Ljava/lang/String;
    new-instance v23, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;-><init>([B)V

    .line 164
    .local v23, "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescriptions()Ljava/util/Vector;

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
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    iget-object v4, v4, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->connectionInfo:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractRemoteHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 170
    .local v24, "remoteHost":Ljava/lang/String;
    move-object/from16 v0, v21

    iget v10, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->port:I

    .line 171
    .local v10, "remotePort":I
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractFingerprint(Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Ljava/lang/String;

    move-result-object v13

    .local v13, "fingerprint":Ljava/lang/String;
    const-string/jumbo v26, "passive"

    .local v26, "remoteSetup":Ljava/lang/String;
    const-string/jumbo v4, "setup"

    .line 175
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v16

    .line 176
    .local v16, "attr2":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    if-nez v16, :cond_10

    .line 179
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_11

    .line 184
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->createSetupAnswer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 185
    .local v7, "localSetup":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_12

    :goto_6
    const-string/jumbo v4, "active"

    .line 191
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPort()I

    move-result v3

    .line 198
    .local v3, "localMsrpPort":I
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    .line 199
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

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->getDirection()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->buildChatSDP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 205
    .local v28, "sdp":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->isSessionInterrupted()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 209
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_15

    .line 212
    :goto_8
    return-void

    .line 92
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
    .end local v23    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .end local v24    # "remoteHost":Ljava/lang/String;
    .end local v25    # "remoteSdp":Ljava/lang/String;
    .end local v26    # "remoteSetup":Ljava/lang/String;
    .end local v28    # "sdp":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Initiate a store & forward session for messages"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 309
    :catch_0
    move-exception v18

    .line 303
    .local v18, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 308
    :goto_9
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;

    const/4 v5, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 310
    .end local v18    # "e":Ljava/lang/Exception;
    :goto_a
    return-void

    .line 96
    :cond_4
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->isFileTransferOverHttp(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 102
    .restart local v22    # "msgId":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getImdnManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "delivered"

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getRemoteInstanceID(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0, v6, v8}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->sendMessageDeliveryStatusImmediately(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 111
    .end local v22    # "msgId":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Auto accept store and forward chat invitation"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 116
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Accept manually store and forward chat invitation"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 123
    .restart local v14    # "answer":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_9

    .line 128
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/16 v19, 0x0

    .line 131
    .local v19, "i":I
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, v19

    if-lt v0, v4, :cond_a

    .line 134
    return-void

    .line 124
    .end local v19    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session has been rejected by user"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_b

    .line 132
    .restart local v19    # "i":I
    :cond_a
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

    goto :goto_c

    .line 137
    .end local v19    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_c

    .line 142
    :goto_d
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
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, v19

    if-lt v0, v4, :cond_d

    .line 151
    return-void

    .line 138
    .end local v19    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session has been rejected on timeout"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_d

    .line 149
    .restart local v19    # "i":I
    :cond_d
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

    goto :goto_e

    .line 154
    .end local v19    # "i":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_f

    .line 157
    :goto_f
    return-void

    .line 155
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session has been canceled"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_f

    .line 177
    .end local v14    # "answer":I
    .restart local v10    # "remotePort":I
    .restart local v11    # "remotePath":Ljava/lang/String;
    .restart local v13    # "fingerprint":Ljava/lang/String;
    .restart local v15    # "attr1":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .restart local v16    # "attr2":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .restart local v20    # "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .restart local v21    # "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .restart local v23    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .restart local v24    # "remoteHost":Ljava/lang/String;
    .restart local v25    # "remoteSdp":Ljava/lang/String;
    .restart local v26    # "remoteSetup":Ljava/lang/String;
    :cond_10
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_4

    .line 180
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Remote setup attribute is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 186
    .restart local v7    # "localSetup":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    goto/16 :goto_6

    :cond_13
    const/16 v3, 0x9

    .line 192
    .restart local v3    # "localMsrpPort":I
    goto/16 :goto_7

    .line 208
    .restart local v2    # "ipAddress":Ljava/lang/String;
    .restart local v28    # "sdp":Ljava/lang/String;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "passive"

    .line 216
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 242
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_17

    .line 245
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getFeatureTags()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-static {v4, v5, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->create200OkInviteResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v27

    .line 249
    .local v27, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
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

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v17

    .line 256
    .local v17, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipAck()Z

    move-result v4

    if-nez v4, :cond_18

    .line 295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 300
    :goto_12
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;

    const/16 v5, 0x65

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto/16 :goto_a

    .line 210
    .end local v17    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v27    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session has been interrupted: end of processing"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 218
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v11, v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->createMsrpServerSession(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v29

    .line 219
    .local v29, "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setFailureReportOption(Z)V

    .line 220
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setSuccessReportOption(Z)V

    .line 223
    new-instance v30, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession$1;

    invoke-direct/range {v30 .. v31}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession$1;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;)V

    .line 238
    .local v30, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Thread;->start()V

    goto :goto_10

    .line 243
    .end local v29    # "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    .end local v30    # "thread":Ljava/lang/Thread;
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Send 200 OK"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_11

    .line 258
    .restart local v17    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .restart local v27    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_19

    .line 263
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionEstablished()V

    const-string/jumbo v4, "active"

    .line 266
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    :goto_14
    const/16 v19, 0x0

    .line 281
    .restart local v19    # "i":I
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, v19

    if-lt v0, v4, :cond_1b

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionTimerManager()Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->isSessionTimerActivated(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 292
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getActivityManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->start()V

    goto/16 :goto_a

    .line 259
    .end local v19    # "i":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "ACK request received"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_13

    .line 268
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v8

    move-object/from16 v9, v24

    move-object/from16 v12, p0

    invoke-virtual/range {v8 .. v13}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->createMsrpClientSession(Ljava/lang/String;ILjava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v29

    .line 270
    .restart local v29    # "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setFailureReportOption(Z)V

    .line 271
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setSuccessReportOption(Z)V

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->openMsrpSession()V

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->sendEmptyDataChunk()V

    goto :goto_14

    .line 282
    .end local v29    # "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    .restart local v19    # "i":I
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    invoke-interface {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionStarted()V

    .line 281
    add-int/lit8 v19, v19, 0x1

    goto :goto_15

    .line 287
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionTimerManager()Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    move-result-object v4

    const-string/jumbo v5, "uas"

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSessionExpireTime()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->start(Ljava/lang/String;I)V

    goto :goto_16

    .line 296
    .end local v19    # "i":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "No ACK received for INVITE"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_12

    .line 304
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
    .end local v23    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .end local v24    # "remoteHost":Ljava/lang/String;
    .end local v25    # "remoteSdp":Ljava/lang/String;
    .end local v26    # "remoteSetup":Ljava/lang/String;
    .end local v27    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v28    # "sdp":Ljava/lang/String;
    .restart local v18    # "e":Ljava/lang/Exception;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session initiation has failed"

    move-object/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9
.end method
