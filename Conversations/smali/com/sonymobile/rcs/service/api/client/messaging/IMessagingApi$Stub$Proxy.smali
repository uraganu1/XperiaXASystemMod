.class Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMessagingApi.java"

# interfaces
.implements Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 338
    return-void
.end method


# virtual methods
.method public addFileTransferSetupListener(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 671
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 672
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 674
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 675
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 676
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 677
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 683
    return-void

    .line 675
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 682
    :catchall_0
    move-exception v2

    .line 680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public addMessageDeliveryListener(Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 638
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 640
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 641
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 642
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 643
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 649
    return-void

    .line 641
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 648
    :catchall_0
    move-exception v2

    .line 646
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public clearGroupChatSessions()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 767
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 768
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 770
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 771
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 772
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 778
    return-void

    .line 777
    :catchall_0
    move-exception v2

    .line 775
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 521
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 524
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 526
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 527
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 528
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 531
    .local v2, "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 534
    return-object v2

    .line 533
    .end local v2    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catchall_0
    move-exception v3

    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getChatSessions()Ljava/util/List;
    .locals 6
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
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 561
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 564
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 565
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 566
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 567
    invoke-virtual {v1}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 570
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 573
    return-object v2

    .line 572
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catchall_0
    move-exception v3

    .line 570
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getChatSessionsWith(Ljava/lang/String;)Ljava/util/List;
    .locals 6
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
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 541
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 544
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 546
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 547
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 548
    invoke-virtual {v1}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 551
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 554
    return-object v2

    .line 553
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catchall_0
    move-exception v3

    .line 551
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getFileTransferSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 380
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 383
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 387
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 390
    .local v2, "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 393
    return-object v2

    .line 392
    .end local v2    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :catchall_0
    move-exception v3

    .line 390
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getFileTransferSessions()Ljava/util/List;
    .locals 6
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
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 420
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 423
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 424
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 425
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 426
    invoke-virtual {v1}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 429
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 432
    return-object v2

    .line 431
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catchall_0
    move-exception v3

    .line 429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getFileTransferSessionsWith(Ljava/lang/String;)Ljava/util/List;
    .locals 6
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
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 400
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 403
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 405
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 406
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 407
    invoke-virtual {v1}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 410
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 413
    return-object v2

    .line 412
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catchall_0
    move-exception v3

    .line 410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getGroupChatSessions()Ljava/util/List;
    .locals 6
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
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 580
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 583
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 584
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 585
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 586
    invoke-virtual {v1}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 589
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 592
    return-object v2

    .line 591
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catchall_0
    move-exception v3

    .line 589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getGroupChatSessionsForAutoRejoin()Ljava/util/List;
    .locals 6
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
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 749
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 752
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 753
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 754
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 755
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 758
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 761
    return-object v2

    .line 760
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    .line 758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getGroupChatSessionsWith(Ljava/lang/String;)Ljava/util/List;
    .locals 6
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
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 599
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 602
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 604
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 605
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 606
    invoke-virtual {v1}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 609
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 612
    return-object v2

    .line 611
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catchall_0
    move-exception v3

    .line 609
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public initiateAdhocGroupChatSession(Ljava/util/List;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 6
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
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 460
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 463
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 465
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 468
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 471
    .local v2, "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 474
    return-object v2

    .line 473
    .end local v2    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catchall_0
    move-exception v3

    .line 471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public initiateOne2OneChatSession(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 6
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "firstMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 439
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 442
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 445
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 446
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 447
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 450
    .local v2, "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 453
    return-object v2

    .line 452
    .end local v2    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catchall_0
    move-exception v3

    .line 450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public initiateQueuedAdhocGroupChatSession(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 6
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 805
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 806
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 809
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 810
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 811
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 813
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 814
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 815
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 818
    .local v2, "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 821
    return-object v2

    .line 820
    .end local v2    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catchall_0
    move-exception v3

    .line 818
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public initiateQueuedOne2OneChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 6
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "firstMsg"    # Ljava/lang/String;
    .param p3, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 784
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 787
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 788
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 789
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 791
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 792
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 793
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 796
    .local v2, "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 799
    return-object v2

    .line 798
    .end local v2    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catchall_0
    move-exception v3

    .line 796
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public inviteParticipants(Ljava/util/List;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 6
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
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 849
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 850
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 853
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 854
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 855
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 856
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 857
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 858
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 861
    .local v2, "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 864
    return-object v2

    .line 863
    .end local v2    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catchall_0
    move-exception v3

    .line 861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public rejoinGroupChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 6
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 481
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 484
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 486
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 487
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 488
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 491
    .local v2, "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 494
    return-object v2

    .line 493
    .end local v2    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catchall_0
    move-exception v3

    .line 491
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public removeFileTransferSetupListener(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 689
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 691
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 692
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 693
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 694
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 700
    return-void

    .line 692
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 699
    :catchall_0
    move-exception v2

    .line 697
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public removeMessageDeliveryListener(Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 655
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 657
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 658
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 659
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 660
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 666
    return-void

    .line 658
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 665
    :catchall_0
    move-exception v2

    .line 663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public resendChatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 6
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 705
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 706
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 709
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 710
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 713
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 714
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 715
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 718
    .local v2, "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 721
    return-object v2

    .line 720
    .end local v2    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catchall_0
    move-exception v3

    .line 718
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public resendFile(Ljava/lang/String;Z)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .locals 6
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "thumbnail"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 728
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 731
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 733
    if-nez p2, :cond_0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 735
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 736
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 739
    .local v2, "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 742
    return-object v2

    .end local v2    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_0
    const/4 v3, 0x1

    .line 733
    goto :goto_0

    .line 741
    :catchall_0
    move-exception v3

    .line 739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public restartGroupChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 6
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 501
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 504
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 506
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 507
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 508
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 511
    .local v2, "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 514
    return-object v2

    .line 513
    .end local v2    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catchall_0
    move-exception v3

    .line 511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public sendQueuedFile(Ljava/lang/String;ZLjava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .locals 6
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "thumbnail"    # Z
    .param p3, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 828
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 831
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 832
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 833
    if-nez p2, :cond_0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 835
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 836
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 837
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 840
    .local v2, "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 843
    return-object v2

    .end local v2    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_0
    const/4 v3, 0x1

    .line 833
    goto :goto_0

    .line 842
    :catchall_0
    move-exception v3

    .line 840
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 619
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 621
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 625
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 626
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 632
    return-void

    .line 631
    :catchall_0
    move-exception v2

    .line 629
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public transferFile(Ljava/lang/String;Landroid/net/Uri;Z)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .locals 6
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "thumbnail"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 352
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 355
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    if-nez p2, :cond_0

    const/4 v5, 0x0

    .line 362
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    :goto_0
    if-nez p3, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 366
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 370
    .local v2, "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 373
    return-object v2

    .end local v2    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_0
    const/4 v5, 0x1

    .line 358
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    .line 359
    invoke-virtual {p2, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v3

    .line 370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v3, v4

    .line 364
    goto :goto_1
.end method
