.class public Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;
.super Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession$Stub;
.source "ImageSharingSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSessionListener;


# instance fields
.field private listeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/lang/Object;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private session:Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;)V
    .locals 1
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession$Stub;-><init>()V

    .line 52
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->lock:Ljava/lang/Object;

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 70
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    .line 71
    invoke-virtual {p1, p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->addListener(Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;)V

    .line 72
    return-void
.end method


# virtual methods
.method public acceptSession()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->acceptSession()V

    .line 139
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Accept session invitation"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addSessionListener(Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 184
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Add an event listener"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 184
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
    .line 160
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->isImageTransfered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->abortSession(I)V

    .line 171
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Cancel session"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_1
    return-void
.end method

.method public getFileThumbnail()[B
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getThumbnail()[B

    move-result-object v0

    return-object v0
.end method

.method public getFileUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/content/MmContent;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getFilesize()J
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemoteContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionState()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->getSessionState(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)I

    move-result v0

    return v0
.end method

.method public handleContentTransfered(Landroid/net/Uri;)V
    .locals 7
    .param p1, "fileUri"    # Landroid/net/Uri;

    .prologue
    .line 358
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 359
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 363
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->getInstance()Lcom/sonymobile/rcs/provider/sharing/RichCall;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->setStatus(Ljava/lang/String;I)V

    .line 367
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 368
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 377
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 379
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->removeImageSharingSession(Ljava/lang/String;)V

    .line 380
    monitor-exit v4

    .line 381
    return-void

    .line 360
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Image transfered"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 370
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;

    invoke-interface {v3, p1}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;->handleImageTransfered(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 375
    :catch_0
    move-exception v1

    .line 372
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 373
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
    .line 231
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 232
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 237
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->getInstance()Lcom/sonymobile/rcs/provider/sharing/RichCall;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v3, v5, v6}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->setStatus(Ljava/lang/String;I)V

    .line 240
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 241
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 250
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 253
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->removeImageSharingSession(Ljava/lang/String;)V

    .line 254
    monitor-exit v4

    .line 255
    return-void

    .line 233
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    .line 254
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 243
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;

    invoke-interface {v3, p1}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;->handleSessionAborted(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 248
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleSessionStarted()V
    .locals 6

    .prologue
    .line 205
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 206
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 211
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 212
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 221
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 222
    monitor-exit v4

    .line 223
    return-void

    .line 207
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session started"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 214
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;->handleSessionStarted()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 219
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 217
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleSessionTerminatedByRemote()V
    .locals 7

    .prologue
    .line 261
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 262
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 266
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->isImageTransfered()Z

    move-result v3

    if-nez v3, :cond_1

    .line 273
    invoke-static {}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->getInstance()Lcom/sonymobile/rcs/provider/sharing/RichCall;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->setStatus(Ljava/lang/String;I)V

    .line 276
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 277
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_2

    .line 286
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 289
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->removeImageSharingSession(Ljava/lang/String;)V

    .line 290
    monitor-exit v4

    .line 291
    return-void

    .line 263
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session terminated by remote"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 269
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->removeImageSharingSession(Ljava/lang/String;)V

    .line 270
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 279
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;->handleSessionTerminatedByRemote()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 284
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 282
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public handleSharingError(Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;)V
    .locals 7
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    .prologue
    .line 299
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 300
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 305
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->getInstance()Lcom/sonymobile/rcs/provider/sharing/RichCall;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->setStatus(Ljava/lang/String;I)V

    .line 308
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 309
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 318
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 321
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->removeImageSharingSession(Ljava/lang/String;)V

    .line 322
    monitor-exit v4

    .line 323
    return-void

    .line 301
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    .line 322
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 311
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;->getErrorCode()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;->handleSharingError(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 316
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleSharingProgress(JJ)V
    .locals 7
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 332
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 333
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 338
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 339
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 348
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 349
    monitor-exit v4

    .line 350
    return-void

    .line 334
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Sharing progress"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 341
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;->handleSharingProgress(JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 346
    :catch_0
    move-exception v1

    .line 343
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 344
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public rejectSession()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->getInstance()Lcom/sonymobile/rcs/provider/sharing/RichCall;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->setStatus(Ljava/lang/String;I)V

    .line 153
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    const/16 v1, 0x25b

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->rejectSession(I)V

    .line 154
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Reject session invitation"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeSessionListener(Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 198
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Remove an event listener"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
