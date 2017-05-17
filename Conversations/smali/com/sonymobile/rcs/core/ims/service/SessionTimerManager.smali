.class public Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;
.super Lcom/sonymobile/rcs/utils/PeriodicRefresher;
.source "SessionTimerManager.java"


# instance fields
.field private expirePeriod:I

.field private lastSessionRefresh:J

.field private final logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

.field private refresher:Ljava/lang/String;

.field private session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V
    .locals 1
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/sonymobile/rcs/utils/PeriodicRefresher;-><init>()V

    const-string/jumbo v0, "uas"

    .line 89
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->refresher:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 109
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .line 110
    return-void
.end method

.method private createReInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 231
    :try_start_0
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    if-eqz v10, :cond_1

    .line 243
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->createSetupOffer()Ljava/lang/String;

    move-result-object v6

    .local v6, "localSetup":Ljava/lang/String;
    const/16 v5, 0x9

    .local v5, "localMsrpPort":I
    const-string/jumbo v10, "actpass"

    .line 248
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 253
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->constructNTPtime(J)Ljava/lang/String;

    move-result-object v8

    .line 254
    .local v8, "ntpTime":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v3

    .local v3, "ipAddress":Ljava/lang/String;
    const/4 v9, 0x0

    .line 256
    .local v9, "sdp":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    instance-of v10, v10, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingLiveVideoStreamingSession;

    if-nez v10, :cond_3

    .line 268
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "v=0\r\no=- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "s=-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "c="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "t=0 0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "m=message "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalSocketProtocol()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " *"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "a=path:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "a=setup:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "a=accept-types:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "message/cpim"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "application/im-iscomposing+xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "a=accept-wrapped-types:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "text/plain"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "message/imdn+xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "a=sendrecv"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 281
    .local v9, "sdp":Ljava/lang/String;
    :goto_2
    sget-object v10, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    const-string/jumbo v11, "application"

    const-string/jumbo v12, "sdp"

    invoke-interface {v10, v11, v12}, Ljavax2/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/ContentTypeHeader;

    move-result-object v0

    .line 285
    .local v0, "contentType":Ljavax2/sip/header/ContentTypeHeader;
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v10

    invoke-static {v10, v9, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createReInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/lang/String;Ljavax2/sip/header/ContentTypeHeader;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v10

    return-object v10

    .line 233
    .end local v0    # "contentType":Ljavax2/sip/header/ContentTypeHeader;
    .end local v3    # "ipAddress":Ljava/lang/String;
    .end local v5    # "localMsrpPort":I
    .end local v6    # "localSetup":Ljava/lang/String;
    .end local v8    # "ntpTime":Ljava/lang/String;
    .end local v9    # "sdp":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/utils/NetworkRessourceManager;->generateLocalMsrpPort()I

    move-result v7

    .line 234
    .local v7, "msrpPort":I
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getNetworkAccess()Lcom/sonymobile/rcs/core/access/NetworkAccess;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/access/NetworkAccess;->getIpAddress()Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "localIpAddress":Ljava/lang/String;
    new-instance v10, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-direct {v10, v4, v7}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;-><init>(Ljava/lang/String;I)V

    iput-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    .line 237
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/ImsModule;->isConnectedToWifiAccess()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 238
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSecureMsrpOverWifi()Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->setSecured(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 285
    .end local v4    # "localIpAddress":Ljava/lang/String;
    .end local v7    # "msrpPort":I
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/Exception;
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v10

    if-nez v10, :cond_6

    .line 290
    :goto_3
    new-instance v10, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v11, "Can\'t create SIP INVITE message"

    invoke-direct {v10, v11}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 249
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "localMsrpPort":I
    .restart local v6    # "localSetup":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/sonymobile/rcs/utils/NetworkRessourceManager;->generateLocalMsrpPort()I

    move-result v5

    goto/16 :goto_1

    .line 257
    .restart local v3    # "ipAddress":Ljava/lang/String;
    .restart local v8    # "ntpTime":Ljava/lang/String;
    .local v9, "sdp":Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalContent()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "s="

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .local v2, "indexOfSessionName":I
    const/4 v10, -0x1

    .line 258
    if-eq v2, v10, :cond_5

    .line 264
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "v=0\r\no=- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, "sdp":Ljava/lang/String;
    goto/16 :goto_2

    .line 259
    .local v9, "sdp":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 260
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v11, "Terminating video share session timer refresh has failed"

    invoke-virtual {v10, v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    .line 261
    new-instance v10, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v11, "Can\'t create SIP INVITE message"

    invoke-direct {v10, v11}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 288
    .end local v2    # "indexOfSessionName":I
    .end local v3    # "ipAddress":Ljava/lang/String;
    .end local v5    # "localMsrpPort":I
    .end local v6    # "localSetup":Ljava/lang/String;
    .end local v8    # "ntpTime":Ljava/lang/String;
    .end local v9    # "sdp":Ljava/lang/String;
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_6
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v11, "Can\'t create SIP message"

    invoke-virtual {v10, v11, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method

.method private createSetupAnswer(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "offer"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "actpass"

    .line 606
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "active"

    .line 609
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "passive"

    .line 612
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "passive"

    .line 617
    return-object v0

    :cond_0
    const-string/jumbo v0, "active"

    .line 608
    return-object v0

    :cond_1
    const-string/jumbo v0, "passive"

    .line 611
    return-object v0

    :cond_2
    const-string/jumbo v0, "active"

    .line 614
    return-object v0
.end method

.method private sendReInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 7
    .param p1, "reInvite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;,
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 301
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 305
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getResponseTimeout()I

    move-result v5

    invoke-virtual {v4, p1, v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v0

    .line 309
    .local v0, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipResponse()Z

    move-result v4

    if-nez v4, :cond_1

    .line 415
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v5, "No response received: timeout"

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 302
    .end local v0    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Send RE-INVITE"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    .restart local v0    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    :cond_1
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_3

    .line 341
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v4

    const/16 v5, 0x195

    if-eq v4, v5, :cond_7

    .line 345
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v4

    const/16 v5, 0x197

    if-eq v4, v5, :cond_8

    .line 364
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v4

    const/16 v5, 0x1a6

    if-eq v4, v5, :cond_a

    .line 402
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_e

    .line 407
    :goto_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->abortSession(I)V

    .line 410
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->requestContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .line 417
    :cond_2
    :goto_2
    return-void

    .line 313
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_4

    .line 318
    :goto_3
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sigEstablished()V

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->lastSessionRefresh:J

    .line 324
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_5

    .line 327
    :goto_4
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipAck(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)V

    .line 331
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionEstablished()V

    .line 334
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getStackDialog()Ljavax2/sip/Dialog;

    move-result-object v1

    .line 335
    .local v1, "dlg":Ljavax2/sip/Dialog;
    if-nez v1, :cond_6

    .line 340
    :goto_5
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->startProcessing()V

    goto :goto_2

    .line 314
    .end local v1    # "dlg":Ljavax2/sip/Dialog;
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session timer refresh with success"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 325
    :cond_5
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Send ACK"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 336
    .restart local v1    # "dlg":Ljavax2/sip/Dialog;
    :cond_6
    invoke-interface {v1}, Ljavax2/sip/Dialog;->incrementLocalSequenceNumber()V

    goto :goto_5

    .line 342
    .end local v1    # "dlg":Ljavax2/sip/Dialog;
    :cond_7
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 343
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session timer refresh not supported"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 347
    :cond_8
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_9

    .line 351
    :goto_6
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 354
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->createReInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v3

    .line 357
    .local v3, "newReInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->readProxyAuthenticateHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 360
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 363
    invoke-direct {p0, v3}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->sendReInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto/16 :goto_2

    .line 348
    .end local v3    # "newReInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_9
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "407 response received. Send second RE-INVITE"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_6

    .line 366
    :cond_a
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_b

    .line 371
    :goto_7
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 374
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getMinSessionExpirePeriod(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)I

    move-result v2

    .local v2, "minExpire":I
    const/4 v4, -0x1

    .line 375
    if-eq v2, v4, :cond_c

    .line 389
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setMinSessionExpireTime(I)V

    .line 392
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setSessionExpireTime(I)V

    .line 395
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->createReInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v3

    .line 397
    .restart local v3    # "newReInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 400
    invoke-direct {p0, v3}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->sendReInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto/16 :goto_2

    .line 367
    .end local v2    # "minExpire":I
    .end local v3    # "newReInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_b
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "422 response received"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_7

    .line 376
    .restart local v2    # "minExpire":I
    :cond_c
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_d

    .line 380
    :goto_8
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v4, v6}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->abortSession(I)V

    .line 383
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->requestContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .line 385
    return-void

    .line 377
    :cond_d
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t read the Min-SE value"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_8

    .line 403
    .end local v2    # "minExpire":I
    :cond_e
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session timer refresh has failed: close the session"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private sessionRefreshForUAC()V
    .locals 4

    .prologue
    .line 202
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 207
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 210
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->createReInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .line 213
    .local v1, "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 216
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->sendReInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 222
    .end local v1    # "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_0
    :goto_1
    return-void

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Session timer refresh (UAC role)"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Session timer refresh has failed"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private sessionRefreshForUAS()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 429
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->lastSessionRefresh:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget v1, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->expirePeriod:I

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 431
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 436
    :goto_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->abortSession(I)V

    .line 439
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v1

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->requestContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .line 457
    :goto_3
    return-void

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Session timer refresh (UAS role)"

    invoke-virtual {v1, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_5

    .line 455
    :goto_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->abortSession(I)V

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v1, v2

    .line 429
    goto :goto_1

    .line 432
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Session timer refresh has failed: close the session"

    invoke-virtual {v1, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 443
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_4

    .line 448
    :goto_5
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->startProcessing()V

    goto :goto_3

    .line 444
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Session timer refresh with success"

    invoke-virtual {v1, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 452
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Session timer refresh has failed"

    invoke-virtual {v1, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private startProcessing()V
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->refresher:Ljava/lang/String;

    const-string/jumbo v1, "uac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->expirePeriod:I

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->startTimer(ID)V

    .line 171
    :goto_0
    return-void

    .line 167
    :cond_0
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->expirePeriod:I

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p0, v0, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->startTimer(ID)V

    goto :goto_0
.end method


# virtual methods
.method public isSessionTimerActivated(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Z
    .locals 4
    .param p1, "msg"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getSessionTimerExpire()I

    move-result v0

    .local v0, "expire":I
    const/16 v1, 0x5a

    .line 121
    if-lt v0, v1, :cond_0

    .line 128
    const/4 v1, 0x1

    return v1

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    :goto_0
    return v3

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Session timer not activated"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public periodicProcessing()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->refresher:Ljava/lang/String;

    const-string/jumbo v1, "uac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->sessionRefreshForUAS()V

    .line 194
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->sessionRefreshForUAC()V

    goto :goto_0
.end method

.method public receiveReInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 30
    .param p1, "reInvite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 466
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v27

    if-nez v27, :cond_2

    .line 471
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->lastSessionRefresh:J

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v27

    if-nez v27, :cond_3

    .line 478
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    :cond_0
    :goto_2
    const/16 v23, 0x0

    .line 491
    .local v23, "remoteSdp":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContent()Ljava/lang/String;

    move-result-object v7

    .line 492
    .local v7, "content":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getBoundaryContentType()Ljava/lang/String;

    move-result-object v6

    .line 493
    .local v6, "boundary":Ljava/lang/String;
    new-instance v18, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;

    move-object/from16 v0, v18

    invoke-direct {v0, v7, v6}, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .local v18, "multi":Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;
    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;->isMultipart()Z

    move-result v27

    if-nez v27, :cond_5

    .line 499
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    .line 503
    .local v23, "remoteSdp":[B
    :goto_3
    new-instance v20, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;-><init>([B)V

    .line 504
    .local v20, "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescriptions()Ljava/util/Vector;

    move-result-object v15

    .local v15, "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    const/16 v27, 0x0

    .line 505
    move/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    .local v16, "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    const-string/jumbo v27, "path"

    .line 506
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v4

    .line 508
    .local v4, "attr1":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    if-nez v4, :cond_6

    .line 511
    :goto_4
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->connectionInfo:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractRemoteHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 513
    .local v21, "remoteHost":Ljava/lang/String;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->port:I

    move/from16 v22, v0

    .local v22, "remotePort":I
    const-string/jumbo v24, "passive"

    .local v24, "remoteSetup":Ljava/lang/String;
    const-string/jumbo v27, "setup"

    .line 517
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v5

    .line 518
    .local v5, "attr2":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    if-nez v5, :cond_7

    .line 521
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v27

    if-nez v27, :cond_8

    .line 526
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->createSetupAnswer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 527
    .local v14, "localSetup":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v27

    if-nez v27, :cond_9

    :goto_7
    const-string/jumbo v27, "active"

    .line 533
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_a

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPort()I

    move-result v13

    .line 540
    .local v13, "localMsrpPort":I
    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->constructNTPtime(J)Ljava/lang/String;

    move-result-object v19

    .line 541
    .local v19, "ntpTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v11

    .local v11, "ipAddress":Ljava/lang/String;
    const/16 v26, 0x0

    .line 543
    .local v26, "sdp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    instance-of v0, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;

    move/from16 v27, v0

    if-nez v27, :cond_b

    .line 555
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "v=0\r\no=- "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {v11}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\r\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "s=-"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\r\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "c="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {v11}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\r\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "t=0 0"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\r\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "m=message "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalSocketProtocol()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " *"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\r\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "a=setup:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\r\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "a=accept-types:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "message/cpim"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\r\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "a=accept-wrapped-types:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "text/plain"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "application/im-iscomposing+xml"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\r\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "a=path:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\r\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "a=sendrecv"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\r\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 566
    .local v26, "sdp":Ljava/lang/String;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->create200OkReInviteResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v25

    .line 572
    .local v25, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sigEstablished()V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v8

    .line 579
    .local v8, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipAck()Z

    move-result v27

    if-nez v27, :cond_e

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v27

    if-nez v27, :cond_10

    .line 597
    .end local v4    # "attr1":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v5    # "attr2":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v6    # "boundary":Ljava/lang/String;
    .end local v7    # "content":Ljava/lang/String;
    .end local v8    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v11    # "ipAddress":Ljava/lang/String;
    .end local v13    # "localMsrpPort":I
    .end local v14    # "localSetup":Ljava/lang/String;
    .end local v15    # "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .end local v16    # "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .end local v18    # "multi":Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;
    .end local v19    # "ntpTime":Ljava/lang/String;
    .end local v20    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .end local v21    # "remoteHost":Ljava/lang/String;
    .end local v22    # "remotePort":I
    .end local v23    # "remoteSdp":[B
    .end local v24    # "remoteSetup":Ljava/lang/String;
    .end local v25    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v26    # "sdp":Ljava/lang/String;
    :cond_1
    :goto_a
    return-void

    .line 467
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    const-string/jumbo v28, "Session refresh request received"

    invoke-virtual/range {v27 .. v28}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 596
    :catch_0
    move-exception v9

    .line 593
    .local v9, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    const-string/jumbo v28, "Session timer refresh has failed"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 475
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    const-string/jumbo v28, "Send 200 OK"

    invoke-virtual/range {v27 .. v28}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 480
    :cond_4
    invoke-static {}, Lcom/sonymobile/rcs/utils/NetworkRessourceManager;->generateLocalMsrpPort()I

    move-result v17

    .line 481
    .local v17, "msrpPort":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getNetworkAccess()Lcom/sonymobile/rcs/core/access/NetworkAccess;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/access/NetworkAccess;->getIpAddress()Ljava/lang/String;

    move-result-object v12

    .line 483
    .local v12, "localIpAddress":Ljava/lang/String;
    new-instance v27, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-direct {v0, v12, v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/ImsModule;->isConnectedToWifiAccess()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->mMsrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-object/from16 v27, v0

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSecureMsrpOverWifi()Z

    move-result v28

    invoke-virtual/range {v27 .. v28}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->setSecured(Z)V

    goto/16 :goto_2

    .end local v12    # "localIpAddress":Ljava/lang/String;
    .end local v17    # "msrpPort":I
    .restart local v6    # "boundary":Ljava/lang/String;
    .restart local v7    # "content":Ljava/lang/String;
    .restart local v18    # "multi":Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;
    .local v23, "remoteSdp":[B
    :cond_5
    const-string/jumbo v27, "application/sdp"

    .line 496
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;->getPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    .local v23, "remoteSdp":[B
    goto/16 :goto_3

    .line 509
    .restart local v4    # "attr1":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .restart local v15    # "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .restart local v16    # "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .restart local v20    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    :cond_6
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    goto/16 :goto_4

    .line 519
    .restart local v5    # "attr2":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .restart local v21    # "remoteHost":Ljava/lang/String;
    .restart local v22    # "remotePort":I
    .restart local v24    # "remoteSetup":Ljava/lang/String;
    :cond_7
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_5

    .line 522
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Remote setup attribute is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 528
    .restart local v14    # "localSetup":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Local setup attribute is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_a
    const/16 v13, 0x9

    .line 534
    .restart local v13    # "localMsrpPort":I
    goto/16 :goto_8

    .line 544
    .restart local v11    # "ipAddress":Ljava/lang/String;
    .restart local v19    # "ntpTime":Ljava/lang/String;
    .local v26, "sdp":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalContent()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "s="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .local v10, "indexOfSessionName":I
    const/16 v27, -0x1

    .line 545
    move/from16 v0, v27

    if-eq v10, v0, :cond_d

    .line 551
    :cond_c
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "v=0\r\no=- "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {v11}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\r\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalContent()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .local v26, "sdp":Ljava/lang/String;
    goto/16 :goto_9

    .line 546
    .local v26, "sdp":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v27

    if-eqz v27, :cond_c

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    const-string/jumbo v28, "Terminating video share session timer refresh has failed"

    invoke-virtual/range {v27 .. v28}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    .line 548
    new-instance v27, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v28, "Can\'t create 200OK for RE-INVITE message"

    invoke-direct/range {v27 .. v28}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 581
    .end local v10    # "indexOfSessionName":I
    .restart local v8    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .restart local v25    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .local v26, "sdp":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v27

    if-nez v27, :cond_f

    .line 585
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionEstablished()V

    goto/16 :goto_a

    .line 582
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    const-string/jumbo v28, "ACK request received"

    invoke-virtual/range {v27 .. v28}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_b

    .line 588
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    const-string/jumbo v28, "No ACK received for INVITE"

    invoke-virtual/range {v27 .. v28}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_a
.end method

.method public receiveUpdate(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 4
    .param p1, "update"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 628
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 633
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->lastSessionRefresh:J

    .line 636
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2

    .line 639
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->create200OkUpdateResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    .line 641
    .local v1, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 647
    .end local v1    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    :goto_2
    return-void

    .line 629
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Session refresh request received"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 646
    :catch_0
    move-exception v0

    .line 643
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 644
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Session timer refresh has failed"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 637
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Send 200 OK"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public start(Ljava/lang/String;I)V
    .locals 4
    .param p1, "refresher"    # Ljava/lang/String;
    .param p2, "expirePeriod"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSessionExpireTime()I

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :goto_1
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->refresher:Ljava/lang/String;

    .line 153
    iput p2, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->expirePeriod:I

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->lastSessionRefresh:J

    .line 159
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->startProcessing()V

    .line 160
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Start session timer for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (role="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", expire="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setSessionExpireTime(I)V

    goto :goto_1
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->stopTimer()V

    .line 181
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Stop session timer for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->session:Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
