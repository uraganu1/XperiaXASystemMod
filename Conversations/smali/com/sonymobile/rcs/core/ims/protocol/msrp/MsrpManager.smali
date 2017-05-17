.class public Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;
.super Ljava/lang/Object;
.source "MsrpManager.java"


# instance fields
.field private localMsrpAddress:Ljava/lang/String;

.field private localMsrpPort:I

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

.field private secured:Z

.field private sessionId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "localMsrpAddress"    # Ljava/lang/String;
    .param p2, "localMsrpPort"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->secured:Z

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 82
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->localMsrpAddress:Ljava/lang/String;

    .line 83
    iput p2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->localMsrpPort:I

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->sessionId:J

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/sonymobile/rcs/core/ims/service/ImsService;)V
    .locals 1
    .param p1, "localMsrpAddress"    # Ljava/lang/String;
    .param p2, "localMsrpPort"    # I
    .param p3, "service"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;-><init>(Ljava/lang/String;I)V

    .line 96
    invoke-virtual {p3}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->isConnectedToWifiAccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p3}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->isConnectedToMobileAccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSecureMsrpOverWifi()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->secured:Z

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSecureMsrpOverMobile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->secured:Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized closeSession()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    .line 390
    return-void

    .line 380
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 384
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    const/4 v0, 0x0

    .line 388
    :try_start_3
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 381
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Close the MSRP session"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 387
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public createMsrpClientSession(Ljava/lang/String;ILjava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    .locals 7
    .param p1, "remoteHost"    # Ljava/lang/String;
    .param p2, "remotePort"    # I
    .param p3, "remoteMsrpPath"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;
    .param p5, "fingerprint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;
        }
    .end annotation

    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    :goto_0
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    invoke-direct {v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    .line 286
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setFrom(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    invoke-virtual {v1, p3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setTo(Ljava/lang/String;)V

    .line 290
    new-instance v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpClientConnection;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    iget-boolean v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->secured:Z

    move-object v2, p1

    move v3, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpClientConnection;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;Ljava/lang/String;IZLjava/lang/String;)V

    .line 294
    .local v0, "connection":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    invoke-virtual {v1, v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setConnection(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;)V

    .line 297
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    invoke-virtual {v1, p4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->addMsrpEventListener(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;)V

    .line 300
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    return-object v1

    .line 281
    .end local v0    # "connection":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Create MSRP client end point at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v6

    .line 302
    .local v6, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 305
    :goto_1
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;

    const-string/jumbo v2, "Create MSRP client session has failed"

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Can\'t create the MSRP client session"

    invoke-virtual {v1, v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public createMsrpServerSession(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    .locals 4
    .param p1, "remoteMsrpPath"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;
        }
    .end annotation

    .prologue
    .line 319
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    :goto_0
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    invoke-direct {v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    .line 325
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setFrom(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setTo(Ljava/lang/String;)V

    .line 329
    new-instance v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpServerConnection;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    iget v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->localMsrpPort:I

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpServerConnection;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;I)V

    .line 332
    .local v0, "connection":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    invoke-virtual {v1, v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setConnection(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;)V

    .line 335
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    invoke-virtual {v1, p2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->addMsrpEventListener(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;)V

    .line 338
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    return-object v1

    .line 320
    .end local v0    # "connection":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Create MSRP server end point at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->localMsrpPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createMsrpSession([BLcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    .locals 18
    .param p1, "sdp"    # [B
    .param p2, "listener"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v12, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;-><init>([B)V

    .line 222
    .local v12, "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescriptions()Ljava/util/Vector;

    move-result-object v10

    .local v10, "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    const/4 v2, 0x0

    .line 223
    invoke-virtual {v10, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    .local v11, "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    const-string/jumbo v2, "path"

    .line 224
    invoke-virtual {v11, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v13

    .line 225
    .local v13, "pathAttribute":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    invoke-virtual {v13}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v5

    .local v5, "remoteMsrpPath":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    const-string/jumbo v2, "setup"

    .line 229
    invoke-virtual {v11, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v16

    .local v16, "setupAttribute":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    const/4 v15, 0x0

    .line 231
    .local v15, "setup":Ljava/lang/String;
    if-nez v16, :cond_1

    const-string/jumbo v2, "setup"

    .line 234
    invoke-virtual {v12, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getSessionAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v16

    .line 235
    if-nez v16, :cond_2

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_3

    .end local v15    # "setup":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v2, "active"

    .line 252
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 255
    iget-object v2, v12, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    invoke-static {v2, v11}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractRemoteHost(Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "remoteHost":Ljava/lang/String;
    iget v4, v11, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->port:I

    .line 258
    .local v4, "remotePort":I
    invoke-static {v12, v11}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractFingerprint(Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Ljava/lang/String;

    move-result-object v7

    .local v7, "fingerprint":Ljava/lang/String;
    move-object/from16 v2, p0

    move-object/from16 v6, p2

    .line 259
    invoke-virtual/range {v2 .. v7}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->createMsrpClientSession(Ljava/lang/String;ILjava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v14

    .line 263
    .end local v3    # "remoteHost":Ljava/lang/String;
    .end local v4    # "remotePort":I
    .end local v7    # "fingerprint":Ljava/lang/String;
    .local v14, "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    :goto_1
    return-object v14

    .line 232
    .local v14, "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    .restart local v15    # "setup":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v15

    .local v15, "setup":Ljava/lang/String;
    goto :goto_0

    .line 236
    .local v15, "setup":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v15

    .local v15, "setup":Ljava/lang/String;
    goto :goto_0

    .line 239
    .local v15, "setup":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "\"setup\" is missing in session and media attributes"

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "media="

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    .line 241
    iget-object v2, v11, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->mediaAttributes:Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, v11, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->mediaAttributes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    .line 243
    .local v8, "attribute":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "attribute key="

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v17, " value="

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto :goto_2

    .line 253
    .end local v8    # "attribute":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v15    # "setup":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->createMsrpServerSession(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v14

    .local v14, "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    goto/16 :goto_1
.end method

.method public getLocalMsrpPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->localMsrpAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/IpAddressUtils;->isIPv6(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getMsrpProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->localMsrpAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->localMsrpPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->sessionId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";tcp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getMsrpProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "://["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->localMsrpAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->localMsrpPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->sessionId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";tcp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalMsrpPort()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->localMsrpPort:I

    return v0
.end method

.method public getLocalSocketProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->secured:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "TCP/MSRP"

    .line 121
    return-object v0

    :cond_0
    const-string/jumbo v0, "TCP/TLS/MSRP"

    .line 119
    return-object v0
.end method

.method public getMsrpProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->secured:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "msrp"

    .line 149
    return-object v0

    :cond_0
    const-string/jumbo v0, "msrps"

    .line 147
    return-object v0
.end method

.method public isEstablished()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->isEstablished()Z

    move-result v0

    return v0

    .line 399
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public openMsrpSession()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    if-nez v0, :cond_1

    .line 187
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Session not yet created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->getConnection()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->getConnection()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->open()V

    .line 191
    return-void
.end method

.method public openMsrpSession(I)V
    .locals 2
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    if-nez v0, :cond_1

    .line 201
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Session not yet created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->getConnection()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->getConnection()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->open(I)V

    .line 205
    return-void
.end method

.method public sendChunks(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;JLcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V
    .locals 8
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "contentSize"    # J
    .param p6, "typeMsrpChunk"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->sendChunks(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;JLcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V

    .line 360
    return-void

    .line 355
    :cond_0
    new-instance v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;

    const-string/jumbo v1, "MSRP session is null"

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendEmptyChunk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->msrpSession:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->sendEmptyChunk()V

    .line 373
    return-void

    .line 369
    :cond_0
    new-instance v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;

    const-string/jumbo v1, "MSRP session is null"

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSecured(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->secured:Z

    .line 178
    return-void
.end method
