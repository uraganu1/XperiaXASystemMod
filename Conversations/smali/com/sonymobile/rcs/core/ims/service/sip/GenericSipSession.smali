.class public abstract Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;
.super Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
.source "GenericSipSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private mClientId:Ljava/lang/String;

.field private mEnrichedCallingEnabled:Z

.field private mFeatureTag:Ljava/lang/String;

.field protected mMsrpFailureReportOption:Z

.field private mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

.field protected mMsrpSuccessReportOption:Z

.field private remoteSdp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "contact"    # Ljava/lang/String;
    .param p3, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/rcs/core/ims/service/ImsService;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "featureTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;)V

    .line 114
    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    .line 128
    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->remoteSdp:Ljava/lang/String;

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 152
    iput-object p3, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mClientId:Ljava/lang/String;

    .line 155
    invoke-static {}, Lcom/sonymobile/rcs/utils/NetworkRessourceManager;->generateLocalMsrpPort()I

    move-result v3

    .line 156
    .local v3, "localMsrpPort":I
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getNetworkAccess()Lcom/sonymobile/rcs/core/access/NetworkAccess;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/access/NetworkAccess;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "localIpAddress":Ljava/lang/String;
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;-><init>(Ljava/lang/String;ILcom/sonymobile/rcs/core/ims/service/ImsService;)V

    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    .line 159
    invoke-static {}, Lcom/sonymobile/rcs/utils/JoynBrandingUtils;->isEnrichedCallingEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mEnrichedCallingEnabled:Z

    .line 161
    if-nez p4, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    .local v0, "ft":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mEnrichedCallingEnabled:Z

    if-nez v4, :cond_4

    :cond_3
    const-string/jumbo v4, "+g.3gpp.iari-ref"

    .line 169
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 170
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mFeatureTag:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "+g.3gpp.icsi-ref"

    .line 163
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 164
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mClientId:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 167
    :goto_1
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mFeatureTag:Ljava/lang/String;

    goto :goto_0

    .line 165
    :cond_5
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->setClientId(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private appendAcceptTypes()Ljava/lang/String;
    .locals 6

    .prologue
    .line 760
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 762
    .local v1, "type":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "a=accept-types: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 763
    .local v0, "acceptTypes":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "a=accept-wrapped-types: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .local v2, "wrappedTypes":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    .line 765
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

    .line 770
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    .line 775
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    .line 778
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 783
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "text/plain"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v3

    :cond_0
    const-string/jumbo v3, "application/vnd.gsma.encall+xml message/cpim"

    .line 767
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, "message/imdn+xml application/vnd.gsma.rcs-ft-http+xml"

    .line 768
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 769
    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v3

    :cond_1
    const-string/jumbo v3, "application/vnd.gsma.encall+xml application/vnd.gsma.rcs-ft-http+xml"

    .line 772
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 774
    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v3

    .line 777
    :cond_2
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "application/vnd.gsma.sharedsketch+xml"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v3

    .line 780
    :cond_3
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "application/vnd.gsma.sharedmap+xml"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v3
.end method

.method private createInviteRequest(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 5
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 221
    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 226
    .local v0, "featureTags":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-static {v2, v0, p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .line 227
    .local v1, "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    return-object v1
.end method

.method private createInviteRequestEC(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 5
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 238
    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 242
    .local v0, "featureTags":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-static {v2, v0, v0, p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .local v1, "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    const-string/jumbo v2, "P-Preferred-Service"

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "urn:urn-7:3gpp-service.ims.icsi.gsma."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-object v1
.end method

.method private handleCpimMessageData(Ljava/lang/String;[B)V
    .locals 15
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 495
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-nez v12, :cond_1

    .line 499
    :goto_0
    :try_start_0
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;-><init>([B)V

    .line 500
    .local v4, "cpimParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;->getCpimMessage()Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 501
    .local v2, "cpimMsg":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    if-nez v2, :cond_2

    .line 541
    .end local v2    # "cpimMsg":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    .end local v4    # "cpimParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;
    :cond_0
    :goto_1
    return-void

    .line 496
    :cond_1
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "handle CPIM message"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .restart local v2    # "cpimMsg":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    .restart local v4    # "cpimParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;
    :cond_2
    :try_start_1
    const-string/jumbo v12, "imdn.Message-ID"

    .line 502
    invoke-virtual {v2, v12}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, "cpimMsgId":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 506
    :goto_2
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getIMDNRoute()Ljava/lang/String;

    move-result-object v11

    .local v11, "route":Ljava/lang/String;
    const-string/jumbo v12, "From"

    .line 508
    invoke-virtual {v2, v12}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "from":Ljava/lang/String;
    const-string/jumbo v12, "anonymous@anonymous.invalid"

    .line 509
    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_4

    .line 512
    :goto_3
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sonymobile/rcs/utils/StringUtils;->decodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 514
    .local v6, "fileInfo":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "contentType":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->isFileTransferHttpType(Ljava/lang/String;)Z

    move-result v10

    .line 517
    .local v10, "isFToHTTP":Z
    if-nez v10, :cond_5

    .line 526
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->isMessageImdnType(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 527
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->parseDeliveryReport(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;

    move-result-object v9

    .line 528
    .local v9, "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getMsgId()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getStatus()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    const/4 v8, 0x0

    .line 529
    .local v8, "i":I
    :goto_4
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getListeners()Ljava/util/Vector;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    if-ge v8, v12, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getListeners()Ljava/util/Vector;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionListener;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getMsgId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getStatus()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionListener;->handleMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 504
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v6    # "fileInfo":Ljava/lang/String;
    .end local v7    # "from":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    .end local v10    # "isFToHTTP":Z
    .end local v11    # "route":Ljava/lang/String;
    :cond_3
    move-object/from16 v3, p1

    goto :goto_2

    .line 510
    .restart local v7    # "from":Ljava/lang/String;
    .restart local v11    # "route":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .restart local v1    # "contentType":Ljava/lang/String;
    .restart local v6    # "fileInfo":Ljava/lang/String;
    .restart local v10    # "isFToHTTP":Z
    :cond_5
    const-string/jumbo v12, "delivered"

    .line 519
    invoke-virtual {p0, v7, v3, v12, v11}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->sendMsrpMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 522
    .restart local v8    # "i":I
    :goto_5
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getListeners()Ljava/util/Vector;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    if-ge v8, v12, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getListeners()Ljava/util/Vector;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionListener;

    invoke-interface {v12, v3, v6}, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionListener;->handleCpimMessageData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 522
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 540
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v2    # "cpimMsg":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    .end local v3    # "cpimMsgId":Ljava/lang/String;
    .end local v4    # "cpimParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;
    .end local v6    # "fileInfo":Ljava/lang/String;
    .end local v7    # "from":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v10    # "isFToHTTP":Z
    .end local v11    # "route":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 537
    .local v5, "e":Ljava/lang/Exception;
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 538
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v13, "Can\'t parse the CPIM message"

    invoke-virtual {v12, v13, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method private setClientId(Ljava/lang/String;)V
    .locals 4
    .param p1, "featureTag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const-string/jumbo v1, "urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma."

    .line 788
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, "pattern":[Ljava/lang/String;
    array-length v1, v0

    if-gt v1, v2, :cond_0

    .line 792
    :goto_0
    return-void

    .line 790
    :cond_0
    aget-object v1, v0, v2

    const-string/jumbo v2, "\""

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mClientId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public closeMediaSession()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    if-nez v0, :cond_2

    .line 300
    :cond_0
    :goto_1
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "close media session"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->closeSession()V

    .line 296
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "MSRP session has been closed"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public create200OKResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getFeatureTag()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->create200OkInviteResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v0

    .line 750
    .local v0, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    return-object v0
.end method

.method public createInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mEnrichedCallingEnabled:Z

    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalContent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->createInviteRequest(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    return-object v0

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalContent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->createInviteRequestEC(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    return-object v0
.end method

.method public generateSdp(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "setup"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v3, "active"

    .line 717
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 720
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPort()I

    move-result v1

    .line 723
    .local v1, "msrpPort":I
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->constructNTPtime(J)Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, "ntpTime":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, "ipAddress":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "v=0\r\no=- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "s=-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "t=0 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "m=message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalSocketProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " *"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "a=setup:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "a=path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v3, "TCP/TLS/MSRP"

    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalSocketProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, ""

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->appendAcceptTypes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "a=sendrecv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .end local v0    # "ipAddress":Ljava/lang/String;
    .end local v1    # "msrpPort":I
    .end local v2    # "ntpTime":Ljava/lang/String;
    :cond_0
    const/16 v1, 0x9

    .line 718
    .restart local v1    # "msrpPort":I
    goto/16 :goto_0

    .line 726
    .restart local v0    # "ipAddress":Ljava/lang/String;
    .restart local v2    # "ntpTime":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "a=fingerprint:SHA-1 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getClientCertificateFingerprint()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mFeatureTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    return-object v0
.end method

.method public getRemoteSdp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->remoteSdp:Ljava/lang/String;

    return-object v0
.end method

.method public handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V
    .locals 4
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;

    .prologue
    .line 309
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->closeMediaSession()V

    .line 316
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->isSessionEstablished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 321
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    .line 324
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 330
    :cond_0
    return-void

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Session error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_2
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->terminateSession(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 325
    .local v0, "j":I
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionListener;

    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionError;

    invoke-direct {v2, p1}, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionError;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    invoke-interface {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionListener;->handleSessionError(Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionError;)V

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public msrpDataReceived(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 405
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 409
    :goto_0
    if-nez p2, :cond_2

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 414
    :goto_1
    return-void

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Data received (type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_2
    array-length v1, p2

    if-eqz v1, :cond_0

    .line 417
    invoke-static {p3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->isMessageCpimType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x0

    .line 421
    .local v0, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 425
    .end local v0    # "i":I
    :goto_3
    return-void

    .line 412
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "By-pass received empty data"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 418
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->handleCpimMessageData(Ljava/lang/String;[B)V

    goto :goto_3

    .line 422
    .restart local v0    # "i":I
    :cond_5
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionListener;

    invoke-interface {v1, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionListener;->handleReceiveData(Ljava/lang/String;[B)V

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public msrpDataTransfered(Ljava/lang/String;)V
    .locals 3
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 387
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    const/4 v0, 0x0

    .line 392
    .local v0, "j":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 395
    return-void

    .line 388
    .end local v0    # "j":I
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Data transfered"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 393
    .restart local v0    # "j":I
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionListener;

    invoke-interface {v1, p1}, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionListener;->handleContentTransferred(Ljava/lang/String;)V

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public msrpTransferAborted()V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method public msrpTransferError(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V
    .locals 5
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "typeMsrpChunk"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    .prologue
    const/4 v4, 0x0

    .line 645
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->isSessionInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 646
    :cond_0
    return-void

    .line 645
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->isSessionTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 649
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 654
    :goto_0
    invoke-virtual {p0, v4}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->terminateSession(I)V

    .line 657
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->closeMediaSession()V

    .line 660
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/4 v0, 0x0

    .line 663
    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 667
    return-void

    .line 650
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Data transfer error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 664
    .restart local v0    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionListener;

    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionError;

    const/16 v3, 0x8e

    invoke-direct {v2, v3, p2}, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionListener;->handleSessionError(Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionError;)V

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public msrpTransferProgress(JJ)V
    .locals 0
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 616
    return-void
.end method

.method public msrpTransferProgress(JJ[B)Z
    .locals 1
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J
    .param p5, "data"    # [B

    .prologue
    .line 627
    const/4 v0, 0x0

    return v0
.end method

.method public prepareMediaSession()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v9, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;-><init>([B)V

    .line 272
    .local v9, "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescriptions()Ljava/util/Vector;

    move-result-object v7

    .local v7, "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    const/4 v0, 0x0

    .line 273
    invoke-virtual {v7, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    .local v8, "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    const-string/jumbo v0, "path"

    .line 274
    invoke-virtual {v8, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v6

    .line 275
    .local v6, "attr":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "remoteMsrpPath":Ljava/lang/String;
    iget-object v0, v9, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    invoke-static {v0, v8}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractRemoteHost(Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "remoteHost":Ljava/lang/String;
    iget v2, v8, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->port:I

    .line 278
    .local v2, "remotePort":I
    invoke-static {v9, v8}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractFingerprint(Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, "fingerprint":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->createMsrpClientSession(Ljava/lang/String;ILjava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v10

    .line 283
    .local v10, "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mMsrpFailureReportOption:Z

    invoke-virtual {v10, v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setFailureReportOption(Z)V

    .line 284
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mMsrpSuccessReportOption:Z

    invoke-virtual {v10, v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setSuccessReportOption(Z)V

    .line 285
    return-void
.end method

.method public sendCpimMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v3, "message/cpim"

    .line 439
    .local v3, "mime":Ljava/lang/String;
    sget-object v5, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicAddress()Ljava/lang/String;

    move-result-object v2

    .local v2, "from":Ljava/lang/String;
    const-string/jumbo v4, "sip:anonymous@anonymous.invalid"

    .local v4, "to":Ljava/lang/String;
    const-string/jumbo v5, "application/vnd.gsma.rcs-ft-http+xml"

    .line 442
    invoke-static {v2, v4, p1, p2, v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildCpimMessageWithImdn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "cpimContent":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/utils/IdGenerator;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->FileSharing:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    invoke-virtual {p0, v5, v0, v3, v6}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->sendDataChunks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/server/ServerApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 452
    :catch_0
    move-exception v1

    .line 449
    .local v1, "e":Lcom/sonymobile/rcs/service/api/server/ServerApiException;
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 450
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Problem while sending data chunks"

    invoke-virtual {v5, v6, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sendDataChunks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V
    .locals 8
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mime"    # Ljava/lang/String;
    .param p4, "typeMsrpChunk"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 471
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 473
    .local v1, "stream":Ljava/io/ByteArrayInputStream;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v4, v2

    move-object v2, p1

    move-object v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->sendChunks(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;JLcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    return-void

    .line 481
    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v7

    .line 477
    .local v7, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    :goto_0
    new-instance v0, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-direct {v0, v7}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Problem while sending data chunks"

    invoke-virtual {v0, v2, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sendDeliveryReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->sendMsrpMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Send delivery report delivery/display notification"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendEmptyDataChunk()V
    .locals 3

    .prologue
    .line 691
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->sendEmptyChunk()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 696
    :catch_0
    move-exception v0

    .line 693
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 694
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Problem while sending empty data chunk"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sendMessage([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "content"    # [B
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 351
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    :goto_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 355
    .local v1, "stream":Ljava/io/ByteArrayInputStream;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    array-length v2, p1

    int-to-long v4, v2

    sget-object v6, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->Unknown:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->sendChunks(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;JLcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V

    .line 357
    const/4 v0, 0x1

    return v0

    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :cond_0
    const-string/jumbo p3, "application/*"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    goto :goto_0

    .line 357
    :catch_0
    move-exception v7

    .line 360
    .local v7, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    :goto_1
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Problem while sending data chunks"

    invoke-virtual {v0, v2, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public sendMsrpMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "route"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 558
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v5, p4

    .line 560
    .local v5, "recordRoute":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession$1;-><init>(Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 567
    return-void

    .line 558
    .end local v0    # "thread":Ljava/lang/Thread;
    .end local v5    # "recordRoute":Ljava/lang/String;
    :cond_0
    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getIMDNRecordRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public sendMsrpMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;
    .param p4, "msgId"    # Ljava/lang/String;
    .param p5, "status"    # Ljava/lang/String;
    .param p6, "route"    # Ljava/lang/String;

    .prologue
    .line 584
    invoke-static {p4, p5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildDeliveryReport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, "imdn":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 590
    :goto_0
    invoke-static {p2, p3, p6, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildCpimDeliveryReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "content":Ljava/lang/String;
    sget-object v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->OtherMessageDeliveredReportStatus:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    .local v3, "typeMsrpChunk":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;
    const-string/jumbo v4, "displayed"

    .line 592
    invoke-virtual {p5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "delivered"

    .line 594
    invoke-virtual {p5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 599
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "message/cpim"

    invoke-virtual {p0, v4, v0, v5, v3}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->sendDataChunks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/server/ServerApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :cond_0
    :goto_2
    return-void

    .line 587
    .end local v0    # "content":Ljava/lang/String;
    .end local v3    # "typeMsrpChunk":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    .line 593
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v3    # "typeMsrpChunk":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;
    :cond_2
    sget-object v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->MessageDisplayedReport:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    goto :goto_1

    .line 595
    :cond_3
    sget-object v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->MessageDeliveredReport:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    goto :goto_1

    .line 605
    :catch_0
    move-exception v1

    .line 602
    .local v1, "e":Lcom/sonymobile/rcs/service/api/server/ServerApiException;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 603
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t send the delivery status"

    invoke-virtual {v4, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public setMsrpReportOption(ZZ)V
    .locals 0
    .param p1, "msrpFailureReportOption"    # Z
    .param p2, "msrpSuccessReportOption"    # Z

    .prologue
    .line 706
    iput-boolean p1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mMsrpFailureReportOption:Z

    .line 707
    iput-boolean p2, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mMsrpSuccessReportOption:Z

    .line 708
    return-void
.end method

.method public setRemoteSdp(Ljava/lang/String;)V
    .locals 0
    .param p1, "sdp"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->remoteSdp:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public startMediaSession()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 675
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 680
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->openMsrpSession()V

    .line 683
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->sendEmptyDataChunk()V

    .line 684
    return-void

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Start Media session, send empty data chunk"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
