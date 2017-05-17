.class public Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;
.super Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;
.source "OriginatingVideoStreamingSession.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "player"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    .param p3, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p4, "contact"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1, p3, p4}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 66
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->createOriginatingDialogPath()V

    .line 69
    invoke-virtual {p0, p2}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->setVideoPlayer(Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;)V

    .line 70
    return-void
.end method


# virtual methods
.method public closeMediaSession()V
    .locals 3

    .prologue
    .line 190
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->stop()V

    .line 192
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Exception when closing the media renderer"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public prepareMediaSession()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 130
    new-instance v3, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;-><init>([B)V

    .local v3, "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    const-string/jumbo v8, "video"

    .line 131
    invoke-virtual {v3, v8}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescription(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-result-object v1

    .line 132
    .local v1, "mediaVideo":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    iget-object v8, v3, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    invoke-static {v8, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractRemoteHost(Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "remoteHost":Ljava/lang/String;
    iget v6, v1, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->port:I

    .local v6, "remotePort":I
    const-string/jumbo v8, "video"

    .line 136
    invoke-virtual {v3, v8}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescriptions(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    .line 137
    .local v2, "medias":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->extractVideoCodecsFromSdp(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v4

    .line 140
    .local v4, "proposedCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    invoke-static {v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->negociateVideoCodec(Ljava/util/Vector;)Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    move-result-object v7

    .line 141
    .local v7, "selectedVideoCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_0

    .line 144
    :goto_0
    if-eqz v7, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "video/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/core/content/MmContent;->setEncoding(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v8

    invoke-virtual {v7}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->setVideoCodec(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)V

    .line 162
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->create(Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;

    move-result-object v0

    .line 163
    .local v0, "extensionHeader":Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
    if-nez v0, :cond_3

    .line 168
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v8

    new-instance v9, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;

    invoke-direct {v9, p0, p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;-><init>(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)V

    invoke-interface {v8, v9}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->addListener(Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener;)V

    .line 171
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v8

    invoke-interface {v8, v5, v6}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->open(Ljava/lang/String;I)V

    .line 172
    return-void

    .line 142
    .end local v0    # "extensionHeader":Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
    :cond_0
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Originating:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_2

    .line 150
    :goto_2
    invoke-virtual {p0, v11}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->terminateSession(I)V

    .line 153
    new-instance v8, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    const/16 v9, 0x86

    invoke-direct {v8, v9}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(I)V

    invoke-virtual {p0, v8}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 154
    return-void

    .line 146
    :cond_2
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Proposed codecs are not supported"

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 164
    .restart local v0    # "extensionHeader":Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v8

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->getExtensionId()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->setOrientationHeaderId(I)V

    goto :goto_1
.end method

.method public run()V
    .locals 8

    .prologue
    .line 77
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_1

    .line 82
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v5

    if-nez v5, :cond_2

    .line 83
    :cond_0
    new-instance v5, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    const/16 v6, 0x86

    const-string/jumbo v7, "Video codec not selected"

    invoke-direct {v5, v6, v7}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 85
    return-void

    .line 78
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Initiate a new live video sharing session as originating"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_4

    .line 118
    :goto_1
    new-instance v5, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 82
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->getVideoCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "ipAddress":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->getSupportedVideoCodecs()[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->getLocalRtpPort()I

    move-result v6

    invoke-static {v5, v6}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoSdpBuilder;->buildSdpOfferWithOrientation([Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;I)Ljava/lang/String;

    move-result-object v4

    .local v4, "videoSdp":Ljava/lang/String;
    const-string/jumbo v5, "sendonly"

    .line 92
    invoke-static {v2, v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->buildVideoSDP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "sdp":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    .line 98
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_3

    .line 101
    :goto_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->FEATURE_TAGS_VIDEO_SHARE:[Ljava/lang/String;

    invoke-static {v5, v6, v3}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .line 105
    .local v1, "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 108
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 111
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->sendInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto :goto_2

    .line 99
    .end local v1    # "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_3
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Send INVITE"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 114
    .end local v2    # "ipAddress":Ljava/lang/String;
    .end local v3    # "sdp":Ljava/lang/String;
    .end local v4    # "videoSdp":Ljava/lang/String;
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Session initiation has failed"

    invoke-virtual {v5, v6, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public startMediaSession()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->start()V

    .line 182
    return-void
.end method
