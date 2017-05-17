.class public abstract Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;
.super Ljava/lang/Object;
.source "AddVideoManager.java"


# static fields
.field protected static state:I


# instance fields
.field protected logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V
    .locals 3
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 58
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    :goto_0
    sput v2, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->state:I

    .line 62
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    .line 63
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "AddVideoManager()"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getState()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->state:I

    return v0
.end method

.method public static setState(I)V
    .locals 0
    .param p0, "val"    # I

    .prologue
    .line 78
    sput p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->state:I

    .line 79
    return-void
.end method


# virtual methods
.method public abstract addVideo(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/content/LiveVideoContent;
.end method

.method public abstract addVideo(Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V
.end method

.method public closeVideoSession()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 200
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 205
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v1

    if-nez v1, :cond_3

    .line 214
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_4

    .line 231
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1, v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->setVideoPlayer(Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;)V

    .line 232
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1, v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->setVideoRenderer(Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V

    .line 233
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1, v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->setVideoContent(Lcom/sonymobile/rcs/core/content/LiveVideoContent;)V

    .line 236
    sput v5, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->state:I

    .line 237
    return-void

    .line 201
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "closeVideoSession()"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->stop()V

    .line 209
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->close()V

    .line 210
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "stop and close Video player"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 228
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_5

    .line 227
    :goto_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_2

    .line 217
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->stop()V

    .line 218
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->close()V

    .line 219
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "stop and close Video renderer"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 225
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Exception when closing the video player or video renderer"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public prepareVideoSession()V
    .locals 12

    .prologue
    .line 112
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_0

    .line 116
    :goto_0
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;-><init>([B)V

    .local v4, "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    const-string/jumbo v8, "video"

    .line 117
    invoke-virtual {v4, v8}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescription(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-result-object v2

    .line 118
    .local v2, "mediaVideo":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    iget-object v8, v4, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    iget-object v8, v8, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->connectionInfo:Ljava/lang/String;

    invoke-static {v8}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractRemoteHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "remoteHost":Ljava/lang/String;
    iget v7, v2, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->port:I

    .local v7, "remotePort":I
    :try_start_0
    const-string/jumbo v8, "video"

    .line 124
    invoke-virtual {v4, v8}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescriptions(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    .line 125
    .local v3, "medias":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->extractVideoCodecsFromSdp(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v5

    .line 128
    .local v5, "proposedCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v9

    invoke-interface {v9}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->getSupportedVideoCodecs()[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->negociateVideoCodec([Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;Ljava/util/Vector;)Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    move-result-object v9

    iput-object v9, v8, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    .line 131
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    iget-object v8, v8, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    if-eqz v8, :cond_1

    .line 145
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    iget-object v9, v9, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->setVideoCodec(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)V

    .line 146
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    iget-object v9, v9, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->setVideoCodec(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)V

    .line 149
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->create(Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;

    move-result-object v1

    .line 150
    .local v1, "extensionHeader":Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
    if-nez v1, :cond_3

    .line 156
    :goto_1
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v8

    new-instance v9, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;

    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-direct {v9, v10, v11}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    invoke-interface {v8, v9}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->addListener(Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener;)V

    .line 157
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v8

    new-instance v9, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;

    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-direct {v9, v10, v11}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    invoke-interface {v8, v9}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->addListener(Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener;)V

    .line 160
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v8

    invoke-interface {v8, v6, v7}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->open(Ljava/lang/String;I)V

    .line 161
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v8

    invoke-interface {v8, v6, v7}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->open(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v1    # "extensionHeader":Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
    .end local v3    # "medias":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .end local v5    # "proposedCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    :goto_2
    return-void

    .line 113
    .end local v2    # "mediaVideo":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .end local v4    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .end local v6    # "remoteHost":Ljava/lang/String;
    .end local v7    # "remotePort":I
    :cond_0
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "prepareVideoSession()"

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    .restart local v2    # "mediaVideo":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .restart local v3    # "medias":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .restart local v4    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .restart local v5    # "proposedCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    .restart local v6    # "remoteHost":Ljava/lang/String;
    .restart local v7    # "remotePort":I
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_2

    .line 137
    :goto_3
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->terminateSession(I)V

    .line 140
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    new-instance v9, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/16 v10, 0x9e

    invoke-direct {v9, v10}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 141
    return-void

    .line 133
    :cond_2
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Proposed codecs are not supported"

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 170
    .end local v3    # "medias":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .end local v5    # "proposedCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_4

    .line 168
    :goto_4
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    new-instance v9, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_2

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "extensionHeader":Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
    .restart local v3    # "medias":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .restart local v5    # "proposedCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    :cond_3
    :try_start_2
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->getExtensionId()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->setOrientationHeaderId(I)V

    .line 152
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->getExtensionId()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->setOrientationHeaderId(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 165
    .end local v1    # "extensionHeader":Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
    .end local v3    # "medias":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .end local v5    # "proposedCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    .restart local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Prepare Video session has failed"

    invoke-virtual {v8, v9, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public abstract removeVideo()V
.end method

.method public abstract removeVideo(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
.end method

.method public startVideoSession()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 177
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->start()V

    .line 184
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->start()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_1
    sput v5, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->state:I

    .line 194
    return-void

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "startVideoSession()"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    :goto_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_1

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Start Video session has failed"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
