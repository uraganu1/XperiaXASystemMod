.class public Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;
.super Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;
.source "OriginatingIPCallStreamingSession.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Lcom/sonymobile/rcs/core/content/LiveAudioContent;Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;Lcom/sonymobile/rcs/core/content/LiveVideoContent;Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "contact"    # Ljava/lang/String;
    .param p3, "audioContent"    # Lcom/sonymobile/rcs/core/content/LiveAudioContent;
    .param p4, "audioPlayer"    # Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;
    .param p5, "audioRenderer"    # Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;
    .param p6, "videoContent"    # Lcom/sonymobile/rcs/core/content/LiveVideoContent;
    .param p7, "videoPlayer"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    .param p8, "videoRenderer"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Lcom/sonymobile/rcs/core/content/LiveAudioContent;Lcom/sonymobile/rcs/core/content/LiveVideoContent;)V

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 76
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->createOriginatingDialogPath()V

    .line 79
    invoke-virtual {p0, p7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->setVideoPlayer(Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;)V

    .line 82
    invoke-virtual {p0, p8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->setVideoRenderer(Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V

    .line 85
    invoke-virtual {p0, p4}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->setAudioPlayer(Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;)V

    .line 88
    invoke-virtual {p0, p5}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->setAudioRenderer(Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;)V

    .line 90
    return-void
.end method

.method private buildCallInitSdpProposal()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 164
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_1

    .line 170
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->constructNTPtime(J)Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "ntpTime":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "ipAddress":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;->getSupportedAudioCodecs()[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getAudioRenderer()Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;->getLocalRtpPort()I

    move-result v7

    invoke-static {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AudioSdpBuilder;->buildSdpOffer([Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "audioSdp":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 177
    .local v5, "videoSdp":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoContent()Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    move-result-object v6

    if-nez v6, :cond_2

    .line 184
    :cond_0
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "v=0\r\no=- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "s=-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "c="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "t=0 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "a=sendrcv"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 189
    .local v4, "sdp":Ljava/lang/String;
    return-object v4

    .line 165
    .end local v0    # "audioSdp":Ljava/lang/String;
    .end local v2    # "ipAddress":Ljava/lang/String;
    .end local v3    # "ntpTime":Ljava/lang/String;
    .end local v4    # "sdp":Ljava/lang/String;
    .end local v5    # "videoSdp":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Build SDP proposal for call init"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    .restart local v0    # "audioSdp":Ljava/lang/String;
    .restart local v2    # "ipAddress":Ljava/lang/String;
    .restart local v3    # "ntpTime":Ljava/lang/String;
    .restart local v5    # "videoSdp":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->getSupportedVideoCodecs()[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->getLocalRtpPort()I

    move-result v7

    invoke-static {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoSdpBuilder;->buildSdpOfferWithOrientation([Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "a=sendrcv\r\n"

    .line 181
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 189
    .end local v0    # "audioSdp":Ljava/lang/String;
    .end local v2    # "ipAddress":Ljava/lang/String;
    .end local v3    # "ntpTime":Ljava/lang/String;
    .end local v5    # "videoSdp":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_3

    .line 197
    :goto_2
    new-instance v6, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/4 v7, 0x1

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 198
    return-object v9

    .line 193
    :cond_3
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Session initiation has failed"

    invoke-virtual {v6, v7, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method public prepareMediaSession()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 209
    new-instance v5, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-direct {v5, v11}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;-><init>([B)V

    .line 212
    .local v5, "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    iget-object v11, v5, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    iget-object v11, v11, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->connectionInfo:Ljava/lang/String;

    invoke-static {v11}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractRemoteHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "remoteHost":Ljava/lang/String;
    const-string/jumbo v11, "audio"

    .line 215
    invoke-virtual {v5, v11}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescription(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-result-object v3

    .line 216
    .local v3, "mediaAudio":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    iget v1, v3, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->port:I

    .local v1, "audioRemotePort":I
    const-string/jumbo v11, "video"

    .line 217
    invoke-virtual {v5, v11}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescription(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-result-object v4

    .local v4, "mediaVideo":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    const/4 v10, -0x1

    .line 220
    .local v10, "videoRemotePort":I
    if-nez v4, :cond_5

    .line 223
    invoke-virtual {p0, v12}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->setVideoPlayer(Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;)V

    .line 224
    invoke-virtual {p0, v12}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->setVideoRenderer(Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V

    .line 225
    invoke-virtual {p0, v12}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->setVideoContent(Lcom/sonymobile/rcs/core/content/LiveVideoContent;)V

    :goto_0
    const-string/jumbo v11, "audio"

    .line 229
    invoke-virtual {v5, v11}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescriptions(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .line 230
    .local v0, "audio":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AudioCodecManager;->extractAudioCodecsFromSdp(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v6

    .local v6, "proposedAudioCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;>;"
    const-string/jumbo v11, "video"

    .line 233
    invoke-virtual {v5, v11}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescriptions(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v9

    .line 234
    .local v9, "video":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    invoke-static {v9}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->extractVideoCodecsFromSdp(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v7

    .line 237
    .local v7, "proposedVideoCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v11

    invoke-interface {v11}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;->getSupportedAudioCodecs()[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v11

    invoke-static {v11, v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AudioCodecManager;->negociateAudioCodec([Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;Ljava/util/Vector;)Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;

    move-result-object v11

    iput-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->selectedAudioCodec:Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;

    .line 239
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->selectedAudioCodec:Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;

    if-eqz v11, :cond_6

    .line 253
    if-nez v4, :cond_8

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v11

    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->selectedAudioCodec:Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;->setAudioCodec(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)V

    .line 272
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v11

    new-instance v12, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$AudioPlayerEventListener;

    invoke-direct {v12, p0, p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$AudioPlayerEventListener;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    invoke-interface {v11, v12}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;->addListener(Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener;)V

    .line 275
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getAudioRenderer()Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;

    move-result-object v11

    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->selectedAudioCodec:Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;->setAudioCodec(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)V

    .line 276
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getAudioRenderer()Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;

    move-result-object v11

    new-instance v12, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$AudioPlayerEventListener;

    invoke-direct {v12, p0, p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$AudioPlayerEventListener;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    invoke-interface {v11, v12}, Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;->addListener(Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener;)V

    .line 279
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v11

    if-nez v11, :cond_a

    .line 293
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v11

    if-nez v11, :cond_b

    .line 299
    :cond_2
    :goto_2
    if-nez v4, :cond_c

    .line 315
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v11

    if-nez v11, :cond_d

    .line 327
    :cond_4
    :goto_4
    return-void

    .line 221
    .end local v0    # "audio":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .end local v6    # "proposedAudioCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;>;"
    .end local v7    # "proposedVideoCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    .end local v9    # "video":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    :cond_5
    iget v10, v4, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->port:I

    goto :goto_0

    .line 240
    .restart local v0    # "audio":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .restart local v6    # "proposedAudioCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;>;"
    .restart local v7    # "proposedVideoCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    .restart local v9    # "video":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    :cond_6
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v11

    if-nez v11, :cond_7

    .line 245
    :goto_5
    invoke-virtual {p0, v13}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->terminateSession(I)V

    .line 248
    new-instance v11, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/16 v12, 0x9a

    invoke-direct {v11, v12}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(I)V

    invoke-virtual {p0, v11}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 249
    return-void

    .line 241
    :cond_7
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v12, "Proposed audio codecs are not supported"

    invoke-virtual {v11, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_5

    .line 253
    :cond_8
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v11

    invoke-interface {v11}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->getSupportedVideoCodecs()[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v11

    invoke-static {v11, v7}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->negociateVideoCodec([Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;Ljava/util/Vector;)Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    move-result-object v11

    iput-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    .line 256
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    if-nez v11, :cond_0

    .line 257
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v11

    if-nez v11, :cond_9

    .line 262
    :goto_6
    invoke-virtual {p0, v13}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->terminateSession(I)V

    .line 265
    new-instance v11, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/16 v12, 0x9e

    invoke-direct {v11, v12}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(I)V

    invoke-virtual {p0, v11}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 266
    return-void

    .line 258
    :cond_9
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v12, "Proposed video codecs are not supported"

    invoke-virtual {v11, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6

    .line 279
    :cond_a
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    if-eqz v11, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v11

    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->setVideoCodec(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)V

    .line 282
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v11

    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->setVideoCodec(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)V

    .line 283
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 284
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Set video codec in the video renderer: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    invoke-virtual {v13}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->getCodecName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 286
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Set video codec in the video player: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    invoke-virtual {v13}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->getCodecName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 293
    :cond_b
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 294
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v11

    new-instance v12, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;

    invoke-direct {v12, p0, p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    invoke-interface {v11, v12}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->addListener(Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener;)V

    .line 295
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v11

    new-instance v12, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;

    invoke-direct {v12, p0, p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    invoke-interface {v11, v12}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->addListener(Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener;)V

    goto/16 :goto_2

    .line 300
    :cond_c
    invoke-static {v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->create(Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;

    move-result-object v2

    .line 301
    .local v2, "extensionHeader":Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v11

    if-eqz v11, :cond_3

    if-eqz v2, :cond_3

    .line 303
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v11

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->getExtensionId()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->setOrientationHeaderId(I)V

    .line 304
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v11

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->getExtensionId()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->setOrientationHeaderId(I)V

    goto/16 :goto_3

    .line 315
    .end local v2    # "extensionHeader":Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
    :cond_d
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    if-eqz v11, :cond_4

    .line 317
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v11

    invoke-interface {v11, v8, v10}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->open(Ljava/lang/String;I)V

    .line 320
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v11

    invoke-interface {v11, v8, v10}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->open(Ljava/lang/String;I)V

    .line 321
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 322
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Open video renderer with remoteHost ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") and remotePort ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 324
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v12, "Open video player on renderer RTP stream"

    invoke-virtual {v11, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public run()V
    .locals 6

    .prologue
    .line 97
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getAudioContent()Lcom/sonymobile/rcs/core/content/LiveAudioContent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v3

    if-nez v3, :cond_3

    .line 108
    :cond_0
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/16 v4, 0x9a

    const-string/jumbo v5, "Audio codec not selected"

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 110
    return-void

    .line 98
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Initiate a new IP call session as originating"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_8

    .line 154
    :goto_1
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 156
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 103
    :cond_2
    :try_start_1
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/16 v4, 0x9a

    const-string/jumbo v5, "Audio codec not supported"

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 105
    return-void

    .line 107
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;->getAudioCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getAudioRenderer()Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;

    move-result-object v3

    if-nez v3, :cond_5

    .line 113
    :cond_4
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/16 v4, 0x9a

    const-string/jumbo v5, "Audio codec not selected"

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 115
    return-void

    .line 112
    :cond_5
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getAudioRenderer()Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;->getAudioCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 119
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->buildCallInitSdpProposal()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "sdp":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    .line 125
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_6

    .line 129
    :goto_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoContent()Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 135
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->FEATURE_TAGS_IP_VIDEO_CALL:[Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .line 140
    .local v1, "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :goto_4
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 143
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 146
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->sendInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto :goto_2

    .line 126
    .end local v1    # "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_6
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Send INVITE"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_3

    .line 131
    :cond_7
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->FEATURE_TAGS_IP_VOICE_CALL:[Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .restart local v1    # "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    goto :goto_4

    .line 150
    .end local v1    # "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v2    # "sdp":Ljava/lang/String;
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_8
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Session initiation has failed"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method public startMediaSession()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->start()V

    .line 336
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 340
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->start()V

    .line 341
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Start video renderer"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Start video player"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method
