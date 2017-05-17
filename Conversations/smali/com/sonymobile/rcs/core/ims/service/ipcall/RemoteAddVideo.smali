.class public Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;
.super Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;
.source "RemoteAddVideo.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V
    .locals 0
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    .line 32
    return-void
.end method

.method private buildRemoveVideoSdpResponse()Ljava/lang/String;
    .locals 9

    .prologue
    .line 183
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    const-string/jumbo v4, ""

    .line 189
    .local v4, "sdp":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->constructNTPtime(J)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "ntpTime":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "ipAddress":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Build audio sdp"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    .line 194
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;->getLocalRtpPort()I

    .line 195
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;->getAudioCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;->getLocalRtpPort()I

    move-result v6

    invoke-static {v5, v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AudioSdpBuilder;->buildSdpAnswer(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;I)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "audioSdp":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "v=0\r\no=- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "s=-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "c="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "t=0 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "a=sendrcv"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 202
    return-object v4

    .line 184
    .end local v0    # "audioSdp":Ljava/lang/String;
    .end local v2    # "ipAddress":Ljava/lang/String;
    .end local v3    # "ntpTime":Ljava/lang/String;
    .end local v4    # "sdp":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "buildRemoveVideoSdpResponse()"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    .restart local v2    # "ipAddress":Ljava/lang/String;
    .restart local v3    # "ntpTime":Ljava/lang/String;
    .restart local v4    # "sdp":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_1

    .line 209
    :goto_1
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    new-instance v6, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/4 v7, 0x1

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    const/4 v5, 0x0

    .line 210
    return-object v5

    .line 205
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Remove Video has failed"

    invoke-virtual {v5, v6, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public addVideo(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/content/LiveVideoContent;
    .locals 4
    .param p1, "reInvite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 41
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    :goto_0
    monitor-enter p0

    const/4 v1, 0x1

    .line 46
    :try_start_0
    sput v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->state:I

    .line 49
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContentBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/core/content/ContentManager;->createLiveVideoContentFromSdp([B)Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    move-result-object v0

    .line 51
    .local v0, "videocontent":Lcom/sonymobile/rcs/core/content/LiveVideoContent;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1, v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->setVideoContent(Lcom/sonymobile/rcs/core/content/LiveVideoContent;)V

    .line 54
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getUpdateSessionManager()Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->FEATURE_TAGS_IP_VIDEO_CALL:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->waitUserAckAndSendReInviteResp(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;[Ljava/lang/String;I)V

    .line 57
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 42
    .end local v0    # "videocontent":Lcom/sonymobile/rcs/core/content/LiveVideoContent;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "addVideo() - RemoteAddVideo"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public addVideo(Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V
    .locals 0
    .param p1, "videoPlayer"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    .param p2, "videoRenderer"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    .prologue
    .line 217
    return-void
.end method

.method public buildAddVideoSdpResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;
    .locals 14
    .param p1, "reInvite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 97
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v10

    if-nez v10, :cond_1

    :goto_0
    const-string/jumbo v8, ""

    .line 104
    .local v8, "sdp":Ljava/lang/String;
    new-instance v6, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getSdpContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-direct {v6, v10}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;-><init>([B)V

    .local v6, "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    const-string/jumbo v10, "video"

    .line 105
    invoke-virtual {v6, v10}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescription(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-result-object v3

    .local v3, "mediaVideo":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    const-string/jumbo v10, "video"

    .line 108
    invoke-virtual {v6, v10}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescriptions(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v4

    .line 109
    .local v4, "medias":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    invoke-static {v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->extractVideoCodecsFromSdp(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v7

    .line 113
    .local v7, "proposedVideoCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    :try_start_0
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 119
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v10

    if-nez v10, :cond_3

    .line 121
    :cond_0
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    new-instance v11, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/16 v12, 0x9e

    const-string/jumbo v13, "Video renderer null or Video codec not selected"

    invoke-direct {v11, v12, v13}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x0

    .line 123
    return-object v10

    .line 98
    .end local v3    # "mediaVideo":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .end local v4    # "medias":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .end local v6    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .end local v7    # "proposedVideoCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    .end local v8    # "sdp":Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v11, "buildAddVideoSdpResponse()"

    invoke-virtual {v10, v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .restart local v3    # "mediaVideo":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .restart local v4    # "medias":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .restart local v6    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .restart local v7    # "proposedVideoCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    .restart local v8    # "sdp":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    new-instance v11, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/16 v12, 0x9e

    const-string/jumbo v13, "Video player null or Video codec not selected"

    invoke-direct {v11, v12, v13}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    const/4 v10, 0x0

    .line 116
    return-object v10

    .line 119
    :cond_3
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v10

    invoke-interface {v10}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->getVideoCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 127
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v11

    invoke-interface {v11}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->getSupportedVideoCodecs()[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v11

    invoke-static {v11, v7}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->negociateVideoCodec([Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;Ljava/util/Vector;)Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    move-result-object v11

    iput-object v11, v10, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    .line 130
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    iget-object v10, v10, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    if-eqz v10, :cond_5

    .line 153
    :cond_4
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->constructNTPtime(J)Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, "ntpTime":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "ipAddress":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    iget-object v10, v10, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v10

    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v11

    invoke-interface {v11}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->getLocalRtpPort()I

    move-result v11

    invoke-static {v10, v11, v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoSdpBuilder;->buildSdpAnswer(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;ILcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Ljava/lang/String;

    move-result-object v9

    .line 157
    .local v9, "videoSdp":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v10

    invoke-interface {v10}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;->getAudioCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v10

    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getAudioRenderer()Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;

    move-result-object v11

    invoke-interface {v11}, Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;->getLocalRtpPort()I

    move-result v11

    invoke-static {v10, v11}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AudioSdpBuilder;->buildSdpAnswer(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "audioSdp":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "v=0\r\no=- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "a=sendrcv"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "a=sendrcv"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 164
    return-object v8

    .line 133
    .end local v0    # "audioSdp":Ljava/lang/String;
    .end local v2    # "ipAddress":Ljava/lang/String;
    .end local v5    # "ntpTime":Ljava/lang/String;
    .end local v9    # "videoSdp":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v11

    invoke-interface {v11}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->getSupportedVideoCodecs()[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v11

    invoke-static {v11}, Lcom/sonymobile/rcs/utils/CodecsUtils;->getVideoCodecProfile1b([Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    move-result-object v11

    iput-object v11, v10, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    .line 135
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    iget-object v10, v10, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    if-nez v10, :cond_6

    .line 139
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v10

    if-nez v10, :cond_7

    .line 144
    :goto_2
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v10, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->send415Error(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 147
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    new-instance v11, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/16 v12, 0x9e

    invoke-direct {v11, v12}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(I)V

    invoke-virtual {v10, v11}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    const/4 v10, 0x0

    .line 148
    return-object v10

    .line 136
    :cond_6
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 137
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v11, "Video codec profile 1B is selected by default"

    invoke-virtual {v10, v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 164
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v10

    if-nez v10, :cond_8

    .line 171
    :goto_3
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    new-instance v11, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/4 v12, 0x1

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    const/4 v10, 0x0

    .line 172
    return-object v10

    .line 140
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7
    :try_start_2
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v11, "Proposed codecs are not supported"

    invoke-virtual {v10, v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 167
    .restart local v1    # "e":Landroid/os/RemoteException;
    :cond_8
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v11, "Remove Video has failed"

    invoke-virtual {v10, v11, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public prepareVideoSession()V
    .locals 10

    .prologue
    .line 227
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_0

    .line 231
    :goto_0
    new-instance v3, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;-><init>([B)V

    .local v3, "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    const-string/jumbo v6, "video"

    .line 232
    invoke-virtual {v3, v6}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescription(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-result-object v2

    .line 233
    .local v2, "mediaVideo":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    iget-object v6, v3, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    iget-object v6, v6, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->connectionInfo:Ljava/lang/String;

    invoke-static {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractRemoteHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, "remoteHost":Ljava/lang/String;
    iget v5, v2, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->port:I

    .line 264
    .local v5, "remotePort":I
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    iget-object v7, v7, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->setVideoCodec(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)V

    .line 265
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    iget-object v7, v7, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->setVideoCodec(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)V

    .line 268
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->create(Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;

    move-result-object v1

    .line 269
    .local v1, "extensionHeader":Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
    if-nez v1, :cond_1

    .line 275
    :goto_1
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v6

    new-instance v7, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-direct {v7, v8, v9}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    invoke-interface {v6, v7}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->addListener(Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener;)V

    .line 276
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v6

    new-instance v7, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-direct {v7, v8, v9}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    invoke-interface {v6, v7}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->addListener(Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener;)V

    .line 279
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v6

    invoke-interface {v6, v4, v5}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->open(Ljava/lang/String;I)V

    .line 280
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v6

    invoke-interface {v6, v4, v5}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->open(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v1    # "extensionHeader":Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
    :goto_2
    return-void

    .line 228
    .end local v2    # "mediaVideo":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .end local v3    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .end local v4    # "remoteHost":Ljava/lang/String;
    .end local v5    # "remotePort":I
    :cond_0
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "prepareVideoSession()"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 270
    .restart local v1    # "extensionHeader":Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
    .restart local v2    # "mediaVideo":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .restart local v3    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .restart local v4    # "remoteHost":Ljava/lang/String;
    .restart local v5    # "remotePort":I
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->getExtensionId()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->setOrientationHeaderId(I)V

    .line 271
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->getExtensionId()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->setOrientationHeaderId(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 289
    .end local v1    # "extensionHeader":Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_2

    .line 287
    :goto_3
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    new-instance v7, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(I)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_2

    .line 284
    :cond_2
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Prepare Video session has failed"

    invoke-virtual {v6, v7, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public removeVideo()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public removeVideo(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 4
    .param p1, "reInvite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    :goto_0
    monitor-enter p0

    const/4 v1, 0x2

    .line 72
    :try_start_0
    sput v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->state:I

    .line 75
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->buildRemoveVideoSdpResponse()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "sdp":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 87
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    return-void

    .line 68
    .end local v0    # "sdp":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "removeVideo() - RemoteAddVideo"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .restart local v0    # "sdp":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getUpdateSessionManager()Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->FEATURE_TAGS_IP_VOICE_CALL:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->send200OkReInviteResp(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;[Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 87
    .end local v0    # "sdp":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
