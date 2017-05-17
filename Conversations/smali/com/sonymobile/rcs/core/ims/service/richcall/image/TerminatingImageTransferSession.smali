.class public Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;
.super Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;
.source "TerminatingImageTransferSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 3
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 80
    invoke-static {p2}, Lcom/sonymobile/rcs/core/content/ContentManager;->createMmContentFromSdp(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v0

    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getAssertedIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->extractFileThumbnail(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)[B

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;[B)V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 84
    invoke-virtual {p0, p2}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->createTerminatingDialogPath(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;)Lcom/sonymobile/rcs/utils/logger/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-object v0
.end method

.method private deleteFile()V
    .locals 3

    .prologue
    .line 571
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 575
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v1

    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/content/MmContent;->deleteFile(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :cond_0
    :goto_1
    return-void

    .line 572
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Delete incomplete received image"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Can\'t delete received image"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private isImageCapacityAcceptable(J)Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;
    .locals 7
    .param p1, "imageSize"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    invoke-static {}, Lcom/sonymobile/rcs/utils/StorageUtils;->getExternalStorageFreeSpace()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    invoke-static {}, Lcom/sonymobile/rcs/utils/StorageUtils;->getExternalStorageFreeSpace()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    move v2, v0

    :goto_1
    if-nez v2, :cond_2

    .line 98
    .local v0, "storageIsTooSmall":Z
    :goto_2
    if-nez v0, :cond_3

    const/4 v1, 0x0

    .line 104
    return-object v1

    .end local v0    # "storageIsTooSmall":Z
    :cond_0
    move v2, v1

    .line 96
    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    .line 99
    .restart local v0    # "storageIsTooSmall":Z
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_4

    .line 101
    :goto_3
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    const/16 v2, 0x89

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(I)V

    return-object v1

    .line 100
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Not enough storage capacity, reject the Image Sharing"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public closeMediaSession()V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    if-nez v0, :cond_0

    .line 558
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 561
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->isImageTransfered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 565
    :goto_2
    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->closeSession()V

    goto :goto_0

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "MSRP session has been closed"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 563
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->deleteFile()V

    goto :goto_2
.end method

.method public msrpDataReceived(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 6
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 387
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 392
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->imageTransfered()V

    .line 397
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sonymobile/rcs/core/content/MmContent;->writeData2File([B)V

    .line 398
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/content/MmContent;->closeFile()V

    const/4 v2, 0x0

    .line 401
    .local v2, "j":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-lt v2, v3, :cond_2

    .line 426
    :cond_0
    return-void

    .line 388
    .end local v2    # "j":I
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Data received"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 402
    .restart local v2    # "j":I
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSessionListener;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/content/MmContent;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSessionListener;->handleContentTransfered(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 401
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 425
    .end local v2    # "j":I
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->deleteFile()V

    const/4 v2, 0x0

    .line 410
    .restart local v2    # "j":I
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSessionListener;

    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    const/16 v5, 0x87

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(I)V

    invoke-interface {v3, v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSessionListener;->handleSharingError(Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;)V

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 425
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "j":I
    :catch_1
    move-exception v1

    .line 417
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->deleteFile()V

    const/4 v2, 0x0

    .line 420
    .restart local v2    # "j":I
    :goto_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSessionListener;

    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    const/16 v5, 0x84

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(I)V

    invoke-interface {v3, v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSessionListener;->handleSharingError(Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;)V

    .line 420
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public msrpDataTransfered(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 377
    return-void
.end method

.method public msrpTransferAborted()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->isImageTransfered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    :goto_1
    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Data transfer aborted"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->deleteFile()V

    goto :goto_1
.end method

.method public msrpTransferError(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V
    .locals 5
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "typeMsrpChunk"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->isSessionInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    :cond_0
    return-void

    .line 491
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->isSessionTerminated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 495
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_4

    :goto_0
    const/4 v2, 0x0

    .line 502
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->terminateSession(I)V

    .line 505
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->closeMediaSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->requestContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .line 518
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    .line 521
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->isImageTransfered()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 530
    :cond_3
    return-void

    .line 496
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Data transfer error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 509
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Can\'t close correctly the image sharing session"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v1, 0x0

    .line 523
    .local v1, "j":I
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 524
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSessionListener;

    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    const/16 v4, 0x84

    invoke-direct {v3, v4, p2}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSessionListener;->handleSharingError(Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;)V

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public msrpTransferProgress(JJ)V
    .locals 0
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 436
    return-void
.end method

.method public msrpTransferProgress(JJ[B)Z
    .locals 5
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J
    .param p5, "data"    # [B

    .prologue
    .line 448
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v2

    invoke-virtual {v2, p5}, Lcom/sonymobile/rcs/core/content/MmContent;->writeData2File([B)V

    const/4 v1, 0x0

    .line 451
    .local v1, "j":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 466
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 452
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSessionListener;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSessionListener;->handleSharingProgress(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 465
    .end local v1    # "j":I
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->deleteFile()V

    const/4 v1, 0x0

    .line 460
    .restart local v1    # "j":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSessionListener;

    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    const/16 v4, 0x87

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(I)V

    invoke-interface {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSessionListener;->handleSharingError(Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;)V

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public prepareMediaSession()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 539
    return-void
.end method

.method public run()V
    .locals 38

    .prologue
    .line 112
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 117
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->send180Ringing(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->waitInvitationAnswer()I

    move-result v19

    .line 136
    .local v19, "answer":I
    packed-switch v19, :pswitch_data_0

    .line 180
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->isImageCapacityAcceptable(J)Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    move-result-object v24

    .line 181
    .local v24, "error":Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;
    if-nez v24, :cond_a

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getSdpContent()Ljava/lang/String;

    move-result-object v32

    .line 194
    .local v32, "remoteSdp":Ljava/lang/String;
    new-instance v30, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;-><init>([B)V

    .line 195
    .local v30, "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    invoke-virtual/range {v30 .. v30}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescriptions()Ljava/util/Vector;

    move-result-object v28

    .local v28, "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    const/4 v4, 0x0

    .line 196
    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    .line 197
    .local v29, "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->protocol:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 198
    .local v31, "protocol":Ljava/lang/String;
    const/16 v26, 0x0

    .line 199
    .local v26, "isSecured":Z
    if-nez v31, :cond_c

    .end local v26    # "isSecured":Z
    :goto_1
    const-string/jumbo v4, "file-selector"

    .line 203
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v7

    .local v7, "fileSelector":Ljava/lang/String;
    const-string/jumbo v4, "file-transfer-id"

    .line 206
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v6

    .local v6, "fileTransferId":Ljava/lang/String;
    const-string/jumbo v4, "path"

    .line 208
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v20

    .line 209
    .local v20, "attr3":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v16

    .line 210
    .local v16, "remotePath":Ljava/lang/String;
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractRemoteHost(Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Ljava/lang/String;

    move-result-object v14

    .line 211
    .local v14, "remoteHost":Ljava/lang/String;
    move-object/from16 v0, v29

    iget v15, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->port:I

    .line 213
    .local v15, "remotePort":I
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractFingerprint(Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Ljava/lang/String;

    move-result-object v18

    .local v18, "fingerprint":Ljava/lang/String;
    const-string/jumbo v33, "passive"

    .local v33, "remoteSetup":Ljava/lang/String;
    const-string/jumbo v4, "setup"

    .line 217
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v21

    .line 218
    .local v21, "attr4":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    if-nez v21, :cond_d

    .line 221
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_e

    .line 226
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->createSetupAnswer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 227
    .local v9, "localSetup":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_f

    :goto_4
    const-string/jumbo v4, "active"

    .line 233
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 236
    invoke-static {}, Lcom/sonymobile/rcs/utils/NetworkRessourceManager;->generateLocalMsrpPort()I

    move-result v3

    .line 240
    .local v3, "localMsrpPort":I
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getNetworkAccess()Lcom/sonymobile/rcs/core/access/NetworkAccess;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/access/NetworkAccess;->getIpAddress()Ljava/lang/String;

    move-result-object v27

    .line 243
    .local v27, "localIpAddress":Ljava/lang/String;
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-direct {v4, v0, v3, v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;-><init>(Ljava/lang/String;ILcom/sonymobile/rcs/core/ims/service/ImsService;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "ipAddress":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getMaxImageSharingSize()I

    move-result v12

    .line 248
    .local v12, "maxSize":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalSocketProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPath()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "recvonly"

    const/4 v8, 0x0

    invoke-static/range {v2 .. v12}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->buildFileSDP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    .line 254
    .local v35, "sdp":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    const-string/jumbo v4, "passive"

    .line 257
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 286
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_12

    .line 289
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->FEATURE_TAGS_IMAGE_SHARE:[Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-static {v4, v5, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->create200OkInviteResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v34

    .line 293
    .local v34, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sigEstablished()V

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v22

    .line 300
    .local v22, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipAck()Z

    move-result v4

    if-nez v4, :cond_13

    .line 335
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_17

    .line 340
    :goto_8
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    const/16 v5, 0x65

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .end local v2    # "ipAddress":Ljava/lang/String;
    .end local v3    # "localMsrpPort":I
    .end local v6    # "fileTransferId":Ljava/lang/String;
    .end local v7    # "fileSelector":Ljava/lang/String;
    .end local v9    # "localSetup":Ljava/lang/String;
    .end local v12    # "maxSize":I
    .end local v14    # "remoteHost":Ljava/lang/String;
    .end local v15    # "remotePort":I
    .end local v16    # "remotePath":Ljava/lang/String;
    .end local v18    # "fingerprint":Ljava/lang/String;
    .end local v19    # "answer":I
    .end local v20    # "attr3":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v21    # "attr4":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v22    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v24    # "error":Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;
    .end local v27    # "localIpAddress":Ljava/lang/String;
    .end local v28    # "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .end local v29    # "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .end local v30    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .end local v31    # "protocol":Ljava/lang/String;
    .end local v32    # "remoteSdp":Ljava/lang/String;
    .end local v33    # "remoteSetup":Ljava/lang/String;
    .end local v34    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v35    # "sdp":Ljava/lang/String;
    :cond_0
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_19

    .line 355
    :goto_a
    return-void

    .line 113
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Initiate a new sharing session as terminating"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 350
    :catch_0
    move-exception v23

    .line 343
    .local v23, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_18

    .line 348
    :goto_b
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    const/4 v5, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_9

    .line 121
    .end local v23    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_3

    .line 126
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->send415Error(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 129
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    const/16 v5, 0x86

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 130
    return-void

    .line 122
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "MIME type is not supported"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_c

    .line 138
    .restart local v19    # "answer":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_4

    .line 142
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/16 v25, 0x0

    .line 144
    .local v25, "i":I
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, v25

    if-lt v0, v4, :cond_5

    .line 147
    return-void

    .line 139
    .end local v25    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session has been rejected by user"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_d

    .line 145
    .restart local v25    # "i":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionAborted(I)V

    .line 144
    add-int/lit8 v25, v25, 0x1

    goto :goto_e

    .line 150
    .end local v25    # "i":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_6

    .line 153
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCallManager()Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->isCallConnected()Z

    move-result v4

    if-nez v4, :cond_7

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x1e7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v8}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)V

    .line 162
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/16 v25, 0x0

    .line 164
    .restart local v25    # "i":I
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, v25

    if-lt v0, v4, :cond_8

    .line 167
    return-void

    .line 151
    .end local v25    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session has been rejected on timeout"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_f

    .line 155
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x198

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v8}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)V

    goto :goto_10

    .line 165
    .restart local v25    # "i":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionAborted(I)V

    .line 164
    add-int/lit8 v25, v25, 0x1

    goto :goto_11

    .line 170
    .end local v25    # "i":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_9

    .line 173
    :goto_12
    return-void

    .line 171
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session has been canceled"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_12

    .line 182
    .restart local v24    # "error":Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_b

    .line 186
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x25b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v8}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)V

    .line 188
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 189
    return-void

    .line 183
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Auto reject image sharing invitation"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_13

    .restart local v26    # "isSecured":Z
    .restart local v28    # "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .restart local v29    # "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .restart local v30    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .restart local v31    # "protocol":Ljava/lang/String;
    .restart local v32    # "remoteSdp":Ljava/lang/String;
    :cond_c
    const-string/jumbo v4, "TCP/TLS/MSRP"

    .line 200
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    .local v26, "isSecured":Z
    goto/16 :goto_1

    .line 219
    .end local v26    # "isSecured":Z
    .restart local v6    # "fileTransferId":Ljava/lang/String;
    .restart local v7    # "fileSelector":Ljava/lang/String;
    .restart local v14    # "remoteHost":Ljava/lang/String;
    .restart local v15    # "remotePort":I
    .restart local v16    # "remotePath":Ljava/lang/String;
    .restart local v18    # "fingerprint":Ljava/lang/String;
    .restart local v20    # "attr3":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .restart local v21    # "attr4":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .restart local v33    # "remoteSetup":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_2

    .line 222
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Remote setup attribute is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 228
    .restart local v9    # "localSetup":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Local setup attribute is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_10
    const/16 v3, 0x9

    .line 234
    .restart local v3    # "localMsrpPort":I
    goto/16 :goto_5

    .line 260
    .restart local v2    # "ipAddress":Ljava/lang/String;
    .restart local v12    # "maxSize":I
    .restart local v27    # "localIpAddress":Ljava/lang/String;
    .restart local v35    # "sdp":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->createMsrpServerSession(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v36

    .line 264
    .local v36, "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setMapMsgIdFromTransationId(Z)V

    .line 267
    new-instance v37, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession$1;

    invoke-direct/range {v37 .. v38}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession$1;-><init>(Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;)V

    .line 282
    .local v37, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Thread;->start()V

    goto/16 :goto_6

    .line 287
    .end local v36    # "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    .end local v37    # "thread":Ljava/lang/Thread;
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Send 200 OK"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 302
    .restart local v22    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .restart local v34    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_14

    :goto_14
    const/16 v25, 0x0

    .line 307
    .restart local v25    # "i":I
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, v25

    if-lt v0, v4, :cond_15

    const-string/jumbo v4, "active"

    .line 311
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 326
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionEstablished()V

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionTimerManager()Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->isSessionTimerActivated(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionTimerManager()Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    move-result-object v4

    const-string/jumbo v5, "uas"

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSessionExpireTime()I

    move-result v8

    invoke-virtual {v4, v5, v8}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->start(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 303
    .end local v25    # "i":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "ACK request received"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_14

    .line 308
    .restart local v25    # "i":I
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    invoke-interface {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionStarted()V

    .line 307
    add-int/lit8 v25, v25, 0x1

    goto :goto_15

    .line 314
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-object/from16 v17, p0

    invoke-virtual/range {v13 .. v18}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->createMsrpClientSession(Ljava/lang/String;ILjava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v36

    .line 317
    .restart local v36    # "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setMapMsgIdFromTransationId(Z)V

    .line 320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->openMsrpSession(I)V

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->sendEmptyDataChunk()V

    goto :goto_16

    .line 336
    .end local v25    # "i":I
    .end local v36    # "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "No ACK received for INVITE"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_8

    .line 344
    .end local v2    # "ipAddress":Ljava/lang/String;
    .end local v3    # "localMsrpPort":I
    .end local v6    # "fileTransferId":Ljava/lang/String;
    .end local v7    # "fileSelector":Ljava/lang/String;
    .end local v9    # "localSetup":Ljava/lang/String;
    .end local v12    # "maxSize":I
    .end local v14    # "remoteHost":Ljava/lang/String;
    .end local v15    # "remotePort":I
    .end local v16    # "remotePath":Ljava/lang/String;
    .end local v18    # "fingerprint":Ljava/lang/String;
    .end local v19    # "answer":I
    .end local v20    # "attr3":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v21    # "attr4":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v22    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v24    # "error":Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;
    .end local v27    # "localIpAddress":Ljava/lang/String;
    .end local v28    # "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .end local v29    # "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .end local v30    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .end local v31    # "protocol":Ljava/lang/String;
    .end local v32    # "remoteSdp":Ljava/lang/String;
    .end local v33    # "remoteSetup":Ljava/lang/String;
    .end local v34    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v35    # "sdp":Ljava/lang/String;
    .restart local v23    # "e":Ljava/lang/Exception;
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session initiation has failed"

    move-object/from16 v0, v23

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 353
    .end local v23    # "e":Ljava/lang/Exception;
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "End of thread"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public sendEmptyDataChunk()V
    .locals 3

    .prologue
    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->sendEmptyChunk()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Problem while sending empty data chunk"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public startMediaSession()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 548
    return-void
.end method
