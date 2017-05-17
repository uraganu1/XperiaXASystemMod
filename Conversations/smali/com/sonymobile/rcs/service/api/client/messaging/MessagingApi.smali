.class public Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;
.super Lcom/sonymobile/rcs/service/api/client/ClientApi;
.source "MessagingApi.java"


# instance fields
.field private apiConnection:Landroid/content/ServiceConnection;

.field private coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

.field mIsServiceConnected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/service/api/client/ClientApi;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->mIsServiceConnected:Z

    .line 96
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi$1;-><init>(Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->apiConnection:Landroid/content/ServiceConnection;

    .line 67
    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;)Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;
    .param p1, "x1"    # Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->notifyEventApiConnected()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->notifyEventApiDisconnected()V

    return-void
.end method


# virtual methods
.method public addFileTransferSetupListener(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 492
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v1, :cond_0

    .line 499
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v1

    .line 494
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v1, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->addFileTransferSetupListener(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addMessageDeliveryListener(Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 454
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v1, :cond_0

    .line 461
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v1

    .line 456
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v1, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->addMessageDeliveryListener(Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clearGroupChatSessions()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 559
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v1, :cond_0

    .line 566
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v1

    .line 561
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v1}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->clearGroupChatSessions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    return-void

    .line 564
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public connectApi()V
    .locals 4

    .prologue
    .line 73
    invoke-super {p0}, Lcom/sonymobile/rcs/service/api/client/ClientApi;->connectApi()V

    const-class v1, Lcom/sonymobile/rcs/service/RcsCoreService;

    const-class v2, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    .line 75
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/rcs/utils/IntentUtil;->createExpicitIntent(Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 78
    return-void
.end method

.method public disconnectApi()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/sonymobile/rcs/service/api/client/ClientApi;->disconnectApi()V

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 341
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v1, :cond_0

    .line 348
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v1

    .line 343
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v1, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->getChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getChatSessions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 378
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v1, :cond_0

    .line 385
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v1

    .line 380
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v1}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->getChatSessions()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getChatSessionsWith(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v1, :cond_0

    .line 367
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v1

    .line 362
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v1, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->getChatSessionsWith(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFileTransferSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v1, :cond_0

    .line 178
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v1

    .line 173
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v1, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->getFileTransferSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFileTransferSessions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v1, :cond_0

    .line 215
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v1

    .line 210
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v1}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->getFileTransferSessions()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFileTransferSessionsWith(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v1, :cond_0

    .line 197
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v1

    .line 192
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v1, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->getFileTransferSessionsWith(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getGroupChatSessionsForAutoRejoin()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 542
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v1, :cond_0

    .line 549
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v1

    .line 544
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v1}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->getGroupChatSessionsForAutoRejoin()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getGroupChatSessionsWith(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 414
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v1, :cond_0

    .line 421
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v1

    .line 416
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v1, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->getGroupChatSessionsWith(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public initiateAdhocGroupChatSession(Ljava/util/List;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 249
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->initiateAdhocGroupChatSession(Ljava/util/List;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v0

    return-object v0
.end method

.method public initiateAdhocGroupChatSession(Ljava/util/List;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 3
    .param p2, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v1, :cond_0

    .line 291
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v1

    .line 286
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v1, p1, p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->initiateAdhocGroupChatSession(Ljava/util/List;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public initiateOne2OneChatSession(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 3
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "firstMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v1, :cond_0

    .line 236
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v1

    .line 231
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v1, p1, p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->initiateOne2OneChatSession(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public initiateQueuedAdhocGroupChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 5
    .param p1, "rowId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 625
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v2, :cond_0

    .line 635
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v2}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v2

    .line 627
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getGroupChatInfoUsingRowId(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;

    move-result-object v1

    .line 629
    .local v1, "groupChatInfo":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->getParticipants()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->initiateQueuedAdhocGroupChatSession(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .end local v1    # "groupChatInfo":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public initiateQueuedOne2OneChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 5
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 603
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v3, :cond_0

    .line 613
    new-instance v3, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v3}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v3

    .line 605
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getChatData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 606
    .local v2, "firstMsg":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    const-string/jumbo v4, "message_id"

    invoke-virtual {v3, p1, v4}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getChatContact(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "contact":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v3, v0, v2, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->initiateQueuedOne2OneChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .end local v0    # "contact":Ljava/lang/String;
    .end local v2    # "firstMsg":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 610
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public inviteParticipants(Ljava/util/List;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 4
    .param p2, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 812
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->getChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v0

    .line 814
    .local v0, "chatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    if-nez v0, :cond_0

    .line 822
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v2, :cond_1

    .line 829
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v2}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v2

    :cond_0
    const/4 v2, 0x0

    .line 816
    :try_start_0
    invoke-interface {v0, p1, v2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->addParticipants(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    return-object v0

    :catch_0
    move-exception v1

    .line 819
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 824
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v2, p1, p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->inviteParticipants(Ljava/util/List;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    return-object v2

    :catch_1
    move-exception v1

    .line 826
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isServiceConnected()Z
    .locals 1

    .prologue
    .line 797
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->mIsServiceConnected:Z

    return v0
.end method

.method public rejoinGroupChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v1, :cond_0

    .line 310
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v1

    .line 305
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v1, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->rejoinGroupChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeFileTransferSetupListener(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 511
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v1, :cond_0

    .line 518
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v1

    .line 513
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v1, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->removeFileTransferSetupListener(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    return-void

    .line 516
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeMessageDeliveryListener(Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 473
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v1, :cond_0

    .line 480
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v1

    .line 475
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v1, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->removeMessageDeliveryListener(Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resendChatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 3
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v1, :cond_0

    .line 270
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v1

    .line 265
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v1, p1, p2, p3}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->resendChatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resendFile(Ljava/lang/String;Z)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .locals 4
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "thumbnail"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v2, :cond_0

    .line 159
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v2}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v2

    .line 153
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v2, p1, p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->resendFile(Ljava/lang/String;Z)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 154
    .local v1, "session":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    return-object v1

    .end local v1    # "session":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public restartGroupChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 322
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v1, :cond_0

    .line 329
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v1

    .line 324
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v1, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->restartGroupChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendFile(Ljava/lang/String;Landroid/net/Uri;Z)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .locals 5
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "fileUri"    # Landroid/net/Uri;
    .param p3, "thumbnail"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 675
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->ctx:Landroid/content/Context;

    const-string/jumbo v3, "com.sonymobile.rcs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 677
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->getChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v0

    .line 678
    .local v0, "chatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    if-nez v0, :cond_0

    .line 681
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    const-string/jumbo v3, "Chat Session is null"

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "chatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catch_0
    move-exception v1

    .line 684
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 679
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "chatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :cond_0
    :try_start_1
    invoke-interface {v0, p2, p3}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->sendFile(Landroid/net/Uri;Z)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 780
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->getChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v0

    .line 781
    .local v0, "chatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    if-nez v0, :cond_0

    .line 784
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    const-string/jumbo v3, "Chat Session is null"

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "chatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catch_0
    move-exception v1

    .line 787
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 782
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "chatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :cond_0
    :try_start_1
    invoke-interface {v0, p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->sendMessage(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2
.end method

.method public sendQueuedFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "thumbnail"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 651
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->getChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v0

    .line 652
    .local v0, "chatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    if-nez v0, :cond_0

    .line 655
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    const-string/jumbo v3, "Chat Session is null"

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "chatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catch_0
    move-exception v1

    .line 658
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 653
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "chatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :cond_0
    :try_start_1
    invoke-interface {v0, p2, p3}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->sendQueuedFile(Ljava/lang/String;Z)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2
.end method

.method public sendQueuedFile(ZLjava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .locals 5
    .param p1, "thumbnail"    # Z
    .param p2, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 580
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v3, :cond_0

    .line 591
    new-instance v3, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v3}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v3

    .line 582
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    const-string/jumbo v4, "message_id"

    invoke-virtual {v3, p2, v4}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getChatContact(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "contact":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v3, v0, p1, p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->sendQueuedFile(Ljava/lang/String;ZLjava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 586
    .local v2, "session":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    return-object v2

    .end local v0    # "contact":Ljava/lang/String;
    .end local v2    # "session":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :catch_0
    move-exception v1

    .line 588
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public sendQueuedMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 718
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->getChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v0

    .line 719
    .local v0, "chatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    if-nez v0, :cond_0

    .line 722
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    const-string/jumbo v3, "Chat Session is null"

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    .end local v0    # "chatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catch_0
    move-exception v1

    .line 725
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 720
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "chatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :cond_0
    :try_start_1
    invoke-interface {v0, p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->sendQueuedMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 727
    return-void
.end method

.method public setIsComposingStatus(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "status"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 738
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->getChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v0

    .line 739
    .local v0, "chatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    if-nez v0, :cond_0

    .line 742
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    const-string/jumbo v3, "Chat Session is null"

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    .end local v0    # "chatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catch_0
    move-exception v1

    .line 745
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 740
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "chatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :cond_0
    :try_start_1
    invoke-interface {v0, p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->setIsComposingStatus(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 747
    return-void
.end method

.method public setMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 435
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v1, :cond_0

    .line 442
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v1

    .line 437
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v1, p1, p2, p3}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->setMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setMessageDeliveryStatusWithSessionID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 760
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->getChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v0

    .line 761
    .local v0, "chatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    if-nez v0, :cond_0

    .line 764
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    const-string/jumbo v3, "Chat Session is null"

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    .end local v0    # "chatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catch_0
    move-exception v1

    .line 767
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 762
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "chatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :cond_0
    :try_start_1
    invoke-interface {v0, p2, p3}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->setMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 769
    return-void
.end method

.method public transferFile(Ljava/lang/String;Landroid/net/Uri;Z)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .locals 5
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "fileUri"    # Landroid/net/Uri;
    .param p3, "thumbnail"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-nez v2, :cond_0

    .line 136
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v2}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v2

    .line 128
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->ctx:Landroid/content/Context;

    const-string/jumbo v3, "com.sonymobile.rcs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 130
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    invoke-interface {v2, p1, p2, p3}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;->transferFile(Ljava/lang/String;Landroid/net/Uri;Z)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 131
    .local v1, "session":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    return-object v1

    .end local v1    # "session":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
