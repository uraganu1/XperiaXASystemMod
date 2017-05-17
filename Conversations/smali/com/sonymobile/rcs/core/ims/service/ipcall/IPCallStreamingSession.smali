.class public abstract Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;
.super Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
.source "IPCallStreamingSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;,
        Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$AudioPlayerEventListener;
    }
.end annotation


# instance fields
.field private addVideoMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;

.field private audioContent:Lcom/sonymobile/rcs/core/content/LiveAudioContent;

.field private audioPlayer:Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

.field private audioRenderer:Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;

.field private holdMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field protected selectedAudioCodec:Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;

.field protected selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

.field private videoContent:Lcom/sonymobile/rcs/core/content/LiveVideoContent;

.field private videoPlayer:Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

.field private videoRenderer:Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Lcom/sonymobile/rcs/core/content/LiveAudioContent;Lcom/sonymobile/rcs/core/content/LiveVideoContent;)V
    .locals 2
    .param p1, "imsService"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "contact"    # Ljava/lang/String;
    .param p3, "audioContent"    # Lcom/sonymobile/rcs/core/content/LiveAudioContent;
    .param p4, "videoContent"    # Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;)V

    .line 66
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->videoContent:Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    .line 71
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->audioContent:Lcom/sonymobile/rcs/core/content/LiveAudioContent;

    .line 76
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->audioRenderer:Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;

    .line 81
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->audioPlayer:Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    .line 86
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->videoRenderer:Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    .line 91
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->videoPlayer:Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    .line 106
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->selectedAudioCodec:Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;

    .line 111
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 130
    iput-object p4, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->videoContent:Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    .line 131
    iput-object p3, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->audioContent:Lcom/sonymobile/rcs/core/content/LiveAudioContent;

    .line 132
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->setState(I)V

    .line 133
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->setState(I)V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-object v0
.end method


