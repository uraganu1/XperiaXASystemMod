.class public Lcom/sonymobile/rcs/service/api/server/sip/SipSession;
.super Lcom/sonymobile/rcs/service/api/client/sip/ISipSession$Stub;
.source "SipSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionListener;


# instance fields
.field private listeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/lang/Object;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private session:Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;)V
    .locals 1
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSession$Stub;-><init>()V

    .line 52
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->lock:Ljava/lang/Object;

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 70
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->session:Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    .line 71
    invoke-virtual {p1, p0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->addListener(Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;)V

    .line 72
    return-void
.end method


# virtual methods
.method public acceptSession()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->session:Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->acceptSession()V

    .line 130
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Accept session invitation"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addSessionListener(Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 167
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
    .line 148
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->session:Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->abortSession(I)V

    .line 154
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Cancel session"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFeatureTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->session:Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getFeatureTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->session:Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteSdp()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->session:Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getRemoteSdp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->session:Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionState()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->session:Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->getSessionState(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)I

    move-result v0

    return v0
.end method

.method public handleContentTransferred(Ljava/lang/String;)V
    .locals 6
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 382
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 384
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 385
    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 394
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 395
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    return-void

    .line 387
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;

    invoke-interface {v3, p1}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;->handleContentTransferred(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    :catch_0
    move-exception v1

    .line 389
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 390
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 395
    .end local v0    # "N":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public handleCpimMessageData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 364
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 366
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 367
    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 376
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 377
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    return-void

    .line 369
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;

    invoke-interface {v3, p1, p2}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;->handleCpimMessageData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    :catch_0
    move-exception v1

    .line 371
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 372
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 377
    .end local v0    # "N":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public handleMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 346
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 348
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 349
    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 358
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 359
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    return-void

    .line 351
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;

    invoke-interface {v3, p1, p2}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;->handleMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 356
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 354
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 359
    .end local v0    # "N":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public handleReceiveData(Ljava/lang/String;[B)V
    .locals 6
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 327
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 329
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 330
    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 339
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 340
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    return-void

    .line 332
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;

    invoke-interface {v3, p1, p2}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;->handleDataReceived(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 335
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 340
    .end local v0    # "N":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public handleSessionAborted(I)V
    .locals 7
    .param p1, "reason"    # I

    .prologue
    .line 246
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 247
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 252
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 253
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 262
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 265
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->session:Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->removeSipSession(Ljava/lang/String;)V

    .line 266
    monitor-exit v4

    .line 267
    return-void

    .line 248
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    .line 266
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 255
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;

    invoke-interface {v3, p1}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;->handleSessionAborted(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 260
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 258
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleSessionError(Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionError;)V
    .locals 7
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionError;

    .prologue
    .line 302
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 303
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 308
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 309
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 318
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 321
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->session:Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->removeSipSession(Ljava/lang/String;)V

    .line 322
    monitor-exit v4

    .line 323
    return-void

    .line 304
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Session error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionError;->getErrorCode()I

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
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionError;->getErrorCode()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;->handleSessionError(I)V
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
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleSessionStarted()V
    .locals 6

    .prologue
    .line 220
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 221
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 226
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 227
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 236
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 237
    monitor-exit v4

    .line 238
    return-void

    .line 222
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session started"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 229
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;->handleSessionStarted()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 234
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleSessionTerminatedByRemote()V
    .locals 6

    .prologue
    .line 273
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 274
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 279
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 280
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 289
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 292
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->session:Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->removeSipSession(Ljava/lang/String;)V

    .line 293
    monitor-exit v4

    .line 294
    return-void

    .line 275
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session terminated by remote"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 282
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;->handleSessionTerminatedByRemote()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 287
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 285
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public rejectSession()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->session:Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    const/16 v1, 0x25b

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->rejectSession(I)V

    .line 142
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Reject session invitation"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeSessionListener(Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 181
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Remove an event listener"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendCpimMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->session:Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->sendCpimMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public sendDeliveryReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->session:Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->sendDeliveryReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public sendMsrpData([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->session:Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->sendMessage([BLjava/lang/String;Ljava/lang/String;)Z

    .line 193
    return-void
.end method

.method public setMsrpReportOptions(ZZ)V
    .locals 1
    .param p1, "failureReportOption"    # Z
    .param p2, "successReportOption"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->session:Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->setMsrpReportOption(ZZ)V

    .line 188
    return-void
.end method
