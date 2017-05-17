.class public Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingLiveVideoStreamingSession;
.super Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;
.source "OriginatingLiveVideoStreamingSession.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;Lcom/sonymobile/rcs/core/content/LiveVideoContent;Ljava/lang/String;)V
    .locals 0
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "player"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    .param p3, "content"    # Lcom/sonymobile/rcs/core/content/LiveVideoContent;
    .param p4, "contact"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingVideoStreamingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;)V

    .line 60
    return-void
.end method