# virtual methods
.method public addVideo(Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V
    .locals 3
    .param p1, "videoPlayer"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    .param p2, "videoRenderer"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    .prologue
    .line 426
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 430
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoContent()Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 444
    :cond_1
    :goto_1
    return-void

    .line 427
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Add video"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_3
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->getState()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 432
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->addVideoMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;

    .line 435
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->addVideoMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;

    invoke-virtual {v1, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->addVideo(Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 438
    .local v0, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 439
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    const/16 v2, 0x9f

    invoke-interface {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleAddVideoAborted(I)V

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public buildReInviteSdpResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)Ljava/lang/String;
    .locals 2
    .param p1, "reInvite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p2, "serviceContext"    # I

    .prologue
    const-string/jumbo v0, ""

    .line 894
    .local v0, "localSdp":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 898
    :goto_0
    return-object v0

    .line 895
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->addVideoMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;->buildAddVideoSdpResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public closeMediaSession()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 911
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2

    .line 944
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->videoRenderer:Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    if-nez v2, :cond_3

    .line 958
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->videoPlayer:Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    if-nez v2, :cond_4

    .line 972
    :cond_1
    :goto_2
    invoke-virtual {p0, v4}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->setAudioPlayer(Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;)V

    .line 973
    invoke-virtual {p0, v4}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->setAudioRenderer(Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;)V

    .line 974
    invoke-virtual {p0, v4}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->setVideoPlayer(Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;)V

    .line 975
    invoke-virtual {p0, v4}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->setVideoRenderer(Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V

    .line 976
    return-void

    .line 912
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Close media session"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 947
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->videoRenderer:Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    invoke-interface {v2}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->stop()V

    .line 948
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->videoRenderer:Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    invoke-interface {v2}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->close()V

    .line 949
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 950
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Stop and close video renderer"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 956
    :catch_0
    move-exception v0

    .line 953
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 954
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Exception when closing the video renderer"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 961
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->videoPlayer:Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    invoke-interface {v2}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->stop()V

    .line 962
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->videoPlayer:Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    invoke-interface {v2}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->close()V

    .line 963
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 964
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "stop and close video player"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 970
    :catch_1
    move-exception v1

    .line 967
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 968
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Exception when closing the video player"

    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public createInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoContent()Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->FEATURE_TAGS_IP_VIDEO_CALL:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    return-object v0

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->FEATURE_TAGS_IP_VOICE_CALL:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    return-object v0
.end method

.method public getAudioContent()Lcom/sonymobile/rcs/core/content/LiveAudioContent;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->audioContent:Lcom/sonymobile/rcs/core/content/LiveAudioContent;

    return-object v0
.end method

.method public getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->audioPlayer:Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    return-object v0
.end method

.method public getAudioRenderer()Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->audioRenderer:Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;

    return-object v0
.end method

.method public getSessionDirection()I
    .locals 2

    .prologue
    .line 250
    instance-of v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/OriginatingIPCallStreamingSession;

    if-nez v1, :cond_0

    const/16 v0, 0x10

    .line 252
    .local v0, "direction":I
    :goto_0
    return v0

    .end local v0    # "direction":I
    :cond_0
    const/16 v0, 0x11

    .line 250
    goto :goto_0
.end method

.method public getVideoContent()Lcom/sonymobile/rcs/core/content/LiveVideoContent;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->videoContent:Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    return-object v0
.end method

.method public getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->videoPlayer:Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    return-object v0
.end method

.method public getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->videoRenderer:Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    return-object v0
.end method

.method public handle486Busy(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 3
    .param p1, "resp"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    .line 782
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 787
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->closeMediaSession()V

    .line 790
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    .line 793
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->requestContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .line 797
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 802
    :cond_0
    return-void

    .line 783
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "486 Busy"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 798
    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 799
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    invoke-interface {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handle486Busy()V

    .line 798
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V
    .locals 4
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;

    .prologue
    .line 846
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 851
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->closeMediaSession()V

    .line 854
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    .line 857
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->requestContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .line 861
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 867
    :cond_0
    return-void

    .line 847
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    :cond_2
    const/4 v0, 0x0

    .line 862
    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 863
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    invoke-direct {v2, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    invoke-interface {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleCallError(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;)V

    .line 862
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public handleReInvite407ProxyAuthent(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;I)V
    .locals 4
    .param p1, "response"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .param p2, "requestType"    # I

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getToTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setRemoteTag(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->readProxyAuthenticateHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 820
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalContent()Ljava/lang/String;

    move-result-object v0

    .local v0, "content":Ljava/lang/String;
    const/4 v1, 0x0

    .line 824
    .local v1, "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    .line 827
    if-eq p2, v2, :cond_1

    .line 832
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getUpdateSessionManager()Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->FEATURE_TAGS_IP_VIDEO_CALL:[Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->createReInvite([Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .line 837
    .local v1, "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getUpdateSessionManager()Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->sendReInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 838
    return-void

    .line 825
    .local v1, "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getUpdateSessionManager()Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->FEATURE_TAGS_IP_VIDEO_CALL:[Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->createReInvite([Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .local v1, "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    goto :goto_0

    .line 828
    .local v1, "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getUpdateSessionManager()Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->FEATURE_TAGS_IP_VOICE_CALL:[Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->createReInvite([Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .local v1, "reInvite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    goto :goto_0
.end method

.method public handleReInviteAck(II)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "requestType"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xc8

    .line 706
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_4

    .line 711
    :goto_0
    if-eqz p2, :cond_5

    :cond_0
    const/4 v1, 0x1

    .line 726
    if-eq p2, v1, :cond_8

    :cond_1
    const/4 v1, 0x2

    .line 741
    if-eq p2, v1, :cond_b

    :cond_2
    const/4 v1, 0x3

    .line 756
    if-eq p2, v1, :cond_e

    .line 773
    :cond_3
    :goto_1
    return-void

    .line 707
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleReInviteAckResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 711
    :cond_5
    if-ne p1, v4, :cond_0

    .line 713
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->addVideoMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->startVideoSession()V

    .line 716
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 723
    :cond_6
    iput-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->addVideoMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    .line 717
    .local v0, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 718
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    invoke-interface {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleAddVideoAccepted()V

    .line 717
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 726
    .end local v0    # "i":I
    :cond_8
    if-ne p1, v4, :cond_1

    .line 728
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->addVideoMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->closeVideoSession()V

    .line 731
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 738
    :cond_9
    iput-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->addVideoMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    .line 732
    .restart local v0    # "i":I
    :goto_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 733
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    invoke-interface {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleRemoveVideoAccepted()V

    .line 732
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 741
    .end local v0    # "i":I
    :cond_b
    if-ne p1, v4, :cond_2

    .line 743
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->holdMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->holdMediaSession()V

    .line 746
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 753
    :cond_c
    iput-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->holdMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;

    goto :goto_1

    :cond_d
    const/4 v0, 0x0

    .line 747
    .restart local v0    # "i":I
    :goto_4
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 748
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    invoke-interface {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleCallHoldAccepted()V

    .line 747
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 756
    .end local v0    # "i":I
    :cond_e
    if-ne p1, v4, :cond_3

    .line 760
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->holdMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->resumeMediaSession()V

    .line 763
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 771
    :cond_f
    iput-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->holdMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;

    goto/16 :goto_1

    :cond_10
    const/4 v0, 0x0

    .line 764
    .restart local v0    # "i":I
    :goto_5
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 765
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    invoke-interface {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleCallResumeAccepted()V

    .line 764
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public handleReInviteResponse(ILcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;I)V
    .locals 8
    .param p1, "code"    # I
    .param p2, "response"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .param p3, "requestType"    # I

    .prologue
    const/16 v7, 0xc8

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 516
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 521
    :goto_0
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    .line 556
    if-eq p3, v1, :cond_9

    .line 589
    if-eq p3, v5, :cond_d

    const/4 v1, 0x3

    .line 623
    if-eq p3, v1, :cond_11

    .line 656
    :goto_1
    return-void

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleReInviteResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 522
    :cond_1
    if-eq p1, v7, :cond_4

    .line 536
    if-ne p1, v5, :cond_7

    .line 540
    :cond_2
    invoke-static {v4}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->setState(I)V

    .line 541
    invoke-virtual {p0, v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->setVideoContent(Lcom/sonymobile/rcs/core/content/LiveVideoContent;)V

    .line 544
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 553
    :cond_3
    :goto_2
    iput-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->addVideoMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;

    goto :goto_1

    .line 524
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->addVideoMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->prepareVideoSession()V

    .line 527
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 534
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->addVideoMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->startVideoSession()V

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 528
    .local v0, "i":I
    :goto_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 529
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    invoke-interface {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleAddVideoAccepted()V

    .line 528
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 536
    .end local v0    # "i":I
    :cond_7
    if-eq p1, v5, :cond_2

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    .line 545
    .restart local v0    # "i":I
    :goto_4
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 546
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    invoke-interface {v1, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleAddVideoAborted(I)V

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 557
    .end local v0    # "i":I
    :cond_9
    if-eq p1, v7, :cond_b

    .line 568
    if-eq p1, v5, :cond_c

    .line 586
    :cond_a
    iput-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->addVideoMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;

    goto :goto_1

    .line 559
    :cond_b
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->addVideoMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->closeVideoSession()V

    .line 562
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    .line 563
    .restart local v0    # "i":I
    :goto_5
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 564
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    invoke-interface {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleRemoveVideoAccepted()V

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 575
    .end local v0    # "i":I
    :cond_c
    invoke-static {v4}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->setState(I)V

    .line 578
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    .line 579
    .restart local v0    # "i":I
    :goto_6
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 580
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    invoke-interface {v1, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleRemoveVideoAborted(I)V

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 590
    .end local v0    # "i":I
    :cond_d
    if-eq p1, v7, :cond_f

    .line 601
    if-eq p1, v5, :cond_10

    .line 620
    :cond_e
    iput-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->holdMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;

    goto/16 :goto_1

    .line 592
    :cond_f
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->holdMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->holdMediaSession()V

    .line 595
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    .line 596
    .restart local v0    # "i":I
    :goto_7
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 597
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    invoke-interface {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleCallHoldAccepted()V

    .line 596
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 608
    .end local v0    # "i":I
    :cond_10
    invoke-static {v4}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->setState(I)V

    .line 611
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    .line 612
    .restart local v0    # "i":I
    :goto_8
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 613
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    invoke-interface {v1, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleCallHoldAborted(I)V

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 624
    .end local v0    # "i":I
    :cond_11
    if-eq p1, v7, :cond_13

    .line 635
    if-eq p1, v5, :cond_14

    .line 654
    :cond_12
    iput-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->holdMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;

    goto/16 :goto_1

    .line 626
    :cond_13
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->holdMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->resumeMediaSession()V

    .line 629
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v0, 0x0

    .line 630
    .restart local v0    # "i":I
    :goto_9
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 631
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    invoke-interface {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleCallResumeAccepted()V

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 642
    .end local v0    # "i":I
    :cond_14
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->setState(I)V

    .line 645
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v0, 0x0

    .line 646
    .restart local v0    # "i":I
    :goto_a
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 647
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    invoke-interface {v1, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleCallResumeAborted(I)V

    .line 646
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public handleReInviteUserAnswer(II)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "requestType"    # I

    .prologue
    const/4 v4, 0x0

    .line 666
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 671
    :goto_0
    if-eqz p2, :cond_2

    .line 696
    :cond_0
    :goto_1
    return-void

    .line 667
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleReInviteUserAnswer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 673
    if-eq p1, v1, :cond_4

    .line 677
    if-nez p1, :cond_5

    .line 684
    :cond_3
    invoke-static {v4}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->setState(I)V

    const/4 v1, 0x0

    .line 685
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->setVideoContent(Lcom/sonymobile/rcs/core/content/LiveVideoContent;)V

    .line 688
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 689
    .local v0, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 690
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    invoke-interface {v1, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleAddVideoAborted(I)V

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 675
    .end local v0    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->addVideoMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->prepareVideoSession()V

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    .line 677
    if-eq p1, v1, :cond_3

    goto :goto_1
.end method

.method public isTagPresent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "sdp"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 877
    if-nez p1, :cond_1

    .line 880
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 877
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 878
    const/4 v0, 0x1

    return v0
.end method

.method public receiveBye(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 2
    .param p1, "bye"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->receiveBye(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 264
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->requestContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .line 266
    return-void
.end method

.method public receiveReInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 11
    .param p1, "reInvite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/4 v10, 0x5

    const/4 v7, 0x0

    .line 295
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_4

    .line 299
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getSdpContent()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 303
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getSdpContent()Ljava/lang/String;

    move-result-object v0

    .local v0, "content":Ljava/lang/String;
    const/4 v2, -0x1

    .local v2, "requestType":I
    const-string/jumbo v8, "a=sendonly"

    .line 307
    invoke-virtual {p0, v0, v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isTagPresent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string/jumbo v8, "a=inactive"

    .line 312
    invoke-virtual {p0, v0, v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isTagPresent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string/jumbo v8, "a=sendrcv"

    .line 318
    invoke-virtual {p0, v0, v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isTagPresent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    :cond_0
    const-string/jumbo v8, "a=sendrcv"

    .line 324
    invoke-virtual {p0, v0, v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isTagPresent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    :cond_1
    const-string/jumbo v8, "a=sendrcv"

    .line 332
    invoke-virtual {p0, v0, v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isTagPresent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 339
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x25b

    invoke-virtual {p0, p1, v8, v9}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)V

    :cond_2
    :goto_1
    const/4 v8, -0x1

    .line 342
    if-ne v2, v8, :cond_d

    .line 347
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 417
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "requestType":I
    :cond_3
    :goto_3
    :pswitch_0
    return-void

    .line 296
    :cond_4
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "receiveReInvite"

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_5
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getSessionTimerManager()Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->receiveReInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto :goto_3

    .line 308
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v2    # "requestType":I
    :cond_6
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->getState()I

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->getState()I

    move-result v8

    if-nez v8, :cond_2

    const/4 v2, 0x3

    .line 310
    goto :goto_1

    .line 314
    :cond_7
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->getState()I

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->getState()I

    move-result v8

    if-nez v8, :cond_2

    const/4 v2, 0x2

    .line 316
    goto :goto_1

    .line 318
    :cond_8
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoContent()Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    move-result-object v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "m=video"

    invoke-virtual {p0, v0, v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isTagPresent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 320
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->getState()I

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->getState()I

    move-result v8

    if-nez v8, :cond_2

    const/4 v2, 0x0

    .line 322
    goto :goto_1

    .line 324
    :cond_9
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoContent()Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "m=video"

    invoke-virtual {p0, v0, v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isTagPresent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 326
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->getState()I

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->getState()I

    move-result v8

    if-nez v8, :cond_b

    :cond_a
    const/4 v2, 0x1

    .line 330
    goto :goto_1

    .line 326
    :cond_b
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->getState()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_a

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->getState()I

    move-result v8

    if-eq v8, v10, :cond_a

    goto :goto_1

    .line 333
    :cond_c
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->getState()I

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->getState()I

    move-result v8

    if-ne v8, v10, :cond_2

    const/4 v2, 0x5

    .line 335
    goto/16 :goto_1

    .line 344
    :cond_d
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setRemoteContent(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 351
    :pswitch_1
    new-instance v8, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;

    invoke-direct {v8, p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    iput-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->addVideoMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;

    .line 352
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->addVideoMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;

    invoke-virtual {v8, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->addVideo(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    move-result-object v6

    .line 355
    .local v6, "videocontent":Lcom/sonymobile/rcs/core/content/LiveVideoContent;
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/content/LiveVideoContent;->getEncoding()Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, "videoEncoding":Ljava/lang/String;
    :goto_4
    if-eqz v6, :cond_f

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/content/LiveVideoContent;->getWidth()I

    move-result v5

    .line 357
    .local v5, "videoWidth":I
    :goto_5
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/content/LiveVideoContent;->getHeight()I

    move-result v4

    .line 360
    .local v4, "videoHeight":I
    :goto_6
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v1, 0x0

    .line 361
    .local v1, "i":I
    :goto_7
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 362
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    invoke-interface {v7, v3, v5, v4}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleAddVideo(Ljava/lang/String;II)V

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .end local v1    # "i":I
    .end local v3    # "videoEncoding":Ljava/lang/String;
    .end local v4    # "videoHeight":I
    .end local v5    # "videoWidth":I
    :cond_e
    const-string/jumbo v3, ""

    goto :goto_4

    .restart local v3    # "videoEncoding":Ljava/lang/String;
    :cond_f
    move v5, v7

    .line 356
    goto :goto_5

    .restart local v5    # "videoWidth":I
    :cond_10
    move v4, v7

    .line 357
    goto :goto_6

    .line 371
    .end local v3    # "videoEncoding":Ljava/lang/String;
    .end local v5    # "videoWidth":I
    .end local v6    # "videocontent":Lcom/sonymobile/rcs/core/content/LiveVideoContent;
    :pswitch_2
    new-instance v7, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;

    invoke-direct {v7, p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteAddVideo;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    iput-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->addVideoMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;

    .line 372
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->addVideoMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;

    invoke-virtual {v7, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->removeVideo(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 375
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v1, 0x0

    .line 376
    .restart local v1    # "i":I
    :goto_8
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 377
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    invoke-interface {v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleRemoveVideo()V

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 386
    .end local v1    # "i":I
    :pswitch_3
    new-instance v7, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteHoldInactive;

    invoke-direct {v7, p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteHoldInactive;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    iput-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->holdMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;

    .line 389
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->holdMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->setCallHold(ZLcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 392
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v1, 0x0

    .line 393
    .restart local v1    # "i":I
    :goto_9
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 394
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    invoke-interface {v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleCallHold()V

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 402
    .end local v1    # "i":I
    :pswitch_4
    new-instance v8, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteHoldInactive;

    invoke-direct {v8, p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/RemoteHoldInactive;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    iput-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->holdMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;

    .line 405
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->holdMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;

    invoke-virtual {v8, v7, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->setCallHold(ZLcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 407
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v1, 0x0

    .line 408
    .restart local v1    # "i":I
    :goto_a
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 409
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    invoke-interface {v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleCallResume()V

    .line 408
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public removeVideo()V
    .locals 3

    .prologue
    .line 450
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 454
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoContent()Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    move-result-object v1

    if-nez v1, :cond_3

    .line 464
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 471
    :cond_1
    :goto_2
    return-void

    .line 451
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Remove video"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_3
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->getState()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->getState()I

    move-result v1

    if-nez v1, :cond_5

    .line 459
    :cond_4
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalAddVideo;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->addVideoMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;

    .line 462
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->addVideoMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->removeVideo()V

    goto :goto_2

    .line 454
    :cond_5
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 465
    .local v0, "i":I
    :goto_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 466
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    const/16 v2, 0x9f

    invoke-interface {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleRemoveVideoAborted(I)V

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public setAudioPlayer(Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;)V
    .locals 0
    .param p1, "audioPlayer"    # Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->audioPlayer:Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    .line 206
    return-void
.end method

.method public setAudioRenderer(Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;)V
    .locals 0
    .param p1, "audioRenderer"    # Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->audioRenderer:Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;

    .line 188
    return-void
.end method

.method public setOnHold(Z)V
    .locals 4
    .param p1, "callHoldAction"    # Z

    .prologue
    const/16 v3, 0x9f

    .line 479
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 483
    :goto_0
    if-nez p1, :cond_4

    :cond_0
    if-eqz p1, :cond_6

    .line 493
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 505
    :cond_2
    :goto_2
    return-void

    .line 480
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "setOnHold"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 483
    :cond_4
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->getState()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 488
    :cond_5
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/LocalHoldInactive;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->holdMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;

    .line 491
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->holdMgr:Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->setCallHold(Z)V

    goto :goto_2

    .line 483
    :cond_6
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AddVideoManager;->getState()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    .line 494
    .local v0, "i":I
    :goto_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 495
    if-nez p1, :cond_8

    .line 499
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    invoke-interface {v1, v3}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleCallResumeAborted(I)V

    .line 494
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 496
    :cond_8
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    invoke-interface {v1, v3}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleCallHoldAborted(I)V

    goto :goto_4
.end method

.method public setVideoContent(Lcom/sonymobile/rcs/core/content/LiveVideoContent;)V
    .locals 0
    .param p1, "videoContent"    # Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->videoContent:Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    .line 152
    return-void
.end method

.method public setVideoPlayer(Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;)V
    .locals 0
    .param p1, "videoPlayer"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->videoPlayer:Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    .line 242
    return-void
.end method

.method public setVideoRenderer(Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V
    .locals 0
    .param p1, "videoRenderer"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->videoRenderer:Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    .line 224
    return-void
.end method
