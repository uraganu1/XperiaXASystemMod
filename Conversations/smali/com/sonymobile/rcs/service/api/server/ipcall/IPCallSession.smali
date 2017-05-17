.class public Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;
.super Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;
.source "IPCallSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;


# instance fields
.field private listeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/lang/Object;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V
    .locals 1
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;-><init>()V

    .line 41
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->lock:Ljava/lang/Object;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 59
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    .line 60
    invoke-virtual {p1, p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->addListener(Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;)V

    .line 61
    return-void
.end method


# virtual methods
.method public acceptAddVideo()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getUpdateSessionManager()Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->acceptReInvite()V

    .line 184
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Accept invitation to add video"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public acceptSession(Z)V
    .locals 3
    .param p1, "video"    # Z

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    :goto_0
    if-eqz p1, :cond_1

    .line 116
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->acceptSession()V

    .line 117
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Accept session invitation"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->setVideoPlayer(Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;)V

    .line 112
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->setVideoRenderer(Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V

    .line 113
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->setVideoContent(Lcom/sonymobile/rcs/core/content/LiveVideoContent;)V

    goto :goto_1
.end method

.method public addSessionListener(Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 329
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Add an event listener"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addVideo(Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V
    .locals 2
    .param p1, "videoPlayer"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    .param p2, "videoRenderer"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->addVideo(Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V

    .line 159
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Add video"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cancelSession()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->abortSession(I)V

    .line 144
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Cancel session"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v0

    return-object v0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Get audio player"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAudioRenderer()Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getAudioRenderer()Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;

    move-result-object v0

    return-object v0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Get audio renderer"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRemoteContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionDirection()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getSessionDirection()I

    move-result v0

    return v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionState()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->getSessionState(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)I

    move-result v0

    return v0
.end method

.method public getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v0

    return-object v0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Get video player"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v0

    return-object v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Get video renderer"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handle486Busy()V
    .locals 7

    .prologue
    .line 774
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 775
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 780
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/ipcall/IPCall;->getInstance()Lcom/sonymobile/rcs/provider/ipcall/IPCall;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Lcom/sonymobile/rcs/provider/ipcall/IPCall;->setStatus(Ljava/lang/String;I)V

    .line 783
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 784
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 793
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 796
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->removeIPCallSession(Ljava/lang/String;)V

    .line 797
    monitor-exit v4

    .line 798
    return-void

    .line 776
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "486 Busy"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 797
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 786
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;->handle486Busy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 784
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 791
    :catch_0
    move-exception v1

    .line 788
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 789
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleAddVideo(Ljava/lang/String;II)V
    .locals 6
    .param p1, "videoEncoding"    # Ljava/lang/String;
    .param p2, "videoWidth"    # I
    .param p3, "videoHeight"    # I

    .prologue
    .line 441
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 442
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 447
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 448
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 458
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 459
    monitor-exit v4

    .line 460
    return-void

    .line 443
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Add video invitation"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 450
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;->handleAddVideo(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 456
    :catch_0
    move-exception v1

    .line 453
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 454
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleAddVideoAborted(I)V
    .locals 7
    .param p1, "reason"    # I

    .prologue
    .line 540
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 541
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 546
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 547
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 556
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 557
    monitor-exit v4

    .line 558
    return-void

    .line 542
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Add video aborted (reason "

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

    .line 557
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 549
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    invoke-interface {v3, p1}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;->handleAddVideoAborted(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 554
    :catch_0
    move-exception v1

    .line 551
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 552
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleAddVideoAccepted()V
    .locals 6

    .prologue
    .line 490
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 491
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 496
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 497
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 506
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 507
    monitor-exit v4

    .line 508
    return-void

    .line 492
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Add video accepted"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 499
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;->handleAddVideoAccepted()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 504
    :catch_0
    move-exception v1

    .line 501
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 502
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleCallError(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;)V
    .locals 7
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    .prologue
    .line 744
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 745
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 750
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/ipcall/IPCall;->getInstance()Lcom/sonymobile/rcs/provider/ipcall/IPCall;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Lcom/sonymobile/rcs/provider/ipcall/IPCall;->setStatus(Ljava/lang/String;I)V

    .line 753
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 754
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 763
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 766
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->removeIPCallSession(Ljava/lang/String;)V

    .line 767
    monitor-exit v4

    .line 768
    return-void

    .line 746
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session error"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 767
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 756
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;->getErrorCode()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;->handleCallError(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 754
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 761
    :catch_0
    move-exception v1

    .line 758
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 759
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleCallHold()V
    .locals 6

    .prologue
    .line 591
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 592
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 597
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 598
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 607
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 608
    monitor-exit v4

    .line 609
    return-void

    .line 593
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Call Hold invitation"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 608
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 600
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;->handleCallHold()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 605
    :catch_0
    move-exception v1

    .line 602
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 603
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleCallHoldAborted(I)V
    .locals 7
    .param p1, "errorCode"    # I

    .prologue
    .line 667
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 668
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 673
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 674
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 683
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 684
    monitor-exit v4

    .line 685
    return-void

    .line 669
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Call Hold aborted (reason "

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

    .line 684
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 676
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    invoke-interface {v3, p1}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;->handleCallHoldAborted(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 681
    :catch_0
    move-exception v1

    .line 678
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 679
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleCallHoldAccepted()V
    .locals 6

    .prologue
    .line 641
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 642
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 647
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 648
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 657
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 658
    monitor-exit v4

    .line 659
    return-void

    .line 643
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Call Hold accepted"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 658
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 650
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;->handleCallHoldAccepted()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 655
    :catch_0
    move-exception v1

    .line 652
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 653
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleCallResume()V
    .locals 6

    .prologue
    .line 616
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 617
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 622
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 623
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 632
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 633
    monitor-exit v4

    .line 634
    return-void

    .line 618
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Call Resume invitation"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 625
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;->handleCallResume()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 630
    :catch_0
    move-exception v1

    .line 627
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 628
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleCallResumeAborted(I)V
    .locals 7
    .param p1, "code"    # I

    .prologue
    .line 718
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 719
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 724
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 725
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 734
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 735
    monitor-exit v4

    .line 736
    return-void

    .line 720
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Call Resume aborted (reason "

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

    .line 735
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 727
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    invoke-interface {v3, p1}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;->handleCallResumeAborted(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 732
    :catch_0
    move-exception v1

    .line 729
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 730
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleCallResumeAccepted()V
    .locals 6

    .prologue
    .line 692
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 693
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 698
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 699
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 708
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 709
    monitor-exit v4

    .line 710
    return-void

    .line 694
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Call Resume accepted"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 709
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 701
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;->handleCallResumeAccepted()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 706
    :catch_0
    move-exception v1

    .line 703
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 704
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleRemoveVideo()V
    .locals 6

    .prologue
    .line 466
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 467
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 472
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 473
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 482
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 483
    monitor-exit v4

    .line 484
    return-void

    .line 468
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Remove video invitation"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 483
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 475
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;->handleRemoveVideo()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 480
    :catch_0
    move-exception v1

    .line 477
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 478
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleRemoveVideoAborted(I)V
    .locals 7
    .param p1, "reason"    # I

    .prologue
    .line 566
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 567
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 572
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 573
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 582
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 583
    monitor-exit v4

    .line 584
    return-void

    .line 568
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Remove video aborted (reason "

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

    .line 583
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 575
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    invoke-interface {v3, p1}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;->handleRemoveVideoAborted(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 580
    :catch_0
    move-exception v1

    .line 577
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 578
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleRemoveVideoAccepted()V
    .locals 6

    .prologue
    .line 514
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 515
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 520
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 521
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 530
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 531
    monitor-exit v4

    .line 532
    return-void

    .line 516
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Remove video accepted"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 531
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 523
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;->handleRemoveVideoAccepted()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 528
    :catch_0
    move-exception v1

    .line 525
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 526
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleSessionAborted(I)V
    .locals 7
    .param p1, "reason"    # I

    .prologue
    .line 377
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 378
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 383
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/ipcall/IPCall;->getInstance()Lcom/sonymobile/rcs/provider/ipcall/IPCall;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v3, v5, v6}, Lcom/sonymobile/rcs/provider/ipcall/IPCall;->setStatus(Ljava/lang/String;I)V

    .line 386
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 387
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 396
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 399
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->removeIPCallSession(Ljava/lang/String;)V

    .line 400
    monitor-exit v4

    .line 401
    return-void

    .line 379
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    .line 400
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 389
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    invoke-interface {v3, p1}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;->handleSessionAborted(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 394
    :catch_0
    move-exception v1

    .line 391
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 392
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleSessionStarted()V
    .locals 6

    .prologue
    .line 351
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 352
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 357
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 358
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 367
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 368
    monitor-exit v4

    .line 369
    return-void

    .line 353
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session started"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 360
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;->handleSessionStarted()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 365
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 363
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleSessionTerminatedByRemote()V
    .locals 7

    .prologue
    .line 407
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 408
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 413
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/ipcall/IPCall;->getInstance()Lcom/sonymobile/rcs/provider/ipcall/IPCall;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/sonymobile/rcs/provider/ipcall/IPCall;->setStatus(Ljava/lang/String;I)V

    .line 416
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 417
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 426
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 429
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->removeIPCallSession(Ljava/lang/String;)V

    .line 430
    monitor-exit v4

    .line 431
    return-void

    .line 409
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session terminated by remote"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 419
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;->handleSessionTerminatedByRemote()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 424
    :catch_0
    move-exception v1

    .line 421
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 422
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
    .line 807
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 808
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 813
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 814
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 823
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 824
    monitor-exit v4

    .line 825
    return-void

    .line 809
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    .line 824
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 816
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    invoke-interface {v3, p1, p2}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;->handleVideoResized(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 821
    :catch_0
    move-exception v1

    .line 818
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 819
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public rejectAddVideo()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->setVideoContent(Lcom/sonymobile/rcs/core/content/LiveVideoContent;)V

    .line 197
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getUpdateSessionManager()Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    move-result-object v0

    const/16 v1, 0x25b

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;->rejectReInvite(I)V

    .line 198
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Reject invitation to add video"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public rejectSession()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/ipcall/IPCall;->getInstance()Lcom/sonymobile/rcs/provider/ipcall/IPCall;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/provider/ipcall/IPCall;->setStatus(Ljava/lang/String;I)V

    .line 131
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    const/16 v1, 0x25b

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->rejectSession(I)V

    .line 132
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Reject session invitation"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeSessionListener(Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 344
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Remove an event listener"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeVideo()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->removeVideo()V

    .line 171
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Remove video"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAudioPlayer(Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;)V
    .locals 2
    .param p1, "player"    # Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->setAudioPlayer(Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;)V

    .line 302
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Set audio player"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAudioRenderer(Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;)V
    .locals 2
    .param p1, "renderer"    # Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->setAudioRenderer(Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;)V

    .line 276
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Set audio renderer"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCallHold(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->setOnHold(Z)V

    .line 211
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set call hold to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVideoPlayer(Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;)V
    .locals 2
    .param p1, "player"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->setVideoPlayer(Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;)V

    .line 250
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Set video player"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVideoRenderer(Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V
    .locals 2
    .param p1, "renderer"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->setVideoRenderer(Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V

    .line 224
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Set a video renderer"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
