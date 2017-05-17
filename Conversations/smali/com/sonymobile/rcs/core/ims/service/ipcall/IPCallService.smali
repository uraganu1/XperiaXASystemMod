.class public Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;
.super Lcom/sonymobile/rcs/core/ims/service/ImsService;
.source "IPCallService.java"


# static fields
.field public static final FEATURE_TAGS_IP_VIDEO_CALL:[Ljava/lang/String;

.field public static final FEATURE_TAGS_IP_VOICE_CALL:[Ljava/lang/String;


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private maxSessions:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\""

    aput-object v1, v0, v2

    const-string/jumbo v1, "+g.gsma.rcs.ipcall"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->FEATURE_TAGS_IP_VOICE_CALL:[Ljava/lang/String;

    const/4 v0, 0x3

    .line 44
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\""

    aput-object v1, v0, v2

    const-string/jumbo v1, "+g.gsma.rcs.ipcall"

    aput-object v1, v0, v3

    const-string/jumbo v1, "video"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->FEATURE_TAGS_IP_VIDEO_CALL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/ImsModule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;Z)V

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 65
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMaxIPCallSessions()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->maxSessions:I

    .line 66
    return-void
.end method


# virtual methods
.method public getIPCallSessions()Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 103
    .local v1, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;>;"
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->getSessions()Ljava/util/Enumeration;

    move-result-object v0

    .line 104
    .local v0, "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    return-object v1

    .line 105
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .line 106
    .local v2, "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    .end local v2    # "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public initiateIPCallSession(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;
    .locals 9
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "audioPlayer"    # Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;
    .param p3, "audioRenderer"    # Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;
    .param p4, "videoPlayer"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    .param p5, "videoRenderer"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 125
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 130
    :goto_0
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->maxSessions:I

    if-nez v1, :cond_3

    .line 139
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/core/content/ContentManager;->createGenericLiveAudioContent()Lcom/sonymobile/rcs/core/content/LiveAudioContent;

    move-result-object v3

    .line 140
    .local v3, "liveAudioContent":Lcom/sonymobile/rcs/core/content/LiveAudioContent;
    if-eqz p4, :cond_1

    invoke-static {}, Lcom/sonymobile/rcs/core/content/ContentManager;->createGenericLiveVideoContent()Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    move-result-object v6

    .line 141
    .local v6, "liveVideoContent":Lcom/sonymobile/rcs/core/content/LiveVideoContent;
    :cond_1
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;

    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Lcom/sonymobile/rcs/core/content/LiveAudioContent;Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;Lcom/sonymobile/rcs/core/content/LiveVideoContent;Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V

    .line 152
    .local v0, "session":Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->startSession()V

    .line 153
    return-object v0

    .line 126
    .end local v0    # "session":Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;
    .end local v3    # "liveAudioContent":Lcom/sonymobile/rcs/core/content/LiveAudioContent;
    .end local v6    # "liveVideoContent":Lcom/sonymobile/rcs/core/content/LiveVideoContent;
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Initiate an IP call session"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->getIPCallSessions()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->maxSessions:I

    if-lt v1, v2, :cond_0

    .line 131
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_4

    .line 134
    :goto_1
    new-instance v1, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v2, "Max sessions achieved"

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "The max number of IP call sessions is achieved: cancel the initiation"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isCallConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->getIPCallSessions()Ljava/util/Vector;

    move-result-object v0

    .line 246
    .local v0, "sessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;>;"
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-gtz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isCallConnectedWith(Ljava/lang/String;)Z
    .locals 5
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "connected":Z
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->getIPCallSessions()Ljava/util/Vector;

    move-result-object v3

    .local v3, "sessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;>;"
    const/4 v1, 0x0

    .line 258
    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 265
    :goto_1
    return v0

    .line 259
    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    .line 260
    .local v2, "session":Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->compareNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public receiveCapabilityRequest(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 11
    .param p1, "options"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 186
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getAssertedIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "contact":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_1

    .line 194
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getNetworkAccess()Lcom/sonymobile/rcs/core/access/NetworkAccess;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/access/NetworkAccess;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "ipAddress":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getIPCallService()Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->isCallConnectedWith(Ljava/lang/String;)Z

    move-result v4

    .line 196
    .local v4, "ipcall":Z
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalContact()Ljavax2/sip/header/ContactHeader;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7, v4}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityUtils;->getSupportedFeatureTags(ZZ)Ljava/util/List;

    move-result-object v7

    invoke-static {v3, v4}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityUtils;->buildSdp(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v6, v7, v8}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->create200OkOptionsResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljavax2/sip/header/ContactHeader;Ljava/util/List;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v5

    .line 202
    .local v5, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v3    # "ipAddress":Ljava/lang/String;
    .end local v4    # "ipcall":Z
    .end local v5    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    :goto_1
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityUtils;->extractCapabilities(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v0

    .line 211
    .local v0, "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImSessionSupported()Z

    move-result v6

    if-nez v6, :cond_2

    .line 216
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v6

    invoke-virtual {v6, v1, v0, v10, v9}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactCapabilities(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;II)V

    .line 220
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v6

    invoke-interface {v6, v1, v0}, Lcom/sonymobile/rcs/core/CoreListener;->handleCapabilitiesNotification(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V

    .line 221
    return-void

    .line 189
    .end local v0    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :cond_1
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "OPTIONS request received from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :catch_0
    move-exception v2

    .line 204
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 205
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Can\'t send 200 OK for OPTIONS"

    invoke-virtual {v6, v7, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 213
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v6

    invoke-virtual {v6, v1, v0, v9, v10}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactCapabilities(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;II)V

    goto :goto_2
.end method

.method public receiveIPCallInvitation(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;ZZ)V
    .locals 4
    .param p1, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p2, "audio"    # Z
    .param p3, "video"    # Z

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->getIPCallSessions()Ljava/util/Vector;

    move-result-object v0

    .line 164
    .local v0, "currentSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;>;"
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 174
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 177
    .local v1, "session":Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->startSession()V

    .line 178
    return-void

    .line 166
    .end local v1    # "session":Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    const/16 v2, 0x1e6

    .line 169
    invoke-virtual {p0, p1, v2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 170
    return-void

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "The max number of IP call sessions is achieved: reject the invitation"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->isServiceStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->setServiceStarted(Z)V

    .line 77
    return-void

    .line 74
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->isServiceStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->setServiceStarted(Z)V

    .line 88
    return-void

    .line 85
    :cond_0
    return-void
.end method
