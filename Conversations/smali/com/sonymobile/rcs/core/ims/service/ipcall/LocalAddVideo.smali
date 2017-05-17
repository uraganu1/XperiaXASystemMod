.class public Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;
.super Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;
.source "LocalAddVideo.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V
    .locals 0
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    .line 31
    return-void
.end method

.method private buildAddVideoSdpProposal()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 108
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_1

    .line 114
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->constructNTPtime(J)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "ntpTime":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "ipAddress":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;->getSupportedAudioCodecs()[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;->getLocalRtpPort()I

    move-result v7

    invoke-static {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AudioSdpBuilder;->buildSdpOffer([Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "audioSdp":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 121
    .local v5, "videoSdp":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoContent()Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    move-result-object v6

    if-nez v6, :cond_2

    .line 127
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

    const-string/jumbo v7, "a=sendrcv"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 133
    .local v4, "sdp":Ljava/lang/String;
    return-object v4

    .line 109
    .end local v0    # "audioSdp":Ljava/lang/String;
    .end local v2    # "ipAddress":Ljava/lang/String;
    .end local v3    # "ntpTime":Ljava/lang/String;
    .end local v4    # "sdp":Ljava/lang/String;
    .end local v5    # "videoSdp":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Build SDP proposal to add video stream in the session"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    .restart local v0    # "audioSdp":Ljava/lang/String;
    .restart local v2    # "ipAddress":Ljava/lang/String;
    .restart local v3    # "ntpTime":Ljava/lang/String;
    .restart local v5    # "videoSdp":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 123
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->getSupportedVideoCodecs()[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->getLocalRtpPort()I

    move-result v7

    invoke-static {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoSdpBuilder;->buildSdpOfferWithOrientation([Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto/16 :goto_1

    .line 133
    .end local v0    # "audioSdp":Ljava/lang/String;
    .end local v2    # "ipAddress":Ljava/lang/String;
    .end local v3    # "ntpTime":Ljava/lang/String;
    .end local v5    # "videoSdp":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_3

    .line 141
    :goto_2
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    new-instance v7, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/4 v8, 0x1

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 142
    return-object v10

    .line 137
    :cond_3
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Add video has failed"

    invoke-virtual {v6, v7, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private buildRemoveVideoSdpProposal()Ljava/lang/String;
    .locals 8

    .prologue
    .line 152
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 158
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->constructNTPtime(J)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "ntpTime":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "ipAddress":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;->getLocalRtpPort()I

    .line 162
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;->getSupportedAudioCodecs()[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;->getLocalRtpPort()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AudioSdpBuilder;->buildSdpOffer([Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;I)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "audioSdp":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "v=0\r\no=- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "s=-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "c="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "t=0 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "a=sendrcv"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 153
    .end local v0    # "audioSdp":Ljava/lang/String;
    .end local v2    # "ipAddress":Ljava/lang/String;
    .end local v3    # "ntpTime":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Build SDP proposal to remove video stream from the session"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 175
    :goto_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    new-instance v5, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/4 v6, 0x1

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    const/4 v4, 0x0

    .line 176
    return-object v4

    .line 171
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Remove video has failed"

    invoke-virtual {v4, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public addVideo(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/content/LiveVideoContent;
    .locals 1
    .param p1, "reInvite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/4 v0, 0x0

    .line 182
    return-object v0
.end method

.method public addVideo(Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V
    .locals 5
    .param p1, "videoPlayer"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    .param p2, "videoRenderer"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    .prologue
    const/4 v0, 0x0

    .line 40
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 43
    :goto_0
    monitor-enter p0

    const/4 v3, 0x1

    .line 44
    :try_start_0
    sput v3, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->state:I

    .line 47
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v3, p2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->setVideoRenderer(Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V

    .line 48
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v3, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->setVideoPlayer(Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;)V

    .line 51
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sonymobile/rcs/core/content/ContentManager;->createGenericLiveVideoContent()Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    move-result-object v0

    .line 53
    .local v0, "liveVideoContent":Lcom/sonymobile/rcs/core/content/LiveVideoContent;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->setVideoContent(Lcom/sonymobile/rcs/core/content/LiveVideoContent;)V

    .line 56
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->buildAddVideoSdpProposal()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "sdp":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 69
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    return-void

    .line 41
    .end local v0    # "liveVideoContent":Lcom/sonymobile/rcs/core/content/LiveVideoContent;
    .end local v2    # "sdp":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "addVideo() - LocalAddVideo"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .restart local v0    # "liveVideoContent":Lcom/sonymobile/rcs/core/content/LiveVideoContent;
    .restart local v2    # "sdp":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    .line 62
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getUpdateSessionManager()Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->FEATURE_TAGS_IP_VIDEO_CALL:[Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->createReInvite([Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .line 66
    .local v1, "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getUpdateSessionManager()Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->sendReInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    goto :goto_1

    .line 69
    .end local v0    # "liveVideoContent":Lcom/sonymobile/rcs/core/content/LiveVideoContent;
    .end local v1    # "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v2    # "sdp":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public removeVideo()V
    .locals 5

    .prologue
    .line 76
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    :goto_0
    monitor-enter p0

    const/4 v2, 0x2

    .line 82
    :try_start_0
    sput v2, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->state:I

    .line 85
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->buildRemoveVideoSdpProposal()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "sdp":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 99
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    return-void

    .line 77
    .end local v1    # "sdp":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "removeVideo() - LocalAddVideo"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video status ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoContent()Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    .restart local v1    # "sdp":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getUpdateSessionManager()Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->FEATURE_TAGS_IP_VOICE_CALL:[Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->createReInvite([Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    .line 96
    .local v0, "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getUpdateSessionManager()Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->sendReInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    goto :goto_1

    .line 99
    .end local v0    # "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v1    # "sdp":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeVideo(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 0
    .param p1, "reInvite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 191
    return-void
.end method
