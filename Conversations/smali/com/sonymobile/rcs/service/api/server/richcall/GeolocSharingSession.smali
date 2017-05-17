.class public Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;
.super Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession$Stub;
.source "GeolocSharingSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSessionListener;


# instance fields
.field private listeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/lang/Object;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private session:Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;)V
    .locals 1
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession$Stub;-><init>()V

    .line 61
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->lock:Ljava/lang/Object;

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 79
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;

    .line 80
    invoke-virtual {p1, p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->addListener(Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;)V

    .line 81
    return-void
.end method


# virtual methods
.method public acceptSession()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->acceptSession()V

    .line 121
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Accept session invitation"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addSessionListener(Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 167
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Add an event listener"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 167
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
    .line 142
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->isGeolocTransfered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->abortSession(I)V

    .line 153
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Cancel session"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_1
    return-void
.end method

.method public getRemoteContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionState()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;

    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->getSessionState(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)I

    move-result v0

    return v0
.end method

.method public handleContentTransfered(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;)V
    .locals 13
    .param p1, "geoloc"    # Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    .prologue
    .line 316
    iget-object v12, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->lock:Ljava/lang/Object;

    monitor-enter v12

    .line 317
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 322
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->getInstance()Lcom/sonymobile/rcs/provider/sharing/RichCall;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->setStatus(Ljava/lang/String;I)V

    .line 326
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "msgId":Ljava/lang/String;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 329
    .local v5, "currentDate":Ljava/util/Date;
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;

    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;ZLjava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .local v0, "geolocMsg":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addIncomingGeoloc(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;)V

    .line 334
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v9

    .local v9, "N":I
    const/4 v11, 0x0

    .line 335
    .local v11, "i":I
    :goto_1
    if-lt v11, v9, :cond_1

    .line 344
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 345
    monitor-exit v12

    .line 346
    return-void

    .line 318
    .end local v0    # "geolocMsg":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;
    .end local v1    # "msgId":Ljava/lang/String;
    .end local v5    # "currentDate":Ljava/util/Date;
    .end local v9    # "N":I
    .end local v11    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Geoloc transfered"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v2

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 337
    .restart local v0    # "geolocMsg":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;
    .restart local v1    # "msgId":Ljava/lang/String;
    .restart local v5    # "currentDate":Ljava/util/Date;
    .restart local v9    # "N":I
    .restart local v11    # "i":I
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v11}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener;

    invoke-interface {v2, p1}, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener;->handleGeolocTransfered(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 342
    :catch_0
    move-exception v10

    .line 339
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Can\'t notify listener"

    invoke-virtual {v2, v3, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleSessionAborted(I)V
    .locals 7
    .param p1, "reason"    # I

    .prologue
    .line 215
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 216
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 221
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->getInstance()Lcom/sonymobile/rcs/provider/sharing/RichCall;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v3, v5, v6}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->setStatus(Ljava/lang/String;I)V

    .line 224
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 225
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 234
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 237
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->removeGeolocSharingSession(Ljava/lang/String;)V

    .line 238
    monitor-exit v4

    .line 239
    return-void

    .line 217
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    .line 238
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 227
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener;

    invoke-interface {v3, p1}, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener;->handleSessionAborted(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 232
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleSessionStarted()V
    .locals 6

    .prologue
    .line 189
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 190
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 195
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 196
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 205
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 206
    monitor-exit v4

    .line 207
    return-void

    .line 191
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session started"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 198
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener;->handleSessionStarted()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 203
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleSessionTerminatedByRemote()V
    .locals 7

    .prologue
    .line 245
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 246
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 250
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->isGeolocTransfered()Z

    move-result v3

    if-nez v3, :cond_1

    .line 258
    invoke-static {}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->getInstance()Lcom/sonymobile/rcs/provider/sharing/RichCall;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->setStatus(Ljava/lang/String;I)V

    .line 261
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 262
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_2

    .line 271
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 274
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->removeGeolocSharingSession(Ljava/lang/String;)V

    .line 275
    monitor-exit v4

    .line 276
    return-void

    .line 247
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session terminated by remote"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 253
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->removeGeolocSharingSession(Ljava/lang/String;)V

    .line 254
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 264
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener;->handleSessionTerminatedByRemote()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 269
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 267
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
    .line 284
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 285
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 290
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->getInstance()Lcom/sonymobile/rcs/provider/sharing/RichCall;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->setStatus(Ljava/lang/String;I)V

    .line 293
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 294
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 303
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 306
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->removeGeolocSharingSession(Ljava/lang/String;)V

    .line 307
    monitor-exit v4

    .line 308
    return-void

    .line 286
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    .line 307
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 296
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener;

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;->getErrorCode()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener;->handleSharingError(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 301
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public rejectSession()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->getInstance()Lcom/sonymobile/rcs/provider/sharing/RichCall;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->setStatus(Ljava/lang/String;I)V

    .line 135
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;

    const/16 v1, 0x25b

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->rejectSession(I)V

    .line 136
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Reject session invitation"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeSessionListener(Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 182
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Remove an event listener"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
