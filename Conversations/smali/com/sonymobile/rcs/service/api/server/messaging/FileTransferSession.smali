.class public Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;
.super Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;
.source "FileTransferSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;


# instance fields
.field private listeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/lang/Object;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;)V
    .locals 1
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;-><init>()V

    .line 63
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->lock:Ljava/lang/Object;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 81
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    .line 82
    invoke-virtual {p1, p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->addListener(Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;)V

    .line 83
    return-void
.end method

.method private broadcastFileTransferErrorIntent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 757
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "reason"

    .line 758
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 759
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->doBroadcast(Landroid/content/Intent;)V

    .line 760
    return-void
.end method

.method private broadcastFileTransferSessionTerminatedIntent()V
    .locals 2

    .prologue
    .line 763
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.rcs.messaging.FILE_TRANSFER_SESSION_TERMINATED_BY_REMOTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 764
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->doBroadcast(Landroid/content/Intent;)V

    .line 765
    return-void
.end method

.method private doBroadcast(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "number":Ljava/lang/String;
    const-string/jumbo v1, "sessionId"

    .line 770
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "contact"

    .line 771
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "messageId"

    .line 772
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->getMessageID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "isGroupTransfer"

    .line 773
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->isGroupTransfer()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "chatId"

    .line 774
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->getChatID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    const/high16 v1, 0x10000000

    .line 778
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 779
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 780
    return-void

    .line 776
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Broadcast intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getFileSharingStatus(I)I
    .locals 2
    .param p1, "fileSharingErrorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 670
    sparse-switch p1, :sswitch_data_0

    .line 696
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown file sharing error code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/16 v0, 0x13

    .line 672
    return v0

    :sswitch_1
    const/16 v0, 0xb

    .line 674
    return v0

    :sswitch_2
    const/16 v0, 0x12

    .line 678
    return v0

    :sswitch_3
    const/16 v0, 0x15

    .line 681
    return v0

    :sswitch_4
    const/16 v0, 0x2a

    .line 683
    return v0

    :sswitch_5
    const/16 v0, 0xd

    .line 685
    return v0

    :sswitch_6
    const/16 v0, 0x27

    .line 687
    return v0

    :sswitch_7
    const/16 v0, 0x28

    .line 689
    return v0

    :sswitch_8
    const/16 v0, 0x29

    .line 691
    return v0

    :sswitch_9
    const/16 v0, 0x14

    .line 693
    return v0

    .line 670
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_0
        0x67 -> :sswitch_5
        0x68 -> :sswitch_2
        0x7a -> :sswitch_4
        0x7b -> :sswitch_3
        0x7c -> :sswitch_7
        0x7d -> :sswitch_6
        0x80 -> :sswitch_3
        0x81 -> :sswitch_8
        0x82 -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public acceptSession()V
    .locals 5

    .prologue
    .line 217
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 221
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/utils/NetworkUtils;->imsAndNetworkConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 228
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_2

    .line 237
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 240
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->acceptSession()V

    .line 242
    return-void

    .line 218
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Accept session invitation"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "IMS disconnected or network unavailable.Return without accepting FT invite"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 223
    return-void

    .line 230
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;->handleFileTransferAcceptCalled()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 235
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 233
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t notify listener"

    invoke-virtual {v3, v4, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public addSessionListener(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 355
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Add an event listener"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 355
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
    .line 282
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->isFileTransfered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->abortSession(I)V

    .line 294
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Cancel session"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_1
    return-void
.end method

.method public getChatID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->isHttpTransfer()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 158
    return-object v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    check-cast v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getContributionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChatSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->isHttpTransfer()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 171
    return-object v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    check-cast v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getChatSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFileThumbnail()[B
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getThumbnail()[B

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/content/MmContent;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilesize()J
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getMessageID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionState()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionState()I

    move-result v0

    return v0
.end method

.method public handleFileTransferPaused()V
    .locals 7

    .prologue
    .line 704
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 705
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 710
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x23

    invoke-virtual {v3, v5, v6}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateFileTransferStatus(Ljava/lang/String;I)V

    .line 714
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 715
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 724
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 725
    monitor-exit v4

    .line 726
    return-void

    .line 706
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Transfer paused"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 725
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 717
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;->handleFileTransferPaused()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 715
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 722
    :catch_0
    move-exception v1

    .line 719
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 720
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleFileTransferResumed()V
    .locals 7

    .prologue
    .line 732
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 733
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 738
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateFileTransferStatus(Ljava/lang/String;I)V

    .line 742
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 743
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 752
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 753
    monitor-exit v4

    .line 754
    return-void

    .line 734
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Transfer resumed"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 753
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 745
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;->handleFileTransferResumed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 750
    :catch_0
    move-exception v1

    .line 747
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 748
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleFileTransfered(Landroid/net/Uri;Ljava/lang/String;J)V
    .locals 7
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileSize"    # J

    .prologue
    .line 592
    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 593
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 598
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v4

    iget-object v6, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateFileTransferUri(Ljava/lang/String;Landroid/net/Uri;)V

    .line 601
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v3, 0x0

    .line 602
    .local v3, "i":I
    :goto_1
    if-lt v3, v0, :cond_1

    .line 617
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 619
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->removeFileTransferSession(Ljava/lang/String;)V

    .line 620
    monitor-exit v5

    .line 621
    return-void

    .line 594
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Content transfered"

    invoke-virtual {v4, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 620
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 604
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;

    .line 606
    .local v2, "fileTransferEventListener":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;->handleFileTransfered(Landroid/net/Uri;Ljava/lang/String;J)V

    .line 607
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_3

    .line 610
    :goto_2
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 602
    .end local v2    # "fileTransferEventListener":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 608
    .restart local v2    # "fileTransferEventListener":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Remove an event listener"

    invoke-virtual {v4, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 615
    .end local v2    # "fileTransferEventListener":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    :catch_0
    move-exception v1

    .line 612
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 613
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Can\'t notify listener"

    invoke-virtual {v4, v6, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public handleFileUploaded(Ljava/lang/String;)V
    .locals 8
    .param p1, "chatSessionId"    # Ljava/lang/String;

    .prologue
    .line 629
    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 630
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 635
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v4

    iget-object v6, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v4, v6, v7}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateFileTransferStatus(Ljava/lang/String;I)V

    .line 639
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v3, 0x0

    .line 640
    .local v3, "i":I
    :goto_1
    if-lt v3, v0, :cond_1

    .line 655
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 657
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->removeFileTransferSession(Ljava/lang/String;)V

    .line 658
    monitor-exit v5

    .line 659
    return-void

    .line 631
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Content uploaded"

    invoke-virtual {v4, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 658
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 642
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;

    .line 644
    .local v2, "fileTransferEventListener":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    invoke-interface {v2, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;->handleFileUploaded(Ljava/lang/String;)V

    .line 645
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_3

    .line 648
    :goto_2
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 640
    .end local v2    # "fileTransferEventListener":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 646
    .restart local v2    # "fileTransferEventListener":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Remove an event listener"

    invoke-virtual {v4, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 653
    .end local v2    # "fileTransferEventListener":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    :catch_0
    move-exception v1

    .line 650
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 651
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Can\'t notify listener"

    invoke-virtual {v4, v6, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public handleSessionAborted(I)V
    .locals 10
    .param p1, "reason"    # I

    .prologue
    .line 402
    iget-object v7, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 403
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    .line 409
    :goto_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->getFileSharingStatus(I)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 414
    .local v3, "fileSharingStatus":I
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v6

    iget-object v8, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v3}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateFileTransferStatus(Ljava/lang/String;I)V

    .line 418
    iget-object v6, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v5, 0x0

    .line 419
    .local v5, "i":I
    :goto_2
    if-lt v5, v0, :cond_1

    .line 434
    iget-object v6, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const-string/jumbo v6, "com.sonymobile.rcs.messaging.FILE_TRANSFER_ABORTED"

    .line 437
    invoke-direct {p0, v6, p1}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->broadcastFileTransferErrorIntent(Ljava/lang/String;I)V

    .line 441
    iget-object v6, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->removeFileTransferSession(Ljava/lang/String;)V

    .line 442
    monitor-exit v7

    .line 443
    return-void

    .line 404
    .end local v0    # "N":I
    .end local v3    # "fileSharingStatus":I
    .end local v5    # "i":I
    :cond_0
    iget-object v6, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Session aborted (reason "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 412
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const/16 v3, 0x10

    .line 411
    .restart local v3    # "fileSharingStatus":I
    goto :goto_1

    .line 421
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "N":I
    .restart local v5    # "i":I
    :cond_1
    :try_start_3
    iget-object v6, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;

    .line 423
    .local v4, "fileTransferEventListener":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    invoke-interface {v4, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;->handleSessionAborted(I)V

    .line 424
    iget-object v6, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_3

    .line 427
    :goto_3
    iget-object v6, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 419
    .end local v4    # "fileTransferEventListener":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    :cond_2
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 425
    .restart local v4    # "fileTransferEventListener":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    :cond_3
    iget-object v6, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Remove an event listener"

    invoke-virtual {v6, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 432
    .end local v4    # "fileTransferEventListener":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    :catch_1
    move-exception v1

    .line 429
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v6, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 430
    iget-object v6, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Can\'t notify listener"

    invoke-virtual {v6, v8, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4
.end method

.method public handleSessionStarted()V
    .locals 6

    .prologue
    .line 376
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 377
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 382
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 383
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 392
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 393
    monitor-exit v4

    .line 394
    return-void

    .line 378
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session started"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 385
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;->handleSessionStarted()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 390
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 388
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public handleSessionTerminatedByRemote()V
    .locals 9

    .prologue
    .line 449
    iget-object v6, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 450
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 454
    :goto_0
    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->isFileTransfered()Z

    move-result v5

    if-nez v5, :cond_1

    .line 475
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v5

    iget-object v7, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xd

    invoke-virtual {v5, v7, v8}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateFileTransferStatus(Ljava/lang/String;I)V

    .line 479
    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v3, 0x0

    .line 480
    .local v3, "i":I
    :goto_1
    if-lt v3, v0, :cond_4

    .line 495
    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 498
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->broadcastFileTransferSessionTerminatedIntent()V

    .line 501
    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->removeFileTransferSession(Ljava/lang/String;)V

    .line 502
    monitor-exit v6

    .line 503
    return-void

    .line 451
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Session terminated by remote"

    invoke-virtual {v5, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 502
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 455
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v4

    .local v4, "numberOfRegisteredCallback":I
    const/4 v3, 0x0

    .line 456
    .restart local v3    # "i":I
    :goto_2
    if-lt v3, v4, :cond_2

    .line 466
    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->removeFileTransferSession(Ljava/lang/String;)V

    .line 469
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v5

    iget-object v7, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateFileTransferStatus(Ljava/lang/String;I)V

    .line 471
    monitor-exit v6

    return-void

    .line 457
    :cond_2
    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;

    .line 459
    .local v2, "fileTransferEventListener":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_3

    .line 462
    :goto_3
    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 456
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 460
    :cond_3
    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Remove an event listener"

    invoke-virtual {v5, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 482
    .end local v2    # "fileTransferEventListener":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    .end local v4    # "numberOfRegisteredCallback":I
    .restart local v0    # "N":I
    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;

    .line 484
    .restart local v2    # "fileTransferEventListener":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    invoke-interface {v2}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;->handleSessionTerminatedByRemote()V

    .line 485
    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_6

    .line 488
    :goto_4
    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 480
    .end local v2    # "fileTransferEventListener":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    :cond_5
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 486
    .restart local v2    # "fileTransferEventListener":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    :cond_6
    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Remove an event listener"

    invoke-virtual {v5, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 493
    .end local v2    # "fileTransferEventListener":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    :catch_0
    move-exception v1

    .line 490
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 491
    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Can\'t notify listener"

    invoke-virtual {v5, v7, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5
.end method

.method public handleTransferError(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;)V
    .locals 11
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    .prologue
    .line 511
    iget-object v8, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 512
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 518
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;->getErrorCode()I

    move-result v3

    .line 519
    .local v3, "errorCode":I
    invoke-direct {p0, v3}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->getFileSharingStatus(I)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 524
    .end local v3    # "errorCode":I
    .local v4, "fileSharingStatus":I
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v7

    iget-object v9, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v4}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateFileTransferStatus(Ljava/lang/String;I)V

    .line 528
    iget-object v7, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v6, 0x0

    .line 529
    .local v6, "i":I
    :goto_2
    if-lt v6, v0, :cond_1

    .line 544
    iget-object v7, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const-string/jumbo v7, "com.sonymobile.rcs.messaging.FILE_TRANSFER_ERROR"

    .line 547
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;->getErrorCode()I

    move-result v9

    invoke-direct {p0, v7, v9}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->broadcastFileTransferErrorIntent(Ljava/lang/String;I)V

    .line 551
    iget-object v7, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->removeFileTransferSession(Ljava/lang/String;)V

    .line 552
    monitor-exit v8

    .line 553
    return-void

    .line 513
    .end local v0    # "N":I
    .end local v4    # "fileSharingStatus":I
    .end local v6    # "i":I
    :cond_0
    iget-object v7, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Sharing error, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;->getErrorCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 552
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 522
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const/16 v4, 0x11

    .line 521
    .restart local v4    # "fileSharingStatus":I
    goto :goto_1

    .line 531
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "N":I
    .restart local v6    # "i":I
    :cond_1
    :try_start_3
    iget-object v7, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;

    .line 533
    .local v5, "fileTransferEventListener":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;->getErrorCode()I

    move-result v7

    invoke-interface {v5, v7}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;->handleTransferError(I)V

    .line 534
    iget-object v7, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_3

    .line 537
    :goto_3
    iget-object v7, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v5}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 529
    .end local v5    # "fileTransferEventListener":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    :cond_2
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 535
    .restart local v5    # "fileTransferEventListener":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    :cond_3
    iget-object v7, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Remove an event listener"

    invoke-virtual {v7, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 542
    .end local v5    # "fileTransferEventListener":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    :catch_1
    move-exception v1

    .line 539
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v7, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 540
    iget-object v7, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Can\'t notify listener"

    invoke-virtual {v7, v9, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4
.end method

.method public handleTransferProgress(JJ)V
    .locals 11
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 562
    iget-object v9, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->isSessionInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    :cond_0
    monitor-exit v9

    return-void

    .line 563
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->isSessionPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateFileTransferProgress(Ljava/lang/String;JJ)V

    .line 571
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    .local v6, "N":I
    const/4 v8, 0x0

    .line 572
    .local v8, "i":I
    :goto_0
    if-lt v8, v6, :cond_2

    .line 581
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 582
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    return-void

    .line 574
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;->handleTransferProgress(JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    :cond_3
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 579
    :catch_0
    move-exception v7

    .line 576
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 577
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Can\'t notify listener"

    invoke-virtual {v0, v1, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 582
    .end local v6    # "N":I
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public isGroupTransfer()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->isGroupFileTransfer()Z

    move-result v0

    return v0
.end method

.method public isHttpTransfer()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    instance-of v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;

    return v0
.end method

.method public isSessionPaused()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 317
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->isHttpTransfer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    :goto_0
    return v2

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    check-cast v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->isFileTransferPaused()Z

    move-result v0

    return v0

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Pause available only for HTTP transfer"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isSessionRemoteOriginated()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->isRemoteOriginated()Z

    move-result v0

    return v0
.end method

.method public pauseSession()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->isHttpTransfer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 311
    :goto_1
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Pause session"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    check-cast v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->pauseFileTransfer()V

    goto :goto_1

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Pause available only for HTTP transfer"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public rejectSession()V
    .locals 6

    .prologue
    .line 248
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 252
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/utils/NetworkUtils;->imsAndNetworkConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x13

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateFileTransferStatus(Ljava/lang/String;I)V

    .line 262
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 263
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_2

    .line 272
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 275
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    const/16 v4, 0x25b

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->rejectSession(I)V

    .line 276
    return-void

    .line 249
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Reject session invitation"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "IMS disconnected or network unavailable.Return without rejecting FT invite"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 254
    return-void

    .line 265
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;->handleFileTransferRejectCalled()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 270
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 268
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t notify listener"

    invoke-virtual {v3, v4, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public removeSessionListener(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 369
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Remove an event listener"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resumeSession()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->isHttpTransfer()Z

    move-result v0

    if-nez v0, :cond_2

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 342
    :goto_1
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Resuming session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->isSessionPaused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->isHttpTransfer()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->isSessionPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->session:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    check-cast v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->resumeFileTransfer()V

    goto :goto_1

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Resuming can only be used on a paused HTTP transfer"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method
