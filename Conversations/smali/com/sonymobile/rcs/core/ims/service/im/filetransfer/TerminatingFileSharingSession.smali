.class public Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;
.super Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/ImsFileSharingSession;
.source "TerminatingFileSharingSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;


# static fields
.field private static logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# instance fields
.field private msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;

    .line 74
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 12
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/4 v7, 0x0

    .line 84
    invoke-static {p2}, Lcom/sonymobile/rcs/core/content/ContentManager;->createMmContentFromSdp(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v8

    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getAssertedIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->extractFileThumbnail(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)[B

    move-result-object v10

    invoke-direct {p0, p1, v8, v9, v10}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/ImsFileSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;[B)V

    const/4 v8, 0x0

    .line 69
    iput-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    .line 88
    invoke-virtual {p0, p2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->createTerminatingDialogPath(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 91
    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getContributionId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->setContributionID(Ljava/lang/String;)V

    .line 94
    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getMessageId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "messageId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 98
    :goto_0
    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->setMessageID(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    div-double v4, v8, v10

    .line 100
    .local v4, "length":D
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getWarningMaxFileTransferSize()I

    move-result v6

    .line 101
    .local v6, "warnFileTransferSize":I
    const/4 v0, 0x0

    .line 102
    .local v0, "autoAcceptFileTransfer":Z
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferAutoAcceptEnabled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 113
    .end local v0    # "autoAcceptFileTransfer":Z
    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->setFileAutoAccept(Z)V

    .line 114
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 115
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->setDate(Ljava/util/Date;)V

    .line 116
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->setSentDate(Ljava/util/Date;)V

    .line 117
    return-void

    .line 96
    .end local v1    # "date":Ljava/util/Date;
    .end local v4    # "length":D
    .end local v6    # "warnFileTransferSize":I
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/utils/IdGenerator;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 103
    .restart local v0    # "autoAcceptFileTransfer":Z
    .restart local v4    # "length":D
    .restart local v6    # "warnFileTransferSize":I
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/utils/PhoneUtils;->isMobileNetwork(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferAutoAccept()Z

    move-result v0

    .line 109
    .local v0, "autoAcceptFileTransfer":Z
    :goto_2
    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    .line 110
    int-to-double v8, v6

    cmpg-double v8, v4, v8

    if-gez v8, :cond_5

    const/4 v0, 0x1

    :goto_3
    goto :goto_1

    .line 103
    .local v0, "autoAcceptFileTransfer":Z
    :cond_3
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/utils/PhoneUtils;->isMobileRoaming(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferAutoAccept()Z

    move-result v0

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferAutoAcceptInRoaming()Z

    move-result v0

    goto :goto_2

    .local v0, "autoAcceptFileTransfer":Z
    :cond_5
    move v0, v7

    .line 110
    goto :goto_3
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    return-object v0
.end method

.method static synthetic access$100()Lcom/sonymobile/rcs/utils/logger/Logger;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-object v0
.end method

.method private deleteFile()V
    .locals 3

    .prologue
    .line 563
    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 567
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v1

    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/content/MmContent;->deleteFile(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :cond_0
    :goto_1
    return-void

    .line 564
    :cond_1
    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Delete incomplete received file"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 572
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Can\'t delete received file"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static isFileCapacityAcceptable(J)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;
    .locals 6
    .param p0, "fileSize"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 127
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

    cmp-long v2, p0, v2

    if-gtz v2, :cond_1

    move v2, v0

    :goto_1
    if-nez v2, :cond_2

    .line 129
    .local v0, "storageIsTooSmall":Z
    :goto_2
    if-nez v0, :cond_3

    const/4 v1, 0x0

    .line 137
    return-object v1

    .end local v0    # "storageIsTooSmall":Z
    :cond_0
    move v2, v1

    .line 127
    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    .line 130
    .restart local v0    # "storageIsTooSmall":Z
    :cond_3
    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_4

    .line 133
    :goto_3
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/16 v2, 0x82

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(I)V

    return-object v1

    .line 131
    :cond_4
    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Not enough storage capacity, reject the File Transfer"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public closeMediaSession()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    if-nez v0, :cond_1

    .line 553
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->isFileTransfered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 557
    :goto_1
    return-void

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->closeSession()V

    .line 549
    sget-object v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    sget-object v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "MSRP session has been closed"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 555
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->deleteFile()V

    goto :goto_1
.end method

.method public msrpDataReceived(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 8
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 418
    sget-object v3, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 423
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->fileTransfered()V

    .line 427
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sonymobile/rcs/core/content/MmContent;->writeData2File([B)V

    .line 428
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/content/MmContent;->closeFile()V

    const/4 v2, 0x0

    .line 431
    .local v2, "j":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->getListeners()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-lt v2, v3, :cond_2

    .line 456
    :cond_0
    return-void

    .line 419
    .end local v2    # "j":I
    :cond_1
    sget-object v3, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Data received"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 432
    .restart local v2    # "j":I
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->getListeners()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/content/MmContent;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/content/MmContent;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v6

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;->handleFileTransfered(Landroid/net/Uri;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 431
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 455
    .end local v2    # "j":I
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->deleteFile()V

    const/4 v2, 0x0

    .line 440
    .restart local v2    # "j":I
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->getListeners()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->getListeners()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;

    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/16 v5, 0x7a

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(I)V

    invoke-interface {v3, v4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;->handleTransferError(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;)V

    .line 440
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 455
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "j":I
    :catch_1
    move-exception v1

    .line 447
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->deleteFile()V

    const/4 v2, 0x0

    .line 450
    .restart local v2    # "j":I
    :goto_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->getListeners()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->getListeners()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;

    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/16 v5, 0x79

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(I)V

    invoke-interface {v3, v4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;->handleTransferError(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;)V

    .line 450
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public msrpDataTransfered(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 408
    return-void
.end method

.method public msrpTransferAborted()V
    .locals 2

    .prologue
    .line 514
    sget-object v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->isFileTransfered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    :goto_1
    return-void

    .line 515
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Data transfer aborted"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 520
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->deleteFile()V

    goto :goto_1
.end method

.method public msrpTransferProgress(JJ)V
    .locals 0
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 466
    return-void
.end method

.method public msrpTransferProgress(JJ[B)Z
    .locals 7
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J
    .param p5, "data"    # [B

    .prologue
    const/4 v6, 0x1

    .line 476
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->isSessionInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 477
    :cond_0
    return v6

    .line 476
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 482
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v2

    invoke-virtual {v2, p5}, Lcom/sonymobile/rcs/core/content/MmContent;->writeData2File([B)V

    const/4 v1, 0x0

    .line 485
    .local v1, "j":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 507
    :goto_1
    return v6

    .line 486
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;->handleTransferProgress(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    .end local v1    # "j":I
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->deleteFile()V

    const/4 v1, 0x0

    .line 495
    .restart local v1    # "j":I
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 500
    sget-object v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_4

    .line 503
    :goto_3
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->deleteFile()V

    goto :goto_1

    .line 496
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;

    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/16 v4, 0x7a

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;->handleTransferError(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;)V

    .line 495
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 501
    :cond_4
    sget-object v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Can not save data chunk to file"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public prepareMediaSession()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 531
    return-void
.end method

.method public run()V
    .locals 42

    .prologue
    .line 145
    :try_start_0
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_3

    .line 149
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    div-double v28, v4, v10

    .line 150
    .local v28, "length":D
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMaxFileTransferSize()I

    move-result v31

    .line 151
    .local v31, "maxFileTransferSize":I
    if-nez v31, :cond_4

    .line 163
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->isFileAutoAccept()Z

    move-result v4

    if-nez v4, :cond_6

    .line 168
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_7

    .line 173
    :goto_1
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

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->waitInvitationAnswer()I

    move-result v19

    .local v19, "answer":I
    const/4 v4, 0x2

    .line 177
    move/from16 v0, v19

    if-eq v0, v4, :cond_8

    .line 191
    if-eqz v19, :cond_b

    const/4 v4, 0x3

    .line 208
    move/from16 v0, v19

    if-eq v0, v4, :cond_e

    .line 218
    .end local v19    # "answer":I
    :cond_1
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->isFileCapacityAcceptable(J)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    move-result-object v24

    .line 219
    .local v24, "error":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;
    if-nez v24, :cond_10

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getSdpContent()Ljava/lang/String;

    move-result-object v36

    .line 231
    .local v36, "remoteSdp":Ljava/lang/String;
    new-instance v34, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v34

    invoke-direct {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;-><init>([B)V

    .line 232
    .local v34, "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    invoke-virtual/range {v34 .. v34}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescriptions()Ljava/util/Vector;

    move-result-object v32

    .local v32, "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    const/4 v4, 0x0

    .line 233
    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    .line 234
    .local v33, "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->protocol:Ljava/lang/String;

    move-object/from16 v35, v0

    .line 235
    .local v35, "protocol":Ljava/lang/String;
    const/16 v26, 0x0

    .line 236
    .local v26, "isSecured":Z
    if-nez v35, :cond_11

    .end local v26    # "isSecured":Z
    :goto_3
    const-string/jumbo v4, "file-selector"

    .line 240
    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v7

    .local v7, "fileSelector":Ljava/lang/String;
    const-string/jumbo v4, "file-transfer-id"

    .line 242
    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v6

    .local v6, "fileTransferId":Ljava/lang/String;
    const-string/jumbo v4, "path"

    .line 244
    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v20

    .line 245
    .local v20, "attr3":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v16

    .line 246
    .local v16, "remotePath":Ljava/lang/String;
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractRemoteHost(Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Ljava/lang/String;

    move-result-object v14

    .line 247
    .local v14, "remoteHost":Ljava/lang/String;
    move-object/from16 v0, v33

    iget v15, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->port:I

    .line 248
    .local v15, "remotePort":I
    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractFingerprint(Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Ljava/lang/String;

    move-result-object v18

    .local v18, "fingerprint":Ljava/lang/String;
    const-string/jumbo v37, "passive"

    .local v37, "remoteSetup":Ljava/lang/String;
    const-string/jumbo v4, "setup"

    .line 251
    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v21

    .line 252
    .local v21, "attr4":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    if-nez v21, :cond_12

    .line 255
    :goto_4
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_13

    .line 260
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->createSetupAnswer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 261
    .local v9, "localSetup":Ljava/lang/String;
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_14

    :goto_6
    const-string/jumbo v4, "active"

    .line 267
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 270
    invoke-static {}, Lcom/sonymobile/rcs/utils/NetworkRessourceManager;->generateLocalMsrpPort()I

    move-result v3

    .line 274
    .local v3, "localMsrpPort":I
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getNetworkAccess()Lcom/sonymobile/rcs/core/access/NetworkAccess;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/access/NetworkAccess;->getIpAddress()Ljava/lang/String;

    move-result-object v30

    .line 276
    .local v30, "localIpAddress":Ljava/lang/String;
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-direct {v4, v0, v3, v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;-><init>(Ljava/lang/String;ILcom/sonymobile/rcs/core/ims/service/ImsService;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "ipAddress":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getMaxFileSharingSize()I

    move-result v12

    .line 281
    .local v12, "maxSize":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalSocketProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPath()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "recvonly"

    const/4 v8, 0x0

    invoke-static/range {v2 .. v12}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->buildFileSDP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v39

    .line 287
    .local v39, "sdp":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    const-string/jumbo v4, "passive"

    .line 290
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 318
    :goto_8
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_17

    .line 321
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->FT_FEATURE_TAGS:[Ljava/lang/String;

    move-object/from16 v0, v39

    invoke-static {v4, v5, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->create200OkInviteResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v38

    .line 325
    .local v38, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sigEstablished()V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v22

    .line 332
    .local v22, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipAck()Z

    move-result v4

    if-nez v4, :cond_18

    .line 367
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 372
    :goto_a
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/16 v5, 0x65

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/ImsFileSharingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
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
    .end local v20    # "attr3":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v21    # "attr4":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v22    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v24    # "error":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;
    .end local v28    # "length":D
    .end local v30    # "localIpAddress":Ljava/lang/String;
    .end local v31    # "maxFileTransferSize":I
    .end local v32    # "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .end local v33    # "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .end local v34    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .end local v35    # "protocol":Ljava/lang/String;
    .end local v36    # "remoteSdp":Ljava/lang/String;
    .end local v37    # "remoteSetup":Ljava/lang/String;
    .end local v38    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v39    # "sdp":Ljava/lang/String;
    :cond_2
    :goto_b
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 386
    :goto_c
    return-void

    .line 146
    :cond_3
    :try_start_1
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Initiate a new file transfer session as terminating"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 381
    :catch_0
    move-exception v23

    .line 375
    .local v23, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 380
    :goto_d
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/4 v5, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/ImsFileSharingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_b

    .line 151
    .end local v23    # "e":Ljava/lang/Exception;
    .restart local v28    # "length":D
    .restart local v31    # "maxFileTransferSize":I
    :cond_4
    move/from16 v0, v31

    int-to-double v4, v0

    cmpl-double v4, v28, v4

    if-ltz v4, :cond_0

    .line 153
    :try_start_2
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

    const/16 v25, 0x0

    .line 156
    .local v25, "i":I
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, v25

    if-lt v0, v4, :cond_5

    .line 161
    return-void

    .line 157
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;

    new-instance v5, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/16 v8, 0x80

    invoke-direct {v5, v8}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(I)V

    invoke-interface {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;->handleTransferError(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;)V

    .line 156
    add-int/lit8 v25, v25, 0x1

    goto :goto_e

    .line 164
    .end local v25    # "i":I
    :cond_6
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 165
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Auto accept file transfer invitation"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 169
    :cond_7
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Accept manually file transfer invitation"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 178
    .restart local v19    # "answer":I
    :cond_8
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_9

    .line 183
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/16 v25, 0x0

    .line 186
    .restart local v25    # "i":I
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, v25

    if-lt v0, v4, :cond_a

    .line 190
    return-void

    .line 179
    .end local v25    # "i":I
    :cond_9
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session has been rejected by user"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_f

    .line 187
    .restart local v25    # "i":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionAborted(I)V

    .line 186
    add-int/lit8 v25, v25, 0x1

    goto :goto_10

    .line 192
    .end local v25    # "i":I
    :cond_b
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_c

    .line 197
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->send486Busy(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/16 v27, 0x0

    .line 203
    .local v27, "j":I
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, v27

    if-lt v0, v4, :cond_d

    .line 207
    return-void

    .line 193
    .end local v27    # "j":I
    :cond_c
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session has been rejected on timeout"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_11

    .line 204
    .restart local v27    # "j":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionAborted(I)V

    .line 203
    add-int/lit8 v27, v27, 0x1

    goto :goto_12

    .line 209
    .end local v27    # "j":I
    :cond_e
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_f

    .line 212
    :goto_13
    return-void

    .line 210
    :cond_f
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session has been canceled"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_13

    .line 221
    .end local v19    # "answer":I
    .restart local v24    # "error":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;
    :cond_10
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

    .line 225
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/ImsFileSharingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 226
    return-void

    .restart local v26    # "isSecured":Z
    .restart local v32    # "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .restart local v33    # "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .restart local v34    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .restart local v35    # "protocol":Ljava/lang/String;
    .restart local v36    # "remoteSdp":Ljava/lang/String;
    :cond_11
    const-string/jumbo v4, "TCP/TLS/MSRP"

    .line 237
    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    .local v26, "isSecured":Z
    goto/16 :goto_3

    .line 253
    .end local v26    # "isSecured":Z
    .restart local v6    # "fileTransferId":Ljava/lang/String;
    .restart local v7    # "fileSelector":Ljava/lang/String;
    .restart local v14    # "remoteHost":Ljava/lang/String;
    .restart local v15    # "remotePort":I
    .restart local v16    # "remotePath":Ljava/lang/String;
    .restart local v18    # "fingerprint":Ljava/lang/String;
    .restart local v20    # "attr3":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .restart local v21    # "attr4":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .restart local v37    # "remoteSetup":Ljava/lang/String;
    :cond_12
    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_4

    .line 256
    :cond_13
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Remote setup attribute is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 262
    .restart local v9    # "localSetup":Ljava/lang/String;
    :cond_14
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    goto/16 :goto_6

    :cond_15
    const/16 v3, 0x9

    .line 268
    .restart local v3    # "localMsrpPort":I
    goto/16 :goto_7

    .line 293
    .restart local v2    # "ipAddress":Ljava/lang/String;
    .restart local v12    # "maxSize":I
    .restart local v30    # "localIpAddress":Ljava/lang/String;
    .restart local v39    # "sdp":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->createMsrpServerSession(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v40

    .line 297
    .local v40, "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    const/4 v4, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setMapMsgIdFromTransationId(Z)V

    .line 300
    new-instance v41, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession$1;

    invoke-direct/range {v41 .. v42}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession$1;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;)V

    .line 314
    .local v41, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Thread;->start()V

    goto/16 :goto_8

    .line 319
    .end local v40    # "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    .end local v41    # "thread":Ljava/lang/Thread;
    :cond_17
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Send 200 OK"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 334
    .restart local v22    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .restart local v38    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_18
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_19

    :goto_14
    const/16 v27, 0x0

    .line 339
    .restart local v27    # "j":I
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, v27

    if-lt v0, v4, :cond_1a

    const-string/jumbo v4, "active"

    .line 343
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 359
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionEstablished()V

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionTimerManager()Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->isSessionTimerActivated(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionTimerManager()Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    move-result-object v4

    const-string/jumbo v5, "uas"

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSessionExpireTime()I

    move-result v8

    invoke-virtual {v4, v5, v8}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->start(Ljava/lang/String;I)V

    goto/16 :goto_b

    .line 335
    .end local v27    # "j":I
    :cond_19
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "ACK request received"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_14

    .line 340
    .restart local v27    # "j":I
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    invoke-interface {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionStarted()V

    .line 339
    add-int/lit8 v27, v27, 0x1

    goto :goto_15

    .line 346
    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-object/from16 v17, p0

    invoke-virtual/range {v13 .. v18}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->createMsrpClientSession(Ljava/lang/String;ILjava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v40

    .line 349
    .restart local v40    # "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    const/4 v4, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setMapMsgIdFromTransationId(Z)V

    .line 352
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->openMsrpSession(I)V

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->sendEmptyDataChunk()V

    goto :goto_16

    .line 368
    .end local v27    # "j":I
    .end local v40    # "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    :cond_1c
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "No ACK received for INVITE"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_a

    .line 376
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
    .end local v20    # "attr3":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v21    # "attr4":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v22    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v24    # "error":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;
    .end local v28    # "length":D
    .end local v30    # "localIpAddress":Ljava/lang/String;
    .end local v31    # "maxFileTransferSize":I
    .end local v32    # "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .end local v33    # "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .end local v34    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .end local v35    # "protocol":Ljava/lang/String;
    .end local v36    # "remoteSdp":Ljava/lang/String;
    .end local v37    # "remoteSetup":Ljava/lang/String;
    .end local v38    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v39    # "sdp":Ljava/lang/String;
    .restart local v23    # "e":Ljava/lang/Exception;
    :cond_1d
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session initiation has failed"

    move-object/from16 v0, v23

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 384
    .end local v23    # "e":Ljava/lang/Exception;
    :cond_1e
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "End of thread"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_c
.end method

.method public sendEmptyDataChunk()V
    .locals 3

    .prologue
    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->sendEmptyChunk()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
    .line 540
    return-void
.end method
