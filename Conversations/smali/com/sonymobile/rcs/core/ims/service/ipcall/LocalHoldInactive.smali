.class public Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;
.super Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;
.source "LocalHoldInactive.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V
    .locals 0
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    .line 19
    return-void
.end method

.method private buildCallHoldSdpProposal(Z)Ljava/lang/String;
    .locals 12
    .param p1, "action"    # Z

    .prologue
    const/4 v11, 0x0

    .line 65
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_1

    .line 70
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->constructNTPtime(J)Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "ntpTime":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "ipAddress":Ljava/lang/String;
    if-nez p1, :cond_2

    const-string/jumbo v0, "a=sendrcv"

    .line 75
    .local v0, "aVar":Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v8

    invoke-interface {v8}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;->getSupportedAudioCodecs()[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v9

    invoke-interface {v9}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;->getLocalRtpPort()I

    move-result v9

    invoke-static {v8, v9}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AudioSdpBuilder;->buildSdpOffer([Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "audioSdp":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 80
    .local v6, "videoSdp":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoContent()Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    move-result-object v7

    if-nez v7, :cond_3

    .line 87
    :cond_0
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "v=0\r\no=- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "s=-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "t=0 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 92
    .local v5, "sdp":Ljava/lang/String;
    return-object v5

    .line 66
    .end local v0    # "aVar":Ljava/lang/String;
    .end local v1    # "audioSdp":Ljava/lang/String;
    .end local v3    # "ipAddress":Ljava/lang/String;
    .end local v4    # "ntpTime":Ljava/lang/String;
    .end local v5    # "sdp":Ljava/lang/String;
    .end local v6    # "videoSdp":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "setCallHold - Inactive"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v3    # "ipAddress":Ljava/lang/String;
    .restart local v4    # "ntpTime":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v0, "a=inactive"

    goto/16 :goto_1

    .line 80
    .restart local v0    # "aVar":Ljava/lang/String;
    .restart local v1    # "audioSdp":Ljava/lang/String;
    .restart local v6    # "videoSdp":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 82
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v8

    invoke-interface {v8}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->getSupportedVideoCodecs()[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v9

    invoke-interface {v9}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->getLocalRtpPort()I

    move-result v9

    invoke-static {v8, v9}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoSdpBuilder;->buildSdpOfferWithOrientation([Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto/16 :goto_2

    .line 92
    .end local v0    # "aVar":Ljava/lang/String;
    .end local v1    # "audioSdp":Ljava/lang/String;
    .end local v3    # "ipAddress":Ljava/lang/String;
    .end local v4    # "ntpTime":Ljava/lang/String;
    .end local v6    # "videoSdp":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_4

    .line 100
    :goto_3
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    new-instance v8, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/4 v9, 0x1

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 101
    return-object v11

    .line 96
    :cond_4
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "build CallHold SdpProposal has failed"

    invoke-virtual {v7, v8, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method


# virtual methods
.method public holdMediaSession()V
    .locals 4

    .prologue
    .line 229
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v2

    if-nez v2, :cond_2

    .line 243
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_1
    :goto_1
    const/4 v2, 0x2

    .line 258
    sput v2, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->state:I

    .line 259
    return-void

    .line 232
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->stop()V

    .line 233
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->close()V

    .line 234
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Stop and close video renderer"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Exception when closing the video renderer"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 246
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->stop()V

    .line 247
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->close()V

    .line 248
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "stop and close video player"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 255
    :catch_1
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Exception when closing the video player"

    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public resumeMediaSession()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 110
    new-instance v5, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;

    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;-><init>([B)V

    .line 114
    .local v5, "remoteParser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    iget-object v7, v5, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    iget-object v7, v7, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->connectionInfo:Ljava/lang/String;

    invoke-static {v7}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractRemoteHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "remoteHost":Ljava/lang/String;
    const-string/jumbo v7, "audio"

    .line 118
    invoke-virtual {v5, v7}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescription(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-result-object v2

    .line 119
    .local v2, "mediaAudio":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    iget v0, v2, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->port:I

    .local v0, "audioRemotePort":I
    const-string/jumbo v7, "video"

    .line 122
    invoke-virtual {v5, v7}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescription(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-result-object v3

    .local v3, "mediaVideo":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    const/4 v6, -0x1

    .line 125
    .local v6, "videoRemotePort":I
    if-nez v3, :cond_2

    .line 129
    :goto_0
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_3

    .line 149
    :goto_1
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v7

    if-nez v7, :cond_4

    .line 175
    :cond_0
    :goto_2
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v7

    if-nez v7, :cond_6

    .line 193
    :cond_1
    :goto_3
    sput v10, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->state:I

    .line 194
    return-void

    .line 126
    :cond_2
    iget v6, v3, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->port:I

    goto :goto_0

    .line 130
    :cond_3
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Extract Audio/Video ports - Done"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 149
    :cond_4
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 151
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v7

    invoke-interface {v7, v4, v6}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->open(Ljava/lang/String;I)V

    .line 153
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v7

    invoke-interface {v7, v4, v6}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->open(Ljava/lang/String;I)V

    .line 154
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 155
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Open video renderer with remoteHost ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") and remotePort ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 157
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Open video player on renderer RTP stream"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 167
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_5

    .line 165
    :goto_4
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    new-instance v8, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v11, v9}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto/16 :goto_2

    .line 161
    :cond_5
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Open video player/renderer has failed"

    invoke-virtual {v7, v8, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 175
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 177
    :try_start_1
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_7

    .line 180
    :goto_5
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->start()V

    .line 181
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->start()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 189
    :catch_1
    move-exception v1

    .line 183
    .restart local v1    # "e":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_8

    .line 187
    :goto_6
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    new-instance v8, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v11, v9}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto/16 :goto_3

    .line 178
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7
    :try_start_2
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Start video player and renderer"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 184
    .restart local v1    # "e":Landroid/os/RemoteException;
    :cond_8
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "start video player/renderer has failed"

    invoke-virtual {v7, v8, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public setCallHold(Z)V
    .locals 6
    .param p1, "callHoldAction"    # Z

    .prologue
    const/4 v2, 0x3

    .line 28
    monitor-enter p0

    .line 30
    if-nez p1, :cond_0

    move v4, v2

    :goto_0
    :try_start_0
    sput v4, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->state:I

    .line 34
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->buildCallHoldSdpProposal(Z)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "sdp":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 41
    .local v0, "featureTags":[Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    const-string/jumbo v5, "m=video"

    invoke-virtual {v4, v3, v5}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isTagPresent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 44
    sget-object v0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->FEATURE_TAGS_IP_VOICE_CALL:[Ljava/lang/String;

    .line 48
    .local v0, "featureTags":[Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getUpdateSessionManager()Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->createReInvite([Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .line 52
    .local v1, "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    if-nez p1, :cond_2

    .line 54
    .local v2, "requestType":I
    :goto_2
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getUpdateSessionManager()Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->sendReInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 55
    monitor-exit p0

    .line 56
    return-void

    .end local v0    # "featureTags":[Ljava/lang/String;
    .end local v1    # "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v2    # "requestType":I
    .end local v3    # "sdp":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x1

    .line 30
    goto :goto_0

    .line 42
    .local v0, "featureTags":[Ljava/lang/String;
    .restart local v3    # "sdp":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->FEATURE_TAGS_IP_VIDEO_CALL:[Ljava/lang/String;

    .local v0, "featureTags":[Ljava/lang/String;
    goto :goto_1

    .restart local v1    # "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_2
    const/4 v2, 0x2

    .line 52
    goto :goto_2

    .line 55
    .end local v0    # "featureTags":[Ljava/lang/String;
    .end local v1    # "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v3    # "sdp":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setCallHold(ZLcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 0
    .param p1, "callHoldAction"    # Z
    .param p2, "reInvite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 263
    return-void
.end method
