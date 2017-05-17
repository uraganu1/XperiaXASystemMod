.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;
.super Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;
.source "OriginatingAdhocGroupChatSession.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;)V
    .locals 2
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "conferenceId"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "participants"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;)V

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 71
    if-nez p3, :cond_1

    .line 76
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->createOriginatingDialogPath()V

    .line 79
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ContributionIdGenerator;->getContributionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->setContributionID(Ljava/lang/String;)V

    .line 81
    return-void

    .line 71
    .end local v0    # "id":Ljava/lang/String;
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 72
    invoke-virtual {p0, p3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->setSubject(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createInviteRequest(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->getFeatureTags()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "boundary1"

    invoke-static {v1, v2, p1, v3}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createMultipartInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    .line 166
    .local v0, "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->getSubject()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    const-string/jumbo v1, "Require"

    const-string/jumbo v2, "recipient-list-invite"

    .line 172
    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Contribution-ID"

    .line 175
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-object v0

    :cond_0
    const-string/jumbo v1, "Subject"

    .line 168
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/StringUtils;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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
    .line 187
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalContent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->createInviteRequest(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 13

    .prologue
    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->createSetupOffer()Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, "localSetup":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    const-string/jumbo v2, "active"

    .line 100
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPort()I

    move-result v1

    .line 107
    .local v1, "localMsrpPort":I
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "ipAddress":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalSocketProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->getAcceptTypes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->getWrappedTypes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPath()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "sendrecv"

    invoke-static/range {v0 .. v7}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->buildGroupChatSDP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 113
    .local v12, "sdp":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateChatResourceList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    .line 116
    .local v11, "resourceList":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "--boundary1\r\nContent-Type: application/sdp\r\nContent-Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "boundary1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Content-Type: application/resource-lists+xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Content-Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Content-Disposition: recipient-list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "boundary1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 127
    .local v10, "multipart":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_3

    .line 133
    :goto_3
    invoke-direct {p0, v10}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->createInviteRequest(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v9

    .line 136
    .local v9, "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 139
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 142
    invoke-virtual {p0, v9}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->sendInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 151
    .end local v0    # "ipAddress":Ljava/lang/String;
    .end local v1    # "localMsrpPort":I
    .end local v5    # "localSetup":Ljava/lang/String;
    .end local v9    # "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v10    # "multipart":Ljava/lang/String;
    .end local v11    # "resourceList":Ljava/lang/String;
    .end local v12    # "sdp":Ljava/lang/String;
    :goto_4
    return-void

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Initiate a new ad-hoc group chat session as originating"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 150
    :catch_0
    move-exception v8

    .line 144
    .local v8, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_4

    .line 149
    :goto_5
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;

    const/4 v3, 0x1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_4

    .line 95
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "localSetup":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    .line 101
    .restart local v1    # "localMsrpPort":I
    goto/16 :goto_2

    .line 131
    .restart local v0    # "ipAddress":Ljava/lang/String;
    .restart local v10    # "multipart":Ljava/lang/String;
    .restart local v11    # "resourceList":Ljava/lang/String;
    .restart local v12    # "sdp":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Send INVITE"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 145
    .end local v0    # "ipAddress":Ljava/lang/String;
    .end local v1    # "localMsrpPort":I
    .end local v5    # "localSetup":Ljava/lang/String;
    .end local v10    # "multipart":Ljava/lang/String;
    .end local v11    # "resourceList":Ljava/lang/String;
    .end local v12    # "sdp":Ljava/lang/String;
    .restart local v8    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/OriginatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Session initiation has failed"

    invoke-virtual {v2, v3, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
