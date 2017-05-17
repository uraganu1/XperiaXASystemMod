.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;
.super Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;
.source "OriginatingOne2OneChatSession.java"


# instance fields
.field private isFileTransferInit:Z

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "contact"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "messageId"    # Ljava/lang/String;
    .param p5, "fileTransferInit"    # Z

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 57
    iput-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->isFileTransferInit:Z

    .line 70
    iput-boolean p5, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->isFileTransferInit:Z

    .line 72
    if-nez p3, :cond_1

    .line 80
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->createOriginatingDialogPath()V

    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ContributionIdGenerator;->getContributionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->setContributionID(Ljava/lang/String;)V

    .line 85
    return-void

    .line 72
    .end local v1    # "id":Ljava/lang/String;
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->getImdnManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->isImdnActivated()Z

    move-result v3

    invoke-static {v2, p3, p4, v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->createFirstMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v0

    .line 76
    .local v0, "firstMessage":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->setFirstMesssage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V

    goto :goto_0
.end method


# virtual methods
.method public getDirection()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "sendrecv"

    .line 188
    return-object v0
.end method

.method public run()V
    .locals 20

    .prologue
    .line 92
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 97
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->createSetupOffer()Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, "localSetup":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    const-string/jumbo v4, "active"

    .line 104
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPort()I

    move-result v3

    .line 111
    .local v3, "localMsrpPort":I
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->constructNTPtime(J)Ljava/lang/String;

    move-result-object v16

    .line 112
    .local v16, "ntpTime":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "ipAddress":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPath()Ljava/lang/String;

    move-result-object v8

    .line 116
    .local v8, "path":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalSocketProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->getAcceptTypes()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->getWrappedTypes()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->getDirection()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->buildChatSDP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 122
    .local v17, "sdp":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->getFirstMessage()Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v4

    if-nez v4, :cond_3

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    .line 165
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->createInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v14

    .line 168
    .local v14, "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 174
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->sendInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 183
    .end local v2    # "ipAddress":Ljava/lang/String;
    .end local v3    # "localMsrpPort":I
    .end local v7    # "localSetup":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v14    # "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v16    # "ntpTime":Ljava/lang/String;
    .end local v17    # "sdp":Ljava/lang/String;
    :goto_4
    return-void

    .line 93
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Initiate a new 1-1 chat session as originating"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 182
    :catch_0
    move-exception v11

    .line 176
    .local v11, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_6

    .line 181
    :goto_5
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;

    const/16 v5, 0x65

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_4

    .line 99
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v7    # "localSetup":Ljava/lang/String;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0x9

    .line 105
    .restart local v3    # "localMsrpPort":I
    goto/16 :goto_2

    .restart local v2    # "ipAddress":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v16    # "ntpTime":Ljava/lang/String;
    .restart local v17    # "sdp":Ljava/lang/String;
    :cond_3
    const-string/jumbo v13, "sip:anonymous@anonymous.invalid"

    .local v13, "from":Ljava/lang/String;
    const-string/jumbo v18, "sip:anonymous@anonymous.invalid"

    .line 126
    .local v18, "to":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->getImdnManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->isImdnActivated()Z

    move-result v19

    .line 127
    .local v19, "useImdn":Z
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->getFirstMessage()Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getTextMessage()Ljava/lang/String;

    move-result-object v12

    .line 130
    .local v12, "firstMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->isFileTransferInit:Z

    if-nez v4, :cond_4

    .line 135
    if-nez v19, :cond_5

    .line 142
    invoke-static {v12}, Lcom/sonymobile/rcs/utils/StringUtils;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "text/plain"

    move-object/from16 v0, v18

    invoke-static {v13, v0, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildCpimMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 147
    .local v10, "cpim":Ljava/lang/String;
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "--boundary1\r\nContent-Type: application/sdp\r\nContent-Length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "boundary1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Content-Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "message/cpim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Content-Length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "boundary1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 160
    .local v15, "multipart":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 132
    .end local v10    # "cpim":Ljava/lang/String;
    .end local v15    # "multipart":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->getFirstMessage()Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->getFirstMessage()Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getTextMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/rcs/utils/StringUtils;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "application/vnd.gsma.rcs-ft-http+xml"

    move-object/from16 v0, v18

    invoke-static {v13, v0, v4, v5, v6}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildCpimMessageWithImdn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "cpim":Ljava/lang/String;
    goto/16 :goto_6

    .line 137
    .end local v10    # "cpim":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->getFirstMessage()Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12}, Lcom/sonymobile/rcs/utils/StringUtils;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "text/plain"

    move-object/from16 v0, v18

    invoke-static {v13, v0, v4, v5, v6}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildCpimMessageWithImdn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .restart local v10    # "cpim":Ljava/lang/String;
    goto/16 :goto_6

    .line 177
    .end local v2    # "ipAddress":Ljava/lang/String;
    .end local v3    # "localMsrpPort":I
    .end local v7    # "localSetup":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v10    # "cpim":Ljava/lang/String;
    .end local v12    # "firstMessage":Ljava/lang/String;
    .end local v13    # "from":Ljava/lang/String;
    .end local v16    # "ntpTime":Ljava/lang/String;
    .end local v17    # "sdp":Ljava/lang/String;
    .end local v18    # "to":Ljava/lang/String;
    .end local v19    # "useImdn":Z
    .restart local v11    # "e":Ljava/lang/Exception;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingOne2OneChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session initiation has failed"

    invoke-virtual {v4, v5, v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5
.end method
