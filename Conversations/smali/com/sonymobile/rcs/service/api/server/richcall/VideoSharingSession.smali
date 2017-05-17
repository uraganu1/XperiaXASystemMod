.class public Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;
.super Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession$Stub;
.source "VideoSharingSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSessionListener;


# instance fields
.field private listeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/lang/Object;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private session:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)V
    .locals 1
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession$Stub;-><init>()V

    .line 53
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->lock:Ljava/lang/Object;

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 71
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    .line 73
    invoke-virtual {p1, p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->addListener(Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;)V

    .line 74
    return-void
.end method


# virtual methods
.method public acceptSession()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->acceptSession()V

    .line 114
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Accept session invitation"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addSessionListener(Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 203
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Add an event listener"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cancelSession()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->abortSession(I)V

    .line 141
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Cancel session"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRemoteContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionState()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->getSessionState(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)I

    move-result v0

    return v0
.end method

.method public getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Get video player"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Get video renderer"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSessionAborted(I)V
    .locals 7
    .param p1, "reason"    # I

    .prologue
    .line 250
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 251
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 256
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->getInstance()Lcom/sonymobile/rcs/provider/sharing/RichCall;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v3, v5, v6}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->setStatus(Ljava/lang/String;I)V

    .line 259
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 260
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 269
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 272
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->removeVideoSharingSession(Ljava/lang/String;)V

    .line 273
    monitor-exit v4

    .line 274
    return-void

    .line 252
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Session aborted (reason "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 262
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener;

    invoke-interface {v3, p1}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener;->handleSessionAborted(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 267
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 265
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleSessionStarted()V
    .locals 6

    .prologue
    .line 224
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 225
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 230
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 231
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 240
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 241
    monitor-exit v4

    .line 242
    return-void

    .line 226
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session started"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 233
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener;->handleSessionStarted()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 238
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 236
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleSessionTerminatedByRemote()V
    .locals 7

    .prologue
    .line 280
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 281
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 286
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->getInstance()Lcom/sonymobile/rcs/provider/sharing/RichCall;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->setStatus(Ljava/lang/String;I)V

    .line 290
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 291
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 300
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 303
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->removeVideoSharingSession(Ljava/lang/String;)V

    .line 304
    monitor-exit v4

    .line 305
    return-void

    .line 282
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session terminated by remote"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 293
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener;->handleSessionTerminatedByRemote()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 298
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 296
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleSharingError(Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;)V
    .locals 7
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    .prologue
    .line 313
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 314
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 319
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->getInstance()Lcom/sonymobile/rcs/provider/sharing/RichCall;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->setStatus(Ljava/lang/String;I)V

    .line 322
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 323
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 332
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 335
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->removeVideoSharingSession(Ljava/lang/String;)V

    .line 336
    monitor-exit v4

    .line 337
    return-void

    .line 315
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Sharing error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;->getErrorCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 325
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener;

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;->getErrorCode()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener;->handleSharingError(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 330
    :catch_0
    move-exception v1

    .line 327
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 328
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleVideoResized(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 346
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 347
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 352
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 353
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 362
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 363
    monitor-exit v4

    .line 364
    return-void

    .line 348
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Video resized to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 355
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener;

    invoke-interface {v3, p1, p2}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener;->handleVideoResized(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 360
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 358
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public rejectSession()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->getInstance()Lcom/sonymobile/rcs/provider/sharing/RichCall;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->setStatus(Ljava/lang/String;I)V

    .line 128
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    const/16 v1, 0x25b

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->rejectSession(I)V

    .line 129
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Reject session invitation"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeSessionListener(Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 217
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Remove an event listener"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setVideoPlayer(Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;)V
    .locals 2
    .param p1, "player"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->setVideoPlayer(Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;)V

    .line 190
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Set a video player"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVideoRenderer(Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V
    .locals 2
    .param p1, "renderer"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->setVideoRenderer(Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V

    .line 166
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Set a video renderer"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
