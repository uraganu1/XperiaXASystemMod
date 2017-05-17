.class public abstract Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;
.super Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;
.source "VideoStreamingSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;
    }
.end annotation


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private player:Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

.field private renderer:Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p3, "contact"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;)V

    .line 45
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->renderer:Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    .line 50
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->player:Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-object v0
.end method


# virtual methods
.method public createInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->FEATURE_TAGS_VIDEO_SHARE:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    return-object v0
.end method

.method public getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->player:Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    return-object v0
.end method

.method public getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->renderer:Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    return-object v0
.end method

.method public handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V
    .locals 4
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;

    .prologue
    .line 135
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->closeMediaSession()V

    .line 143
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    .line 146
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->requestContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .line 150
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    :cond_0
    return-void

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    .line 151
    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSessionListener;

    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    invoke-direct {v2, p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    invoke-interface {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSessionListener;->handleSharingError(Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public receiveBye(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 2
    .param p1, "bye"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->receiveBye(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 113
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->requestContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .line 115
    return-void
.end method

.method public setVideoPlayer(Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;)V
    .locals 0
    .param p1, "player"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->player:Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    .line 102
    return-void
.end method

.method public setVideoRenderer(Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V
    .locals 0
    .param p1, "renderer"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->renderer:Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    .line 84
    return-void
.end method
