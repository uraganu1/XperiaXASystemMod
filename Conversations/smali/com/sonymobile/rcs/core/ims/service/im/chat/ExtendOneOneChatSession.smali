.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;
.super Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;
.source "ExtendOneOneChatSession.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private oneoneSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;)V
    .locals 2
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "conferenceId"    # Ljava/lang/String;
    .param p3, "oneoneSession"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "participants"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;)V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 77
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->createOriginatingDialogPath()V

    .line 84
    iput-object p3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->oneoneSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;

    .line 87
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ContributionIdGenerator;->getContributionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->setContributionID(Ljava/lang/String;)V

    .line 89
    return-void

    .line 78
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->setSubject(Ljava/lang/String;)V

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
    .line 174
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->CHAT_FEATURE_TAGS:[Ljava/lang/String;

    const-string/jumbo v3, "boundary1"

    invoke-static {v1, v2, p1, v3}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createMultipartInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    .line 178
    .local v0, "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->getSubject()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    const-string/jumbo v1, "Require"

    const-string/jumbo v2, "recipient-list-invite"

    .line 184
    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Contribution-ID"

    .line 187
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-object v0

    :cond_0
    const-string/jumbo v1, "Subject"

    .line 180
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->getSubject()Ljava/lang/String;

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
    .line 199
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalContent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->createInviteRequest(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    return-object v0
.end method

.method public handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V
    .locals 3
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;

    .prologue
    const/4 v0, 0x0

    .line 228
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->oneoneSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 234
    invoke-super {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 235
    return-void

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->oneoneSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleAddParticipantFailed(Ljava/lang/String;)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public run()V
    .locals 15

    .prologue
    .line 96
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->createSetupOffer()Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "localSetup":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    const-string/jumbo v2, "active"

    .line 108
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPort()I

    move-result v1

    .line 115
    .local v1, "localMsrpPort":I
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "ipAddress":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalSocketProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->getAcceptTypes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->getWrappedTypes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPath()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "sendrecv"

    invoke-static/range {v0 .. v7}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->buildGroupChatSDP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 121
    .local v14, "sdp":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->oneoneSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 122
    .local v9, "existingParticipant":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ";method=INVITE?Session-Replaces="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->oneoneSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 124
    .local v12, "replaceHeader":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;

    move-result-object v2

    invoke-static {v9, v12, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateExtendedChatResourceList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v13

    .line 128
    .local v13, "resourceList":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "--boundary1\r\nContent-Type: application/sdp\r\nContent-Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

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

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

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

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    move-result-object v11

    .line 139
    .local v11, "multipart":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_3

    .line 145
    :goto_3
    invoke-direct {p0, v11}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->createInviteRequest(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v10

    .line 148
    .local v10, "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 151
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 154
    invoke-virtual {p0, v10}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->sendInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 163
    .end local v0    # "ipAddress":Ljava/lang/String;
    .end local v1    # "localMsrpPort":I
    .end local v5    # "localSetup":Ljava/lang/String;
    .end local v9    # "existingParticipant":Ljava/lang/String;
    .end local v10    # "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v11    # "multipart":Ljava/lang/String;
    .end local v12    # "replaceHeader":Ljava/lang/String;
    .end local v13    # "resourceList":Ljava/lang/String;
    .end local v14    # "sdp":Ljava/lang/String;
    :goto_4
    return-void

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Extends a 1-1 session"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 162
    :catch_0
    move-exception v8

    .line 156
    .local v8, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_4

    .line 161
    :goto_5
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;

    const/4 v3, 0x1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_4

    .line 103
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "localSetup":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    .line 109
    .restart local v1    # "localMsrpPort":I
    goto/16 :goto_2

    .line 143
    .restart local v0    # "ipAddress":Ljava/lang/String;
    .restart local v9    # "existingParticipant":Ljava/lang/String;
    .restart local v11    # "multipart":Ljava/lang/String;
    .restart local v12    # "replaceHeader":Ljava/lang/String;
    .restart local v13    # "resourceList":Ljava/lang/String;
    .restart local v14    # "sdp":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Send INVITE"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 157
    .end local v0    # "ipAddress":Ljava/lang/String;
    .end local v1    # "localMsrpPort":I
    .end local v5    # "localSetup":Ljava/lang/String;
    .end local v9    # "existingParticipant":Ljava/lang/String;
    .end local v11    # "multipart":Ljava/lang/String;
    .end local v12    # "replaceHeader":Ljava/lang/String;
    .end local v13    # "resourceList":Ljava/lang/String;
    .end local v14    # "sdp":Ljava/lang/String;
    .restart local v8    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Session initiation has failed"

    invoke-virtual {v2, v3, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public startMediaSession()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 208
    invoke-super {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->startMediaSession()V

    const/4 v0, 0x0

    .line 211
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->oneoneSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->oneoneSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;

    invoke-interface {v1, p0, v2}, Lcom/sonymobile/rcs/core/CoreListener;->handleOneOneChatSessionExtended(Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;)V

    .line 219
    return-void

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ExtendOneOneChatSession;->oneoneSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    invoke-interface {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleAddParticipantSuccessful()V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
