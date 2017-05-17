.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;
.super Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;
.source "RejoinGroupChatSession.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "rejoinId"    # Ljava/lang/String;
    .param p3, "chatId"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/rcs/core/ims/service/ImsService;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p5, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    invoke-direct {v0, p5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;-><init>(Ljava/util/List;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;)V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 63
    if-nez p4, :cond_1

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->createOriginatingDialogPath()V

    .line 71
    invoke-virtual {p0, p3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->setContributionID(Ljava/lang/String;)V

    .line 72
    return-void

    .line 63
    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 64
    invoke-virtual {p0, p4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->setSubject(Ljava/lang/String;)V

    goto :goto_0
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
    .line 138
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->getFeatureTags()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    .local v0, "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    const-string/jumbo v1, "Contribution-ID"

    .line 142
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-object v0
.end method


# virtual methods
.method public createInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalContent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->createInviteRequest(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    return-object v0
.end method

.method public handle404SessionNotFound(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 3
    .param p1, "resp"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    .line 165
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addChatSessionTerminationByRemote(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 168
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;

    const/16 v1, 0x71

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 169
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->createSetupOffer()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "localSetup":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    const-string/jumbo v2, "active"

    .line 91
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPort()I

    move-result v1

    .line 98
    .local v1, "localMsrpPort":I
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "ipAddress":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalSocketProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->getAcceptTypes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->getWrappedTypes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPath()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "sendrecv"

    invoke-static/range {v0 .. v7}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->buildGroupChatSDP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 104
    .local v10, "sdp":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_3

    .line 110
    :goto_3
    invoke-direct {p0, v10}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->createInviteRequest(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v9

    .line 113
    .local v9, "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 116
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 119
    invoke-virtual {p0, v9}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->sendInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 128
    .end local v0    # "ipAddress":Ljava/lang/String;
    .end local v1    # "localMsrpPort":I
    .end local v5    # "localSetup":Ljava/lang/String;
    .end local v9    # "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v10    # "sdp":Ljava/lang/String;
    :goto_4
    return-void

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Rejoin an existing group chat session"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v8

    .line 121
    .local v8, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_4

    .line 126
    :goto_5
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;

    const/4 v3, 0x1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_4

    .line 86
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "localSetup":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Local setup attribute is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const/16 v1, 0x9

    .line 92
    .restart local v1    # "localMsrpPort":I
    goto/16 :goto_2

    .line 108
    .restart local v0    # "ipAddress":Ljava/lang/String;
    .restart local v10    # "sdp":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Send INVITE"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 122
    .end local v0    # "ipAddress":Ljava/lang/String;
    .end local v1    # "localMsrpPort":I
    .end local v5    # "localSetup":Ljava/lang/String;
    .end local v10    # "sdp":Ljava/lang/String;
    .restart local v8    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/RejoinGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Session initiation has failed"

    invoke-virtual {v2, v3, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
